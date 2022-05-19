prompt --application/pages/page_00019
begin
--   Manifest
--     PAGE: 00019
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
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'Installation Parts'
,p_step_title=>'Installation Parts'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var  sPos = parseInt($x(''P19_SCROLL_POS'').value);',
'   if (sPos > 0 ) {',
'      $(window).scrollTop(sPos);',
'   }',
'',
'apex.actions.add({',
'  name: "shortcuts",',
'  label: "Display Shortcuts",',
'  action: function(event, focusElement) {',
'    apex.theme.openRegion(''shortcuts'')',
'  },',
'  shortcut: ''Alt+Shift+F1''',
'});',
'',
'$displayLocation = $(''#displayShortcuts'');',
'',
'apex.actions.listShortcuts().forEach(function(shortcut){',
'  $displayLocation.append("<h3>Press shortcut " + shortcut.shortcutDisplay + " to " + shortcut.actionLabel + "</h3>");',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-fht-thead{',
'  overflow: auto !important;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20220422003859'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28244232064745501)
,p_plug_name=>'Shortcuts'
,p_region_name=>'shortcuts'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_api.id(16247570456967137929)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_source=>'<div id="displayShortcuts"></div>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26072053351941718519)
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
 p_id=>wwv_flow_api.id(26072053880040718521)
,p_plug_name=>'Installation Parts'
,p_region_name=>'parts'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247572498510137930)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with installers as (',
'      select ip.order_id, i.installer, ip.installer_id, ip.install_part_id',
'        from bb_install_parts ip, bb_installers i, bb_user_installers ui',
'       where ip.installer_id = i.installer_id',
'         and ui.installer_id = i.installer_id',
'         and ui.user_id = :G_USER_ID',
'       group by ip.order_id, i.installer, ip.installer_id, ip.install_part_id)',
'select o.client_name, o.order_id, o.client_zip',
'     , decode(o.initial_or_followup, ''F'', ''Follow-up'', ''Initial'') initial_or_followup',
'     , ip.item_description, v.vendor_name vendor, ip.vendor_order_number',
'     , o.order_date,  ip.expected_delivery_date, ip.actual_delivery_date',
'     , trunc(sysdate) - nvl(actual_delivery_date, expected_delivery_date) days_on_hand',
'     , trunc(sysdate)- expected_delivery_date est_days_on_hand',
'     , actual_delivery_date - expected_delivery_date delivery_variance',
'     , scheduled_install_date, i.installer',
'     , ip.all_parts_received, ip.install_part_id, followup_required',
'     , ip.delivery_progress_notes ||'' ''|| ip.install_notes notes',
'     , t.territory_name territory, bb_other_install_parts(o.order_id, ip.install_part_id) other_parts',
'     , ip.target_date, ip.hold_date',
'     , bb_install_part_status(o.order_id, ip.install_part_id) part_status',
'     , ip.estimated_install_minutes, o.balance_due',
'     , o.client_phone||'' ''||o.client_address||'' ''||o.client_city||'' ''||o.client_zip client_address',
'     , bb_commo_log_entries(o.order_id) commo_log, o.process_status',
' from bb_orders o, bb_install_parts ip, bb_territories t, bb_user_territory_privs utp, installers i, bb_vendors v',
' where o.order_id = ip.order_id',
'   and o.territory_id = t.territory_id',
'   and o.territory_id = utp.territory_id',
'   and utp.user_id = :G_USER_ID',
'   and utp.priviledge = ''Install''',
'   and o.order_id = i.order_id',
'   and ip.installation_date is null',
'   and i.install_part_id = ip.install_part_id',
'   and ip.vendor_id = v.vendor_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_plug_footer=>'Elapsed time for report #TIMING#'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(26072054065633718521)
,p_name=>'Installation Parts'
,p_report_id_item=>'P19_REPORT_REGION_ID'
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
,p_owner=>'LARRY'
,p_internal_uid=>25734213986281423252
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26072054784301718528)
,p_db_column_name=>'ORDER_ID'
,p_display_order=>10
,p_column_identifier=>'B'
,p_column_label=>'Order Id'
,p_column_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,6:P6_ORDER_ID,P6_RETURN_PAGE:#ORDER_ID#,19'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26072054454154718527)
,p_db_column_name=>'CLIENT_NAME'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Client Name'
,p_column_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,6:P6_ORDER_ID,P6_RETURN_PAGE:#ORDER_ID#,19'
,p_column_linktext=>'#CLIENT_NAME#'
,p_column_link_attr=>'title="#CLIENT_ADDRESS#" '
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26072055266773718528)
,p_db_column_name=>'INITIAL_OR_FOLLOWUP'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Initial Or Followup'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26072055615372718529)
,p_db_column_name=>'ITEM_DESCRIPTION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Item Description'
,p_column_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:RP:P8_INSTALL_PART_ID,P8_ORDER_ID,P8_CLIENT_NAME,P8_FOLLOWUP_VALUE,P8_RETURN_PAGE:#INSTALL_PART_ID#,#ORDER_ID#,\#CLIENT_NAME#\,#FOLLOWUP_REQUIRED#,19'
,p_column_linktext=>'#ITEM_DESCRIPTION#'
,p_column_link_attr=>'title="#OTHER_PARTS#" '
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26072056075526718530)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Order Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26072056449902718530)
,p_db_column_name=>'EXPECTED_DELIVERY_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Expected Delivery Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26072056795071718531)
,p_db_column_name=>'ACTUAL_DELIVERY_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Actual Delivery Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26072057254272718531)
,p_db_column_name=>'DAYS_ON_HAND'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Days On Hand'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_help_text=>'This is either the actual number of days on hand IF the actual delivery date is populated OR it is the number of days past the expected delivery date if the actual delivery date is not populated.'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26072057607612718532)
,p_db_column_name=>'EST_DAYS_ON_HAND'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Est Days On Hand'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26072057985183718532)
,p_db_column_name=>'DELIVERY_VARIANCE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Delivery Variance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24923614449208062974)
,p_db_column_name=>'SCHEDULED_INSTALL_DATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Scheduled Install Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24923614546177062975)
,p_db_column_name=>'INSTALLER'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Installer'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24923615109364062981)
,p_db_column_name=>'ALL_PARTS_RECEIVED'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Parts Received'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24923615244373062982)
,p_db_column_name=>'INSTALL_PART_ID'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Install Part Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24923615308407062983)
,p_db_column_name=>'FOLLOWUP_REQUIRED'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Followup Required'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24923615484033062985)
,p_db_column_name=>'NOTES'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'Notes'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11353251647774758570)
,p_db_column_name=>'TERRITORY'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Territory'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11353251724968758571)
,p_db_column_name=>'OTHER_PARTS'
,p_display_order=>180
,p_column_identifier=>'S'
,p_column_label=>'Other Parts'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11353252177842758575)
,p_db_column_name=>'TARGET_DATE'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>'Target Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11353252336517758577)
,p_db_column_name=>'HOLD_DATE'
,p_display_order=>200
,p_column_identifier=>'U'
,p_column_label=>'Hold Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11353252494544758579)
,p_db_column_name=>'PART_STATUS'
,p_display_order=>210
,p_column_identifier=>'V'
,p_column_label=>'Part Status'
,p_column_type=>'STRING'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>RGA Action Needed</b> - a follow-up was created and it has no expected delivery date, which indicates no action has been completed<br>',
'<b>On Hold</b> - The order has a hold date either on the entire order or on the install part which is in the future<br>',
'<b>Check On Hold</b> - The order has a hold date either on the entire order or on the install part which is past<br>',
'<b>Track Package</b> - All pieces have not been received and it is more than 6 days past expected delivery date<br>',
'<b>Delivery Due</b> - All pieced have not been received and it is between 0 and 5 days past expected delivery date<br>',
'<b>Schedule</b> - All pieces have been received for all install part in the order and is ready to be scheduled<br>',
'<b>Scheduled with Receivables</b> - Part has ascheduled install date but not all parts have been received<br>',
'<b>Scheduled</b> - Install part has a scheduled install date<br>',
'<b>Installed ?</b> - Install part has a scheduled install date which has past<br>',
'<b>Waiting Other Parts</b> - All pieces of this intall part have been received but other install parts for this order do not have all pieces received<br>',
'<b>On Track</b> - <br>'))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(338207075523403643)
,p_db_column_name=>'CLIENT_ZIP'
,p_display_order=>220
,p_column_identifier=>'W'
,p_column_label=>'Client Zip'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(338207873616403651)
,p_db_column_name=>'ESTIMATED_INSTALL_MINUTES'
,p_display_order=>230
,p_column_identifier=>'X'
,p_column_label=>'Estimated Install Minutes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(336850835816692694)
,p_db_column_name=>'CLIENT_ADDRESS'
,p_display_order=>240
,p_column_identifier=>'Y'
,p_column_label=>'Client Address'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(336850949291692695)
,p_db_column_name=>'BALANCE_DUE'
,p_display_order=>250
,p_column_identifier=>'Z'
,p_column_label=>'Balance Due'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214767879197366207)
,p_db_column_name=>'COMMO_LOG'
,p_display_order=>260
,p_column_identifier=>'AA'
,p_column_label=>'Commo Log'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190118507347119068)
,p_db_column_name=>'VENDOR'
,p_display_order=>270
,p_column_identifier=>'AB'
,p_column_label=>'Vendor'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(121739470048339457)
,p_db_column_name=>'PROCESS_STATUS'
,p_display_order=>280
,p_column_identifier=>'AC'
,p_column_label=>'Process Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64224824546002085)
,p_db_column_name=>'VENDOR_ORDER_NUMBER'
,p_display_order=>290
,p_column_identifier=>'AD'
,p_column_label=>'Vendor Order Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(336792585047207700)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Follow Ups'
,p_report_seq=>10
,p_report_alias=>'1481541'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'CLIENT_NAME:CLIENT_ZIP:INITIAL_OR_FOLLOWUP:ORDER_DATE:ITEM_DESCRIPTION:EXPECTED_DELIVERY_DATE:ACTUAL_DELIVERY_DATE:TARGET_DATE:ALL_PARTS_RECEIVED:DAYS_ON_HAND:PART_STATUS:HOLD_DATE:SCHEDULED_INSTALL_DATE:NOTES:OTHER_PARTS:TERRITORY:INSTALLER::ESTIMAT'
||'ED_INSTALL_MINUTES'
,p_sort_column_1=>'DAYS_ON_HAND'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'EST_DAYS_ON_HAND'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'CLIENT_NAME'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(336793437394207712)
,p_report_id=>wwv_flow_api.id(336792585047207700)
,p_name=>'Should Be Here'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'APXWS_CC_002'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ((#APXWS_CC_EXPR#) is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#0FF75C'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(336793793936207712)
,p_report_id=>wwv_flow_api.id(336792585047207700)
,p_name=>'Install Due'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DAYS_ON_HAND'
,p_operator=>'>='
,p_expr=>'7'
,p_condition_sql=>' (case when ("DAYS_ON_HAND" >= to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# >= #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#F70D0D'
,p_column_font_color=>'#080808'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(336794210769207713)
,p_report_id=>wwv_flow_api.id(336792585047207700)
,p_name=>'Check On Hold'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PART_STATUS'
,p_operator=>'='
,p_expr=>'Check On Hold'
,p_condition_sql=>' (case when ("PART_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Check On Hold''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#0E0B9E'
,p_column_font_color=>'#FFFFFF'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(336794631918207713)
,p_report_id=>wwv_flow_api.id(336792585047207700)
,p_name=>'Installed'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PART_STATUS'
,p_operator=>'='
,p_expr=>'Installed ?'
,p_condition_sql=>' (case when ("PART_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Installed ?''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#BF06C2'
,p_column_font_color=>'#FFFFFF'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(336795021860207713)
,p_report_id=>wwv_flow_api.id(336792585047207700)
,p_name=>'Schedule'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PART_STATUS'
,p_operator=>'='
,p_expr=>'Schedule'
,p_condition_sql=>' (case when ("PART_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Schedule''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#F7E708'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(336793048261207712)
,p_report_id=>wwv_flow_api.id(336792585047207700)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'INITIAL_OR_FOLLOWUP'
,p_operator=>'='
,p_expr=>'Follow-up'
,p_condition_sql=>'"INITIAL_OR_FOLLOWUP" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Follow-up''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(336795363341207714)
,p_report_id=>wwv_flow_api.id(336792585047207700)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'case when  G is not null and  K is null then ''Schedule'' else null end'
,p_column_type=>'STRING'
,p_column_label=>'On Hand <br />Not Scheduled'
,p_report_label=>'On Hand <br />Not Scheduled'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(336795835647207714)
,p_report_id=>wwv_flow_api.id(336792585047207700)
,p_db_column_name=>'APXWS_CC_002'
,p_column_identifier=>'C02'
,p_computation_expr=>'case when  I > 6 and  G is null then ''Track Package'' else null end'
,p_column_type=>'STRING'
,p_column_label=>'Should Be Here'
,p_report_label=>'Should Be Here'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(12664064148858103067)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Schedule'
,p_report_seq=>10
,p_report_alias=>'123262241'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CLIENT_NAME:CLIENT_ADDRESS:ESTIMATED_INSTALL_MINUTES:CLIENT_ZIP:INITIAL_OR_FOLLOWUP:ORDER_DATE:ITEM_DESCRIPTION:COMMO_LOG:EXPECTED_DELIVERY_DATE:ACTUAL_DELIVERY_DATE:TARGET_DATE:ALL_PARTS_RECEIVED:DAYS_ON_HAND:PART_STATUS:HOLD_DATE:SCHEDULED_INSTALL_'
||'DATE:NOTES:OTHER_PARTS:TERRITORY:INSTALLER:'
,p_sort_column_1=>'DAYS_ON_HAND'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'EST_DAYS_ON_HAND'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'CLIENT_NAME'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(251391891111918316)
,p_report_id=>wwv_flow_api.id(12664064148858103067)
,p_name=>'Should Be Here'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'APXWS_CC_002'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ((#APXWS_CC_EXPR#) is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#0FF75C'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(251392320433918316)
,p_report_id=>wwv_flow_api.id(12664064148858103067)
,p_name=>'Install Due'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DAYS_ON_HAND'
,p_operator=>'>='
,p_expr=>'7'
,p_condition_sql=>' (case when ("DAYS_ON_HAND" >= to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# >= #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#F70D0D'
,p_column_font_color=>'#080808'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(251392705212918316)
,p_report_id=>wwv_flow_api.id(12664064148858103067)
,p_name=>'Check On Hold'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PART_STATUS'
,p_operator=>'='
,p_expr=>'Check On Hold'
,p_condition_sql=>' (case when ("PART_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Check On Hold''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#0E0B9E'
,p_column_font_color=>'#FFFFFF'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(251393081964918316)
,p_report_id=>wwv_flow_api.id(12664064148858103067)
,p_name=>'Installed'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PART_STATUS'
,p_operator=>'='
,p_expr=>'Installed ?'
,p_condition_sql=>' (case when ("PART_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Installed ?''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#BF06C2'
,p_column_font_color=>'#FFFFFF'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(251393507432918317)
,p_report_id=>wwv_flow_api.id(12664064148858103067)
,p_name=>'Schedule'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PART_STATUS'
,p_operator=>'='
,p_expr=>'Schedule'
,p_condition_sql=>' (case when ("PART_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Schedule''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#F7E708'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(251391525277918315)
,p_report_id=>wwv_flow_api.id(12664064148858103067)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'PART_STATUS'
,p_operator=>'='
,p_expr=>'Schedule'
,p_condition_sql=>'"PART_STATUS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Schedule''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(251393898646918317)
,p_report_id=>wwv_flow_api.id(12664064148858103067)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'case when  G is not null and  K is null then ''Schedule'' else null end'
,p_column_type=>'STRING'
,p_column_label=>'On Hand <br />Not Scheduled'
,p_report_label=>'On Hand <br />Not Scheduled'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(251394349043918317)
,p_report_id=>wwv_flow_api.id(12664064148858103067)
,p_db_column_name=>'APXWS_CC_002'
,p_column_identifier=>'C02'
,p_computation_expr=>'case when  I > 6 and  G is null then ''Track Package'' else null end'
,p_column_type=>'STRING'
,p_column_label=>'Should Be Here'
,p_report_label=>'Should Be Here'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(26072041683784722564)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'257342017'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'CLIENT_NAME:CLIENT_ZIP:ORDER_DATE:ITEM_DESCRIPTION:VENDOR:EXPECTED_DELIVERY_DATE:ACTUAL_DELIVERY_DATE:TARGET_DATE:ALL_PARTS_RECEIVED:DAYS_ON_HAND:PART_STATUS:HOLD_DATE:SCHEDULED_INSTALL_DATE:COMMO_LOG:NOTES:OTHER_PARTS:INSTALLER:ESTIMATED_INSTALL_MIN'
||'UTES:INITIAL_OR_FOLLOWUP:CLIENT_ADDRESS:PROCESS_STATUS:VENDOR_ORDER_NUMBER:TERRITORY:'
,p_sort_column_1=>'DAYS_ON_HAND'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'EST_DAYS_ON_HAND'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'PART_STATUS'
,p_sort_direction_3=>'DESC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(29391599433553764)
,p_report_id=>wwv_flow_api.id(26072041683784722564)
,p_name=>'Install Due'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DAYS_ON_HAND'
,p_operator=>'>='
,p_expr=>'7'
,p_condition_sql=>' (case when ("DAYS_ON_HAND" >= to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# >= #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#F70D0D'
,p_column_font_color=>'#080808'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(29392013905553764)
,p_report_id=>wwv_flow_api.id(26072041683784722564)
,p_name=>'Check On Hold'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PART_STATUS'
,p_operator=>'='
,p_expr=>'Check On Hold'
,p_condition_sql=>' (case when ("PART_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Check On Hold''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#0E0B9E'
,p_column_font_color=>'#FFFFFF'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(29392436527553765)
,p_report_id=>wwv_flow_api.id(26072041683784722564)
,p_name=>'Installed'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PART_STATUS'
,p_operator=>'='
,p_expr=>'Installed ?'
,p_condition_sql=>' (case when ("PART_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Installed ?''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#BF06C2'
,p_column_font_color=>'#FFFFFF'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(29392822500553765)
,p_report_id=>wwv_flow_api.id(26072041683784722564)
,p_name=>'RGA'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PART_STATUS'
,p_operator=>'='
,p_expr=>'RGA Action Needed'
,p_condition_sql=>' (case when ("PART_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''RGA Action Needed''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#D40714'
,p_column_font_color=>'#000000'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(29393168998553765)
,p_report_id=>wwv_flow_api.id(26072041683784722564)
,p_name=>'Schedule'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PART_STATUS'
,p_operator=>'='
,p_expr=>'Schedule'
,p_condition_sql=>' (case when ("PART_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Schedule''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#F7E708'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(29393573385553766)
,p_report_id=>wwv_flow_api.id(26072041683784722564)
,p_name=>'Should Be Here'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'APXWS_CC_002'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ((#APXWS_CC_EXPR#) is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#0FF75C'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(29393989683553767)
,p_report_id=>wwv_flow_api.id(26072041683784722564)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'case when  G is not null and  K is null then ''Schedule'' else null end'
,p_column_type=>'STRING'
,p_column_label=>'On Hand <br />Not Scheduled'
,p_report_label=>'On Hand <br />Not Scheduled'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(29394406343553767)
,p_report_id=>wwv_flow_api.id(26072041683784722564)
,p_db_column_name=>'APXWS_CC_002'
,p_column_identifier=>'C02'
,p_computation_expr=>'case when  I > 6 and  G is null then ''Track Package'' else null end'
,p_column_type=>'STRING'
,p_column_label=>'Should Be Here'
,p_report_label=>'Should Be Here'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(64207395416664805)
,p_application_user=>'LARRY'
,p_name=>'Primary w/o comments'
,p_report_seq=>10
,p_display_rows=>100
,p_report_columns=>'CLIENT_NAME:CLIENT_ZIP:INITIAL_OR_FOLLOWUP:ORDER_DATE:ITEM_DESCRIPTION:EXPECTED_DELIVERY_DATE:ACTUAL_DELIVERY_DATE:TARGET_DATE:ALL_PARTS_RECEIVED:DAYS_ON_HAND:PART_STATUS:HOLD_DATE:SCHEDULED_INSTALL_DATE:OTHER_PARTS:INSTALLER:ESTIMATED_INSTALL_MINUTE'
||'S:CLIENT_ADDRESS:VENDOR:PROCESS_STATUS:'
,p_sort_column_1=>'DAYS_ON_HAND'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'EST_DAYS_ON_HAND'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'PART_STATUS'
,p_sort_direction_3=>'DESC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(64207458757664806)
,p_report_id=>wwv_flow_api.id(64207395416664805)
,p_name=>'Install Due'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DAYS_ON_HAND'
,p_operator=>'>='
,p_expr=>'7'
,p_condition_sql=>' (case when ("DAYS_ON_HAND" >= to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# >= #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#F70D0D'
,p_column_font_color=>'#080808'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(64207575275664806)
,p_report_id=>wwv_flow_api.id(64207395416664805)
,p_name=>'Check On Hold'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PART_STATUS'
,p_operator=>'='
,p_expr=>'Check On Hold'
,p_condition_sql=>' (case when ("PART_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Check On Hold''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#0E0B9E'
,p_column_font_color=>'#FFFFFF'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(64207739558664806)
,p_report_id=>wwv_flow_api.id(64207395416664805)
,p_name=>'Installed'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PART_STATUS'
,p_operator=>'='
,p_expr=>'Installed ?'
,p_condition_sql=>' (case when ("PART_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Installed ?''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#BF06C2'
,p_column_font_color=>'#FFFFFF'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(64207833677664806)
,p_report_id=>wwv_flow_api.id(64207395416664805)
,p_name=>'RGA'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PART_STATUS'
,p_operator=>'='
,p_expr=>'RGA Action Needed'
,p_condition_sql=>' (case when ("PART_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''RGA Action Needed''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#D40714'
,p_column_font_color=>'#000000'
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
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(64207929467664806)
,p_report_id=>wwv_flow_api.id(64207395416664805)
,p_name=>'Schedule'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PART_STATUS'
,p_operator=>'='
,p_expr=>'Schedule'
,p_condition_sql=>' (case when ("PART_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Schedule''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#F7E708'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(64208050765664806)
,p_report_id=>wwv_flow_api.id(64207395416664805)
,p_name=>'Should Be Here'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'APXWS_CC_002'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ((#APXWS_CC_EXPR#) is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#0FF75C'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(64208076569664807)
,p_report_id=>wwv_flow_api.id(64207395416664805)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'case when  G is not null and  K is null then ''Schedule'' else null end'
,p_column_type=>'STRING'
,p_column_label=>'On Hand <br />Not Scheduled'
,p_report_label=>'On Hand <br />Not Scheduled'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(64208171798664807)
,p_report_id=>wwv_flow_api.id(64207395416664805)
,p_db_column_name=>'APXWS_CC_002'
,p_column_identifier=>'C02'
,p_computation_expr=>'case when  I > 6 and  G is null then ''Track Package'' else null end'
,p_column_type=>'STRING'
,p_column_label=>'Should Be Here'
,p_report_label=>'Should Be Here'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(64371500266793661)
,p_application_user=>'LARRY'
,p_name=>'Lutron'
,p_report_seq=>10
,p_display_rows=>100
,p_report_columns=>'CLIENT_NAME:CLIENT_ZIP:INITIAL_OR_FOLLOWUP:ORDER_DATE:ITEM_DESCRIPTION:EXPECTED_DELIVERY_DATE:ACTUAL_DELIVERY_DATE:TARGET_DATE:ALL_PARTS_RECEIVED:DAYS_ON_HAND:PART_STATUS:HOLD_DATE:SCHEDULED_INSTALL_DATE:OTHER_PARTS:INSTALLER:ESTIMATED_INSTALL_MINUTE'
||'S:CLIENT_ADDRESS:VENDOR:PROCESS_STATUS:'
,p_sort_column_1=>'DAYS_ON_HAND'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'EST_DAYS_ON_HAND'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'PART_STATUS'
,p_sort_direction_3=>'DESC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(64371608813793661)
,p_report_id=>wwv_flow_api.id(64371500266793661)
,p_name=>'Install Due'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DAYS_ON_HAND'
,p_operator=>'>='
,p_expr=>'7'
,p_condition_sql=>' (case when ("DAYS_ON_HAND" >= to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# >= #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#F70D0D'
,p_column_font_color=>'#080808'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(64371684352793661)
,p_report_id=>wwv_flow_api.id(64371500266793661)
,p_name=>'Check On Hold'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PART_STATUS'
,p_operator=>'='
,p_expr=>'Check On Hold'
,p_condition_sql=>' (case when ("PART_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Check On Hold''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#0E0B9E'
,p_column_font_color=>'#FFFFFF'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(64371796194793661)
,p_report_id=>wwv_flow_api.id(64371500266793661)
,p_name=>'Installed'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PART_STATUS'
,p_operator=>'='
,p_expr=>'Installed ?'
,p_condition_sql=>' (case when ("PART_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Installed ?''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#BF06C2'
,p_column_font_color=>'#FFFFFF'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(64371915363793661)
,p_report_id=>wwv_flow_api.id(64371500266793661)
,p_name=>'RGA'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PART_STATUS'
,p_operator=>'='
,p_expr=>'RGA Action Needed'
,p_condition_sql=>' (case when ("PART_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''RGA Action Needed''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#D40714'
,p_column_font_color=>'#000000'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(64372019953793661)
,p_report_id=>wwv_flow_api.id(64371500266793661)
,p_name=>'Schedule'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PART_STATUS'
,p_operator=>'='
,p_expr=>'Schedule'
,p_condition_sql=>' (case when ("PART_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Schedule''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#F7E708'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(64372086400793662)
,p_report_id=>wwv_flow_api.id(64371500266793661)
,p_name=>'Should Be Here'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'APXWS_CC_002'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ((#APXWS_CC_EXPR#) is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#0FF75C'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(64372202824793662)
,p_report_id=>wwv_flow_api.id(64371500266793661)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'VENDOR'
,p_operator=>'='
,p_expr=>'Lutron'
,p_condition_sql=>'"VENDOR" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Lutron''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(64372271215793662)
,p_report_id=>wwv_flow_api.id(64371500266793661)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'case when  G is not null and  K is null then ''Schedule'' else null end'
,p_column_type=>'STRING'
,p_column_label=>'On Hand <br />Not Scheduled'
,p_report_label=>'On Hand <br />Not Scheduled'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(64372371100793662)
,p_report_id=>wwv_flow_api.id(64371500266793661)
,p_db_column_name=>'APXWS_CC_002'
,p_column_identifier=>'C02'
,p_computation_expr=>'case when  I > 6 and  G is null then ''Track Package'' else null end'
,p_column_type=>'STRING'
,p_column_label=>'Should Be Here'
,p_report_label=>'Should Be Here'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(131463280368082250)
,p_application_user=>'LARRY'
,p_name=>'Track Package'
,p_report_seq=>10
,p_display_rows=>100
,p_report_columns=>'CLIENT_NAME:CLIENT_ZIP:INITIAL_OR_FOLLOWUP:ORDER_DATE:ITEM_DESCRIPTION:EXPECTED_DELIVERY_DATE:ACTUAL_DELIVERY_DATE:TARGET_DATE:ALL_PARTS_RECEIVED:DAYS_ON_HAND:PART_STATUS:HOLD_DATE:SCHEDULED_INSTALL_DATE:COMMO_LOG:NOTES:OTHER_PARTS:TERRITORY:INSTALLE'
||'R:ESTIMATED_INSTALL_MINUTES:CLIENT_ADDRESS::VENDOR'
,p_sort_column_1=>'DAYS_ON_HAND'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'EST_DAYS_ON_HAND'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'CLIENT_NAME'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(131463449053082251)
,p_report_id=>wwv_flow_api.id(131463280368082250)
,p_name=>'Should Be Here'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'APXWS_CC_002'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ((#APXWS_CC_EXPR#) is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#0FF75C'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(131463580805082251)
,p_report_id=>wwv_flow_api.id(131463280368082250)
,p_name=>'Install Due'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DAYS_ON_HAND'
,p_operator=>'>='
,p_expr=>'7'
,p_condition_sql=>' (case when ("DAYS_ON_HAND" >= to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# >= #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#F70D0D'
,p_column_font_color=>'#080808'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(131463684649082251)
,p_report_id=>wwv_flow_api.id(131463280368082250)
,p_name=>'Installed'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PART_STATUS'
,p_operator=>'='
,p_expr=>'Installed ?'
,p_condition_sql=>' (case when ("PART_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Installed ?''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#BF06C2'
,p_column_font_color=>'#FFFFFF'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(131463803806082251)
,p_report_id=>wwv_flow_api.id(131463280368082250)
,p_name=>'RGA'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PART_STATUS'
,p_operator=>'='
,p_expr=>'RGA Action Needed'
,p_condition_sql=>' (case when ("PART_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''RGA Action Needed''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#D40714'
,p_column_font_color=>'#000000'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(131463836727082251)
,p_report_id=>wwv_flow_api.id(131463280368082250)
,p_name=>'Schedule'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PART_STATUS'
,p_operator=>'='
,p_expr=>'Schedule'
,p_condition_sql=>' (case when ("PART_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Schedule''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#F7E708'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(131463967440082251)
,p_report_id=>wwv_flow_api.id(131463280368082250)
,p_name=>'Check On Hold'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PART_STATUS'
,p_operator=>'='
,p_expr=>'Check On Hold'
,p_condition_sql=>' (case when ("PART_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Check On Hold''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#0E0B9E'
,p_column_font_color=>'#FFFFFF'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(131463347476082251)
,p_report_id=>wwv_flow_api.id(131463280368082250)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'PART_STATUS'
,p_operator=>'='
,p_expr=>'Track Package'
,p_condition_sql=>'"PART_STATUS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Track Package''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(131464059564082252)
,p_report_id=>wwv_flow_api.id(131463280368082250)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'case when  G is not null and  K is null then ''Schedule'' else null end'
,p_column_type=>'STRING'
,p_column_label=>'On Hand <br />Not Scheduled'
,p_report_label=>'On Hand <br />Not Scheduled'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(131464202436082252)
,p_report_id=>wwv_flow_api.id(131463280368082250)
,p_db_column_name=>'APXWS_CC_002'
,p_column_identifier=>'C02'
,p_computation_expr=>'case when  I > 6 and  G is null then ''Track Package'' else null end'
,p_column_type=>'STRING'
,p_column_label=>'Should Be Here'
,p_report_label=>'Should Be Here'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(168874782246374435)
,p_button_sequence=>5
,p_button_plug_id=>wwv_flow_api.id(26072053880040718521)
,p_button_name=>'Reset'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(16247625805411137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1674355244396885287)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26072053880040718521)
,p_button_name=>'New_Order'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(16247625805411137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Order'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,6:P6_RETURN_PAGE,P6_ORDER_ID:19,'
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91446219854489232)
,p_name=>'P19_REPORT_REGION_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(26072053880040718521)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137987466801109433)
,p_name=>'P19_RETURN_PAGE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26072053880040718521)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(336851029238692696)
,p_name=>'P19_SCROLL_POS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26072053880040718521)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(91446374237489234)
,p_computation_sequence=>10
,p_computation_item=>'P19_REPORT_REGION_ID'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select region_id ',
'  from APEX_APPLICATION_PAGE_IR_RPT ',
' where application_id = :APP_ID ',
'   and page_id = :APP_PAGE_ID',
'   and status = ''PUBLIC'' ',
'   and report_type = ''PRIMARY_DEFAULT'''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(336851172083692698)
,p_name=>'Set Scroll Pos'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'unload'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336851318238692699)
,p_event_id=>wwv_flow_api.id(336851172083692698)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P19_SCROLL_POS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(window).scrollTop();'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(168872884401374416)
,p_name=>'Save Scroll Pos'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'unload'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(168873039879374417)
,p_event_id=>wwv_flow_api.id(168872884401374416)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P19_SCROLL_POS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(168874973209374436)
,p_name=>'Reset Pressed'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(168874782246374435)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(168875044072374437)
,p_event_id=>wwv_flow_api.id(168874973209374436)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' APEX_IR.RESET_REPORT(',
'   p_page_id => :APP_PAGE_ID,',
'   p_region_id => :P19_REPORT_REGION_ID,',
'   p_report_id => NULL );',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(168875154256374438)
,p_event_id=>wwv_flow_api.id(168874973209374436)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(26072053880040718521)
);
wwv_flow_api.component_end;
end;
/
