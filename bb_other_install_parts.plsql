create or replace function bb_other_install_parts (p_order_id number, p_install_part_id number) return varchar2 is
   cursor data_cur is 
      select item_description||' '||all_parts_received||' on hand'||
                case when installation_date is not null then 
                     ' installed on '||to_char(installation_date, 'mm/dd/rr')
                     when installation_date is null and scheduled_install_date is not null then 
                     ' installation scheduled for '||to_char(scheduled_install_date, 'mm/dd/rr')
                end other_stuff 
        from bb_install_parts ip 
       where ip.order_id = P_ORDER_ID 
         and ip.install_part_id != P_INSTALL_PART_ID;
   p_return  varchar2(2000);
   p_other   varchar2(2000) := null;
BEGIN
   for it in data_cur loop
      p_other := p_other || it.other_stuff||'  ';
   end loop;
   if p_other is null then
      p_return := p_return ||'No other install parts';
   else
      p_return := p_return ||'Other install parts:  '|| p_other;
   end if;
   return p_return;
END bb_other_install_parts;
