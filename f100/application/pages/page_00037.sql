prompt --application/pages/page_00037
begin
--   Manifest
--     PAGE: 00037
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
 p_id=>37
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'Average Delivery Times'
,p_alias=>'AVERAGE-DELIVERY-TIMES'
,p_step_title=>'Average Delivery Times'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20220422003942'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(156891721150244568)
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
 p_id=>wwv_flow_api.id(156892357230244574)
,p_plug_name=>'Average Delivery Times'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247572498510137930)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Norman'' vendor, ''Cellular Shades'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) Avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_name = ''Norman''',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and instr(lower(ip.item_description), ''cellular'') > 0',
'   and instr(lower(ip.item_description), ''vertical'') = 0',
'   and ip.actual_delivery_date > sysdate - nvl(:P37_DAYS_BACK, 60)  )',
'union',
'select ''Norman'' vendor, ''Vertical Cellulars'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) Avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_name = ''Norman''',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and instr(lower(ip.item_description), ''cellular'') > 0',
'   and instr(lower(ip.item_description), ''vertical'') > 0',
'   and ip.actual_delivery_date > sysdate - nvl(:P37_DAYS_BACK, 60)  )',
'union',
'select ''Norman'' vendor, ''Vertical Blinds'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) Avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_name = ''Norman''',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and instr(lower(ip.item_description), ''cellular'') = 0',
'   and instr(lower(ip.item_description), ''vertical'') > 0',
'   and ip.actual_delivery_date > sysdate - nvl(:P37_DAYS_BACK, 60)  )',
'union',
'select ''Norman'' vendor, ''Faux Woods'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) Avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_name = ''Norman''',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and instr(lower(ip.item_description), ''faux'') > 0',
'   and instr(lower(ip.item_description), ''vertical'') = 0',
'   and ip.actual_delivery_date > sysdate - nvl(:P37_DAYS_BACK, 60)  )',
'union',
'select ''Norman'' vendor, ''Roller Shades'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) Avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_name = ''Norman''',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and instr(lower(ip.item_description), ''roller'') > 0',
'   and instr(lower(ip.item_description), ''vertical'') = 0',
'   and ip.actual_delivery_date > sysdate - nvl(:P37_DAYS_BACK, 60)  )',
'union',
'select ''Norman'' vendor, ''Shutters'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) Avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_name = ''Norman''',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and instr(lower(ip.item_description), ''shutter'') > 0',
'   and ip.actual_delivery_date > sysdate - nvl(:P37_DAYS_BACK, 60)  )',
'   union',
'select ''Norman NA'' vendor, ''Shutters'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) Avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_name = ''Norman NA''',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and instr(lower(ip.item_description), ''shutter'') > 0',
'   and ip.actual_delivery_date > sysdate - nvl(:P37_DAYS_BACK, 60)  )',
'union',
'select ''Norman'' vendor, ''SmartDrapes'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) Avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_name = ''Norman''',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and instr(lower(ip.item_description), ''drape'') > 0',
'   and ip.actual_delivery_date > sysdate - nvl(:P37_DAYS_BACK, 60)  )',
'union',
'select ''Lutron'' vendor, ''Roller Shades'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) Avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_name = ''Lutron''',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and instr(lower(ip.item_description), ''roller'') > 0',
'   and ip.actual_delivery_date > sysdate - nvl(:P37_DAYS_BACK, 60)  )',
'union',
'select ''Lutron'' vendor, ''Cellular Shades'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) Avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_name = ''Lutron''',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and instr(lower(ip.item_description), ''cellular'') > 0',
'   and ip.actual_delivery_date > sysdate - nvl(:P37_DAYS_BACK, 60)  )',
'union',
'select ''Draper'' vendor, ''Roller Shades'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) Avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_name = ''Draper''',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and instr(lower(ip.item_description), ''roller'') > 0',
'   and ip.actual_delivery_date > sysdate - nvl(:P37_DAYS_BACK, 60)  )',
'union',
'select ''Hunter Douglas'' vendor, ''All Products'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) Avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_name = ''Hunter Douglas''',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and ip.actual_delivery_date > sysdate - nvl(:P37_DAYS_BACK, 60)  )',
'union',
'select ''Horizons'' vendor, ''All Products'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) Avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_name = ''Horizons''',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and ip.actual_delivery_date > sysdate - nvl(:P37_DAYS_BACK, 60)  )',
'union',
'select ''Inspired Shades'' vendor, ''All Other Products'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) Avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_id in ( 101, 212 )',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and instr(lower(ip.item_description), ''roller'') = 0',
'   and ip.actual_delivery_date > sysdate - nvl(:P37_DAYS_BACK, 60)  )',
'union',
'select ''Inspired Shades'' vendor, ''Roller Shades'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) Avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_id in ( 101, 212 )',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and instr(lower(ip.item_description), ''roller'') > 0',
'   and ip.actual_delivery_date > sysdate - nvl(:P37_DAYS_BACK, 60)  )'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_page_header=>'Average Delivery Times'
,p_plug_footer=>'Elapsed time for report #TIMING#'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(156892434930244574)
,p_name=>'Average Delivery Times'
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
,p_internal_uid=>46168021795516563
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(156892909908244582)
,p_db_column_name=>'VENDOR'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Vendor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(156893279581244590)
,p_db_column_name=>'PRODUCT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(156893677741244592)
,p_db_column_name=>'ORDER_COUNT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Order Count'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(156894064573244594)
,p_db_column_name=>'MINIMUM_DELIVERY_DAYS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Minimum Delivery Days'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(156894510346244596)
,p_db_column_name=>'MAX_DELIVERY_DAYS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Max Delivery Days'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(156894878757244599)
,p_db_column_name=>'AVG_DELIVERY_DAYS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Avg Delivery Days'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(156895273092245476)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'461709'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VENDOR:PRODUCT:ORDER_COUNT:MINIMUM_DELIVERY_DAYS:MAX_DELIVERY_DAYS:AVG_DELIVERY_DAYS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137987773976109436)
,p_name=>'P37_DAYS_BACK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(156892357230244574)
,p_item_default=>'60'
,p_prompt=>'Received Days Back'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>1
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.component_end;
end;
/
