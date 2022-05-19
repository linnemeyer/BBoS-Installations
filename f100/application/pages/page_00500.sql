prompt --application/pages/page_00500
begin
--   Manifest
--     PAGE: 00500
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
 p_id=>500
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'Audit Log'
,p_alias=>'AUDIT-LOG'
,p_step_title=>'Audit Log'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(16247650532368137989)
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20211006222558'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65946433305474191)
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
 p_id=>wwv_flow_api.id(65947048447474231)
,p_plug_name=>'Audit Log'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247572498510137930)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.audit_id, a.user_name, a.table_name, a.change_time-(7/24) change_time, a.action, a.primary_key',
'     , ac.column_name, ac.old_char_value, ac.new_char_value, ac.old_date_value, ac.new_date_value, ac.old_num_value, ac.new_num_value',
'  from bb_audits a, bb_audit_columns ac',
'where a.audit_id = ac.audit_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_page_header=>'Audit Log'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(65947077118474231)
,p_name=>'Audit Log'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'LARRY'
,p_internal_uid=>48345019328640953
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(65947488030474239)
,p_db_column_name=>'AUDIT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Audit Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(65947901236474243)
,p_db_column_name=>'USER_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(65948273778474243)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Table Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(65948681563474243)
,p_db_column_name=>'CHANGE_TIME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Change Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(65949083439474244)
,p_db_column_name=>'ACTION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Action'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(65949479273474244)
,p_db_column_name=>'PRIMARY_KEY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Primary Key'
,p_column_html_expression=>'<a href="javascript:$s(''P500_PRIMARY_KEY'', ''#PRIMARY_KEY#'')">#PRIMARY_KEY#</a>'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(65949947278474244)
,p_db_column_name=>'COLUMN_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Column Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(65950357345474244)
,p_db_column_name=>'OLD_CHAR_VALUE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Old Char Value'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(65950666144474245)
,p_db_column_name=>'NEW_CHAR_VALUE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'New Char Value'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(65951067920474245)
,p_db_column_name=>'OLD_DATE_VALUE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Old Date Value'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(65951513463474245)
,p_db_column_name=>'NEW_DATE_VALUE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'New Date Value'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(65951869618474245)
,p_db_column_name=>'OLD_NUM_VALUE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Old Num Value'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(65952355307474246)
,p_db_column_name=>'NEW_NUM_VALUE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'New Num Value'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(65953046896477089)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'483510'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'AUDIT_ID:USER_NAME:TABLE_NAME:CHANGE_TIME:ACTION:PRIMARY_KEY:COLUMN_NAME:OLD_CHAR_VALUE:NEW_CHAR_VALUE:OLD_DATE_VALUE:NEW_DATE_VALUE:OLD_NUM_VALUE:NEW_NUM_VALUE'
,p_sort_column_1=>'AUDIT_ID'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(64225194260002089)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(65947048447474231)
,p_button_name=>'INSTALL_PART'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_image_alt=>'Go To Install Part'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(64225600183002093)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(65947048447474231)
,p_button_name=>'ORDER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_image_alt=>'Go To Order'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(64225465307002092)
,p_branch_name=>'Go To Page 6'
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6_ORDER_ID,P6_RETURN_PAGE:&P500_ORDER_ID.,500&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64225083233002088)
,p_name=>'P500_ORDER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(65947048447474231)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64225276612002090)
,p_name=>'P500_PRIMARY_KEY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(65947048447474231)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64225685214002094)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Order'
,p_process_sql_clob=>':P500_ORDER_ID := :P500_PRIMARY_KEY;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(64225600183002093)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64225789081002095)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Order_ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select order_id',
'  into :P500_ORDER_ID',
'  from bb_install_parts',
' where install_part_id = :P500_PRIMARY_KEY;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(64225194260002089)
);
wwv_flow_api.component_end;
end;
/
