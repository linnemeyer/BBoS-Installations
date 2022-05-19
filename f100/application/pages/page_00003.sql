prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'Receivables DT'
,p_step_title=>'Receivables DT'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(16247544409895137914)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20210309234653'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19128786591090175548)
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
 p_id=>wwv_flow_api.id(35348964283069096084)
,p_plug_name=>'Receivables'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247572498510137930)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ip.install_part_id, o.Client_name, item_description',
'     , expected_delivery_date',
'     , decode(o.initial_or_followup, ''F'', ''Follow-up'', ''Initial'') initial_or_followup',
'     , ip.order_id, t.territory_name territory',
'     , ip.all_parts_received',
'  from bb_install_parts ip, bb_orders o, bb_territories t',
' where ip.all_parts_received in ( ''None'', ''Partial'') ',
'   and ip.installation_date is null ',
'   and o.territory_id = t.territory_id',
'   and ip.location_id = :P3_LOCATION',
'   and o.order_id = ip.order_id',
' order by expected_delivery_date'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(17932119701857773276)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'LARRY'
,p_internal_uid=>17594279622505478007
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17932119872881773277)
,p_db_column_name=>'INSTALL_PART_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP,4:P4_INSTALL_PART_ID,P4_ORDER_ID,P4_APPLY_TO_ALL:#INSTALL_PART_ID#,#ORDER_ID#,No'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17932119926387773278)
,p_db_column_name=>'CLIENT_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Client Name'
,p_column_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP:P4_INSTALL_PART_ID,P4_ORDER_ID,P4_APPLY_TO_ALL:#INSTALL_PART_ID#,#ORDER_ID#,No'
,p_column_linktext=>'#CLIENT_NAME#'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17932120024586773279)
,p_db_column_name=>'ITEM_DESCRIPTION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Item Description'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17932120123886773280)
,p_db_column_name=>'EXPECTED_DELIVERY_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Expected Delivery Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17932132027630773299)
,p_db_column_name=>'INITIAL_OR_FOLLOWUP'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Initial Or Followup'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17932133518057773314)
,p_db_column_name=>'ORDER_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Order Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2590434798209072881)
,p_db_column_name=>'TERRITORY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Territory'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24923614989939062980)
,p_db_column_name=>'ALL_PARTS_RECEIVED'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Parts Received'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(19128805617772179713)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'187909656'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'INSTALL_PART_ID:CLIENT_NAME:ITEM_DESCRIPTION:EXPECTED_DELIVERY_DATE:ALL_PARTS_RECEIVED:INITIAL_OR_FOLLOWUP:TERRITORY:'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(19128787354201175551)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'P3_LOCATION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19128785859270175542)
,p_name=>'P3_LOCATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(35348964283069096084)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   cursor loc_cur is',
'      select location_id',
'        from bb_user_locations',
'       where user_id = :G_USER_ID;',
'   v_id  number;',
'begin',
'   open  loc_cur;',
'   fetch loc_cur into v_id;',
'   close loc_cur;',
'   return v_id;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Location'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DELIVERY LOCATIONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dl.location, dl.location_id',
'  from bb_delivery_locations dl, bb_user_locations ul',
' where dl.location_id = ul.location_id',
'   and ul.user_id = :G_USER_ID',
' order by 1'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(16247624987503137964)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.component_end;
end;
/
