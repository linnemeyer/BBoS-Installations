prompt --application/shared_components/credentials/credentials_for_mapquest
begin
--   Manifest
--     CREDENTIAL: Credentials for MapQuest
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.5'
,p_default_workspace_id=>1608381483082323
,p_default_application_id=>100
,p_default_id_offset=>336536533326679440
,p_default_owner=>'BBOSINSTALLS'
);
wwv_flow_api.create_credential(
 p_id=>wwv_flow_api.id(10631351115460308)
,p_name=>'Credentials for MapQuest'
,p_static_id=>'Credentials_for_MapQuest'
,p_authentication_type=>'HTTP_QUERY_STRING'
,p_valid_for_urls=>'https://www.mapquestapi.com/geocoding/v1/'
,p_prompt_on_install=>true
);
wwv_flow_api.component_end;
end;
/
