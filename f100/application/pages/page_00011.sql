prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
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
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'User Management'
,p_step_title=>'User Management'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20211015183612'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2560700606639549289)
,p_plug_name=>'User Management'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247572498510137930)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "USER_ID", ',
'"USER_NAME",',
'"PASSWORD",',
'"ACCESS_EFF_DATE",',
'"ACCESS_TERM_DATE",',
'"FIRST_NAME",',
'"LAST_NAME",',
'"EMAIL",',
'"USER_ROLE"',
'from "#OWNER#"."BB_USERS" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(2560701067444549289)
,p_name=>'User Management'
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
,p_detail_link=>'f?p=&APP_ID.:12:&APP_SESSION.::::P12_USER_ID:#USER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_owner=>'LARRY'
,p_internal_uid=>2222860988092254020
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2560701109796549291)
,p_db_column_name=>'USER_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'User Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2560701551338549292)
,p_db_column_name=>'USER_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2560701946259549292)
,p_db_column_name=>'PASSWORD'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Password'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2560702286505549293)
,p_db_column_name=>'ACCESS_EFF_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Access Eff Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2560702736784549293)
,p_db_column_name=>'ACCESS_TERM_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Access Term Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2560703098302549293)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2560703544789549294)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2560703903285549294)
,p_db_column_name=>'EMAIL'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26788561469632117)
,p_db_column_name=>'USER_ROLE'
,p_display_order=>18
,p_column_identifier=>'I'
,p_column_label=>'User Role'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(2560730784501551216)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'22228908'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USER_ID:USER_NAME:PASSWORD:ACCESS_EFF_DATE:ACCESS_TERM_DATE:FIRST_NAME:LAST_NAME:EMAIL:USER_ROLE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2560704953163549296)
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
 p_id=>wwv_flow_api.id(2560704378261549294)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(2560700606639549289)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:12'
);
wwv_flow_api.component_end;
end;
/
