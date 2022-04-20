create or replace PACKAGE bb_security AS

   function encrypt_str (p_str in varchar2) return varchar2;

   function decrypt_str (p_str in varchar2) return varchar2;

   function bb_auth (p_username in varchar2,
                     p_password in varchar2) return boolean;

   procedure updateUserPassword(p_userid   in number,
                                p_password in varchar2);

end bb_security;
