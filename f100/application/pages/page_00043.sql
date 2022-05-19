prompt --application/pages/page_00043
begin
--   Manifest
--     PAGE: 00043
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
 p_id=>43
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'TPT Prep Steps'
,p_alias=>'TPT-PREP-STEPS'
,p_step_title=>'TPT Prep Steps'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(16247651097089137992)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20211014233315'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26824250624947632)
,p_plug_name=>'TPT Prep Steps'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(16247583999328137937)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(26819542177947618)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(16247623704047137963)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26824332155947632)
,p_plug_name=>'TPT Prep Steps'
,p_parent_plug_id=>wwv_flow_api.id(26824250624947632)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247552094877137919)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'Verify the start and end date of the raw data download.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26826037351947633)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26824250624947632)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:38:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26826330002947633)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26824250624947632)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(16247625805411137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26826256691947633)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26824250624947632)
,p_button_name=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625651718137965)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26827681093947634)
,p_branch_name=>'Go To Page 40'
,p_branch_action=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:40::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(26826330002947633)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26827056437947633)
,p_branch_action=>'f?p=&APP_ID.:42:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(26826256691947633)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26787461512632106)
,p_name=>'P43_END_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26824332155947632)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(sysdate, ''DD-Mon-YYYY'')',
'  from dual'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'End Date'
,p_format_mask=>'DD-Mon-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26825725178947633)
,p_name=>'P43_START_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26824332155947632)
,p_prompt=>'Start Date'
,p_format_mask=>'DD-Mon-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>2
,p_grid_column=>1
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26787648385632107)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'truncate load tables'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  delete from tpt_phones;',
'  delete from tpt_raw_data;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26826330002947633)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26787414977632105)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'populate_start_date'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char( max(end_date), ''DD-Mon-YYYY'' )',
'  into :P43_START_DATE',
'  from tpt_load_dates;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
