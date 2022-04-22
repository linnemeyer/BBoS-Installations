prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
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
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'Ready to Install'
,p_step_title=>'Ready to Install'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(16247544409895137914)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20190321173054'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19374817901634839949)
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
 p_id=>wwv_flow_api.id(35505677556554119771)
,p_plug_name=>'Open Installs'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247572498510137930)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ip.install_part_id, o.Client_name, item_description',
'     , delivery_progress_notes, install_notes, o.order_id',
'     , i.installer, t.territory_name territory',
'  from bb_install_parts ip, bb_orders o, bb_user_installers ui',
'     , bb_installers i, bb_territories t',
' where ip.all_parts_received = ''All'' ',
'   and ip.installation_date is null ',
'   and ip.installer_id = i.installer_id',
'   and ip.installer_id = ui.installer_id',
'   and o.territory_id = t.territory_id',
'   and ui.user_id = :G_USER_ID',
'   and o.order_id = ip.order_id'))
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
 p_id=>wwv_flow_api.id(17932130198535773281)
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
,p_internal_uid=>17594290119183478012
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17932130715267773286)
,p_db_column_name=>'INSTALL_PART_ID'
,p_display_order=>10
,p_column_identifier=>'E'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP,17:P17_INSTALL_PART_ID,P17_ORDER_ID,P17_APPLY_TO_ALL:#INSTALL_PART_ID#,#ORDER_ID#,No'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17932130322168773282)
,p_db_column_name=>'CLIENT_NAME'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Client Name'
,p_column_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP:P17_ORDER_ID,P17_INSTALL_PART_ID,P17_APPLY_TO_ALL:#ORDER_ID#,#INSTALL_PART_ID#,No'
,p_column_linktext=>'#CLIENT_NAME#'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17932130621678773285)
,p_db_column_name=>'ITEM_DESCRIPTION'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Item Description'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17932130803599773287)
,p_db_column_name=>'DELIVERY_PROGRESS_NOTES'
,p_display_order=>40
,p_column_identifier=>'F'
,p_column_label=>'Delivery Progress Notes'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17932130977941773288)
,p_db_column_name=>'INSTALL_NOTES'
,p_display_order=>50
,p_column_identifier=>'G'
,p_column_label=>'Install Notes'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17932131269562773291)
,p_db_column_name=>'ORDER_ID'
,p_display_order=>60
,p_column_identifier=>'H'
,p_column_label=>'Order Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17932132663776773305)
,p_db_column_name=>'INSTALLER'
,p_display_order=>70
,p_column_identifier=>'I'
,p_column_label=>'Installer'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2590434900088072882)
,p_db_column_name=>'TERRITORY'
,p_display_order=>80
,p_column_identifier=>'J'
,p_column_label=>'Territory'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(19375028178170857122)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'190371881'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'INSTALL_PART_ID:CLIENT_NAME:ITEM_DESCRIPTION:DELIVERY_PROGRESS_NOTES:INSTALL_NOTES::ORDER_ID:INSTALLER:TERRITORY'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(19374818659104839952)
,p_branch_action=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'P9_INSTALLER'
);
wwv_flow_api.component_end;
end;
/
