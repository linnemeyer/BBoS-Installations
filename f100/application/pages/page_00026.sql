prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
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
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'Communications Log'
,p_step_title=>'Communications Log'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'BB_INSTALL'
,p_last_upd_yyyymmddhh24miss=>'20200131154625'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(273023718281075861)
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
 p_id=>wwv_flow_api.id(273024291925075864)
,p_plug_name=>'Communications Log'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247572498510137930)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select o.client_name, cl.created_by log_entered_by',
'     , cl.log_date, cl.created_on  log_entered_at',
'     , cl.log_entry, cl.order_id, cl.log_id',
'from bb_commo_log cl, bb_orders o',
' where cl.order_id = o.order_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(273024451317075864)
,p_name=>'Communications Log'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'BB_INSTALL'
,p_internal_uid=>84385893799328377
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(273024774276075872)
,p_db_column_name=>'CLIENT_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Client Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(273025178454075876)
,p_db_column_name=>'LOG_ENTERED_BY'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Log Entered By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(273026424943075876)
,p_db_column_name=>'LOG_ENTRY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Log Entry'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(273026790528075877)
,p_db_column_name=>'ORDER_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Order Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(273027198693075877)
,p_db_column_name=>'LOG_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Log Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214768401821366212)
,p_db_column_name=>'LOG_DATE'
,p_display_order=>17
,p_column_identifier=>'H'
,p_column_label=>'Log Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'dd-Mon-rr hh:mi am'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214768470096366213)
,p_db_column_name=>'LOG_ENTERED_AT'
,p_display_order=>27
,p_column_identifier=>'I'
,p_column_label=>'Log Entered At'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'dd-Mon-rr hh:mi am'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(273027640096076736)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'843891'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CLIENT_NAME:LOG_ENTERED_BY:LOG_ENTRY:ORDER_ID:LOG_ID'
);
wwv_flow_api.component_end;
end;
/
