create or replace procedure insert_update_opportunity (p_rec tpt_opportunities%rowtype) is
   v_rec tpt_opportunities%rowtype;
   cursor data_cur is 
      select *
	    from tpt_opportunities
	   where opportunity_number = p_rec.opportunity_number;
begin 
   open  data_cur;
   fetch data_cur
	into v_rec;
   if data_cur%found then
      if nvl(v_rec.account_number, -999)            != nvl(p_rec.account_number, -999) or
        nvl( v_rec.opportunity_name, 'w3r4')        != nvl(p_rec.opportunity_name, 'w3r4') or
         nvl(v_rec.opportunity_date, sysdate-99999) != nvl(p_rec.opportunity_date, sysdate-99999) or
         nvl(v_rec.first_name, 'w3r4')              != nvl(p_rec.first_name, 'w3r4') or
         nvl(v_rec.last_name, 'w3r4')               != nvl(p_rec.last_name, 'w3r4') or
         nvl(v_rec.company_name, 'w3r4')            != nvl(p_rec.company_name, 'w3r4') or
         nvl(v_rec.email, 'w3r4')                   != nvl(p_rec.email, 'w3r4') or
         nvl(v_rec.address1, 'w3r4')                != nvl(p_rec.address1, 'w3r4') or
         nvl(v_rec.address2, 'w3r4')                != nvl(p_rec.address2, 'w3r4') or
         nvl(v_rec.city, 'w3r4')                    != nvl(p_rec.city, 'w3r4') or
         nvl(v_rec.opportunity_state, 'w3r4')       != nvl(p_rec.opportunity_state, 'w3r4') or
         nvl(v_rec.zipcode, -999)                   != nvl(p_rec.zipcode, -999) or
         nvl(v_rec.source, 'w3r4')                  != nvl(p_rec.source, 'w3r4')  then 
	     update tpt_opportunities
		   set account_number    = p_rec.account_number,
               opportunity_name  = p_rec.opportunity_name,
               opportunity_date  = p_rec.opportunity_date,
               first_name        = p_rec.first_name,
               last_name         = p_rec.last_name,
               company_name      = p_rec.company_name,
               email             = p_rec.email,
               address1          = p_rec.address1,
               address2          = p_rec.address2,
               city              = p_rec.city,
               opportunity_state = p_rec.opportunity_state,
               zipcode           = p_rec.zipcode,
               source            = p_rec.source
		where opportunity_number = p_rec.opportunity_number;
	  end if;
   else
	  insert into tpt_opportunities
           (opportunity_number, account_number, opportunity_name, 
            opportunity_date, first_name, last_name, company_name, 
            email, address1, address2, city, 
            opportunity_state, zipcode, source)
         values
           (p_rec.opportunity_number, p_rec.account_number, p_rec.opportunity_name, 
            p_rec.opportunity_date, p_rec.first_name, p_rec.last_name, p_rec.company_name, 
            p_rec.email, p_rec.address1, p_rec.address2, p_rec.city, 
            p_rec.opportunity_state, p_rec.zipcode, p_rec.source);
   end if;
   close data_cur;
end insert_update_opportunity;
