prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.6'
,p_default_workspace_id=>1608381483082323
,p_default_application_id=>100
,p_default_id_offset=>336536533326679440
,p_default_owner=>'BBOSINSTALLS'
);
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'BB Installs'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20210629191346'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16247659064407138003)
,p_plug_name=>'BB Installs'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247568884561137929)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(17932132427790773303)
,p_branch_name=>'Go To Page 38'
,p_branch_action=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:RP,::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_security_scheme=>wwv_flow_api.id(16247650532368137989)
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(137987681920109435)
,p_branch_name=>'Go To Page 19'
,p_branch_action=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_api.component_end;
end;
/
