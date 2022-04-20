create or replace procedure insert_update_order (p_rec tpt_orders%rowtype) is
   v_rec tpt_orders%rowtype;
   v_audit_id number;
   cursor data_cur is 
      select *
	    from tpt_orders
	   where order_number = p_rec.order_number;
begin 
  /*  insert into bb_audits  
        (user_name, change_time, table_name, action, primary_key) 
    values  
        (nvl(v('APP_USER'),user), sysdate, 'TPT_ORDERS', 'ENTER',  P_REC.ORDER_NUMBER) 
    returning audit_id into v_audit_id; 

        
    insert into bb_audit_columns 
        ( audit_id, column_name, new_char_value, old_char_value) 
    values 
        ( v_audit_id, 'ORDER_NAME', P_REC.ORDER_NAME, P_REC.ORDER_NAME); */
			

   open  data_cur;
   fetch data_cur
	into v_rec;
   if data_cur%found then
      /* insert into bb_audits  
			  (user_name, change_time, table_name, action, primary_key) 
			values  
			  (nvl(v('APP_USER'),user), sysdate, 'TPT_ORDERS', 'FOUND',  P_REC.ORDER_NUMBER) 
			returning audit_id into v_audit_id;*/
      if nvl(v_rec.order_name, 'w3r4')        != nvl(p_rec.order_name, 'w3r4') or
         nvl(v_rec.quote_number, -999)        != nvl(p_rec.quote_number, -999) or
         nvl(v_rec.order_status, 'w3r4')      != nvl(p_rec.order_status, 'w3r4') or
         nvl(v_rec.order_date, sysdate-99999) != nvl(p_rec.order_date, sysdate-99999) then 
	     update tpt_orders
		   set order_name   = p_rec.order_name,
               quote_number = p_rec.quote_number,
               order_status = p_rec.order_status,
               order_date   = p_rec.order_date
		where order_number = p_rec.order_number;
	  end if;
   else
     /*  insert into bb_audits  
			  (user_name, change_time, table_name, action, primary_key) 
			values  
			  (nvl(v('APP_USER'),user), sysdate, 'TPT_ORDERS', 'INSERT',  P_REC.ORDER_NUMBER) 
			returning audit_id into v_audit_id;*/
	  insert into tpt_orders
           (order_number, order_name, quote_number
            , order_status, order_date)
         values
           (p_rec.order_number, p_rec.order_name, p_rec.quote_number
            , p_rec.order_status, p_rec.order_date);
   end if;
   close data_cur;
end insert_update_order;
