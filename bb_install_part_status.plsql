create or replace function bb_install_part_status (p_order_id number, p_install_part_id number) return varchar2 is
   cursor part_cur is
      select ip.expected_delivery_date, ip.actual_delivery_date
           , trunc(sysdate) - nvl(ip.actual_delivery_date, ip.expected_delivery_date) days_on_hand
           , ip.scheduled_install_date
           , o.initial_or_followup
           , ip.all_parts_received
           , ip.target_date, nvl(ip.hold_date, o.hold_date) hold_date
           , (select nvl(count(*),0)
               from bb_install_parts oip
              where oip.order_id = ip.order_id
                and oip.install_grouping = 'Together'  
                and ip.install_grouping = 'Together'
                and oip.all_parts_received != 'All') other_parts_wait_count
        from bb_install_parts ip, bb_orders o
       where ip.install_part_id = P_INSTALL_PART_ID
         and ip.order_id = o.order_id;
   p_status  varchar2(30);
BEGIN
   for it in part_cur loop
      p_status := 
      case when it.initial_or_followup = 'R' 
            and it.scheduled_install_date is null
           then 'Schedule Service Call'
           when it.initial_or_followup = 'R'
            and it.scheduled_install_date is not null 
            and trunc(it.scheduled_install_date) >= trunc(sysdate)
           then 'Scheduled'
           when it.initial_or_followup = 'F' 
            and it.expected_delivery_date is null
           then 'RGA Action Needed'
           when it.scheduled_install_date is not null 
            and trunc(it.scheduled_install_date) >= trunc(sysdate)
            and it.other_parts_wait_count = 0
           then 'Scheduled'
           when it.scheduled_install_date is not null 
            and trunc(it.scheduled_install_date) >= trunc(sysdate)
            and it.other_parts_wait_count > 0
           then 'Scheduled with receivables'
           when it.scheduled_install_date is not null 
            and trunc(it.scheduled_install_date) < trunc(sysdate)
           then 'Installed ?'
           when it.hold_date is not null 
            and trunc(it.hold_date) > trunc(sysdate)
           then 'On Hold'
           when it.hold_date is not null 
            and trunc(it.hold_date) <= trunc(sysdate)
           then 'Check On Hold'
           when it.days_on_hand > 6
            and it.actual_delivery_date is null 
           then 'Track Package'
           when it.days_on_hand between 0 and 6
            and (it.actual_delivery_date is null 
                 or (it.actual_delivery_date is not null and it.all_parts_received = 'Partial'))
           then 'Delivery Due'
           when it.actual_delivery_date is not null
            and it.all_parts_received = 'All'
            and it.other_parts_wait_count = 0
           then 'Schedule'
           when it.actual_delivery_date is not null
            and it.all_parts_received = 'All'
            and it.other_parts_wait_count > 0
           then 'Waiting Other Parts'
           else 'On Track' end;
   end loop;
   return p_status;
END bb_install_part_status;
