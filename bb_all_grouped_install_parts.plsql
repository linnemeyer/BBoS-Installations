create or replace function bb_all_grouped_install_parts (p_order_id number, p_install_part_id number, p_grouping varchar2) return varchar2 is
   cursor data_cur is 
      select item_description
        from bb_install_parts ip 
       where ip.order_id = P_ORDER_ID 
	     and ip.install_grouping = P_GROUPING
         and ip.install_part_id = nvl(P_INSTALL_PART_ID, ip.install_part_id) 
         and ip.installation_date is null;
   p_return  varchar2(2000) := null;
BEGIN
   for it in data_cur loop
      p_return := p_return || it.item_description||',  ';
   end loop;
   return substr(p_return, 1, length(p_return)-3);
END bb_all_grouped_install_parts;
