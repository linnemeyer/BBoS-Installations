prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'Create / Edit Installation Part'
,p_step_title=>'Create / Edit Installation Part'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20220518212522'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(270214950990572262)
,p_name=>'Communications'
,p_template=>wwv_flow_api.id(16247573660091137931)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'BB_COMMO_LOG'
,p_query_where=>'order_id = :P8_ORDER_ID'
,p_query_order_by=>'log_date desc'
,p_include_rowid_column=>false
,p_display_when_condition=>'P8_ORDER_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P8_ORDER_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(16247597883133137946)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(244087449461953564)
,p_query_column_id=>1
,p_column_alias=>'LOG_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(244087782302953569)
,p_query_column_id=>2
,p_column_alias=>'ORDER_ID'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(244088248880953570)
,p_query_column_id=>3
,p_column_alias=>'USER_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Entered By'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>'select user_name, user_id from bb_users'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(244088610345953570)
,p_query_column_id=>4
,p_column_alias=>'LOG_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Log Date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY HH:MIPM'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(244088972691953570)
,p_query_column_id=>5
,p_column_alias=>'LOG_ENTRY'
,p_column_display_sequence=>6
,p_column_heading=>'Log Entry'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(244089410334953570)
,p_query_column_id=>6
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(244089805218953570)
,p_query_column_id=>7
,p_column_alias=>'CREATED_ON'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(244090200482953571)
,p_query_column_id=>8
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_report_column_required_role=>wwv_flow_api.id(16247650532368137989)
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(244090612406953571)
,p_query_column_id=>9
,p_column_alias=>'UPDATED_ON'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_report_column_required_role=>wwv_flow_api.id(16247650532368137989)
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16438080198889896046)
,p_plug_name=>'Create / Edit Installation Part'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247552094877137919)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16438080930418896047)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247553162251137920)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(168875321366374440)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_button_name=>'dup_part'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Duplicate Part'
,p_button_position=>'NEXT'
,p_security_scheme=>wwv_flow_api.id(16247650532368137989)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(244091010868953572)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(270214950990572262)
,p_button_name=>'New_log'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_image_alt=>'New Log Entry'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:RP:P24_ORDER_ID,P24_USER_ID:&P8_ORDER_ID.,&G_USER_ID.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16438081336363896047)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP_AND_BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:&P8_RETURN_PAGE.:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16438080858903896047)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP_AND_BOTTOM'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>':P8_INSTALL_PART_ID is not null'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_api.id(16247650532368137989)
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16438080686190896047)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP_AND_BOTTOM'
,p_button_condition=>'P8_INSTALL_PART_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24923615806510062988)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_button_name=>'SAVE_ALL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Install Dates to All Pieces'
,p_button_position=>'TOP_AND_BOTTOM'
,p_button_condition=>'P8_INSTALL_PART_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_api.id(16247650532368137989)
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16438080645023896047)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'TOP_AND_BOTTOM'
,p_button_condition=>'P8_INSTALL_PART_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28245704601745516)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_button_name=>'Service'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_image_alt=>'Service'
,p_button_position=>'TOP_AND_BOTTOM'
,p_button_alignment=>'LEFT'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(17932131952358773298)
,p_branch_name=>'Go To Page 6'
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP:P6_ORDER_ID:&P8_RETURN_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(16438080686190896047)
,p_branch_sequence=>1
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':P8_FOLLOWUP_REQUIRED = ''Yes'' and :P8_FOLLOWUP_VALUE = ''No'''
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(28245926960745518)
,p_branch_name=>'Remain on Page'
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(28245704601745516)
,p_branch_sequence=>11
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(16437872304345428085)
,p_branch_name=>'Go To Return Page'
,p_branch_action=>'f?p=&APP_ID.:&P8_RETURN_PAGE.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>21
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64224395011002081)
,p_name=>'P8_URL'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64224581339002083)
,p_name=>'P8_VENDOR_WEBSITE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121738961087339452)
,p_name=>'P8_OLD_SCH_INSTALL_DATE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121739109686339453)
,p_name=>'P8_OLD_INSTALL_DATE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(338207166193403644)
,p_name=>'P8_ESTIMATED_INSTALL_MINUTES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Estimated Install Minutes'
,p_source=>'ESTIMATED_INSTALL_MINUTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_begin_on_new_line=>'N'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from bb_orders o, bb_user_territory_privs utp',
' where o.order_id   = :P8_ORDER_ID',
'   and utp.user_id  = :G_USER_ID',
'   and ( o.created_by = :APP_USER',
'        or (utp.priviledge = ''Manage'' and',
'            utp.territory_id = o.territory_id)',
'        )'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2590435557853072888)
,p_name=>'P8_TERRITORY_ID'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11353251852090758572)
,p_name=>'P8_TARGET_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Target Install Date'
,p_format_mask=>'mm/dd/yyyy'
,p_source=>'TARGET_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_begin_on_new_line=>'N'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from bb_orders o, bb_user_territory_privs utp',
' where o.order_id   = :P8_ORDER_ID',
'   and utp.user_id  = :G_USER_ID',
'   and ( o.created_by = :APP_USER',
'        or (utp.priviledge = ''Manage'' and',
'            utp.territory_id = o.territory_id)',
'        )'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_show_quick_picks=>'Y'
,p_quick_pick_label_01=>'2 Weeks'
,p_quick_pick_value_01=>'&G_WEEK_2.'
,p_quick_pick_label_02=>'3 Weeks'
,p_quick_pick_value_02=>'&G_WEEK_3.'
,p_quick_pick_label_03=>'4 Weeks'
,p_quick_pick_value_03=>'&G_WEEK_4.'
,p_quick_pick_label_04=>'5 Weeks'
,p_quick_pick_value_04=>'&G_WEEK_5.'
,p_quick_pick_label_05=>'6 Weeks'
,p_quick_pick_value_05=>'&G_WEEK_6.'
,p_quick_pick_label_06=>'7 Weeks'
,p_quick_pick_value_06=>'&G_WEEK_7.'
,p_quick_pick_label_07=>'8 Weeks'
,p_quick_pick_value_07=>'&G_WEEK_8.'
,p_quick_pick_label_08=>'10 Weeks'
,p_quick_pick_value_08=>'&G_WEEK_10.'
,p_quick_pick_label_09=>'12 Weeks'
,p_quick_pick_value_09=>'&G_WEEK_12.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11353252269967758576)
,p_name=>'P8_HOLD_DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Hold To Date'
,p_format_mask=>'mm/dd/yyyy'
,p_source=>'HOLD_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11353252431250758578)
,p_name=>'P8_INSTALL_GROUPING'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Together'
,p_prompt=>'Install Grouping'
,p_source=>'INSTALL_GROUPING'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Together;Together,Separately;Separately'
,p_begin_on_new_line=>'N'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from bb_orders o, bb_user_territory_privs utp',
' where o.order_id   = :P8_ORDER_ID',
'   and utp.user_id  = :G_USER_ID',
'   and ( o.created_by = :APP_USER',
'        or (utp.priviledge = ''Manage'' and',
'            utp.territory_id = o.territory_id)',
'        )'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16437875358099428115)
,p_name=>'P8_ACTUAL_DELIVERY_DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Actual Delivery Date'
,p_format_mask=>'mm/dd/yyyy'
,p_source=>'ACTUAL_DELIVERY_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_show_quick_picks=>'Y'
,p_quick_pick_label_01=>'Today'
,p_quick_pick_value_01=>'&G_TODAY.'
,p_quick_pick_label_02=>'Yesterday'
,p_quick_pick_value_02=>'&G_TODAY_1.'
,p_quick_pick_label_03=>'&G_TD_2.'
,p_quick_pick_value_03=>'&G_TODAY_2.'
,p_quick_pick_label_04=>'&G_TD_3.'
,p_quick_pick_value_04=>'&G_TODAY_3.'
,p_quick_pick_label_05=>'&G_TD_4.'
,p_quick_pick_value_05=>'&G_TODAY_4.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16438083776831896101)
,p_name=>'P8_INSTALL_PART_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_use_cache_before_default=>'NO'
,p_source=>'INSTALL_PART_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16438084146961896162)
,p_name=>'P8_ORDER_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_use_cache_before_default=>'NO'
,p_source=>'ORDER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16438084462657896163)
,p_name=>'P8_ITEM_DESCRIPTION'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Description'
,p_source=>'ITEM_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from bb_orders o, bb_user_territory_privs utp',
' where o.order_id   = :P8_ORDER_ID',
'   and utp.user_id  = :G_USER_ID',
'   and ( o.created_by = :APP_USER',
'        or (utp.priviledge = ''Manage'' and',
'            utp.territory_id = o.territory_id)',
'        )'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_api.id(16247625508311137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16438084829175896164)
,p_name=>'P8_VENDOR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vendor'
,p_source=>'VENDOR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select vendor_name dis, vendor_id ret',
'  from bb_vendors',
'order by 1'))
,p_cHeight=>1
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from bb_orders o, bb_user_territory_privs utp',
' where o.order_id   = :P8_ORDER_ID',
'   and utp.user_id  = :G_USER_ID',
'   and ( o.created_by = :APP_USER',
'        or (utp.priviledge = ''Manage'' and',
'            utp.territory_id = o.territory_id)',
'        )'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'<a href="&P8_URL." target="_blank">&P8_VENDOR_WEBSITE.</a>'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16438085205451896164)
,p_name=>'P8_VENDOR_ORDER_NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vendor Order Number'
,p_source=>'VENDOR_ORDER_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from bb_orders o, bb_user_territory_privs utp',
' where o.order_id   = :P8_ORDER_ID',
'   and utp.user_id  = :G_USER_ID',
'   and ( o.created_by = :APP_USER',
'        or (utp.priviledge = ''Manage'' and',
'            utp.territory_id = o.territory_id)',
'        )'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_inline_help_text=>'<a href="https://tpt.gohfc.com/sales/orders/243822/detail" target="_blank">TPT Order Detail</a>'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16438085626053896164)
,p_name=>'P8_SHIP_TO_LOCATION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_use_cache_before_default=>'NO'
,p_item_default=>'4'
,p_prompt=>'Ship To Location'
,p_source=>'LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DELIVERY LOCATIONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dl.location, dl.location_id',
'  from bb_delivery_locations dl, bb_user_locations ul',
' where dl.location_id = ul.location_id',
'   and ul.user_id = :G_USER_ID',
' order by 1'))
,p_cHeight=>1
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from bb_orders o, bb_user_territory_privs utp',
' where utp.priviledge = ''Manage''',
'   and utp.user_id  = :G_USER_ID',
'   and utp.territory_id = o.territory_id',
'   and o.order_id   = :P8_ORDER_ID'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16438086011136896165)
,p_name=>'P8_INSTALLER_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_use_cache_before_default=>'NO'
,p_item_default=>'209'
,p_prompt=>'Installer'
,p_source=>'INSTALLER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'INSTALLERS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select i.installer, ui.installer_id, i.calendar_css',
'  from bb_installers i, bb_user_installers ui',
' where i.installer_id = ui.installer_id',
'   and ui.user_id = :G_USER_ID',
'   and nvl(inactive, ''N'') != ''Y''',
' order by 1'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from bb_orders o, bb_user_territory_privs utp',
' where utp.priviledge = ''Manage''',
'   and utp.user_id  = :G_USER_ID',
'   and utp.territory_id = o.territory_id',
'   and o.order_id   = :P8_ORDER_ID'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16438086464456896165)
,p_name=>'P8_EXPECTED_DELIVERY_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Expected Delivery Date'
,p_format_mask=>'mm/dd/yyyy'
,p_source=>'EXPECTED_DELIVERY_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from bb_orders o, bb_user_territory_privs utp',
' where utp.priviledge = ''Manage''',
'   and utp.user_id  = :G_USER_ID',
'   and utp.territory_id = o.territory_id',
'   and o.order_id   = :P8_ORDER_ID'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_show_quick_picks=>'Y'
,p_quick_pick_label_01=>'2 Weeks'
,p_quick_pick_value_01=>'&G_WEEK_2.'
,p_quick_pick_label_02=>'3 Weeks'
,p_quick_pick_value_02=>'&G_WEEK_3.'
,p_quick_pick_label_03=>'4 Weeks'
,p_quick_pick_value_03=>'&G_WEEK_4.'
,p_quick_pick_label_04=>'5 Weeks'
,p_quick_pick_value_04=>'&G_WEEK_5.'
,p_quick_pick_label_05=>'6 Weeks'
,p_quick_pick_value_05=>'&G_WEEK_6.'
,p_quick_pick_label_06=>'7 Weeks'
,p_quick_pick_value_06=>'&G_WEEK_7.'
,p_quick_pick_label_07=>'10 Weeks'
,p_quick_pick_value_07=>'&G_WEEK_10.'
,p_quick_pick_label_08=>'12 Weeks'
,p_quick_pick_value_08=>'&G_WEEK_12.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16438086795868896165)
,p_name=>'P8_ALL_PARTS_RECEIVED'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_use_cache_before_default=>'NO'
,p_item_default=>'None'
,p_prompt=>'Parts Received'
,p_source=>'ALL_PARTS_RECEIVED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:None;None,Partial;Partial,All;All'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16438087216134896166)
,p_name=>'P8_SCHEDULED_INSTALL_DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Scheduled Install Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'SCHEDULED_INSTALL_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_show_quick_picks=>'Y'
,p_quick_pick_label_01=>'Clear'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16438087649773896166)
,p_name=>'P8_INSTALLATION_DATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Actual Installation Date'
,p_format_mask=>'mm/dd/yyyy'
,p_source=>'INSTALLATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_show_quick_picks=>'Y'
,p_quick_pick_label_01=>'Today'
,p_quick_pick_value_01=>'&G_TODAY.'
,p_quick_pick_label_02=>'Yesterday'
,p_quick_pick_value_02=>'&G_TODAY_1.'
,p_quick_pick_label_03=>'&G_TD_2.'
,p_quick_pick_value_03=>'&G_TODAY_2.'
,p_quick_pick_label_04=>'&G_TD_3.'
,p_quick_pick_value_04=>'&G_TODAY_3.'
,p_quick_pick_label_05=>'&G_TD_4.'
,p_quick_pick_value_05=>'&G_TODAY_4.'
,p_quick_pick_label_06=>'&G_TD_5.'
,p_quick_pick_value_06=>'&G_TODAY_5.'
,p_quick_pick_label_07=>'&G_TD_6.'
,p_quick_pick_value_07=>'&G_TODAY_6.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16438087992543896166)
,p_name=>'P8_FOLLOWUP_REQUIRED'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_use_cache_before_default=>'NO'
,p_item_default=>'No'
,p_source=>'FOLLOWUP_REQUIRED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16438088433589896167)
,p_name=>'P8_DELIVERY_PROGRESS_NOTES'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Delivery Progress Notes'
,p_source=>'DELIVERY_PROGRESS_NOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_show_quick_picks=>'Y'
,p_quick_pick_label_01=>'&G_TODAY. rcvd'
,p_quick_pick_value_01=>'&G_TODAY. rcvd  &P8_DELIVERY_PROGRESS_NOTES.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16438088858917896167)
,p_name=>'P8_INSTALL_NOTES'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Install / Follow-up Notes'
,p_source=>'INSTALL_NOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17932131457602773293)
,p_name=>'P8_FOLLOWUP_VALUE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_source=>'P8_FOLLOWUP_REQUIRED'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17932131605969773295)
,p_name=>'P8_RETURN_ID'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17932131717030773296)
,p_name=>'P8_CLIENT_NAME'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24923614070557062970)
,p_name=>'P8_INSTALLATION_INVOICE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Installation Invoice'
,p_source=>'INSTALLATION_INVOICE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_security_scheme=>wwv_flow_api.id(16247650532368137989)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24923614194572062972)
,p_name=>'P8_ORDER_INFO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_prompt=>'Order Info'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24923614669678062976)
,p_name=>'P8_RETURN_PAGE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(16438080198889896046)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(24923614379144062973)
,p_computation_sequence=>10
,p_computation_item=>'P8_ORDER_INFO'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   cursor data_cur is ',
'      select item_description||'' ''||all_parts_received||'' on hand''||',
'                case when installation_date is not null then ',
'                     '' installed on ''||to_char(installation_date, ''mm/dd/rr'')',
'                     when installation_date is null and scheduled_install_date is not null then ',
'                     '' scheduled installed on ''||to_char(scheduled_install_date, ''mm/dd/rr'')',
'                end other_stuff ',
'        from bb_install_parts ip ',
'       where ip.order_id = :P8_ORDER_ID ',
'         and ip.install_part_id != :P8_INSTALL_PART_ID;',
'   p_return  varchar2(2000);',
'   p_other   varchar2(2000) := null;',
'BEGIN',
'   Select ''<a href="''||APEX_UTIL.PREPARE_URL(p_url => ''f?p=&APP_ID.:6:&SESSION.::::P6_RETURN_PAGE,P6_ORDER_ID:8,''||order_id,',
'                                             p_checksum_type => ''SESSION'')||''">''||',
'          client_name||''</a> Order date: ''||to_char(order_date,''dd-Mon-rr'')||',
'          '' phone: ''||client_phone the_val',
'     into p_return',
'     from bb_orders',
'    where order_id = :P8_ORDER_ID;',
'   for it in data_cur loop',
'      p_other := p_other || it.other_stuff||''.  '';',
'   end loop;',
'   if p_other is null then',
'      p_return := p_return ||''.   No other install parts'';',
'   else',
'      p_return := p_return ||''.  Other install parts:  ''|| p_other;',
'   end if;',
'   return p_return;',
'END;',
'     '))
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.6'
,p_default_workspace_id=>1608381483082323
,p_default_application_id=>100
,p_default_id_offset=>336536533326679440
,p_default_owner=>'BBOSINSTALLS'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(31989290335902383)
,p_computation_sequence=>20
,p_computation_item=>'G_INSTALL_PART_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P8_INSTALL_PART_ID'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(31989433546902384)
,p_computation_sequence=>30
,p_computation_item=>'G_ORDER_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P8_ORDER_ID'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1628509897775894080)
,p_validation_name=>'All Parts Received Populated'
,p_validation_sequence=>10
,p_validation=>'P8_ALL_PARTS_RECEIVED'
,p_validation2=>'All'
,p_validation_type=>'ITEM_IN_VALIDATION_EQ_STRING2'
,p_error_message=>'All Parts must be received if actual delivery date is specified'
,p_validation_condition=>'P8_ACTUAL_DELIVERY_DATE'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(24923615594305062986)
,p_validation_name=>'Actual Del Date Populated'
,p_validation_sequence=>20
,p_validation=>'P8_ACTUAL_DELIVERY_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Actual Delivery Date must be provided when Parts Received = All'
,p_validation_condition=>'P8_ALL_PARTS_RECEIVED'
,p_validation_condition2=>'All'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(145333326012222687)
,p_validation_name=>'install conflict'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  1',
'  from bb_install_parts ip, bb_orders o, bb_user_installers ui, bb_orders o2, bb_install_parts ip2',
'     , bb_installers i',
' where o.order_id = ip.order_id',
'   and ui.user_id = :G_USER_ID',
'   and ip.installer_id = ui.installer_id',
'   and ip.installer_id = i.installer_id',
'   and ip.scheduled_install_date is not null',
'   and o.order_id != :P8_ORDER_ID',
'   and o2.order_id = :P8_ORDER_ID',
'   and ip2.order_id = o2.order_id',
'   and ip.installer_id = ip2.installer_id',
'   and to_date(:P8_SCHEDULED_INSTALL_DATE, ''DD-MON-YYYY HH:MI AM'') ',
'       between ip.scheduled_install_date',
'           and ip.scheduled_install_date+((bb_install_length(o.order_id, ip.scheduled_install_date))/60/24)-(1/60/24)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'This install date conflicts with another install'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_api.id(16438087216134896166)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(121739153901339454)
,p_validation_name=>'OLD equals new'
,p_validation_sequence=>40
,p_validation=>':P8_INSTALLATION_DATE != :P8_OLD_INSTALL_DATE'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'The dates don''t match'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(64224943704002086)
,p_validation_name=>'Delivery Notes populated for partial delivery'
,p_validation_sequence=>50
,p_validation=>'P8_DELIVERY_PROGRESS_NOTES'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Delivery progress notes must be specified for partial delivery'
,p_validation_condition=>'P8_ALL_PARTS_RECEIVED'
,p_validation_condition2=>'Partial'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_associated_item=>wwv_flow_api.id(16438088433589896167)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16438081443978896047)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16438081336363896047)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16438082182490896048)
,p_event_id=>wwv_flow_api.id(16438081443978896047)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(244091830222976634)
,p_name=>'Refresh Commo Log'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(270214950990572262)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(244092234782976637)
,p_event_id=>wwv_flow_api.id(244091830222976634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(270214950990572262)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(168873372407374420)
,p_name=>'Plus Key Increment'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_INSTALLATION_DATE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'event.key == ''+'''
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(168873443542374421)
,p_event_id=>wwv_flow_api.id(168873372407374420)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var dText = $x(''P8_INSTALLATION_DATE'').value.slice(0,-1);',
'var d = new Date(dText);',
'var nextDay = new Date(d);',
'var dateValue = nextDay.getDate() + 1;',
'nextDay.setDate(dateValue);',
'var m = nextDay.getMonth() +1;',
'var dt = nextDay.getDate();',
'var y = nextDay.getFullYear();',
'var dateText = m  + "/" + dt + "/" + y;',
'$s(''P8_INSTALLATION_DATE'',dateText);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(168873503755374422)
,p_name=>'Minus Key Decrement'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_INSTALLATION_DATE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'event.key == ''-'''
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(168873648722374423)
,p_event_id=>wwv_flow_api.id(168873503755374422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var dText = $x(''P8_INSTALLATION_DATE'').value.slice(0,-1);',
'var d = new Date(dText);',
'var nextDay = new Date(d);',
'var dateValue = nextDay.getDate() - 1;',
'nextDay.setDate(dateValue);',
'var m = nextDay.getMonth() +1;',
'var dt = nextDay.getDate();',
'var y = nextDay.getFullYear();',
'var dateText = m  + "/" + dt + "/" + y;',
'$s(''P8_INSTALLATION_DATE'',dateText);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(168873680529374424)
,p_name=>'T Key sets Today'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_INSTALLATION_DATE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'event.key == ''t'''
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(168873780647374425)
,p_event_id=>wwv_flow_api.id(168873680529374424)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var d = new Date();',
'var m = d.getMonth() +1;',
'var dt = d.getDate();',
'var y = d.getFullYear();',
'var dateText = m  + "/" + dt + "/" + y;',
'$s(''P8_INSTALLATION_DATE'',dateText);'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16438089643842896169)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BB_INSTALL_PARTS'
,p_attribute_02=>'BB_INSTALL_PARTS'
,p_attribute_03=>'P8_INSTALL_PART_ID'
,p_attribute_04=>'INSTALL_PART_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(179123141298134782)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate Week Globals'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TO_CHAR ( (TRUNC (o.order_date)+7), ''mm/dd/yyyy'')',
'     , TO_CHAR ( (TRUNC (o.order_date)+14), ''mm/dd/yyyy'') ',
'     , TO_CHAR ( (TRUNC (o.order_date)+21), ''mm/dd/yyyy'')',
'     , TO_CHAR ( (TRUNC (o.order_date)+28), ''mm/dd/yyyy'') ',
'     , TO_CHAR ( (TRUNC (o.order_date)+35), ''mm/dd/yyyy'')',
'     , TO_CHAR ( (TRUNC (o.order_date)+42), ''mm/dd/yyyy'') ',
'     , TO_CHAR ( (TRUNC (o.order_date)+49), ''mm/dd/yyyy'') ',
'     , TO_CHAR ( (TRUNC (o.order_date)+56), ''mm/dd/yyyy'')  ',
'     , TO_CHAR ( (TRUNC (o.order_date)+70), ''mm/dd/yyyy'') ',
'     , TO_CHAR ( (TRUNC (o.order_date)+84), ''mm/dd/yyyy'')',
'  into :G_WEEK_1, :G_WEEK_2, :G_WEEK_3, :G_WEEK_4, :G_WEEK_5, :G_WEEK_6, :G_WEEK_7, :G_WEEK_8, :G_WEEK_10, :G_WEEK_12',
'  FROM bb_orders o',
' WHERE o.order_id = :P8_ORDER_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64224679007002084)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Vendor Web site'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select url, case when url is not null then ''Vendor Website'' else '' '' end',
'  into :P8_URL, :P8_VENDOR_WEBSITE',
'  from bb_vendors v, bb_install_parts ip',
' where v.vendor_id = ip.vendor_id',
'   and ip.install_part_id = :P8_INSTALL_PART_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P8_INSTALL_PART_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16438090031293896169)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BB_INSTALL_PARTS'
,p_attribute_02=>'BB_INSTALL_PARTS'
,p_attribute_03=>'P8_INSTALL_PART_ID'
,p_attribute_04=>'INSTALL_PART_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17932131506679773294)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Followup'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   cursor data_cur is',
'      select o.client_name, o.territory_id, ip.item_description',
'           , ip.vendor_id, ip.vendor_order_number, ip.installer_id, ip.location_id',
'           , o.client_phone, o.client_address, o.client_city',
'           , o.client_state, o.client_zip, ip.install_notes',
'           , o.client_email, o.gate_code, o.sales_person',
'           , o.lat, o.lng, o.geometry',
'        from bb_orders o, bb_install_parts ip',
'       where o.order_id = ip.order_id',
'         and ip.install_part_id = :P8_INSTALL_PART_ID;',
'begin',
'   for it in data_cur loop',
'      Insert into bb_orders',
'        (initial_or_followup, client_name, client_phone, client_address',
'         , client_city, client_state, client_zip, order_date, parent_order_id, territory_id',
'         , client_email, gate_code, sales_person, lat, lng, geometry)',
'      values',
'        (''F'', it.client_name, it.client_phone, it.client_address',
'         , it.client_city, it.client_state, it.client_zip, trunc(sysdate), :P8_ORDER_ID, it.territory_id',
'         , it.client_email, it.gate_code, it.sales_person ',
'         , it.lat, it.lng, it.geometry)',
'      returning order_id',
'      into :P8_RETURN_ID;',
'      insert into bb_install_parts',
'         ( order_id, item_description, vendor_id, vendor_order_number, followup_required',
'         , installer_id, all_parts_received, location_id, install_grouping, install_notes)',
'      values',
'         (:P8_RETURN_ID, it.item_description, it.vendor_id, ''Original - ''||it.vendor_order_number,''No''',
'         , it.installer_id, ''None'', it.location_id, ''Together'', it.install_notes);',
'   end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16438080686190896047)
,p_process_when=>':P8_FOLLOWUP_REQUIRED = ''Yes'' and :P8_FOLLOWUP_VALUE = ''No'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8982996175608850104)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update All'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   for it in ',
'          ( select ip.install_part_id, ip.delivery_progress_notes',
'              from bb_install_parts ip',
'             where ip.order_id = :P8_ORDER_ID',
'               and ip.install_part_id != :P8_INSTALL_PART_ID',
'               and install_grouping = ''Together'' ) loop',
'      update bb_install_parts',
'         set installation_date = to_date(:P8_INSTALLATION_DATE, ''mm/dd/yyyy'')',
'           , scheduled_install_date = to_date(:P8_SCHEDULED_INSTALL_DATE, ''dd-MON-yyyy HH:MI AM'')',
'       where install_part_id = it.install_part_id;',
'   end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(24923615806510062988)
,p_process_when=>'P8_INSTALL_GROUPING'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Together'
,p_process_success_message=>'<br />Changes applied to all install parts'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(168875262486374439)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Duplicate Part'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into bb_install_parts ',
'     ( order_id, item_description, vendor_id',
'	 , vendor_order_number, expected_delivery_date',
'     , all_parts_received, scheduled_install_date',
'	 , delivery_progress_notes, install_notes',
'	 , actual_delivery_date, installer_id',
'	 , location_id,target_date, hold_date',
'	 , install_grouping, estimated_install_minutes)',
'  select order_id, item_description, vendor_id',
'	 , vendor_order_number, expected_delivery_date',
'     , all_parts_received, scheduled_install_date',
'	 , delivery_progress_notes, install_notes',
'	 , actual_delivery_date, installer_id',
'	 , location_id,target_date, hold_date',
'	 , install_grouping, estimated_install_minutes',
'from bb_install_parts',
' where install_part_id = :P8_INSTALL_PART_ID;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(168875321366374440)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(28245779523745517)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Service Set Dates'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   for it in (select order_date ',
'                from bb_orders bo, bb_install_parts ip',
'               where ip.install_part_id = :P8_INSTALL_PART_ID',
'                 and bo.order_id = ip.order_id  ) loop',
'      update bb_install_parts',
'         set expected_delivery_date = it.order_date',
'           , actual_delivery_date = it.order_date',
'           , target_date = it.order_date',
'           , all_parts_received = ''All''',
'       where install_part_id = :P8_INSTALL_PART_ID;',
'    end loop;',
'end;',
' '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(28245704601745516)
);
wwv_flow_api.component_end;
end;
/
