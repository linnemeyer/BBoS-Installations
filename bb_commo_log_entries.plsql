create or replace function bb_commo_log_entries (p_order_id number) return varchar is
   cursor data_cur is 
      select initcap(created_by)||' - '||to_char(log_date, 'dd-Mon HH:MI AM')||' - '||trim(cl.log_entry) commo_log
        from bb_commo_log cl 
       where cl.order_id = P_ORDER_ID 
       order by cl.log_id desc;
   p_return  varchar2(2000) := null;
BEGIN
   for it in data_cur loop
      if p_return is null then 
            p_return := it.commo_log;
      else
         p_return := p_return||';  '||it.commo_log;
      end if;  
   end loop;
   return p_return;
END bb_commo_log_entries ;
