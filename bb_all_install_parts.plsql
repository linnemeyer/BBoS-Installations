create or replace function bb_all_install_parts (p_order_id number, p_install_date date, p_installer_id number) return varchar2 is
   cursor data_cur is 
      select item_description
        from bb_install_parts ip 
       where ip.order_id = P_ORDER_ID 
         and ip.scheduled_install_date = P_INSTALL_DATE
         and ip.installer_id = P_INSTALLER_ID;
   p_return  varchar2(2000) := null;
BEGIN
   for it in data_cur loop
      p_return := p_return || it.item_description||',  ';
   end loop;
   return p_return;
END bb_all_install_parts;
