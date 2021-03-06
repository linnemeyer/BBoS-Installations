prompt --application/pages/page_00034
begin
--   Manifest
--     PAGE: 00034
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
 p_id=>34
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'Vendors'
,p_alias=>'VENDORS'
,p_step_title=>'Vendors'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(16247651097089137992)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20210310173518'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(134466721549102382)
,p_plug_name=>'Vendors'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247572498510137930)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'BB_VENDORS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Vendors'
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
 p_id=>wwv_flow_api.id(121738667878339449)
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
,p_internal_uid=>11014254743611438
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(121738717474339450)
,p_db_column_name=>'VENDOR_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Vendor Id'
,p_column_link=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:35:P35_VENDOR_ID:#VENDOR_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(121738834016339451)
,p_db_column_name=>'VENDOR_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Vendor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(134472373065123188)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'237480'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VENDOR_ID:VENDOR_NAME'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(134469042323102393)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(134466721549102382)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:35'
,p_grid_new_row=>'Y'
);
wwv_flow_api.component_end;
end;
/
