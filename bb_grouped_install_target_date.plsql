create or replace function bb_grouped_install_target_date (p_order_id number, p_install_part_id number, p_grouping varchar2) return date is
   cursor data_cur is 
      select max(ip.target_date) target_date
        from bb_install_parts ip 
       where ip.order_id = P_ORDER_ID 
	     and ip.install_grouping = P_GROUPING
         and ip.install_part_id = nvl(P_INSTALL_PART_ID, ip.install_part_id) ;
   p_return  date := null;
BEGIN
   for it in data_cur loop
      p_return := it.target_date;
   end loop;
   return p_return;
END bb_grouped_install_target_date;
