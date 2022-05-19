prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
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
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'Ready to Schedule'
,p_step_title=>'Ready to Schedule'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var  sPos = parseInt($x(''P25_SCROLL_POS'').value);',
'   if (sPos > 0 ) {',
'      $(window).scrollTop(sPos);',
'   }'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20220427221638'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(245756361502091585)
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
 p_id=>wwv_flow_api.id(245757029639091588)
,p_plug_name=>'Ready to Schedule'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247572498510137930)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct whole.*',
'     , bb_all_grouped_install_parts(whole.order_id, whole.install_part_id, whole.install_grouping) install_parts',
'     , bb_commo_log_entries (whole.order_id) commo_log ',
'     , bb_grouped_install_notes(whole.order_id, whole.install_part_id, whole.install_grouping) install_notes',
'     , bb_grouped_install_target_date(whole.order_id, whole.install_part_id, whole.install_grouping) target_date',
' from (',
'with installers as (',
'      select ip.order_id, i.installer, ip.installer_id, ip.install_part_id',
'        from bb_install_parts ip, bb_installers i, bb_user_installers ui',
'       where ip.installer_id = i.installer_id',
'         and ui.installer_id = i.installer_id',
'         and ui.user_id = :G_USER_ID',
'       group by ip.order_id, i.installer, ip.installer_id, ip.install_part_id)',
'select o.client_name, o.order_id, o.client_zip',
'     , decode(o.initial_or_followup, ''F'', ''Follow-up'', ''Initial'') initial_or_followup',
'     , o.order_date, o.hold_date',
'     , decode(ip.install_grouping, ''Together'', null, ip.install_part_id) install_part_id',
'     , ip.install_grouping, i.installer',
'     , ip.all_parts_received',
'     , t.territory_name territory',
'     , bb_install_part_status(o.order_id, ip.install_part_id) part_status',
'     , o.client_phone||'' ''||o.client_address||'' ''||o.client_city||'' ''||o.client_zip client_address',
' from bb_orders o, bb_install_parts ip, bb_territories t, bb_user_territory_privs utp, installers i',
' where o.order_id = ip.order_id',
'   and o.territory_id = t.territory_id',
'   and o.territory_id = utp.territory_id',
'   and utp.user_id = :G_USER_ID',
'   and utp.priviledge = ''Install''',
'   and o.order_id = i.order_id',
'   and ip.installation_date is null',
'   and i.install_part_id = ip.install_part_id) whole ',
'  where whole.part_status in (''On Hold'', ''Check On Hold'', ''Schedule'', ''Schedule Service Call'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(245757091810091588)
,p_name=>'Ready to Schedule'
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
,p_internal_uid=>57118534292344101
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(245757470645091595)
,p_db_column_name=>'CLIENT_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Client Name'
,p_column_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,6:P6_ORDER_ID,P6_RETURN_PAGE:#ORDER_ID#,25'
,p_column_linktext=>'#CLIENT_NAME#'
,p_column_link_attr=>'title="#CLIENT_ADDRESS#" '
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(245757945917091602)
,p_db_column_name=>'ORDER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Order Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(245758274990091603)
,p_db_column_name=>'CLIENT_ZIP'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Client Zip'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(245758722333091603)
,p_db_column_name=>'INITIAL_OR_FOLLOWUP'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Initial Or Followup'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(245759133567091603)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Order Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(245759473389091603)
,p_db_column_name=>'INSTALL_PART_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Install Part Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(245759878517091604)
,p_db_column_name=>'INSTALL_GROUPING'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Install Grouping'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(245760272115091604)
,p_db_column_name=>'INSTALLER'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Installer'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(245760676975091604)
,p_db_column_name=>'ALL_PARTS_RECEIVED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'All Parts Received'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(245761067633091605)
,p_db_column_name=>'TERRITORY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Territory'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(245761461035091605)
,p_db_column_name=>'PART_STATUS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Part Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(245761956590091605)
,p_db_column_name=>'CLIENT_ADDRESS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Client Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(245762310347091605)
,p_db_column_name=>'INSTALL_PARTS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Install Parts'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(245762690482091606)
,p_db_column_name=>'COMMO_LOG'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Commo Log'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(245763119041091606)
,p_db_column_name=>'INSTALL_NOTES'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Install Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214768297762366211)
,p_db_column_name=>'TARGET_DATE'
,p_display_order=>25
,p_column_identifier=>'P'
,p_column_label=>'Target Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(168875737351374444)
,p_db_column_name=>'HOLD_DATE'
,p_display_order=>35
,p_column_identifier=>'Q'
,p_column_label=>'Hold Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(9841530215014366)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Include On Holds'
,p_report_seq=>10
,p_report_alias=>'98416'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CLIENT_NAME:INSTALL_PARTS:TARGET_DATE:CLIENT_ADDRESS:COMMO_LOG:INSTALL_NOTES:INITIAL_OR_FOLLOWUP:TERRITORY:ORDER_DATE:INSTALL_GROUPING:INSTALLER:PART_STATUS:HOLD_DATE:'
,p_sort_column_1=>'TARGET_DATE'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(9841985104014375)
,p_report_id=>wwv_flow_api.id(9841530215014366)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PART_STATUS'
,p_operator=>'in'
,p_expr=>'Check On Hold,On Hold'
,p_condition_sql=>' (case when ("PART_STATUS" in (#APXWS_EXPR_VAL1#, #APXWS_EXPR_VAL2#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''Check On Hold, On Hold''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#FFF5CE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(245763469347092786)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'571250'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CLIENT_NAME:INSTALL_PARTS:TARGET_DATE:CLIENT_ADDRESS:COMMO_LOG:INSTALL_NOTES:INITIAL_OR_FOLLOWUP:TERRITORY:ORDER_DATE:INSTALL_GROUPING:INSTALLER:PART_STATUS:'
,p_sort_column_1=>'TARGET_DATE'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(9469339630584550)
,p_report_id=>wwv_flow_api.id(245763469347092786)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'PART_STATUS'
,p_operator=>'not in'
,p_expr=>'On Hold'
,p_condition_sql=>'"PART_STATUS" not in (#APXWS_EXPR_VAL1#)'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''On Hold''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(168873147249374418)
,p_name=>'P25_SCROLL_POS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(245757029639091588)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(171522519069832754)
,p_name=>'Set Scroll Pos'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'unload'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(171522947896832764)
,p_event_id=>wwv_flow_api.id(171522519069832754)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P25_SCROLL_POS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(window).scrollTop();'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(171523338877834102)
,p_name=>'Save Scroll Pos'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'unload'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(171523690622834102)
,p_event_id=>wwv_flow_api.id(171523338877834102)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P25_SCROLL_POS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.component_end;
end;
/
