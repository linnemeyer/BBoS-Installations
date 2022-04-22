prompt --application/pages/page_00028
begin
--   Manifest
--     PAGE: 00028
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
 p_id=>28
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'Combine Clients'
,p_alias=>'COMBINE-CLIENTS'
,p_step_title=>'Combine Clients'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20211016185232'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(172846411974851902)
,p_name=>'Report 1'
,p_template=>wwv_flow_api.id(16247573660091137931)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when bo.order_id = :P28_ORDER_ID then ',
'         ''Current'' ',
'       else',
'         apex_item.checkbox(1, bo.order_id) ',
'       end sel_orders',
'     , bo.order_id, client_name, initial_or_followup, order_date',
'     , install_part_id, item_description, actual_delivery_date',
'     , installation_date',
'from bb_orders bo, bb_install_parts bip',
'where bo.client_name = :P28_CLIENT_NAME',
'  and bo.order_id = bip.order_id',
'  order by bo.order_date desc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(16247597883133137946)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168874226645374429)
,p_query_column_id=>1
,p_column_alias=>'SEL_ORDERS'
,p_column_display_sequence=>1
,p_column_heading=>'Sel Orders'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(172846848478851908)
,p_query_column_id=>2
,p_column_alias=>'ORDER_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Order Id'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(172847171997851915)
,p_query_column_id=>3
,p_column_alias=>'CLIENT_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Client Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(172847487663851915)
,p_query_column_id=>4
,p_column_alias=>'INITIAL_OR_FOLLOWUP'
,p_column_display_sequence=>4
,p_column_heading=>'Initial Or Followup'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(172847906235851916)
,p_query_column_id=>5
,p_column_alias=>'ORDER_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Order Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(172848300991851916)
,p_query_column_id=>6
,p_column_alias=>'INSTALL_PART_ID'
,p_column_display_sequence=>6
,p_column_heading=>'Install Part Id'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(172848715802851916)
,p_query_column_id=>7
,p_column_alias=>'ITEM_DESCRIPTION'
,p_column_display_sequence=>7
,p_column_heading=>'Item Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(172849130585851917)
,p_query_column_id=>8
,p_column_alias=>'ACTUAL_DELIVERY_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Actual Delivery Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168874747342374434)
,p_query_column_id=>9
,p_column_alias=>'INSTALLATION_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'Installation Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(168874460889374431)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(172846411974851902)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_image_alt=>'Submit'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(168874490359374432)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(172846411974851902)
,p_button_name=>'Cancel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(168874617563374433)
,p_branch_name=>'page 6'
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(168873993327374427)
,p_name=>'P28_CLIENT_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(172846411974851902)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(168874100009374428)
,p_name=>'P28_ORDER_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(172846411974851902)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(168874326498374430)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Combine Orders'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_order_id  number;',
'begin',
'   for x in 1 .. apex_application.g_f01.count loop',
'      update bb_install_parts',
'         set order_id = :P28_ORDER_ID',
'       where order_id = apex_application.g_f01(x);',
'      delete from bb_orders',
'       where order_id = apex_application.g_f01(x);',
'   end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(168874460889374431)
);
wwv_flow_api.component_end;
end;
/
