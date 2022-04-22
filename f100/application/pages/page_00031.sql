prompt --application/pages/page_00031
begin
--   Manifest
--     PAGE: 00031
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
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'All Install Parts'
,p_alias=>'ALL-INSTALL-PARTS'
,p_step_title=>'All Install Parts'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20210712223750'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(177198836109503393)
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
 p_id=>wwv_flow_api.id(177199386112503398)
,p_plug_name=>'All Install Parts'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247572498510137930)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select o. ORDER_ID,',
'    o.INITIAL_OR_FOLLOWUP,',
'    o.CLIENT_NAME,',
'    o.ORDER_DATE,',
'    o.PARENT_ORDER_ID,',
'    o.TERRITORY_ID,',
'    o.CLIENT_PHONE,',
'    o.CLIENT_ADDRESS,',
'    o.CLIENT_CITY,',
'    o.CLIENT_STATE,',
'    o.CLIENT_ZIP,',
'    ip.INSTALL_PART_ID,',
'    ip.ITEM_DESCRIPTION,',
'    v.vendor_name VENDOR,',
'    ip.VENDOR_ORDER_NUMBER,',
'    ip.EXPECTED_DELIVERY_DATE,',
'    ip.ALL_PARTS_RECEIVED,',
'    ip.SCHEDULED_INSTALL_DATE,',
'    ip.INSTALLATION_DATE,',
'    ip.FOLLOWUP_REQUIRED,',
'    ip.DELIVERY_PROGRESS_NOTES,',
'    ip.INSTALL_NOTES,',
'    ip.ACTUAL_DELIVERY_DATE,',
'    ip.TARGET_DATE,',
'    ip.HOLD_DATE,',
'    ip.INSTALL_GROUPING,',
'    ip.ESTIMATED_INSTALL_MINUTES',
'from bb_orders o, bb_install_parts ip, bb_vendors v',
' where o.order_id = ip.order_id',
' and v.vendor_id = ip.vendor_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_page_header=>'All Install Parts'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(177199562130503398)
,p_name=>'All Install Parts'
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
,p_internal_uid=>19337481655740386
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177199976911503401)
,p_db_column_name=>'ORDER_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Order Id'
,p_column_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6_ORDER_ID,P6_RETURN_PAGE:#ORDER_ID#,31'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177200292817503409)
,p_db_column_name=>'INITIAL_OR_FOLLOWUP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Initial Or Followup'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177200774444503409)
,p_db_column_name=>'CLIENT_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Client Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177201172071503410)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Order Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177201508249503410)
,p_db_column_name=>'PARENT_ORDER_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Parent Order Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177201936116503410)
,p_db_column_name=>'TERRITORY_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Territory Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177202350306503411)
,p_db_column_name=>'CLIENT_PHONE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Client Phone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177202727727503411)
,p_db_column_name=>'CLIENT_ADDRESS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Client Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177203093745503411)
,p_db_column_name=>'CLIENT_CITY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Client City'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177203497790503412)
,p_db_column_name=>'CLIENT_STATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Client State'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177203928544503412)
,p_db_column_name=>'CLIENT_ZIP'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Client Zip'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177204338638503412)
,p_db_column_name=>'INSTALL_PART_ID'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Install Part Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177204686848503413)
,p_db_column_name=>'ITEM_DESCRIPTION'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Item Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177205129707503413)
,p_db_column_name=>'VENDOR'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Vendor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177205486233503413)
,p_db_column_name=>'VENDOR_ORDER_NUMBER'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Vendor Order Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177205883579503414)
,p_db_column_name=>'EXPECTED_DELIVERY_DATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Expected Delivery Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177206323073503414)
,p_db_column_name=>'ALL_PARTS_RECEIVED'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'All Parts Received'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177206731036503414)
,p_db_column_name=>'SCHEDULED_INSTALL_DATE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Scheduled Install Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177207107045503415)
,p_db_column_name=>'INSTALLATION_DATE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Installation Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177207521670503415)
,p_db_column_name=>'FOLLOWUP_REQUIRED'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Followup Required'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177207956556503415)
,p_db_column_name=>'DELIVERY_PROGRESS_NOTES'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Delivery Progress Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177208314422503416)
,p_db_column_name=>'INSTALL_NOTES'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Install Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177208752107503416)
,p_db_column_name=>'ACTUAL_DELIVERY_DATE'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Actual Delivery Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177209144523503416)
,p_db_column_name=>'TARGET_DATE'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Target Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177209505755503417)
,p_db_column_name=>'HOLD_DATE'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Hold Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177209962313503417)
,p_db_column_name=>'INSTALL_GROUPING'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Install Grouping'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177210350529503417)
,p_db_column_name=>'ESTIMATED_INSTALL_MINUTES'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Estimated Install Minutes'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(177210709017504832)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'193487'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORDER_ID:INITIAL_OR_FOLLOWUP:CLIENT_NAME:ORDER_DATE:PARENT_ORDER_ID:TERRITORY_ID:CLIENT_PHONE:CLIENT_ADDRESS:CLIENT_CITY:CLIENT_STATE:CLIENT_ZIP:INSTALL_PART_ID:ITEM_DESCRIPTION:VENDOR:VENDOR_ORDER_NUMBER:EXPECTED_DELIVERY_DATE:ALL_PARTS_RECEIVED:SCH'
||'EDULED_INSTALL_DATE:INSTALLATION_DATE:FOLLOWUP_REQUIRED:ACTUAL_DELIVERY_DATE:TARGET_DATE:HOLD_DATE:INSTALL_GROUPING:ESTIMATED_INSTALL_MINUTES:'
);
wwv_flow_api.component_end;
end;
/
