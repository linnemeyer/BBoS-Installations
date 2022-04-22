prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'Outstanding Installation Orders'
,p_step_title=>'Outstanding Installation Orders'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20181204235045'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22238335144683859031)
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
 p_id=>wwv_flow_api.id(22238336092922859031)
,p_plug_name=>'Outstanding Installation Orders'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247572498510137930)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with outstanding_parts as (',
'     select ip.order_id, ip.installer_id, count(*) out_count',
'       from bb_install_parts ip',
'      where ip.installation_date is null',
'      group by ip.order_id, ip.installer_id ),',
'    install_scheduled as (',
'     select ip.order_id, count(*) schedule_count',
'       from bb_install_parts ip',
'      where ip.scheduled_install_date is not null',
'        and ip.installation_date is null',
'      group by ip.order_id ),',
'     min_delivery as (',
'     select ip.order_id, max(nvl(actual_delivery_date, expected_delivery_date)) expected_delivery_date',
'       from bb_install_parts ip',
'      where ip.installation_date is null',
'      group by ip.order_id ),',
'     installers as (',
'      select ip.order_id, i.installer, ip.installer_id',
'        from bb_install_parts ip, bb_installers i, bb_user_installers ui',
'       where ip.installer_id = i.installer_id',
'         and ui.installer_id = i.installer_id',
'         and ui.user_id = :G_USER_ID',
'       group by ip.order_id, i.installer, ip.installer_id)',
'select o.order_id',
'     , decode(o.initial_or_followup, ''F'', ''Follow-up'', ''Initial'') initial_or_followup',
'     , i.installer',
'     , o.client_name, o.order_date',
'     , nvl(op.out_count, 0) out_count',
'     , expected_delivery_date',
'     , expected_delivery_date - trunc(sysdate)  delivery_days_out',
'     , nvl(ins.schedule_count, 0) schedule_count',
'     , t.territory_name territory',
'  from bb_orders o, outstanding_parts op, install_scheduled ins',
'     , min_delivery md,  installers i, bb_territories t, bb_user_territory_privs utp',
' where o.order_id = op.order_id',
'   and i.installer_id = op.installer_id',
'   and o.territory_id = t.territory_id',
'   and o.territory_id = utp.territory_id',
'   and utp.user_id = :G_USER_ID',
'   and utp.priviledge = ''Install''',
'   and o.order_id = ins.order_id(+)',
'   and o.order_id = md.order_id(+)',
'   and o.order_id = i.order_id',
'   and op.out_count > 0'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(22238336269110859031)
,p_name=>'Outstanding Installation Orders'
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
,p_internal_uid=>21900496189758563762
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22238337469380859032)
,p_db_column_name=>'ORDER_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,6:P6_ORDER_ID,P6_RETURN_PAGE:#ORDER_ID#,2'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22238338018566859033)
,p_db_column_name=>'INITIAL_OR_FOLLOWUP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Initial Or<br  /> Followup'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22238341946632859036)
,p_db_column_name=>'INSTALLER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Installer'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22238342556611859036)
,p_db_column_name=>'CLIENT_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Client Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22238343278681859036)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Order Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22238344162505859037)
,p_db_column_name=>'OUT_COUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Out Count'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_help_text=>'Out count is the number of install parts that have no actual installation date recorded.'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22238344783740859037)
,p_db_column_name=>'EXPECTED_DELIVERY_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Expected / Actual<br />Delivery<br  />Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22238345515588859037)
,p_db_column_name=>'DELIVERY_DAYS_OUT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Delivery<br />Days Out'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22238346320357859037)
,p_db_column_name=>'SCHEDULE_COUNT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Schedule Count'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2590435016954072883)
,p_db_column_name=>'TERRITORY'
,p_display_order=>19
,p_column_identifier=>'J'
,p_column_label=>'Territory'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(22238409219758873796)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'219005692'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORDER_ID:INITIAL_OR_FOLLOWUP:INSTALLER:CLIENT_NAME:ORDER_DATE:OUT_COUNT:EXPECTED_DELIVERY_DATE:DELIVERY_DAYS_OUT:SCHEDULE_COUNT:TERRITORY'
,p_sort_column_1=>'DELIVERY_DAYS_OUT'
,p_sort_direction_1=>'ASC'
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
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(22241453558560516191)
,p_report_id=>wwv_flow_api.id(22238409219758873796)
,p_name=>'Delivery Due'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DELIVERY_DAYS_OUT'
,p_operator=>'<'
,p_expr=>'0'
,p_condition_sql=>' (case when ("DELIVERY_DAYS_OUT" < to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# < #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FF7755'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(22241453894037516191)
,p_report_id=>wwv_flow_api.id(22238409219758873796)
,p_name=>'Expect Soon'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DELIVERY_DAYS_OUT'
,p_operator=>'between'
,p_expr=>'0'
,p_expr2=>'6'
,p_condition_sql=>' (case when ("DELIVERY_DAYS_OUT" between to_number(#APXWS_EXPR#) and to_number(#APXWS_EXPR2#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# #APXWS_EXPR_NUMBER# #APXWS_AND# #APXWS_EXPR2_NUMBER#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFFF99'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17932132778281773306)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22238336092922859031)
,p_button_name=>'New_Order'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Order'
,p_button_position=>'ABOVE_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,6:P6_RETURN_PAGE:2'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(17932132372710773302)
,p_branch_name=>'Return to Page'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.component_end;
end;
/
