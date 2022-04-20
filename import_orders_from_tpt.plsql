create or replace procedure import_orders_from_tpt (start_date IN DATE)
is

   v_order_id number;
   v_check    number;
   
   cursor data_cur is
        select 'I' initial_or_followup, ta.account_first_name||' '||ta.account_last_name client_name, tord.order_date, 1 territory_id
            , trim(initcap(ta.account_address1)||' '||initcap(ta.account_address2)) client_address
            , initcap(ta.account_city) client_city, ta.account_state client_state, ta.account_zipcode client_zip
            ,  ta.account_number, tord.order_number, tord.order_status, ta.account_email client_email, ta.sales_person
        from tpt_accounts ta, tpt_opportunities top, tpt_quotes tq, tpt_orders tord
        where ta.account_number = top.account_number
        and top.opportunity_number = tq.opportunity_number
        and tq.quote_number = tord.quote_number
        and order_date > start_date -1
        and tord.order_status != 'Canceled'
        order by account_last_name;

    cursor detail_cur (p_order_number number) is
        select cnt||' '||our_description item_description, our_vendor_id vendor_id 
         from ( select sum(quantity) cnt,  our_vendor_id, our_description
                 from tpt_quote_lines 
                where order_number = p_order_number
                  and product_name not in ('Installation', 'Shipping')
                  and our_description is not null
                group by our_vendor_id, our_description);

    cursor check_cur ( p_client_name varchar, p_order_date date, p_order_number number ) is
        select 1
          from bb_orders
         where upper(client_name) = upper(p_client_name)
           and order_date = p_order_date
           and nvl(tpt_order_number, p_order_number) = p_order_number ;
Begin

    set_our_product_values;

    for it in data_cur loop    
        open check_cur ( it.client_name, it.order_date, it.order_number);
        fetch check_cur into v_check;
        if check_cur%NOTFOUND then
            insert into bb_orders
                ( initial_or_followup, client_name, order_date, territory_id, client_address
                , client_city, client_state, client_zip, client_email, tpt_account_number
                , tpt_order_number, process_status, sales_person)
            values
                ( it.initial_or_followup, it.client_name, it.order_date, it.territory_id, it.client_address
                , it.client_city, it.client_state, it.client_zip, it.client_email, it.account_number
                , it.order_number, 'INITIAL LOAD', it.sales_person )
            returning order_id into v_order_id;

            for pts in detail_cur(it.order_number) loop
                insert into bb_install_parts
                    ( order_id, item_description, vendor_id, all_parts_received
                    , followup_required, installer_id,  location_id, install_grouping )
                values
                    ( v_order_id, pts.item_description, pts.vendor_id, 'None'
                    , 'No', 209 , 4, 'Together' );
            end loop;
        end if;
        close check_cur;
    end loop;

-- update phone from tpt_phones which is from the Touchpoint accounts page, as raw_data does not have phone number
    for it in (
        select o.client_name, o.order_id,  '('||substr(phone,1,3)||') '||substr(phone,4,3)||'-'||substr(phone,7,4) phone 
          from bb_orders o, tpt_phones tp
         where o.client_phone is  null
           and o.process_status = 'INITIAL LOAD'
           and o.client_name = tp.name
           and tp.phone is not null) loop
                update bb_orders
                   set client_phone = it.phone
                 where order_id = it.order_id;
    end loop;

-- get Lat Long from mapquest for new orders
    declare
        v_clob  clob;
        v_values apex_json.t_values;
        v_lat number;
        v_lng number;
        cursor data_cur is 
            select order_id, client_address||', '||client_city||', '||client_state||' '||client_zip address
              from bb_orders 
             where lat is null 
               and client_address is not null;
    begin
        for it in data_cur loop
            v_clob := apex_web_service.make_rest_request(
                p_url => 'https://www.mapquestapi.com/geocoding/v1/address',
                p_http_method => 'GET',
                p_parm_name => apex_util.string_to_table('key:location'),
                p_parm_value => apex_util.string_to_table('ycWyenAos80XIv13p7PoOpHCbr1HvHoA:'||it.address)
            );
            apex_json.parse(p_values => v_values,
                            p_source => v_clob,
                            p_strict => TRUE);
            v_lat := apex_json.get_number(p_path => 'results[1].locations[1].displayLatLng.lat', p_values => v_values);
            v_lng := apex_json.get_number(p_path => 'results[1].locations[1].displayLatLng.lng', p_values => v_values);
            update bb_orders
               set lat = v_lat,
                   lng = v_lng
             where order_id = it.order_id;
        end loop;              

        update bb_orders set geometry = sdo_geometry(2001,8307,sdo_point_type(lng,lat,null),null,null)
         where lng is not null
           and geometry is null;                            
    end;

End;
