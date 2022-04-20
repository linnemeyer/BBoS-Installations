create or replace procedure insert_update_quote (p_rec tpt_quotes%rowtype) is
   v_rec tpt_quotes%rowtype;
   cursor data_cur is 
      select *
	    from tpt_quotes
	   where quote_number = p_rec.quote_number;
begin 
   open  data_cur;
   fetch data_cur
	into v_rec;
   if data_cur%found then
      if nvl(v_rec.quote_number, -999)        != nvl(p_rec.quote_number, -999) or
         nvl(v_rec.opportunity_number, -999)  != nvl(p_rec.opportunity_number, -999) or
         nvl(v_rec.territory_code, -999)      != nvl(p_rec.territory_code, -999) or
         nvl(v_rec.quote_date, sysdate-99999) != nvl(p_rec.quote_date, sysdate-99999) or
         nvl(v_rec.primary_quote, 'w3r4')     != nvl(p_rec.primary_quote, 'w3r4') or
         nvl(v_rec.quote_status, 'w3r4')      != nvl(p_rec.quote_status, 'w3r4') then 
	     update tpt_quotes
		   set opportunity_number  = p_rec.opportunity_number,
               territory_code      = p_rec.territory_code,
               quote_date          = p_rec.quote_date,
               primary_quote       = p_rec.primary_quote,
               quote_status        = p_rec.quote_status
		where quote_number = p_rec.quote_number;
	  end if;
   else
	  insert into tpt_quotes
            (quote_number, opportunity_number, territory_code, quote_date,
             primary_quote, quote_status)
         values
           (p_rec.quote_number, p_rec.opportunity_number, p_rec.territory_code, p_rec.quote_date, 
            p_rec.primary_quote, p_rec.quote_status);
   end if;
   close data_cur;
end insert_update_quote;
