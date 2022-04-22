prompt --application/shared_components/security/authentications/bb_custom_auth
begin
--   Manifest
--     AUTHENTICATION: BB Custom Auth
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.5'
,p_default_workspace_id=>1608381483082323
,p_default_application_id=>100
,p_default_id_offset=>336536533326679440
,p_default_owner=>'BBOSINSTALLS'
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(754466894053466430)
,p_name=>'BB Custom Auth'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'bb_security.bb_auth'
,p_attribute_05=>'Y'
,p_attribute_09=>'NO_SSL'
,p_attribute_11=>'Y'
,p_attribute_14=>'STD'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_comments=>'Uses bb_security package'
);
wwv_flow_api.component_end;
end;
/
