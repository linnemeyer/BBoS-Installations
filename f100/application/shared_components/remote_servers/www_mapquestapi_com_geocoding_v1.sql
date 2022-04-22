prompt --application/shared_components/remote_servers/www_mapquestapi_com_geocoding_v1
begin
--   Manifest
--     REMOTE SERVER: www-mapquestapi-com-geocoding-v1
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.5'
,p_default_workspace_id=>1608381483082323
,p_default_application_id=>100
,p_default_id_offset=>336536533326679440
,p_default_owner=>'BBOSINSTALLS'
);
wwv_flow_api.create_remote_server(
 p_id=>wwv_flow_api.id(10626134325420396)
,p_name=>'www-mapquestapi-com-geocoding-v1'
,p_static_id=>'www_mapquestapi_com_geocoding_v1'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('www_mapquestapi_com_geocoding_v1'),'https://www.mapquestapi.com/geocoding/v1/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('www_mapquestapi_com_geocoding_v1'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('www_mapquestapi_com_geocoding_v1'),'')
,p_prompt_on_install=>false
);
wwv_flow_api.component_end;
end;
/
