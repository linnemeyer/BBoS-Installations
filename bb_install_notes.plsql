create or replace function bb_install_notes (p_order_id number, p_install_date date) return varchar is
   cursor data_cur is 
      select trim(ip.install_notes) install_notes
        from bb_install_parts ip 
       where ip.order_id = P_ORDER_ID 
         and ip.scheduled_install_date = P_INSTALL_DATE
       order by length(install_notes) desc;
   p_return  varchar2(2000) := null;
BEGIN
   for it in data_cur loop
      if instr(nvl(p_return,'asdf'), it.install_notes) = 0 then
         if p_return is null then 
            p_return := it.install_notes;
         else
            p_return := p_return||'  '||it.install_notes;
         end if;  
      end if;
   end loop;
   return p_return;
END bb_install_notes ;
