prompt --application/shared_components/data_loads/tpt_phones
begin
--   Manifest
--     DATA LOAD: TPT_Phones
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.6'
,p_default_workspace_id=>1608381483082323
,p_default_application_id=>100
,p_default_id_offset=>336536533326679440
,p_default_owner=>'BBOSINSTALLS'
);
wwv_flow_api.create_data_profile(
 p_id=>wwv_flow_api.id(26710132791428030)
,p_name=>'TPT_Phones'
,p_format=>'XLSX'
,p_encoding=>'utf-8'
,p_default_xlsx_sheet_name=>'sheet1.xml'
,p_has_header_row=>true
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(26710364894428057)
,p_data_profile_id=>wwv_flow_api.id(26710132791428030)
,p_name=>'TERRITORY'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>255
,p_selector_type=>'NAME'
,p_selector=>'TERRITORY'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(26710672425428058)
,p_data_profile_id=>wwv_flow_api.id(26710132791428030)
,p_name=>'COMPANY'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>50
,p_selector_type=>'NAME'
,p_selector=>'COMPANY'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(26710975376428058)
,p_data_profile_id=>wwv_flow_api.id(26710132791428030)
,p_name=>'NAME'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>255
,p_has_time_zone=>true
,p_selector_type=>'NAME'
,p_selector=>'NAME'
,p_expression1=>'''  '''
,p_expression2=>''' '''
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(26711324521428058)
,p_data_profile_id=>wwv_flow_api.id(26710132791428030)
,p_name=>'TYPE'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>50
,p_selector_type=>'NAME'
,p_selector=>'TYPE'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(26711563526428058)
,p_data_profile_id=>wwv_flow_api.id(26710132791428030)
,p_name=>'STATUS'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>50
,p_selector_type=>'NAME'
,p_selector=>'STATUS'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(26711867375428059)
,p_data_profile_id=>wwv_flow_api.id(26710132791428030)
,p_name=>'ADDRESS'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>255
,p_selector_type=>'NAME'
,p_selector=>'ADDRESS'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(26712167132428059)
,p_data_profile_id=>wwv_flow_api.id(26710132791428030)
,p_name=>'CITY'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>50
,p_selector_type=>'NAME'
,p_selector=>'CITY'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(26712457909428059)
,p_data_profile_id=>wwv_flow_api.id(26710132791428030)
,p_name=>'STATE'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>50
,p_selector_type=>'NAME'
,p_selector=>'STATE'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(26712775047428059)
,p_data_profile_id=>wwv_flow_api.id(26710132791428030)
,p_name=>'ZIP_CODE'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>50
,p_selector_type=>'NAME'
,p_selector=>'ZIP_CODE'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(26713128968428059)
,p_data_profile_id=>wwv_flow_api.id(26710132791428030)
,p_name=>'PHONE'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>50
,p_selector_type=>'NAME'
,p_selector=>'PHONE'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(26713368771428059)
,p_data_profile_id=>wwv_flow_api.id(26710132791428030)
,p_name=>'EMAIL'
,p_sequence=>11
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>50
,p_selector_type=>'NAME'
,p_selector=>'EMAIL'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(26713720032428060)
,p_data_profile_id=>wwv_flow_api.id(26710132791428030)
,p_name=>'CREATED_ON'
,p_sequence=>12
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_format_mask=>'YYYY"-"MM"-"DD'
,p_selector_type=>'NAME'
,p_selector=>'CREATED_ON'
);
wwv_flow_api.create_load_table(
 p_id=>wwv_flow_api.id(26713873945428060)
,p_name=>'TPT_Phones'
,p_static_id=>'TPT_Phones'
,p_target_type=>'TABLE'
,p_table_name=>'TPT_PHONES'
,p_data_profile_id=>wwv_flow_api.id(26710132791428030)
,p_loading_method=>'APPEND'
,p_commit_interval=>200
,p_error_handling=>'ABORT'
,p_skip_validation=>'N'
);
wwv_flow_api.component_end;
end;
/
