prompt --application/pages/page_00999
begin
--   Manifest
--     PAGE: 00999
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
 p_id=>999
,p_user_interface_id=>wwv_flow_api.id(16247817463432732611)
,p_name=>'Global Page - Mobile'
,p_step_title=>'Global Page - Mobile'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20180807141155'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16247822937183732619)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247804184078732264)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'101'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
,p_plug_comment=>'Header'
);
wwv_flow_api.component_end;
end;
/
