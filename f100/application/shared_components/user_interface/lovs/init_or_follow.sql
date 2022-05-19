prompt --application/shared_components/user_interface/lovs/init_or_follow
begin
--   Manifest
--     INIT_OR_FOLLOW
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
 p_id=>wwv_flow_api.id(16436808424882714884)
,p_lov_name=>'INIT_OR_FOLLOW'
,p_lov_query=>'.'||wwv_flow_api.id(16436808424882714884)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16436808773509714885)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Initial'
,p_lov_return_value=>'I'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16436809164434714885)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Follow-up'
,p_lov_return_value=>'F'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30065877301037113)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Repair / Service'
,p_lov_return_value=>'R'
);
wwv_flow_api.component_end;
end;
/
