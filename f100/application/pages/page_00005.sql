prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'Installation Orders'
,p_step_title=>'Installation Orders'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20181005140725'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16436896560490311928)
,p_plug_name=>'Orders'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247572498510137930)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with outstanding_parts as (',
'     select ip.order_id, count(*) out_count',
'       from bb_install_parts ip',
'      where ip.installation_date is null',
'      group by ip.order_id ),',
'    install_scheduled as (',
'     select ip.order_id, count(*) schedule_count',
'       from bb_install_parts ip',
'      where ip.scheduled_install_date is not null',
'        and ip.installation_date is null',
'      group by ip.order_id ),',
'     min_delivery as (',
'     select ip.order_id, min(expected_delivery_date) expected_delivery_date',
'       from bb_install_parts ip',
'      where ip.installation_date is null',
'      group by ip.order_id ),',
'     our_installs as (',
'     select ip.order_id, ''Yes'' ours',
'       from bb_install_parts ip, bb_installers i',
'      where i.installer_id = ip.installer_id',
'        and i.installer = ''BBS''',
'        and ip.installation_date is null',
'      group by ip.order_id ),',
'     his_installs as (',
'     select ip.order_id, ''Yes'' his',
'       from bb_install_parts ip, bb_installers i',
'      where i.installer_id = ip.installer_id',
'        and i.installer = ''BB Installs''',
'        and ip.installation_date is null',
'      group by ip.order_id )',
'select o.order_id, o.initial_or_followup',
'     , o.client_name, o.order_date',
'     , nvl(op.out_count, 0) out_count',
'     , expected_delivery_date',
'     , t.territory_name territory',
'     , expected_delivery_date - trunc(sysdate)  delivery_days_out',
'     , nvl(ins.schedule_count, 0) schedule_count',
'     , nvl(oi.ours, ''No'') is_ours',
'     , nvl(hi.his, ''No'') is_his',
'  from bb_orders o, outstanding_parts op, install_scheduled ins',
'     , min_delivery md, our_installs oi, his_installs hi',
'     , bb_territories t',
' where o.territory_id = t.territory_id',
'   and o.order_id = op.order_id(+)',
'   and o.order_id = ins.order_id(+)',
'   and o.order_id = md.order_id(+)',
'   and o.order_id = oi.order_id(+)',
'   and o.order_id = hi.order_id(+)',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(16436896965993311929)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6_ORDER_ID,P6_RETURN_PAGE:#ORDER_ID#,5'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_owner=>'LARRY'
,p_internal_uid=>16099056886641016660
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16436896992504311931)
,p_db_column_name=>'ORDER_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Order Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16436897861303311933)
,p_db_column_name=>'CLIENT_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Client Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16436898199783311933)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Order Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16436897430911311932)
,p_db_column_name=>'INITIAL_OR_FOLLOWUP'
,p_display_order=>14
,p_column_identifier=>'B'
,p_column_label=>'Initial Or<br />Followup'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(16436808424882714884)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16437874039312428102)
,p_db_column_name=>'OUT_COUNT'
,p_display_order=>24
,p_column_identifier=>'E'
,p_column_label=>'Parts<br />Not Yet<br />Installed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16437874145446428103)
,p_db_column_name=>'EXPECTED_DELIVERY_DATE'
,p_display_order=>34
,p_column_identifier=>'F'
,p_column_label=>'Expected<br/>Delivery<br />Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16437874194374428104)
,p_db_column_name=>'IS_OURS'
,p_display_order=>44
,p_column_identifier=>'G'
,p_column_label=>'Is Ours'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16437874370625428105)
,p_db_column_name=>'IS_HIS'
,p_display_order=>54
,p_column_identifier=>'H'
,p_column_label=>'Is His'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16437875015991428112)
,p_db_column_name=>'DELIVERY_DAYS_OUT'
,p_display_order=>64
,p_column_identifier=>'J'
,p_column_label=>'Delivery<br />Days<br />Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16437875457795428116)
,p_db_column_name=>'SCHEDULE_COUNT'
,p_display_order=>74
,p_column_identifier=>'K'
,p_column_label=>'Installation<br />Scheduled<br />Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2590455663840072889)
,p_db_column_name=>'TERRITORY'
,p_display_order=>84
,p_column_identifier=>'L'
,p_column_label=>'Territory'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(16436882929591737220)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'160990429'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORDER_ID:INITIAL_OR_FOLLOWUP:CLIENT_NAME:ORDER_DATE:OUT_COUNT:EXPECTED_DELIVERY_DATE:IS_OURS:IS_HIS:DELIVERY_DAYS_OUT:SCHEDULE_COUNT:TERRITORY'
,p_sort_column_1=>'EXPECTED_DELIVERY_DATE'
,p_sort_direction_1=>'ASC NULLS LAST'
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
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(16518109593102916667)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Open Orders'
,p_report_seq=>10
,p_report_alias=>'161802696'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CLIENT_NAME:ORDER_DATE:INITIAL_OR_FOLLOWUP:OUT_COUNT:EXPECTED_DELIVERY_DATE'
,p_sort_column_1=>'EXPECTED_DELIVERY_DATE'
,p_sort_direction_1=>'ASC NULLS LAST'
,p_sort_column_2=>'CLIENT_NAME'
,p_sort_direction_2=>'DESC'
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
 p_id=>wwv_flow_api.id(16518110071132916669)
,p_report_id=>wwv_flow_api.id(16518109593102916667)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'OUT_COUNT'
,p_operator=>'>'
,p_expr=>'0'
,p_condition_sql=>'"OUT_COUNT" > to_number(#APXWS_EXPR#)'
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(16518505200298923555)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Completed Orders'
,p_report_seq=>10
,p_report_alias=>'161806653'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CLIENT_NAME:INITIAL_OR_FOLLOWUP:ORDER_DATE:OUT_COUNT:'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(17988818503579602831)
,p_report_id=>wwv_flow_api.id(16518505200298923555)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'OUT_COUNT'
,p_operator=>'='
,p_expr=>'0'
,p_condition_sql=>'"OUT_COUNT" = to_number(#APXWS_EXPR#)'
,p_condition_display=>'#APXWS_COL_NAME# = #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(16519827495714390711)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Our Open Orders'
,p_report_seq=>10
,p_report_alias=>'161819875'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CLIENT_NAME:ORDER_DATE:INITIAL_OR_FOLLOWUP:OUT_COUNT:EXPECTED_DELIVERY_DATE:DELIVERY_DAYS_OUT:'
,p_sort_column_1=>'EXPECTED_DELIVERY_DATE'
,p_sort_direction_1=>'ASC NULLS LAST'
,p_sort_column_2=>'CLIENT_NAME'
,p_sort_direction_2=>'DESC'
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
 p_id=>wwv_flow_api.id(16872145703573423984)
,p_report_id=>wwv_flow_api.id(16519827495714390711)
,p_name=>'Over Due'
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
 p_id=>wwv_flow_api.id(16872146127084423984)
,p_report_id=>wwv_flow_api.id(16519827495714390711)
,p_name=>'Due Soon'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DELIVERY_DAYS_OUT'
,p_operator=>'between'
,p_expr=>'0'
,p_expr2=>'5'
,p_condition_sql=>' (case when ("DELIVERY_DAYS_OUT" between to_number(#APXWS_EXPR#) and to_number(#APXWS_EXPR2#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# #APXWS_EXPR_NUMBER# #APXWS_AND# #APXWS_EXPR2_NUMBER#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFFF99'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(16872144971215423983)
,p_report_id=>wwv_flow_api.id(16519827495714390711)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'IS_OURS'
,p_operator=>'='
,p_expr=>'Yes'
,p_condition_sql=>'"IS_OURS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Yes''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(16872145357806423984)
,p_report_id=>wwv_flow_api.id(16519827495714390711)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'OUT_COUNT'
,p_operator=>'>'
,p_expr=>'0'
,p_condition_sql=>'"OUT_COUNT" > to_number(#APXWS_EXPR#)'
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(16519854470128810993)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Shades Open Orders'
,p_report_seq=>10
,p_report_alias=>'161820144'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CLIENT_NAME:ORDER_DATE:INITIAL_OR_FOLLOWUP:OUT_COUNT:EXPECTED_DELIVERY_DATE:DELIVERY_DAYS_OUT:'
,p_sort_column_1=>'EXPECTED_DELIVERY_DATE'
,p_sort_direction_1=>'ASC NULLS LAST'
,p_sort_column_2=>'CLIENT_NAME'
,p_sort_direction_2=>'DESC'
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
 p_id=>wwv_flow_api.id(16872134460782414295)
,p_report_id=>wwv_flow_api.id(16519854470128810993)
,p_name=>'Over Due'
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
 p_id=>wwv_flow_api.id(16872134799678414295)
,p_report_id=>wwv_flow_api.id(16519854470128810993)
,p_name=>'Due soon'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DELIVERY_DAYS_OUT'
,p_operator=>'between'
,p_expr=>'0'
,p_expr2=>'5'
,p_condition_sql=>' (case when ("DELIVERY_DAYS_OUT" between to_number(#APXWS_EXPR#) and to_number(#APXWS_EXPR2#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# #APXWS_EXPR_NUMBER# #APXWS_AND# #APXWS_EXPR2_NUMBER#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFFF99'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(16872133643307414294)
,p_report_id=>wwv_flow_api.id(16519854470128810993)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'IS_HIS'
,p_operator=>'='
,p_expr=>'Yes'
,p_condition_sql=>'"IS_HIS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Yes''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(16872134022338414294)
,p_report_id=>wwv_flow_api.id(16519854470128810993)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'OUT_COUNT'
,p_operator=>'>'
,p_expr=>'0'
,p_condition_sql=>'"OUT_COUNT" > to_number(#APXWS_EXPR#)'
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16436899198678311936)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16436898610086311934)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(16436896560490311928)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6:P6_RETURN_PAGE:5'
);
wwv_flow_api.component_end;
end;
/
