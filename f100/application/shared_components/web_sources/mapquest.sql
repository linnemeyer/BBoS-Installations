prompt --application/shared_components/web_sources/mapquest
begin
--   Manifest
--     WEB SOURCE: MapQuest
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.6'
,p_default_workspace_id=>1608381483082323
,p_default_application_id=>100
,p_default_id_offset=>336536533326679440
,p_default_owner=>'BBOSINSTALLS'
);
wwv_flow_api.create_web_source_module(
 p_id=>wwv_flow_api.id(28234158137293588)
,p_name=>'MapQuest'
,p_static_id=>'MapQuest'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_api.id(28233680028293587)
,p_remote_server_id=>wwv_flow_api.id(10626134325420396)
,p_url_path_prefix=>'address'
,p_credential_id=>wwv_flow_api.id(10631351115460308)
);
wwv_flow_api.create_web_source_param(
 p_id=>wwv_flow_api.id(28234814823293589)
,p_web_src_module_id=>wwv_flow_api.id(28234158137293588)
,p_name=>'location'
,p_param_type=>'QUERY_STRING'
,p_value=>'4702 N 82nd St, Scottsdale, AZ, 85251'
);
wwv_flow_api.create_web_source_operation(
 p_id=>wwv_flow_api.id(28234360405293588)
,p_web_src_module_id=>wwv_flow_api.id(28234158137293588)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_api.component_end;
end;
/
