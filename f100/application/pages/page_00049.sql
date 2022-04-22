prompt --application/pages/page_00049
begin
--   Manifest
--     PAGE: 00049
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
 p_id=>49
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'TPT Final Results'
,p_alias=>'TPT-FINAL-RESULTS'
,p_step_title=>'TPT Final Results'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(16247651097089137992)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20211017192337'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26849306883947647)
,p_plug_name=>'TPT Final Results'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(16247583999328137937)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(26819542177947618)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(16247623704047137963)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26849450778947647)
,p_plug_name=>'TPT Final Results'
,p_parent_plug_id=>wwv_flow_api.id(26849306883947647)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247552094877137919)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<h2>This report displays the record counts for the current and previous load</h2>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26788206443632113)
,p_plug_name=>'Load Counts'
,p_parent_plug_id=>wwv_flow_api.id(26849450778947647)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247572498510137930)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with first_max as (',
'        select max(trunc(created_on))first_max',
'          from tpt_table_row_counts),',
'     second_max as (',
'        select max(trunc(created_on))second_max',
'          from tpt_table_row_counts',
'         where trunc(created_on) != (select max(trunc(created_on)) from tpt_table_row_counts))',
'select trc.table_name, trc.row_count, trunc(trc.created_on) created_on',
' from tpt_table_row_counts trc, first_max fm, second_max sm',
'where trc.table_name != ''TPT_PHONES''',
'  and (trunc(trc.created_on) = fm.first_max or trunc(trc.created_on) = sm.second_max )'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Load Counts'
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
 p_id=>wwv_flow_api.id(26789219109632123)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'LARRY'
,p_internal_uid=>9187161319798845
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26789260405632124)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Table Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26789436925632125)
,p_db_column_name=>'ROW_COUNT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Row Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26789530265632126)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(28186665278530016)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'105847'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TABLE_NAME:ROW_COUNT:CREATED_ON'
);
wwv_flow_api.create_worksheet_pivot(
 p_id=>wwv_flow_api.id(28189333609543129)
,p_report_id=>wwv_flow_api.id(28186665278530016)
,p_pivot_columns=>'TABLE_NAME'
,p_row_columns=>'CREATED_ON'
);
wwv_flow_api.create_worksheet_pivot_agg(
 p_id=>wwv_flow_api.id(28189750832543130)
,p_pivot_id=>wwv_flow_api.id(28189333609543129)
,p_display_seq=>1
,p_function_name=>'MAX'
,p_column_name=>'ROW_COUNT'
,p_db_column_name=>'PFC1'
,p_column_label=>'Row Count'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26851102630947648)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26849306883947647)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:38:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26851240390947648)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(26849306883947647)
,p_button_name=>'FINISH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finish'
,p_button_position=>'NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26851271016947648)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26849306883947647)
,p_button_name=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625651718137965)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26852762737947649)
,p_branch_name=>'Go To Page 19'
,p_branch_action=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::IR_ PROCESS_STATUS,P19_RETURN_PAGE:INITIAL LOAD,38&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(26851240390947648)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26852151281947649)
,p_branch_action=>'f?p=&APP_ID.:48:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(26851271016947648)
,p_branch_sequence=>10
);
wwv_flow_api.component_end;
end;
/
