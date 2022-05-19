prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
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
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20220407223328'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16247824238846732620)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247803818366732262)
,p_plug_display_sequence=>100
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'101'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
,p_plug_comment=>'Footer'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31989693475902387)
,p_button_sequence=>10
,p_button_name=>'MESSAGES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_image_alt=>'&P0_NEW_MESSAGES.'
,p_button_position=>'BEFORE_NAVIGATION_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.::IR_MSG_PRIMARY:'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':APP_PAGE_ID != 60 ',
'and',
':P0_NEW_MESSAGES is not null'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'u-danger'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16247823324850732619)
,p_button_sequence=>10
,p_button_name=>'MENU'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247815193408732274)
,p_button_image_alt=>'Menu'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_condition_type=>'NEVER'
,p_button_cattributes=>'data-icon="bars" data-iconpos="notext" data-direction="reverse"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16247823776450732619)
,p_button_sequence=>20
,p_button_name=>'LOGOUT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247815193408732274)
,p_button_image_alt=>'Log Out'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'javascript:location.href="&LOGOUT_URL.";'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31989618605902386)
,p_name=>'P0_NEW_MESSAGES'
,p_item_sequence=>10
,p_item_display_point=>'BEFORE_NAVIGATION_BAR'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16247824567728732620)
,p_name=>'open panel'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16247823776450732619)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16247824567728732620)
,p_event_id=>wwv_flow_api.id(16247824567728732620)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$.mobile.activePage.find(''#menupanel'').panel("open");'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2590456259397072895)
,p_name=>'Success Fade'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2590456327695072896)
,p_event_id=>wwv_flow_api.id(2590456259397072895)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_AUTO FADE SUCCESS MESSAGE'
,p_attribute_01=>'2000'
);
wwv_flow_api.component_end;
end;
/
