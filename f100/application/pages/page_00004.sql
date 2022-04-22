prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'Receivables DT'
,p_step_title=>'Receivables DT'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(16247544409895137914)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20211016185232'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19129184892686785674)
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
 p_id=>wwv_flow_api.id(35349768835564770974)
,p_plug_name=>'Edit Receivable'
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
 p_id=>wwv_flow_api.id(19129180448839785665)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(35349768835564770974)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P4_INSTALL_PART_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19129039580896785664)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(35349768835564770974)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19129180864834785665)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(35349768835564770974)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P4_INSTALL_PART_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2590435144144072884)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(35349768835564770974)
,p_button_name=>'Edit_Order'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_image_alt=>'Edit Order'
,p_button_position=>'CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19129040030981785664)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(35349768835564770974)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247815193408732274)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(2590435221883072885)
,p_branch_name=>'Edit Order'
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP:P6_ORDER_ID,P6_RETURN_PAGE:&P4_ORDER_ID.,3&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(2590435144144072884)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(19129186837838785696)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1997986735756474673)
,p_name=>'P4_APPLY_TO_ALL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(35349768835564770974)
,p_use_cache_before_default=>'NO'
,p_item_default=>'No'
,p_prompt=>'Apply To All'
,p_source=>'No'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(16247624987503137964)
,p_item_template_options=>'#DEFAULT#'
,p_security_scheme=>wwv_flow_api.id(16247650532368137989)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Yes'
,p_attribute_03=>'Yes'
,p_attribute_04=>'No'
,p_attribute_05=>'No'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17932133055365773309)
,p_name=>'P4_ACTUAL_DELIVERY_QP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(35349768835564770974)
,p_display_as=>'PLUGIN_CH.PURE.APEX.DYNAMIC_QUICKPICK'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Yesterday'' dis',
'     , ''P4_ACTUAL_DELIVERY_DATE'' target',
'     , TO_CHAR ( (TRUNC (SYSDATE)-1)',
'                , ''mm/dd/yyyy'') the_date',
'FROM DUAL',
'UNION ALL',
'SELECT ''Today'' dis',
'     , ''P4_ACTUAL_DELIVERY_DATE'' target',
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
 p_id=>wwv_flow_api.id(19129181193172785669)
,p_name=>'P4_CLIENT_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(35349768835564770974)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Client Name'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select client_name ',
'  from bb_orders',
' where order_id = :P4_ORDER_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(16247624987503137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19129181614898785670)
,p_name=>'P4_INSTALL_PART_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(35349768835564770974)
,p_use_cache_before_default=>'NO'
,p_source=>'INSTALL_PART_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19129182046781785670)
,p_name=>'P4_ORDER_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(35349768835564770974)
,p_use_cache_before_default=>'NO'
,p_source=>'ORDER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19129182401027785670)
,p_name=>'P4_ITEM_DESCRIPTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(35349768835564770974)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Description'
,p_source=>'ITEM_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(16247624987503137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19129182876223785671)
,p_name=>'P4_VENDOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(35349768835564770974)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vendor'
,p_source=>'VENDOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(16247624987503137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19129183219587785671)
,p_name=>'P4_EXPECTED_DELIVERY_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(35349768835564770974)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Expected Delivery Date'
,p_source=>'EXPECTED_DELIVERY_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(16247624987503137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19129183588835785671)
,p_name=>'P4_ALL_PARTS_RECEIVED'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(35349768835564770974)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Parts Received'
,p_source=>'ALL_PARTS_RECEIVED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:None;None,Partial;Partial,All;All'
,p_field_template=>wwv_flow_api.id(16247624987503137964)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19129184039370785672)
,p_name=>'P4_ACTUAL_DELIVERY_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(35349768835564770974)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Actual Delivery Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'ACTUAL_DELIVERY_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(16247624987503137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19129184460305785672)
,p_name=>'P4_DELIVERY_PROGRESS_NOTES'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(35349768835564770974)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Delivery Progress Notes'
,p_source=>'DELIVERY_PROGRESS_NOTES'
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(24923614952034062979)
,p_validation_name=>'All Parts Received Populated'
,p_validation_sequence=>10
,p_validation=>'P4_ALL_PARTS_RECEIVED'
,p_validation2=>'None'
,p_validation_type=>'ITEM_IN_VALIDATION_NOT_EQ_STRING2'
,p_error_message=>'Must be All or Partial if actual delivery date is specified'
,p_validation_condition=>'P4_ACTUAL_DELIVERY_DATE'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(19129183588835785671)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(8583343255676769120)
,p_validation_name=>'Actual Del Date Populated'
,p_validation_sequence=>20
,p_validation=>'P4_ACTUAL_DELIVERY_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Actual Delivery Date must be provided'
,p_validation_condition=>'P4_ALL_PARTS_RECEIVED'
,p_validation_condition2=>'All'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19129185522755785694)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BB_INSTALL_PARTS'
,p_attribute_02=>'BB_INSTALL_PARTS'
,p_attribute_03=>'P4_INSTALL_PART_ID'
,p_attribute_04=>'INSTALL_PART_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19129185904757785694)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BB_INSTALL_PARTS'
,p_attribute_02=>'BB_INSTALL_PARTS'
,p_attribute_03=>'P4_INSTALL_PART_ID'
,p_attribute_04=>'INSTALL_PART_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1998326054934114107)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update All'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   for it in ',
'          ( select ip.install_part_id, ip.delivery_progress_notes',
'              from bb_install_parts ip',
'             where ip.order_id = :P4_ORDER_ID',
'               and ip.install_part_id != :P4_INSTALL_PART_ID ) loop',
'      update bb_install_parts',
'         set actual_delivery_date = to_date(:P4_ACTUAL_DELIVERY_DATE, ''mm/dd/yyyy'')',
'           , all_parts_received   = :P4_ALL_PARTS_RECEIVED',
'           , delivery_progress_notes = nvl2( it.delivery_progress_notes',
'                                           , it.delivery_progress_notes||''. ''||:P4_DELIVERY_PROGRESS_NOTES',
'                                           , :P4_DELIVERY_PROGRESS_NOTES)',
'       where install_part_id = it.install_part_id;',
'   end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(19129180448839785665)
,p_process_when=>':P4_APPLY_TO_ALL = ''Yes'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'<br />Changes applied to all install parts'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19129186337808785694)
,p_process_sequence=>55
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(19129040030981785664)
);
wwv_flow_api.component_end;
end;
/
