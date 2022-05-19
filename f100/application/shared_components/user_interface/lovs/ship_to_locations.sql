prompt --application/shared_components/user_interface/lovs/ship_to_locations
begin
--   Manifest
--     SHIP TO LOCATIONS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.6'
,p_default_workspace_id=>1608381483082323
,p_default_application_id=>100
,p_default_id_offset=>336536533326679440
,p_default_owner=>'BBOSINSTALLS'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16439195928257092857)
,p_lov_name=>'SHIP TO LOCATIONS'
,p_lov_query=>'.'||wwv_flow_api.id(16439195928257092857)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16439196214050092858)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Hayden'
,p_lov_return_value=>'Hayden'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16439196599811092858)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Perry'
,p_lov_return_value=>'Perry'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16439197074974092858)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Will-Call'
,p_lov_return_value=>'Will-Call'
);
wwv_flow_api.component_end;
end;
/
