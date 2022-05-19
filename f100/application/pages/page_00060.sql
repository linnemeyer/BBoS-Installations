prompt --application/pages/page_00060
begin
--   Manifest
--     PAGE: 00060
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
 p_id=>60
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'Messages'
,p_alias=>'MESSAGES'
,p_step_title=>'Messages'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20220509195648'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31986953407858365)
,p_plug_name=>'Messages'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247572498510137930)
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'BB_USER_MESSAGES'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'user_id =  :G_USER_ID',
'or ',
'(',
'  nvl(:P60_ALL, ''Just Me'') = ''All''',
'  and :G_USER_ID = 1 )'))
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Messages'
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
 p_id=>wwv_flow_api.id(28245990863745519)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'LARRY'
,p_internal_uid=>10643933073912241
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28246089237745520)
,p_db_column_name=>'MESSAGE_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'&nbsp;'
,p_column_link=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:63:P63_MESSAGE_ID:#MESSAGE_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28246239140745521)
,p_db_column_name=>'USER_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'User Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28246501895745524)
,p_db_column_name=>'MESSAGE'
,p_display_order=>30
,p_column_identifier=>'E'
,p_column_label=>'Message'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28246333541745522)
,p_db_column_name=>'ORDER_ID'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Order'
,p_column_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6_ORDER_ID,P6_RETURN_PAGE:#ORDER_ID#,60'
,p_column_linktext=>'#ORDER_ID#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28246370438745523)
,p_db_column_name=>'INSTALL_PART_ID'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Installation Part'
,p_column_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_INSTALL_PART_ID,P8_ORDER_ID,P8_RETURN_PAGE:#INSTALL_PART_ID#,#ORDER_ID#,60'
,p_column_linktext=>'#INSTALL_PART_ID#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28246605803745525)
,p_db_column_name=>'FIRST_VIEW_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'First View Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MI AM'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28246659425745526)
,p_db_column_name=>'COMPLETE_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Complete Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MI AM'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28246777182745527)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28246881851745528)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MI AM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31988898228902379)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31989026043902380)
,p_db_column_name=>'UPDATED_ON'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Updated On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MI AM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31998214260903026)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'MSG_PRIMARY'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MESSAGE_ID:MESSAGE:ORDER_ID:INSTALL_PART_ID:FIRST_VIEW_DATE:CREATED_BY:CREATED_ON:'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(32046728606908666)
,p_report_id=>wwv_flow_api.id(31998214260903026)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'COMPLETE_DATE'
,p_operator=>'is null'
,p_condition_sql=>'"COMPLETE_DATE" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(32003409611005611)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Completed'
,p_report_seq=>10
,p_report_alias=>'144014'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MESSAGE_ID:MESSAGE:ORDER_ID:INSTALL_PART_ID:FIRST_VIEW_DATE:CREATED_BY:CREATED_ON:COMPLETE_DATE:'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(32003814766005611)
,p_report_id=>wwv_flow_api.id(32003409611005611)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'COMPLETE_DATE'
,p_operator=>'is not null'
,p_condition_sql=>'"COMPLETE_DATE" is not null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31988295321858369)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(31986953407858365)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'TOP_AND_BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.:62'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14388641606069119)
,p_branch_action=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14388519621069118)
,p_name=>'P60_ALL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(31986953407858365)
,p_item_default=>'Just Me'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:All;All,Just Me;Just Me'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_display_when=>':G_USER_ID = 1'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31987311710858366)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(31986953407858365)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31987814547858368)
,p_event_id=>wwv_flow_api.id(31987311710858366)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(31986953407858365)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(32043905017802219)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set First Viewed'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update bb_user_messages',
'   set first_view_date = localtimestamp',
' where first_view_date is null ',
'   and user_id = :G_USER_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
