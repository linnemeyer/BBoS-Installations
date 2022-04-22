prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'Edit Install Order'
,p_step_title=>'Edit Install Order'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20220413211139'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(214766422496366192)
,p_name=>'Communications'
,p_template=>wwv_flow_api.id(16247573660091137931)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'BB_COMMO_LOG'
,p_query_where=>'order_id = :P6_ORDER_ID'
,p_query_order_by=>'log_id desc'
,p_include_rowid_column=>false
,p_display_when_condition=>'P6_ORDER_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_api.id(214766556463366193)
,p_query_column_id=>1
,p_column_alias=>'LOG_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:24:P24_LOG_ID:#LOG_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(214766645349366194)
,p_query_column_id=>2
,p_column_alias=>'ORDER_ID'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(214766681002366195)
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
 p_id=>wwv_flow_api.id(214766760770366196)
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
 p_id=>wwv_flow_api.id(214766922074366197)
,p_query_column_id=>5
,p_column_alias=>'LOG_ENTRY'
,p_column_display_sequence=>6
,p_column_heading=>'Log Entry'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(214766994524366198)
,p_query_column_id=>6
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(214767094811366199)
,p_query_column_id=>7
,p_column_alias=>'CREATED_ON'
,p_column_display_sequence=>8
,p_column_heading=>'Created On'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY HH:MI:SS PM'
,p_report_column_required_role=>wwv_flow_api.id(16247650532368137989)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(214767191585366200)
,p_query_column_id=>8
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_report_column_required_role=>wwv_flow_api.id(16247650532368137989)
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(214767346217366201)
,p_query_column_id=>9
,p_column_alias=>'UPDATED_ON'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_report_column_required_role=>wwv_flow_api.id(16247650532368137989)
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16436859687477311855)
,p_plug_name=>'Edit Order'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16247573660091137931)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(336851384324692700)
,p_name=>'Files'
,p_parent_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_template=>wwv_flow_api.id(16247573660091137931)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Click <a href= "f?p=&APP_ID.:0:&APP_SESSION.:APPLICATION_PROCESS=GETIMAGE:::FILE_ID:''||',
'       bf.file_id||''" >here </a> to download file: ''||bf.file_name order_files',
'      , apex_item.checkbox(1, bf.file_id) selector',
'  from bb_order_files bof, bb_files bf',
' where bof.file_id = bf.file_id',
'   and bof.order_id = :P6_ORDER_ID'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_api.id(336851555514692701)
,p_query_column_id=>1
,p_column_alias=>'ORDER_FILES'
,p_column_display_sequence=>1
,p_column_heading=>'Order Files'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336851626359692702)
,p_query_column_id=>2
,p_column_alias=>'SELECTOR'
,p_column_display_sequence=>2
,p_column_heading=>'Selector'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_report_column_required_role=>wwv_flow_api.id(16247650532368137989)
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16436899802275311937)
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
 p_id=>wwv_flow_api.id(16437870861795428070)
,p_plug_name=>'Installation Parts'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247572498510137930)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ip.install_part_id, ip.item_description, v.vendor_name vendor, ip.vendor_order_number',
'     , dl.location ship_to_location, i.installer, ip.expected_delivery_date, ip.actual_delivery_date',
'     , ip.all_parts_received, ip.scheduled_install_date, ip.installation_date',
'     , ip.followup_required, ip.delivery_progress_notes, ip.install_notes',
'     , ip.installation_invoice, ip.target_date',
'     , ip.install_grouping, ip.estimated_install_minutes install_time',
'     , apex_item.checkbox(1, ip.install_part_id) sel_part',
'from bb_install_parts ip, bb_installers i, bb_delivery_locations dl, bb_vendors v',
'where ip.installer_id = i.installer_id(+)',
'  and ip.location_id = dl.location_id(+)',
'  and ip.vendor_id = v.vendor_id(+)',
'  and ip.order_id = :P6_ORDER_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P6_ORDER_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P6_ORDER_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Installation Parts'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(91444165679489212)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8:P8_INSTALL_PART_ID,P8_FOLLOWUP_VALUE,P8_CLIENT_NAME,P8_RETURN_PAGE,P8_TERRITORY_ID:#INSTALL_PART_ID#,#FOLLOWUP_REQUIRED#,&P6_CLIENT_NAME.,6,&P6_TERRITORY_ID.'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'LARRY'
,p_internal_uid=>27263507949381427
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91446138924489231)
,p_db_column_name=>'SEL_PART'
,p_display_order=>10
,p_column_identifier=>'S'
,p_column_label=>'Select'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91444285130489213)
,p_db_column_name=>'INSTALL_PART_ID'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'&nbsp;'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91444434021489214)
,p_db_column_name=>'ITEM_DESCRIPTION'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Item Description'
,p_column_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8:P8_INSTALL_PART_ID,P8_FOLLOWUP_VALUE,P8_CLIENT_NAME,P8_TERRITORY_ID,P8_RETURN_PAGE:#INSTALL_PART_ID#,#FOLLOWUP_REQUIRED#,\&P6_CLIENT_NAME.\,&P6_TERRITORY_ID.,6'
,p_column_linktext=>'#ITEM_DESCRIPTION#'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91444552203489215)
,p_db_column_name=>'VENDOR'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Vendor'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91444633616489216)
,p_db_column_name=>'VENDOR_ORDER_NUMBER'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Vendor Order Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91444692936489217)
,p_db_column_name=>'SHIP_TO_LOCATION'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Ship To Location'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91444806503489218)
,p_db_column_name=>'INSTALLER'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Installer'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91444874159489219)
,p_db_column_name=>'EXPECTED_DELIVERY_DATE'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Expected Delivery Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91445006819489220)
,p_db_column_name=>'ACTUAL_DELIVERY_DATE'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Actual Delivery Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91445066580489221)
,p_db_column_name=>'ALL_PARTS_RECEIVED'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'All Parts Received'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91445205475489222)
,p_db_column_name=>'SCHEDULED_INSTALL_DATE'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Scheduled Install Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91445312935489223)
,p_db_column_name=>'INSTALLATION_DATE'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Installation Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91445371973489224)
,p_db_column_name=>'FOLLOWUP_REQUIRED'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Followup Required'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91445484792489225)
,p_db_column_name=>'DELIVERY_PROGRESS_NOTES'
,p_display_order=>140
,p_column_identifier=>'M'
,p_column_label=>'Delivery Progress Notes'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91445591096489226)
,p_db_column_name=>'INSTALL_NOTES'
,p_display_order=>150
,p_column_identifier=>'N'
,p_column_label=>'Install Notes'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91445730253489227)
,p_db_column_name=>'INSTALLATION_INVOICE'
,p_display_order=>160
,p_column_identifier=>'O'
,p_column_label=>'Installation Invoice'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91445795264489228)
,p_db_column_name=>'TARGET_DATE'
,p_display_order=>170
,p_column_identifier=>'P'
,p_column_label=>'Target Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91445880116489229)
,p_db_column_name=>'INSTALL_GROUPING'
,p_display_order=>180
,p_column_identifier=>'Q'
,p_column_label=>'Install Grouping'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91445977032489230)
,p_db_column_name=>'INSTALL_TIME'
,p_display_order=>190
,p_column_identifier=>'R'
,p_column_label=>'Install Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(110752194305799244)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'465716'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SEL_PART:INSTALL_PART_ID:ITEM_DESCRIPTION:VENDOR:VENDOR_ORDER_NUMBER:SHIP_TO_LOCATION:INSTALLER:EXPECTED_DELIVERY_DATE:ACTUAL_DELIVERY_DATE:ALL_PARTS_RECEIVED:SCHEDULED_INSTALL_DATE:INSTALLATION_DATE:FOLLOWUP_REQUIRED:DELIVERY_PROGRESS_NOTES:INSTALL_'
||'NOTES:INSTALLATION_INVOICE:TARGET_DATE:INSTALL_GROUPING:INSTALL_TIME'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(16437873451062428096)
,p_name=>'Follow Ups'
,p_template=>wwv_flow_api.id(16247573660091137931)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select o.order_id, o.order_date, ip.item_description, ip.expected_delivery_date, ip.installation_date',
'  from bb_orders o, bb_install_parts ip',
' where o.order_id = ip.order_id',
'   and o.parent_order_id = :P6_ORDER_ID'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from bb_orders o, bb_install_parts ip',
' where o.order_id = ip.order_id',
'   and o.parent_order_id = :P6_ORDER_ID'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_api.id(16437873952174428101)
,p_query_column_id=>1
,p_column_alias=>'ORDER_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Order Id'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP:P6_ORDER_ID:#ORDER_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16437873483063428097)
,p_query_column_id=>2
,p_column_alias=>'ORDER_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'Order Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16437873677497428098)
,p_query_column_id=>3
,p_column_alias=>'ITEM_DESCRIPTION'
,p_column_display_sequence=>3
,p_column_heading=>'Item Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16437873739837428099)
,p_query_column_id=>4
,p_column_alias=>'EXPECTED_DELIVERY_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Expected Delivery Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16437873851746428100)
,p_query_column_id=>5
,p_column_alias=>'INSTALLATION_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Installation Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(190118215271119066)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_button_name=>'Duplicate'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_image_alt=>'Duplicate'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P6_ORDER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_api.id(16247650532368137989)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(168873904568374426)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_button_name=>'Find_Others'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_image_alt=>'Find Others'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::P28_CLIENT_NAME,P28_ORDER_ID:&P6_CLIENT_NAME.,&P6_ORDER_ID.'
,p_button_condition=>'P6_ORDER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16436890191450311856)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>':P6_ORDER_ID is not null'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24923616561038062995)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_button_name=>'APPLY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Remain on Page'
,p_button_position=>'CHANGE'
,p_button_condition=>':P6_ORDER_ID is not null'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16436860173401311856)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P6_ORDER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28244332770745502)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_button_name=>'GEO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update GEO'
,p_button_position=>'CREATE'
,p_button_condition=>'P6_ORDER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_api.id(16247650532368137989)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(214768712267366215)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(336851384324692700)
,p_button_name=>'REMOVE_FILE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_image_alt=>'Remove Selected File'
,p_button_position=>'DELETE'
,p_security_scheme=>wwv_flow_api.id(16247650532368137989)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16436890313128311856)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>':P6_ORDER_ID is not null'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_api.id(16247650532368137989)
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(214768114741366209)
,p_button_sequence=>1
,p_button_plug_id=>wwv_flow_api.id(16437870861795428070)
,p_button_name=>'SET_INSTALL_DATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Schedule Install Date'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from bb_install_parts',
' where order_id = :P6_ORDER_ID'))
,p_button_condition_type=>'EXISTS'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(214767364214366202)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(214766422496366192)
,p_button_name=>'New_log'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_image_alt=>'New Log Entry'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:RP:P24_ORDER_ID,P24_USER_ID:&P6_ORDER_ID.,&G_USER_ID.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16437872278969428084)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16437870861795428070)
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625651718137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:RP,8:P8_ORDER_ID,P8_RETURN_PAGE:&P6_ORDER_ID.,6'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16437873038215428092)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16437870861795428070)
,p_button_name=>'Follow_Up'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Follow Up'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_security_scheme=>wwv_flow_api.id(16247650532368137989)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(121739831063339461)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(16437870861795428070)
,p_button_name=>'COMBINE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Combine'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_security_scheme=>wwv_flow_api.id(16247650532368137989)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(137986575145109424)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(16437870861795428070)
,p_button_name=>'RECORD_INSTALL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Record Install Date'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_security_scheme=>wwv_flow_api.id(16247650532368137989)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16436890408723311856)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP_AND_BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P6_RETURN_PAGE.:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(16437872565421428087)
,p_branch_name=>'Go To Page 6'
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,6:P6_ORDER_ID,P6_RETURN_PAGE:&P6_ORDER_ID.,&P6_RETURN_PAGE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'CREATE APPLY SET_INSTALL_DATE REMOVE_FILE COMBINE RECORD_INSTALL'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(16437873274682428094)
,p_branch_name=>'On Follow up Or Dup'
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP:P6_ORDER_ID,P6_RETURN_ID:&P6_RETURN_ID.,&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'Follow_Up Duplicate'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(16436892017372311858)
,p_branch_name=>'Go To Return Page'
,p_branch_action=>'f?p=&APP_ID.:&P6_RETURN_PAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>99
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(338207820764403650)
,p_branch_name=>'Edit Calendar Event'
,p_branch_action=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RP:P18_EVENT_ID:&P6_ORDER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>109
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':P6_ORDER_ID > 999999'
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121739589667339458)
,p_name=>'P6_PROCESS_STATUS'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process Status'
,p_source=>'PROCESS_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:INITIAL LOAD;INITIAL LOAD,IMPORT ACCEPTED;IMPORT ACCEPTED'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'No Status'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_security_scheme=>wwv_flow_api.id(16247650532368137989)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137987070757109429)
,p_name=>'P6_EMAIL'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'CLIENT_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137987147643109430)
,p_name=>'P6_GATE_CODE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Gate Code'
,p_source=>'GATE_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137987237404109431)
,p_name=>'P6_SALES_PERSON'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sales Person'
,p_source=>'SALES_PERSON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when=>'G_USER_ID'
,p_read_only_when2=>'1'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(168875654745374443)
,p_name=>'P6_HOLD_DATE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Hold Date'
,p_format_mask=>'mm/dd/yyyy'
,p_source=>'HOLD_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>15
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.5'
,p_default_workspace_id=>1608381483082323
,p_default_application_id=>100
,p_default_id_offset=>336536533326679440
,p_default_owner=>'BBOSINSTALLS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(214768005967366208)
,p_name=>'P6_SCHEDULED_INSTALL_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16437870861795428070)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Scheduled Install Date for All Parts On Hand'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from bb_install_parts',
' where order_id = :P6_ORDER_ID'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(336851713338692703)
,p_name=>'P6_NEW_FILE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_prompt=>'Install File'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'Y'
,p_attribute_12=>'NATIVE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(338206978426403642)
,p_name=>'P6_BALANCE_DUE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Balance Due'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'BALANCE_DUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(338207710546403649)
,p_name=>'P6_INSTALL_SHEET'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_source=>'<div><a href="https://bbscottsdale.sharepoint.com/:b:/s/Customers/ESSI2uLMYV5KthYg4TonPuMBmxjxijOdPC1QKFBpVXZSjQ?e=4LPziS" target="_blank">Install Document</a></div>'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2590455984866072893)
,p_name=>'P6_CREATED_BY'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_security_scheme=>wwv_flow_api.id(16247650532368137989)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2590456098054072894)
,p_name=>'P6_CREATED_ON'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created On'
,p_source=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_security_scheme=>wwv_flow_api.id(16247650532368137989)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16436892452797311907)
,p_name=>'P6_ORDER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Id'
,p_source=>'ORDER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16436892717260311909)
,p_name=>'P6_INITIAL_OR_FOLLOWUP'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Initial Or Followup'
,p_source=>'INITIAL_OR_FOLLOWUP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'INIT_OR_FOLLOW'
,p_lov=>'.'||wwv_flow_api.id(16436808424882714884)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16436893173216311910)
,p_name=>'P6_CLIENT_NAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Client Name'
,p_source=>'CLIENT_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16436893538802311910)
,p_name=>'P6_ORDER_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_use_cache_before_default=>'NO'
,p_item_default=>'return to_char(LOCALTIMESTAMP-1, ''mm/dd/yyyy'');'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Order Date'
,p_format_mask=>'mm/dd/yyyy'
,p_source=>'ORDER_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>15
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16437873352453428095)
,p_name=>'P6_RETURN_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17932132149870773300)
,p_name=>'P6_TERRITORY_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_use_cache_before_default=>'NO'
,p_item_default=>'return :G_USER_TERRITORY;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Territory'
,p_source=>'TERRITORY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select territory_name, territory_id ',
' from bb_territories'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17932132914774773308)
,p_name=>'P6_RETURN_PAGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24923616016628062990)
,p_name=>'P6_CLIENT_PHONE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Client Phone'
,p_source=>'CLIENT_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_JD.INPUT_ITEM_MASK'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_02=>'mask'
,p_attribute_03=>'(999) 999-9999'
,p_attribute_04=>'ltr'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24923616119150062991)
,p_name=>'P6_CLIENT_ADDRESS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address'
,p_source=>'CLIENT_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24923616187141062992)
,p_name=>'P6_CLIENT_CITY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Scottsdale'
,p_prompt=>'City'
,p_source=>'CLIENT_CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Scottsdale;Scottsdale,Paradise Valley;Paradise Valley,Tempe;Tempe,Phoenix;Phoenix,Mesa;Mesa,Chandler;Chandler,Glendale;Glendale,Rio Verde;Rio Verde,Castle Rock;Castle Rock,Carefree;Carefree,Fountain Hills;Fountain Hills,Cave Creek;Cave Creek'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24923616370875062993)
,p_name=>'P6_CLIENT_STATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_use_cache_before_default=>'NO'
,p_item_default=>'AZ'
,p_prompt=>'State'
,p_source=>'CLIENT_STATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:AZ;AZ,CO;CO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24923616434086062994)
,p_name=>'P6_CLIENT_ZIP'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(16436859687477311855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Zip'
,p_source=>'CLIENT_ZIP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(31989178114902382)
,p_computation_sequence=>10
,p_computation_item=>'G_ORDER_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P6_ORDER_ID'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(145333171845222686)
,p_validation_name=>'Install Start Date time conflict'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  1',
'  from bb_install_parts ip, bb_orders o, bb_user_installers ui, bb_orders o2, bb_install_parts ip2',
'     , bb_installers i',
' where o.order_id = ip.order_id',
'   and ui.user_id = :G_USER_ID',
'   and ip.installer_id = ui.installer_id',
'   and ip.installer_id = i.installer_id',
'   and ip.scheduled_install_date is not null',
'   and o.order_id != :P6_ORDER_ID',
'   and o2.order_id = :P6_ORDER_ID',
'   and ip2.order_id = o2.order_id',
'   and ip.installer_id = ip2.installer_id',
'   and to_date(:P6_SCHEDULED_INSTALL_DATE, ''DD-MON-YYYY HH:MI AM'') ',
'       between ip.scheduled_install_date',
'           and ip.scheduled_install_date + ((bb_install_length(o.order_id, ip.scheduled_install_date))/60/24)-(1/60/24)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Install date conflicts with existing install'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(214768114741366209)
,p_associated_item=>wwv_flow_api.id(214768005967366208)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(214767524696366203)
,p_name=>'Refresh Commo Log'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(214766422496366192)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214767600784366204)
,p_event_id=>wwv_flow_api.id(214767524696366203)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(214766422496366192)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(172747407533783275)
,p_name=>'Plus Key Increment'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6_ORDER_DATE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'event.key == ''+'''
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(172747874528783281)
,p_event_id=>wwv_flow_api.id(172747407533783275)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var dText = $x(''P6_ORDER_DATE'').value.slice(0,-1);',
'var d = new Date(dText);',
'var nextDay = new Date(d);',
'var dateValue = nextDay.getDate() + 1;',
'nextDay.setDate(dateValue);',
'var m = nextDay.getMonth() +1;',
'var dt = nextDay.getDate();',
'var y = nextDay.getFullYear();',
'var dateText = m  + "/" + dt + "/" + y;',
'$s(''P6_ORDER_DATE'',dateText);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(172748273740785295)
,p_name=>'Minus Key Decrement'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6_ORDER_DATE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'event.key == ''-'''
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(172748641712785295)
,p_event_id=>wwv_flow_api.id(172748273740785295)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var dText = $x(''P6_ORDER_DATE'').value.slice(0,-1);',
'var d = new Date(dText);',
'var nextDay = new Date(d);',
'var dateValue = nextDay.getDate() - 1;',
'nextDay.setDate(dateValue);',
'var m = nextDay.getMonth() +1;',
'var dt = nextDay.getDate();',
'var y = nextDay.getFullYear();',
'var dateText = m  + "/" + dt + "/" + y;',
'$s(''P6_ORDER_DATE'',dateText);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(172749061083787388)
,p_name=>'T Key sets Today'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6_ORDER_DATE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'event.key == ''t'''
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(172749398857787389)
,p_event_id=>wwv_flow_api.id(172749061083787388)
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
'$s(''P6_ORDER_DATE'',dateText);'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16436894334471311911)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BB_ORDERS'
,p_attribute_02=>'BB_ORDERS'
,p_attribute_03=>'P6_ORDER_ID'
,p_attribute_04=>'ORDER_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(336851948163692705)
,p_process_sequence=>1
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete files'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   cursor file_cur is',
'      select file_id, order_id ',
'        from bb_order_files',
'       where order_id = :P6_ORDER_ID;',
'begin   ',
'   for fl in file_cur loop',
'      delete from bb_order_files',
'       where order_id = fl.order_id',
'         and file_id = fl.file_id;',
'      delete from bb_files',
'       where file_id = fl.file_id;',
'   end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16436890313128311856)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(214768585297366214)
,p_process_sequence=>11
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete selected file'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   v_cnt  Number;',
'begin',
'   for x in 1 .. apex_application.g_f01.count loop',
'      delete from bb_order_files',
'       where file_id = apex_application.g_f01(x)',
'         and order_id = :P6_ORDER_ID; ',
'      delete from bb_files',
'       where file_id = apex_application.g_f01(x);',
'   end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(214768712267366215)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16436894701977311912)
,p_process_sequence=>21
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BB_ORDERS'
,p_attribute_02=>'BB_ORDERS'
,p_attribute_03=>'P6_ORDER_ID'
,p_attribute_04=>'ORDER_ID'
,p_attribute_09=>'P6_ORDER_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16436895129035311912)
,p_process_sequence=>31
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P6_ORDER_ID,P6_CLIENT_NAME,P6_ORDER_DATE,P6_CLIENT_PHONE,P6_INITIAL_OR_FOLLOWUP,P6_TERRITORY_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16436890313128311856)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16437873149554428093)
,p_process_sequence=>41
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Follow-up'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_first_part_id  number;',
'  v_part_id   number;',
'  v_is_first  boolean := TRUE;',
'  cursor parts_cur (p_part_id number) is',
'     select item_description, vendor_order_number, install_notes, ',
'            installer_id, location_id, vendor_id',
'       from bb_install_parts',
'      where install_part_id = p_part_id;',
'   cursor data_cur is',
'      select o.client_name, o.territory_id',
'           , o.client_phone, o.client_address, o.client_city',
'           , o.client_state, o.client_zip',
'           , o.client_email, o.gate_code, o.sales_person',
'           , o.lat, o.lng, o.geometry',
'        from bb_orders o',
'       where o.order_id = :P6_ORDER_ID;',
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
'         , it.lat, it.lng, it.geometry )',
'      returning order_id',
'      into :P6_RETURN_ID;',
'   end loop;',
'   for x in 1 .. apex_application.g_f01.count loop',
'        for it in parts_cur(apex_application.g_f01(x)) loop',
'            insert into bb_install_parts',
'                (order_id, item_description, vendor_order_number,',
'                all_parts_received, install_notes, installer_id,',
'                location_id, install_grouping, vendor_id)',
'            values',
'                (:P6_RETURN_ID, it.item_description, '' original - ''||it.vendor_order_number,',
'                ''N'', it.install_notes, it.installer_id,',
'                it.location_id, ''Together'', it.vendor_id);',
'        end loop;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16437873038215428092)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(336851848023692704)
,p_process_sequence=>51
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Files'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   v_id        number;',
'   v_filename  varchar2(400);',
'   v_mimetype  varchar2(255);',
'   v_docsize   number;',
'   v_user      number;',
'   v_blob      blob;',
'   v_file_names apex_application_global.vc_arr2;',
'begin   ',
'   ',
'   if :P6_NEW_FILE is not null then',
'      -- user can select multiple files',
'      v_file_names := apex_util.string_to_table( :P6_NEW_FILE );',
'      for i in 1 .. v_file_names.count loop',
'         select id, filename, mime_type, dbms_lob.getlength(blob_content) doc_size, blob_content',
'           into v_id, v_filename, v_mimetype, v_docsize, v_blob',
'           from apex_application_temp_files',
'          where name = v_file_names(i);',
' ',
'          insert into bb_files',
'            (file_id, file_name, file_mimetype, ',
'             file_size, file_date, blob_content)',
'           values',
'             (v_id, v_filename, v_mimetype,',
'              v_docsize, sysdate, v_blob);',
'           ',
'          insert into bb_order_files',
'            (file_id, order_id)',
'           values',
'            (v_id, :P6_ORDER_ID);',
'      end loop;',
'   end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(214768253688366210)
,p_process_sequence=>61
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Scheduled Install'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' update bb_install_parts ',
'    set scheduled_install_date = to_date(:P6_SCHEDULED_INSTALL_DATE, ''DD-MON-YYYY HH:MIPM'')',
'  where order_id = :P6_ORDER_ID',
'    and all_parts_received = ''All''',
'    and installation_date is null;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(214768114741366209)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(190118327403119067)
,p_process_sequence=>71
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Duplicate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   cursor data_cur is',
'      select o.client_name, o.territory_id, o.gate_code',
'           , o.client_phone, o.client_address, o.client_city',
'           , o.client_state, o.client_zip, o.lat, o.lng, o.geometry',
'        from bb_orders o',
'       where o.order_id = :P6_ORDER_ID;',
'begin',
'   for it in data_cur loop',
'      Insert into bb_orders',
'        (initial_or_followup, client_name, client_phone, client_address, gate_code',
'         , client_city, client_state, client_zip, order_date, parent_order_id, territory_id          ',
'         , lat, lng, geometry)',
'      values',
'        (''I'', it.client_name, it.client_phone, it.client_address, it.gate_code',
'         , it.client_city, it.client_state, it.client_zip, trunc(sysdate), :P6_ORDER_ID, it.territory_id ',
'         , it.lat, it.lng, it.geometry )',
'      returning order_id',
'           into :P6_RETURN_ID;',
'   end loop;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(190118215271119066)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(137985388604109412)
,p_process_sequence=>81
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Combine Parts'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_first_part_id  number;',
'  v_part_id   number;',
'  v_is_first  boolean := TRUE;',
'  cursor data_cur (p_part_id number) is',
'     select item_description',
'       from bb_install_parts',
'      where install_part_id = p_part_id;',
'begin',
'   for x in 1 .. apex_application.g_f01.count loop',
'        if v_is_first then ',
'            v_is_first := FALSE;',
'            v_first_part_id := apex_application.g_f01(x);',
'        else',
'            for it in data_cur(apex_application.g_f01(x)) loop',
'                update bb_install_parts',
'                   set item_description = item_description||'', ''||it.item_description',
'                 where install_part_id = v_first_part_id;',
'                delete from bb_install_parts',
'                 where install_part_id = apex_application.g_f01(x);',
'            end loop;',
'        end if;',
'   end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(121739831063339461)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(137986696217109425)
,p_process_sequence=>91
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Record Install Date'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update bb_install_parts ',
'   set installation_date = trunc(scheduled_install_date)',
' where order_id = :P6_ORDER_ID',
'   and scheduled_install_date is not null ',
'   and installation_date is null;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(137986575145109424)
,p_process_success_message=>'Install dates updated'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(28243910737745498)
,p_process_sequence=>101
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate Lat Lng Geo'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' declare',
'    v_clob  clob;',
'    v_values apex_json.t_values;',
'    v_lat number;',
'    v_lng number;',
'',
'    cursor data_cur is ',
'        select order_id, client_address||'', ''||client_city||'', ''||client_state||'' ''||client_zip address',
'         from bb_orders ',
'        where order_id = :P6_ORDER_ID;',
'begin',
'    for it in data_cur loop',
'',
'',
'        v_clob := apex_web_service.make_rest_request(',
'            p_url => ''https://www.mapquestapi.com/geocoding/v1/address'',',
'            p_http_method => ''GET'',',
'            p_parm_name => apex_util.string_to_table(''key:location''),',
'            p_parm_value => apex_util.string_to_table(''ycWyenAos80XIv13p7PoOpHCbr1HvHoA:''||it.address)',
'        );',
'',
'        apex_json.parse(p_values => v_values,',
'                        p_source => v_clob,',
'                        p_strict => TRUE);',
'',
'        v_lat := apex_json.get_number(p_path => ''results[1].locations[1].displayLatLng.lat'', p_values => v_values);',
'        v_lng := apex_json.get_number(p_path => ''results[1].locations[1].displayLatLng.lng'', p_values => v_values);',
'',
'        update bb_orders',
'           set lat = v_lat,',
'               lng = v_lng,',
'               geometry = sdo_geometry(2001,8307,sdo_point_type(v_lng,v_lat,null),null,null)',
'         where order_id = it.order_id;',
'',
'    end loop;                             ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE, GEO'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'GeoCoding Added'
);
wwv_flow_api.component_end;
end;
/
