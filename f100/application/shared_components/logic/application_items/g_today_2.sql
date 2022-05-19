prompt --application/shared_components/logic/application_items/g_today_2
begin
--   Manifest
--     APPLICATION ITEM: G_TODAY_2
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.6'
,p_default_workspace_id=>1608381483082323
,p_default_application_id=>100
,p_default_id_offset=>336536533326679440
,p_default_owner=>'BBOSINSTALLS'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(284208859929546147)
,p_name=>'G_TODAY_2'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
);
wwv_flow_api.component_end;
end;
/
