create or replace PROCEDURE generate_aud_trigger 
   (p_table_name in varchar2, p_pk1 in varchar2) as
	v_statement   varchar2(30000);
	v_first_time  boolean := true;
	v_nvl         varchar2(20);
	v_table_name  varchar2(100);
	v_pk1         varchar2(50);
	v_new_col     varchar2(50);
	v_old_col     varchar2(50);

   cursor col_cur (p_table_name varchar) is
      select column_name, data_type, nullable
        from user_tab_cols
       where table_name = p_table_name
         and column_name not in ('CREATED_BY', 'CREATED_ON',
                                 'UPDATED_BY', 'UPDATED_ON',
                                 v_pk1)
		order by nullable;
BEGIN
   v_table_name := upper(p_table_name);
   v_pk1 := upper(p_pk1);
   v_statement :=

'create or replace TRIGGER  ' || v_table_name ||'_AUD
      after update or delete on ' || v_table_name || '
      referencing old as old new as new
      for each row
DECLARE
	v_audit_id number;
BEGIN

   --
   -- UPDATE Logic
   --
   if updating then
     if ';
   
    for it in col_cur(v_table_name) loop
		
		if it.data_type = 'VARCHAR2' then
		  v_new_col := 'new_char_value';
		  v_old_col := 'old_char_value';
		elsif it.data_type = 'NUMBER' then
		  v_new_col := 'new_num_value';
		  v_old_col := 'old_num_value';
		elsif it.data_type IN ( 'DATE', 'TIMESTAMP(0) WITH LOCAL TIME ZONE') then
		  v_new_col := 'new_date_value';
		  v_old_col := 'old_date_value';
		end if;

        if it.nullable = 'N' then
           v_statement := v_statement ||
           '             :new.'||it.column_name ||' != :old.'||it.column_name||' or'||chr(10);
        else
           if it.data_type = 'VARCHAR2' then
              v_nvl := '''asdf''';
           elsif it.data_type = 'NUMBER' then
              v_nvl := '-99';
           elsif it.data_type IN ( 'DATE', 'TIMESTAMP(0) WITH LOCAL TIME ZONE') then
              v_nvl := 'sysdate-9999.5';
           end if;
		   
           v_statement := v_statement ||
           '             nvl(:new.'||it.column_name || ', '||v_nvl||') != nvl(:old.'||it.column_name|| ', '||v_nvl||') or '||chr(10);
						
        end if;
    end loop;
    
    v_statement := substr(v_statement, 1, length(v_statement) - 4);
   
	v_statement := v_statement ||	' then
			insert into bb_audits 
			  (user_name, change_time, table_name, action, primary_key)
			values 
			  (nvl(v(''APP_USER''),user), sysdate, '''||v_table_name||''', ''UPDATE'',  :old.'||v_pk1||')
			returning audit_id into v_audit_id;'||chr(10)||chr(10);

    for it in col_cur(v_table_name) loop
		
		if it.data_type = 'VARCHAR2' then
		  v_new_col := 'new_char_value';
		  v_old_col := 'old_char_value';
		elsif it.data_type = 'NUMBER' then
		  v_new_col := 'new_num_value';
		  v_old_col := 'old_num_value';
		elsif it.data_type  IN ( 'DATE', 'TIMESTAMP(0) WITH LOCAL TIME ZONE') then
		  v_new_col := 'new_date_value';
		  v_old_col := 'old_date_value';
		end if;

        if it.nullable = 'N' then
           v_statement := v_statement ||
           '            if :new.'||it.column_name ||' != :old.'||it.column_name||' then
				   insert into bb_audit_columns
				   ( audit_id, column_name, '||v_new_col||', '||v_old_col||')
				   values
				   ( v_audit_id, '''||it.column_name||''', :new.'||it.column_name ||', :old.'||it.column_name||');
			end if;'||chr(10)||chr(10);
        else
           if it.data_type = 'VARCHAR2' then
              v_nvl := '''asdf''';
           elsif it.data_type = 'NUMBER' then
              v_nvl := '-99';
           elsif it.data_type  IN ( 'DATE', 'TIMESTAMP(0) WITH LOCAL TIME ZONE') then
              v_nvl := 'sysdate-9999.5';
           end if;
		   
           v_statement := v_statement ||
           '            if nvl(:new.'||it.column_name || ', '||v_nvl||') != nvl(:old.'||it.column_name|| ', '||v_nvl||') then
				insert into bb_audit_columns
				 ( audit_id, column_name, '||v_new_col||', '||v_old_col||')
				values
				 ( v_audit_id, '''||it.column_name||''', :new.'||it.column_name ||', :old.'||it.column_name||');
			end if;'||chr(10)||chr(10);
						
        end if;
    end loop;
	v_statement := v_statement || '         end if;
      end if;
   --
   -- DELETE Logic
   --
   if deleting then
		insert into bb_audits 
			  (user_name, change_time, table_name, action, primary_key)
			values 
			  (nvl(v(''APP_USER''),user), sysdate, '''||v_table_name||''', ''DELETE'',  :old.'||v_pk1||')
			returning audit_id into v_audit_id;'||chr(10)||chr(10);

    for it in col_cur(v_table_name) loop

        if it.nullable = 'N' then
           v_statement := v_statement ||
           '        insert into bb_audit_columns
			( audit_id, column_name, new_char_value, old_char_value)
			values
			( v_audit_id, '''||it.column_name||''', :new.'||it.column_name ||', :old.'||it.column_name||');'||chr(10)||chr(10);
			            
        else
           if it.data_type = 'VARCHAR2' then
              v_nvl := '''asdf''';
           elsif it.data_type = 'NUMBER' then
              v_nvl := '-99';
           elsif it.data_type  IN ( 'DATE', 'TIMESTAMP(0) WITH LOCAL TIME ZONE') then
              v_nvl := 'sysdate-9999.5';
           end if;
		   
           v_statement := v_statement ||
           '        insert into bb_audit_columns
			( audit_id, column_name, new_char_value, old_char_value)
			values
			( v_audit_id, '''||it.column_name||''', :new.'||it.column_name ||', :old.'||it.column_name||');'||chr(10)||chr(10);
						
        end if;
    end loop;
  v_statement := v_statement || '     end if;
end;';
   execute immediate v_statement;
end;
