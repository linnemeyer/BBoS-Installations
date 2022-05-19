prompt --application/pages/page_00022
begin
--   Manifest
--     PAGE: 00022
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
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'email test'
,p_step_title=>'email test'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20211016185232'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(336850368234692690)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16247573660091137931)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(336850487564692691)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(336850368234692690)
,p_button_name=>'New'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_image_alt=>'Send Test Email'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(336850577804692692)
,p_branch_name=>'return'
,p_branch_action=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(336850733039692693)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_body      CLOB;',
'BEGIN',
'    l_body := ''Thank you for your interest in the APEX_MAIL ',
'package.''||utl_tcp.crlf||utl_tcp.crlf;',
'    l_body := l_body ||''  Sincerely,''||utl_tcp.crlf;',
'    l_body := l_body ||''  The Application Express Dev Team''||utl_tcp.crlf;',
'    apex_mail.send(',
'        p_to       => ''llinnemeyer@budgetblinds.com,lc.linnemeyer@gmail.com'',   -- change to your email address',
'        p_from     => ''bb_install@revion.com'', -- change to a real senders email address',
'        p_body     => l_body,',
'        p_subj     => ''APEX_MAIL Package - Plain Text message'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Email Sent'
);
wwv_flow_api.component_end;
end;
/
