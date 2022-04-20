create or replace procedure insert_update_account (p_account_rec tpt_accounts%rowtype) is
   v_account_rec tpt_accounts%rowtype;
   cursor data_cur is 
      select *
	    from tpt_accounts
	   where account_number = p_account_rec.account_number;
begin 
   open data_cur;
   fetch data_cur
	into v_account_rec;
   if data_cur%found then
      if nvl(v_account_rec.account_date, sysdate-99999)  != nvl(p_account_rec.account_date, sysdate-99999) or
		 nvl(v_account_rec.lead_number, -9999)           != nvl(p_account_rec.lead_number, -9999) or
		 nvl(v_account_rec.lead_date, sysdate-99999)     != nvl(p_account_rec.lead_date, sysdate-99999) or
		 nvl(v_account_rec.lead_source, 'w3r4')          != nvl(p_account_rec.lead_source, 'w3r4') or
		 nvl(v_account_rec.account_first_name, 'w3r4')   != nvl(p_account_rec.account_first_name, 'w3r4') or
		 nvl(v_account_rec.account_last_name, 'w3r4')    != nvl(p_account_rec.account_last_name, 'w3r4') or
		 nvl(v_account_rec.account_company_name, 'w3r4') != nvl(p_account_rec.account_company_name, 'w3r4') or
		 nvl(v_account_rec.account_email, 'w3r4')        != nvl(p_account_rec.account_email, 'w3r4') or
		 nvl(v_account_rec.account_address1, 'w3r4')     != nvl(p_account_rec.account_address1, 'w3r4') or
		 nvl(v_account_rec.account_address2, 'w3r4')     != nvl(p_account_rec.account_address2, 'w3r4') or
		 nvl(v_account_rec.account_city, 'w3r4')         != nvl(p_account_rec.account_city, 'w3r4') or
		 nvl(v_account_rec.account_state, 'w3r4')        != nvl(p_account_rec.account_state, 'w3r4') or
		 nvl(v_account_rec.account_zipcode, 'w3r4')      != nvl(p_account_rec.account_zipcode, 'w3r4') or
		 nvl(v_account_rec.account_source, 'w3r4')       != nvl(p_account_rec.account_source, 'w3r4') or
		 nvl(v_account_rec.account_campaign, 'w3r4')     != nvl(p_account_rec.account_campaign, 'w3r4') or
		 nvl(v_account_rec.sales_person_id, -9999)       != nvl(p_account_rec.sales_person_id, -9999) or
		 nvl(v_account_rec.sales_person, 'w3r4')         != nvl(p_account_rec.sales_person, 'w3r4') then 
	     update tpt_accounts
		   set account_date         = p_account_rec.account_date
			 , lead_number          = p_account_rec.lead_number
			 , lead_date            = p_account_rec.lead_date
			 , lead_source          = p_account_rec.lead_source
			 , account_first_name   = p_account_rec.account_first_name
			 , account_last_name    = p_account_rec.account_last_name
			 , account_company_name = p_account_rec.account_company_name
			 , account_email        = p_account_rec.account_email
			 , account_address1     = p_account_rec.account_address1
			 , account_address2     = p_account_rec.account_address2
			 , account_city         = p_account_rec.account_city
			 , account_state        = p_account_rec.account_state
			 , account_zipcode      = p_account_rec.account_zipcode
			 , account_source       = p_account_rec.account_source
			 , account_campaign     = p_account_rec.account_campaign
			 , sales_person_id      = p_account_rec.sales_person_id
			 , sales_person         = p_account_rec.sales_person
		where account_number = p_account_rec.account_number;
	  end if;
   else
	  insert into tpt_accounts
	    (account_number, account_date, lead_number, lead_date, lead_source,
	 	account_first_name, account_last_name, account_company_name,
 		account_email, account_address1, account_address2, account_city, 
		account_state, account_zipcode, account_source, account_campaign ,
		sales_person_id, sales_person)
	  values
	   (p_account_rec.account_number, p_account_rec.account_date, p_account_rec.lead_number, p_account_rec.lead_date, p_account_rec.lead_source,
		p_account_rec.account_first_name, p_account_rec.account_last_name, p_account_rec.account_company_name,
		p_account_rec.account_email, p_account_rec.account_address1, p_account_rec.account_address2, p_account_rec.account_city,
		p_account_rec.account_state, p_account_rec.account_zipcode, p_account_rec.account_source, p_account_rec.account_campaign,
		p_account_rec.sales_person_id, p_account_rec.sales_person);
   end if;
   close data_cur;
end insert_update_account;
