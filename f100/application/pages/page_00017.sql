prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.5'
,p_default_workspace_id=>1608381483082323
,p_default_application_id=>100
,p_default_id_offset=>336536533326679440
,p_default_owner=>'BBOSINSTALLS'
);
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'Do Install'
,p_step_title=>'Do Install'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(16247544409895137914)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20211016185232'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19376158355188352923)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247583008304137937)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(16247526998945137899)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(16247626579164137966)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(35610998516674992533)
,p_plug_name=>'Do Install'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247573660091137931)
,p_plug_display_sequence=>10
,p_menu_template_id=>wwv_flow_api.id(16247626579164137966)
,p_list_template_id=>wwv_flow_api.id(16247613744164137956)
,p_prn_template_id=>wwv_flow_api.id(16247544409895137914)
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19376153806750352915)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(35610998516674992533)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P17_INSTALL_PART_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19376154611470352915)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(35610998516674992533)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19376154237346352915)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(35610998516674992533)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P17_INSTALL_PART_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2590435345152072886)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(35610998516674992533)
,p_button_name=>'Edit_order'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_image_alt=>'Edit Order'
,p_button_position=>'CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19376153389093352914)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(35610998516674992533)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P17_INSTALL_PART_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(2590435388907072887)
,p_branch_name=>'Edit Order'
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP:P6_ORDER_ID,P6_RETURN_PAGE:&P17_ORDER_ID.,9&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(2590435345152072886)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(2590455837965072891)
,p_branch_name=>'Create Followup'
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,6:P6_ORDER_ID,P6_RETURN_PAGE:&P17_RETURN_ID.,9&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(19376153806750352915)
,p_branch_sequence=>2
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':P17_FOLLOWUP_REQUIRED = ''Yes'' and :P17_FOLLOWUP_VALUE = ''No'''
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(19376160203874352927)
,p_branch_name=>'Go To Page 9'
,p_branch_action=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2590455714688072890)
,p_name=>'P17_FOLLOWUP_VALUE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(35610998516674992533)
,p_use_cache_before_default=>'NO'
,p_source=>'P17_FOLLOWUP_REQUIRED'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2590455885729072892)
,p_name=>'P17_RETURN_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(35610998516674992533)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17932133145850773310)
,p_name=>'P17_INSTALLATION_DATE_QP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(35610998516674992533)
,p_display_as=>'PLUGIN_CH.PURE.APEX.DYNAMIC_QUICKPICK'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Yesterday'' dis',
'     , ''P17_INSTALLATION_DATE'' target',
'     , TO_CHAR ( (TRUNC (SYSDATE)-1)',
'                , ''mm/dd/yyyy'') the_date',
'FROM DUAL',
'UNION ALL',
'SELECT ''Today'' dis',
'     , ''P17_INSTALLATION_DATE'' target',
'     , TO_CHAR ( (TRUNC (SYSDATE))',
'                , ''mm/dd/yyyy'') the_date',
'FROM DUAL'))
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(16247624987503137964)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'['
,p_attribute_02=>']'
,p_attribute_03=>'&nbsp;'
,p_attribute_04=>'style="color:#811919;font-size: 11px;margin: 0 5px 5px 0;text-decoration:none;white-space:nowrap;"'
,p_attribute_05=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17932133202479773311)
,p_name=>'P17_APPLY_TO_ALL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(35610998516674992533)
,p_use_cache_before_default=>'NO'
,p_item_default=>'No'
,p_prompt=>'Apply To All'
,p_source=>'No'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(16247624987503137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Yes'
,p_attribute_03=>'Yes'
,p_attribute_04=>'No'
,p_attribute_05=>'No'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19376154986127352916)
,p_name=>'P17_CUSTOMER_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(35610998516674992533)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Name'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select client_name',
'  from bb_orders',
' where order_id = :P17_ORDER_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(16247624987503137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19376155401614352917)
,p_name=>'P17_INSTALL_PART_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(35610998516674992533)
,p_use_cache_before_default=>'NO'
,p_source=>'INSTALL_PART_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19376155838361352918)
,p_name=>'P17_ORDER_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(35610998516674992533)
,p_use_cache_before_default=>'NO'
,p_source=>'ORDER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19376156210145352918)
,p_name=>'P17_ITEM_DESCRIPTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(35610998516674992533)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Description'
,p_source=>'ITEM_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(16247624987503137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19376156634555352918)
,p_name=>'P17_SCHEDULED_INSTALL_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(35610998516674992533)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Scheduled Installation Date'
,p_format_mask=>'mm/dd/yyyy HH:MIAM'
,p_source=>'SCHEDULED_INSTALL_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_field_template=>wwv_flow_api.id(16247624987503137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19376157022582352920)
,p_name=>'P17_INSTALLATION_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(35610998516674992533)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Installation Date'
,p_format_mask=>'mm/dd/yyyy'
,p_source=>'INSTALLATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(16247624987503137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19376157446322352920)
,p_name=>'P17_FOLLOWUP_REQUIRED'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(35610998516674992533)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Followup Required'
,p_source=>'FOLLOWUP_REQUIRED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(16247624987503137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Yes'
,p_attribute_03=>'Yes'
,p_attribute_04=>'No'
,p_attribute_05=>'No'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19376157854080352920)
,p_name=>'P17_INSTALL_NOTES'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(35610998516674992533)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Install Notes'
,p_source=>'INSTALL_NOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(16247624987503137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19376158892130352925)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BB_INSTALL_PARTS'
,p_attribute_02=>'BB_INSTALL_PARTS'
,p_attribute_03=>'P17_INSTALL_PART_ID'
,p_attribute_04=>'INSTALL_PART_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19376159341460352925)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BB_INSTALL_PARTS'
,p_attribute_02=>'BB_INSTALL_PARTS'
,p_attribute_03=>'P17_INSTALL_PART_ID'
,p_attribute_04=>'INSTALL_PART_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17932133353911773312)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update All'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   for it in ',
'          ( select ip.install_part_id, ip.install_notes',
'              from bb_install_parts ip',
'             where ip.order_id = :P17_ORDER_ID',
'               and ip.install_part_id != :P17_INSTALL_PART_ID ) loop',
'      update bb_install_parts',
'         set scheduled_install_date = to_date(:P17_SCHEDULED_INSTALL_DATE, ''mm/dd/yyyy HH:MIAM'')',
'           , installation_date = to_date(:P17_INSTALLATION_DATE, ''mm/dd/yyyy'')',
'           , followup_required = :P17_FOLLOWUP_REQUIRED',
'           , install_notes = nvl2( it.install_notes, it.install_notes||''. ''||:P17_INSTALL_NOTES, :P17_INSTALL_NOTES)',
'       where install_part_id = it.install_part_id;',
'   end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(19376153806750352915)
,p_process_when=>':P17_APPLY_TO_ALL = ''Yes'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'<br />Changes applied to all install parts'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5002308443690484241)
,p_process_sequence=>37
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Follup'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   cursor data_cur is',
'      select client_name, territory_id ',
'        from bb_orders ',
'       where order_id = :P17_ORDER_ID;',
'begin',
'   for it in data_cur loop',
'      Insert into bb_orders',
'        (initial_or_followup, client_name, order_date, parent_order_id, territory_id)',
'      values',
'        (''F'', it.client_name, trunc(sysdate), :P17_ORDER_ID, it.territory_id )',
'      returning order_id',
'      into :P17_RETURN_ID;',
'   end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(19376153806750352915)
,p_process_when=>':P17_FOLLOWUP_REQUIRED = ''Yes'' and :P17_FOLLOWUP_VALUE = ''No'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19376159687058352926)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(19376153389093352914)
);
wwv_flow_api.component_end;
end;
/
