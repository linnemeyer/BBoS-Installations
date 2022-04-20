create or replace PROCEDURE generate_bui_trigger (p_table_name in varchar2, p_pk in varchar2) as
   v_statement   varchar2(10000);
   v_first_time  boolean := true;
   v_nvl         varchar2(20);
   v_table_name  varchar2(100);

   cursor col_cur (p_table_name varchar) is
      select column_name, data_type, nullable
        from user_tab_cols
       where table_name = p_table_name
         and column_name not in ('CREATED_BY', 'CREATED_ON',
                                 'UPDATED_BY', 'UPDATED_ON',
                                 p_pk)
       order by nullable;
BEGIN
   v_table_name := upper(p_table_name);
   v_statement :=

'create or replace TRIGGER  ' || v_table_name ||'_BUI
      before insert or update on ' || v_table_name || '
      referencing old as old new as new
      for each row
 BEGIN

   --
   -- INSERT Logic
   --
   if inserting then'||
--      if :new.'||p_pk||' is null then
--         select bb_log_id_seq.nextval
--           into :new.'||p_pk||'
--           from dual;
--      end if;
'

      if :new.created_by is null then
         :new.created_by := nvl(v(''APP_USER''),user);
      end if;

      if :new.created_on is null then
         :new.created_on := sysdate;
      end if;

      :new.updated_on := null;
      :new.updated_by   := null;
   end if;

   --
   -- UDATE Logic
   --
   if updating ';

    for it in col_cur(v_table_name) loop

        if v_first_time then
           v_first_time := false;
           v_statement := v_statement || ' and '||
                          chr(10)||'      ('|| chr(10);
        else
           v_statement := v_statement || ' or '|| chr(10);
        end if;

        if it.nullable = 'N' then
           v_statement := v_statement ||
           '       :new.'||it.column_name ||' != :old.'||it.column_name;
        else
           if it.data_type = 'VARCHAR2' then
              v_nvl := '''asdf''';
           elsif it.data_type = 'NUMBER' then
              v_nvl := '-99';
           elsif it.data_type = 'DATE' or instr(it.data_type, 'TIMESTAMP') > 0 then
              v_nvl := 'sysdate-99.5';
           end if;

           v_statement := v_statement || '       nvl(:new.'||it.column_name|| ', '||v_nvl||
                          ') != nvl(:old.'||it.column_name|| ', '||v_nvl ||')';
        end if;
     end loop;

     v_statement := v_statement ||
    ' ) then

      :new.updated_by := nvl(v(''APP_USER''),user);
      :new.updated_on := sysdate;

   end if;
end; ';
   execute immediate v_statement;
end;
