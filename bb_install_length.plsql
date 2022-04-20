create or replace function bb_install_length (p_order_id number, p_install_date date) return number is
   cursor data_cur is 
      select sum(estimated_install_minutes) est_time
        from bb_install_parts ip 
       where ip.order_id = P_ORDER_ID 
         and ip.scheduled_install_date = P_INSTALL_DATE;
   p_return  number := 0;
BEGIN
   open  data_cur;
   fetch data_cur into p_return;
   close data_cur;
   return p_return;
END bb_install_length ;
