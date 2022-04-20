create or replace PACKAGE BODY bb_security as

   --Package variables used by Encryption/Decryption functions
   key_string                   varchar2(16);
   raw_key                      raw(128);
   encrypted_raw                raw(2048);
   encrypted_string             varchar2(2048);
   decrypted_raw                raw(2048);
   decrypted_string             varchar2(2048);
   error_in_input_buffer_length EXCEPTION;  --Exception if string length is not a multiple of 8
   double_encrypt_not_permitted EXCEPTION;  --Exception if you try to encrypt an encrypted string

   PRAGMA EXCEPTION_INIT(error_in_input_buffer_length, -28232);
     input_buffer_length_err_msg varchar2(100) :=
      '*** INPUT BUFFER NOT A MULTIPLE OF 8 BYTES - CANNOT ENCRYPT ***';
   PRAGMA EXCEPTION_INIT(double_encrypt_not_permitted, -28233);
     double_encryption_err_msg varchar2(100) :=
   '*** CANNOT DOUBLE ENCRYPT DATA - IGNORING EXCEPTION ***';

--------------------------------------------------------------------------------
   function encrypt_str (p_str in varchar2) return varchar2 is
      ret_val     varchar2(1000);
      raw_input   raw(128);
      v_num       integer;
      v_str       varchar2(1000);
      v_key1      varchar2(2) := chr(107)||chr(101);
      v_key2      varchar2(2) := chr(101)||chr(104);
      v_key3      varchar2(2) := chr(101)||chr(98);
      v_key4      varchar2(2) := chr(116)||chr(110);
      v_key5      varchar2(2) := chr(117)||chr(109);
      v_key6      varchar2(2) := chr(114)||chr(101);
      v_key7      varchar2(2) := chr(116)||chr(115);
      v_key8      varchar2(2) := chr(101)||chr(112);
   begin
      if (length(p_str)/8) = trunc(length(p_str)/8) then
         v_str := p_str;
      else
         -- make the string length a multiple of 8
         v_num := ceil((length(p_str)/8));
         v_str := rpad(p_str, (8*v_num), chr(178));
      end if;
      key_string := v_key1||v_key8||v_key2||v_key7||v_key3||v_key6||v_key4||v_key5;
      raw_key := utl_raw.cast_to_raw(key_string);
      raw_input := utl_raw.cast_to_raw(v_str);
      dbms_obfuscation_toolkit.desencrypt( input => raw_input
                                        , key => raw_key
                                        , encrypted_data => encrypted_raw );
      ret_val := rawtohex(encrypted_raw);
      return ret_val;
   end encrypt_str;

--------------------------------------------------------------------------------
   function decrypt_str (p_str in varchar2) return varchar2 is
      ret_val  varchar2(1000);
      v_key1   varchar2(2) := chr(107)||chr(101);
      v_key2   varchar2(2) := chr(101)||chr(104);
      v_key3   varchar2(2) := chr(101)||chr(98);
      v_key4   varchar2(2) := chr(116)||chr(110);
      v_key5   varchar2(2) := chr(117)||chr(109);
      v_key6   varchar2(2) := chr(114)||chr(101);
      v_key7   varchar2(2) := chr(116)||chr(115);
      v_key8   varchar2(2) := chr(101)||chr(112);
   begin
      key_string := v_key1||v_key8||v_key2||v_key7||v_key3||v_key6||v_key4||v_key5;
      raw_key := utl_raw.cast_to_raw(key_string);
      encrypted_raw := hextoraw(p_str);
      dbms_obfuscation_toolkit.desdecrypt( input => encrypted_raw
                                        , key => raw_key
                                        , decrypted_data => decrypted_raw);
      ret_val := replace (utl_raw.cast_to_varchar2(decrypted_raw), chr (178), '');

      return ret_val;
   end decrypt_str;



   --------------------------------------------------------------------------------
   function bb_auth   (p_username in varchar2,
                       p_password in varchar2)
        return BOOLEAN is

      cursor user_cur ( p_uname varchar2) is
         select password
           from bb_users u
          where lower(u.user_name) = lower(p_uname)
            and sysdate between u.access_eff_date
                            and nvl(u.access_term_date, sysdate + 1);

      v_password        varchar2(4000);
      v_stored_password varchar2(4000);
      v_count           number;
      v_results         boolean := false;
      v_app_id          number;
      v_profile_id      number;
   begin

      v_app_id := nv('APP_ID');

      -- first check to see if the user account dates are valid
      --   and they have a profile for the application
      open  user_cur(p_username);
      fetch user_cur
       into v_password;
      if user_cur%found then

          -- decrypt stored password
          v_stored_password := decrypt_str(v_password);

          -- compare supplied password and stored password
          if p_password = v_stored_password then
             v_results :=  true;
          end if;

      end if;
      close user_cur;
      return v_results;

   end bb_auth;

   --------------------------------------------------------------------------------
   procedure updateUserPassword(p_userid   in number,
                                p_password in varchar2) is

      v_stored_password varchar2(4000);
   begin

      v_stored_password := encrypt_str(p_password);

      update bb_users
         set password = v_stored_password
       where user_id  = p_userid;

   end updateUserPassword;

   --------------------------------------------------------------------------------
   

end bb_security;
