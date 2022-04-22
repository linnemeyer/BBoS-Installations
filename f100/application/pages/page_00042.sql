prompt --application/pages/page_00042
begin
--   Manifest
--     PAGE: 00042
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
 p_id=>42
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'TPT Load Instructions'
,p_alias=>'TPT-LOAD-INSTRUCTIONS'
,p_step_title=>'TPT Load Instructions'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(16247651097089137992)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20211016185232'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26820682889947627)
,p_plug_name=>'TPT Load Instructions'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(16247583999328137937)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(26819542177947618)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(16247623704047137963)
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(26786571136632097)
,p_name=>'Previous Data Loads'
,p_parent_plug_id=>wwv_flow_api.id(26820682889947627)
,p_template=>wwv_flow_api.id(16247573660091137931)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'TPT_LOAD_DATES'
,p_query_order_by=>'end_date desc'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(16247597883133137946)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>10
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26786680764632098)
,p_query_column_id=>1
,p_column_alias=>'LOAD_ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26786843249632099)
,p_query_column_id=>2
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26786934376632100)
,p_query_column_id=>3
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>30
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26787039722632101)
,p_query_column_id=>4
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>40
,p_column_heading=>'Created By'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26787091508632102)
,p_query_column_id=>5
,p_column_alias=>'CREATED_ON'
,p_column_display_sequence=>50
,p_column_heading=>'Created On'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26787235422632103)
,p_query_column_id=>6
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26787326803632104)
,p_query_column_id=>7
,p_column_alias=>'UPDATED_ON'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26820793598947627)
,p_plug_name=>'TPT Load Instructions'
,p_parent_plug_id=>wwv_flow_api.id(26820682889947627)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247552094877137919)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26786490211632096)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_api.id(26820793598947627)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247552094877137919)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<H1>Instructions</H1>',
'<ol>',
'  <li>In Touch Point, go to the <a href="https://tpt.gohfc.com/sales/accounts" target="_blank">Accounts page</a></li>',
'    <ol>',
'       <li>Click on the cloud with down arrow icon in the upper right corner</li>',
'       <li>Save the <b>xlsx</b> file to your computer</li>',
'    </ol>',
'  <li>In Touch Point, go to reports page and run the <a href="https://tpt.gohfc.com/reports/rawData" target="_blank">Raw Data Download report</a>',
'    <ol>',
'       <li>Select <b>Specify Date Range</b> for <b>Date Range</b></li>',
'       <li>Specify the start date as the end date from the last load</li>',
'       <li>Specify the current date as the end date</li>',
'       <li>Save the <b>xlsx</b> file to your computer</li>',
'       <li>Open the file in Excel</li>',
'       <li>On the <b>File</b> menu, select <b>Save As</b></li>',
'       <li>Select <b>CSV UTF-8 (Comma delimited)(*.csv)</b> as the file type</li>',
'       <li>Save the <b>csv</b> file to your computer</li>',
'    </ol>',
'  </li>',
'  <li>In the following pages you will either choose or drag and drop the Account.xlsx and the Raw_data.csv files to upload these files to be processed into the system</li> ',
'</ol>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26822466261947629)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26820682889947627)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:38:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26822769676947629)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26820682889947627)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(16247625805411137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26823541498947630)
,p_branch_action=>'f?p=&APP_ID.:43:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(26822769676947629)
,p_branch_sequence=>20
);
wwv_flow_api.component_end;
end;
/
