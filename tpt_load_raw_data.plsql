create or replace procedure tpt_load_raw_data as
   cursor data_cur is
      select * 
        from tpt_raw_data
       order by accountnumber, opportunitynumber, quotenumber, ordernumber, linenumber;
   v_act_num   number := -999;
   v_opp_num   number := -999;
   v_quote_num number := -999;
   v_line_id   number := -999;
   v_order_num number := -999;
   v_account_rec tpt_accounts%rowtype;
   v_opp_rec     tpt_opportunities%rowtype;
   v_quote_rec   tpt_quotes%rowtype;
   v_order_rec   tpt_orders%rowtype;
   v_line_rec    tpt_quote_lines%rowtype;
begin
   for it in data_cur loop
      if nvl(it.accountnumber, v_act_num) != v_act_num then
         v_act_num := it.accountnumber;
         v_account_rec.account_number        := it.accountnumber;
         v_account_rec.account_date          := it.accountdate;
         v_account_rec.lead_number           := it.leadnumber;
         v_account_rec.lead_date             := it.leaddate;
         v_account_rec.lead_source           := it.leadsource;
         v_account_rec.account_first_name    := it.accountfirstname;
         v_account_rec.account_last_name     := it.accountlastname;
         v_account_rec.account_company_name  := it.accountcompanyname;
         v_account_rec.account_email         := it.accountemail;
         v_account_rec.account_address1      := it.accountaddress1;
         v_account_rec.account_address2      := it.accountaddress2;
         v_account_rec.account_city          := it.accountcity;
         v_account_rec.account_state         := it.accountstate;
         v_account_rec.account_zipcode       := substr(it.accountzipcode, 1, 5);
         v_account_rec.account_source        := it.accountsource;
         v_account_rec.account_campaign      := it.accountcampaign;
         v_account_rec.sales_person_id       := it.salespersonid;
         v_account_rec.sales_person          := it.salesperson;
         
         insert_update_account(v_account_rec);
         
      end if;  
      if nvl(it.opportunitynumber, v_opp_num) != v_opp_num then
         v_opp_num 					  := it.opportunitynumber;
		 v_opp_rec.opportunity_number := it.opportunitynumber;
		 v_opp_rec.account_number 	  := it.accountnumber;
		 v_opp_rec.opportunity_name   := it.opportunityname;
		 v_opp_rec.opportunity_date   := it.opportunitydate;
		 v_opp_rec.first_name 		  := it.opportunityfirstname;
		 v_opp_rec.last_name 		  := it.opportunitylastname;
		 v_opp_rec.company_name 	  := it.opportunitycompanyname;
		 v_opp_rec.email 			  := it.opportunityemail;
		 v_opp_rec.address1 		  := it.opportunityaddress1;
		 v_opp_rec.address2 		  := it.opportunityaddress2;
		 v_opp_rec.city 		      := it.opportunitycity;
		 v_opp_rec.opportunity_state  := it.opportunitystate;
		 v_opp_rec.zipcode 			  := substr(it.opportunityzipcode, 1, 5);
		 v_opp_rec.source 			  := it.opportunitysource;
		 
		 insert_update_opportunity(v_opp_rec);
		
      end if;
      
      if nvl(it.quotenumber, v_quote_num) != v_quote_num then
         v_quote_num                    := it.quotenumber;
         v_quote_rec.quote_number       := it.quotenumber;
         v_quote_rec.opportunity_number := it.opportunitynumber;
         v_quote_rec.territory_code     := it.quoteterritorycode;
         v_quote_rec.quote_date         := it.quotedate;
         v_quote_rec.primary_quote      := it.primaryquote;
         v_quote_rec.quote_status       := it.quotestatus;
         
         insert_update_quote(v_quote_rec);
         
      end if;
     
  /*     (user_name, change_time, table_name, action, primary_key, primary_key_two) 
    values  
        (nvl(v('APP_USER'),user), sysdate, 'TPT_ORDERS', 'CALL',  it.ORDERNUMBER, v_order_num) ;  */

      if nvl(it.ordernumber, v_order_num) != v_order_num then
         v_order_num := it.ordernumber;
         v_order_rec.order_number := it.ordernumber;
         v_order_rec.order_name   := it.ordername;
         v_order_rec.quote_number := it.quotenumber;
         v_order_rec.order_status := it.orderstatus;
         v_order_rec.order_date   := it.orderdate;
         
         insert_update_order(v_order_rec);
         
      end if;
      if nvl(it.quotelineid, v_line_id) != v_line_id  or
         nvl(it.quotenumber, v_quote_num) != v_quote_num or
         nvl(it.ordernumber, v_order_num) != v_order_num then 
         v_line_id   := it.quotelineid;
         v_quote_num := it.quotenumber;
         v_order_num := nvl(it.ordernumber, v_order_num);
         v_line_rec.quote_line_id := it.quotelineid;
         v_line_rec.quote_number := it.quotenumber;
         v_line_rec.order_number := nvl(it.ordernumber,1);
         v_line_rec.quote_line_number := it.linenumber;
         v_line_rec.vendor_name := it.vendorname;
         v_line_rec.product_category := it.productcategory;
         v_line_rec.product_name := it.productname;
         v_line_rec.product_model := it.productmodel;
         v_line_rec.color := it.color;
         v_line_rec.fabric := it.fabric;
         v_line_rec.description := it.description;
         v_line_rec.item_cost := to_number(it.itemcost, '999,999,999.00');
         v_line_rec.quantity := it.qty;
         v_line_rec.line_cost := to_number(it.linecost, '999,999,999.00');
         v_line_rec.line_value := to_number(it.linevalue, '999,999,999.00');
         v_line_rec.suggested_resale := to_number(it.suggestedresale, '999,999,999.00');
         v_line_rec.discount_amount := to_number(it.discountamount, '999,999,999.00');
         v_line_rec.margin_percentage := it.marginpercentage;
         v_line_rec.product_type := it.producttype;
         v_line_rec.is_alliance := it.isalliance;
         v_line_rec.mpo_date := it.mpodate;
         v_line_rec.vpo_date := it.vpodate;
         v_line_rec.promise_by_date := it.promisebydate;
         v_line_rec.est_ship_date := it.estshipdate;
         v_line_rec.ship_date := it.shipdate;
         v_line_rec.tracking_number := it.trackingnumber;
         v_line_rec.invoice_date := it.invoicedate;
         v_line_rec.received_date := it.receiveddate;
         v_line_rec.vpo_status := it.vpostatus;
         v_line_rec.revenue_counted := it.revenuecounted;
         
         insert_update_quote_line(v_line_rec);
         
      end if;
   end loop;
end tpt_load_raw_data;
