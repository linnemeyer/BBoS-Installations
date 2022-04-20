create or replace procedure insert_update_quote_line (p_rec tpt_quote_lines%rowtype) is
   v_rec tpt_quote_lines%rowtype;
   cursor data_cur is 
      select *
	    from tpt_quote_lines
	   where quote_line_id = p_rec.quote_line_id
         and quote_number = p_rec.quote_number
         and ( order_number = p_rec.order_number or ( order_number = 1 and p_rec.order_number != 1) );
   /* TPT quote_line_id, is not unique, it can be duplicated on different orders for the same quote_number
      so quote_number and order_number were added as primary keys in tpt_quote_lines, but since you can have
      a quote line without an order, but order id is required we populate with the value 1 when it is null.
      When a quote is turned into an order then order_id will have a value other than 1, so we must recognize 
      this situation to be an update and not an insert of a new record*/
begin 
   open  data_cur;
   fetch data_cur
	into v_rec;
   if data_cur%found then
      if nvl(v_rec.order_number, -999)             != nvl(p_rec.order_number, -999) or
         nvl(v_rec.quote_line_number, -999)        != nvl(p_rec.quote_line_number, -999) or
         nvl(v_rec.vendor_name, 'w3r4')            != nvl(p_rec.vendor_name, 'w3r4') or
         nvl(v_rec.product_category, 'w3r4')       != nvl(p_rec.product_category, 'w3r4') or
         nvl(v_rec.product_name, 'w3r4')           != nvl(p_rec.product_name, 'w3r4') or
         nvl(v_rec.product_model, 'w3r4')          != nvl(p_rec.product_model, 'w3r4') or
         nvl(v_rec.color, 'w3r4')                  != nvl(p_rec.color, 'w3r4') or
         nvl(v_rec.fabric, 'w3r4')                 != nvl(p_rec.fabric, 'w3r4') or
         nvl(v_rec.description, 'w3r4')            != nvl(p_rec.description, 'w3r4') or
         nvl(v_rec.item_cost, -999)                != nvl(p_rec.item_cost, -999) or
         nvl(v_rec.quantity, -999)                 != nvl(p_rec.quantity, -999) or
         nvl(v_rec.line_cost, -999)                != nvl(p_rec.line_cost, -999) or
         nvl(v_rec.line_value, -999)               != nvl(p_rec.line_value, -999) or
         nvl(v_rec.suggested_resale, -999)         != nvl(p_rec.suggested_resale, -999) or
         nvl(v_rec.discount_amount, -999)          != nvl(p_rec.discount_amount, -999) or
         nvl(v_rec.margin_percentage, -999)        != nvl(p_rec.margin_percentage, -999) or
         nvl(v_rec.order_status, 'w3r4')           != nvl(p_rec.order_status, 'w3r4') or
         nvl(v_rec.product_type, 'w3r4')           != nvl(p_rec.product_type, 'w3r4') or
         nvl(v_rec.is_alliance, 'w3r4')            != nvl(p_rec.is_alliance, 'w3r4') or
         nvl(v_rec.mpo_date, sysdate-99999)        != nvl(p_rec.mpo_date, sysdate-99999) or
         nvl(v_rec.vpo_date, sysdate-99999)        != nvl(p_rec.vpo_date, sysdate-99999) or
         nvl(v_rec.promise_by_date, sysdate-99999) != nvl(p_rec.promise_by_date, sysdate-99999) or
         nvl(v_rec.est_ship_date, sysdate-99999)   != nvl(p_rec.est_ship_date, sysdate-99999) or
         nvl(v_rec.ship_date, sysdate-99999)       != nvl(p_rec.ship_date, sysdate-99999) or
         nvl(v_rec.tracking_number, 'w3r4')        != nvl(p_rec.tracking_number, 'w3r4') or
         nvl(v_rec.invoice_date, sysdate-99999)    != nvl(p_rec.invoice_date, sysdate-99999) or
         nvl(v_rec.received_date, sysdate-99999)   != nvl(p_rec.received_date, sysdate-99999) or
         nvl(v_rec.vpo_status, 'w3r4')             != nvl(p_rec.vpo_status, 'w3r4') or
         nvl(v_rec.revenue_counted, -999)          != nvl(p_rec.revenue_counted, -999) then 
	     update tpt_quote_lines
		   set order_number      = p_rec.order_number, 
               quote_line_number = p_rec.quote_line_number,
               vendor_name       = p_rec.vendor_name,
               product_category  = p_rec.product_category,
               product_name      = p_rec.product_name,
               product_model     = p_rec.product_model,
               color             = p_rec.color,
               fabric            = p_rec.fabric,
               description       = p_rec.description,
               item_cost         = p_rec.item_cost,
               quantity          = p_rec.quantity,    
               line_cost         = p_rec.line_cost,
               line_value        = p_rec.line_value,
               suggested_resale  = p_rec.suggested_resale,
               discount_amount   = p_rec.discount_amount,
               margin_percentage = p_rec.margin_percentage,
               product_type      = p_rec.product_type,
               is_alliance       = p_rec.is_alliance,
               mpo_date          = p_rec.mpo_date,
               vpo_date          = p_rec.vpo_date,
               promise_by_date   = p_rec.promise_by_date,
               est_ship_date     = p_rec.est_ship_date,
               ship_date         = p_rec.ship_date,
               tracking_number   = p_rec.tracking_number,
               invoice_date      = p_rec.invoice_date,
               received_date     = p_rec.received_date,
               vpo_status        = p_rec.vpo_status,
               revenue_counted   = p_rec.revenue_counted
		where quote_line_id = p_rec.quote_line_id
          and quote_number = p_rec.quote_number
          and ( order_number = p_rec.order_number or ( order_number = 1 and p_rec.order_number != 1) );
	  end if;
   else
	  insert into tpt_quote_lines
           (quote_line_id, quote_number, order_number, quote_line_number,
            vendor_name, product_category, product_name, product_model, 
            color, fabric, description, item_cost, quantity, 
            line_cost, line_value,  suggested_resale, discount_amount,
            margin_percentage, product_type, is_alliance, mpo_date,
            vpo_date,  promise_by_date,  est_ship_date, ship_date, tracking_number,
            invoice_date, received_date, vpo_status,  revenue_counted)
         values
           (p_rec.quote_line_id, p_rec.quote_number, p_rec.order_number, p_rec.quote_line_number,
            p_rec.vendor_name, p_rec.product_category, p_rec.product_name, p_rec.product_model, 
            p_rec.color, p_rec.fabric, p_rec.description, p_rec.item_cost, p_rec.quantity, 
            p_rec.line_cost, p_rec.line_value,  p_rec.suggested_resale, p_rec.discount_amount,
            p_rec.margin_percentage, p_rec.product_type, p_rec.is_alliance, p_rec.mpo_date,
            p_rec.vpo_date,  p_rec.promise_by_date,  p_rec.est_ship_date, p_rec.ship_date, p_rec.tracking_number,
            p_rec.invoice_date, p_rec.received_date, p_rec.vpo_status,  p_rec.revenue_counted);
   end if;
   close data_cur;
end insert_update_quote_line;
