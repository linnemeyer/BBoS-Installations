prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'Completed Orders'
,p_step_title=>'Completed Orders'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var  sPos = parseInt($x(''P15_SCROLL_POS'').value);',
'   if (sPos > 0 ) {',
'      $(window).scrollTop(sPos);',
'   }'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20210721202214'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2598503457988719796)
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
 p_id=>wwv_flow_api.id(2598503988292719797)
,p_plug_name=>'Completed Orders'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247572498510137930)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select order_id',
'     , client_name, order_date, final_delivery_date, final_install_date, install_part_count',
'     , decode(initial_or_followup, ''I'', ''Initial'', ''Follow-up'') initial_or_followup',
'     , territory_name as territory',
'  from (',
'with outstanding_parts as (',
'     select ip.order_id, count(*) out_count',
'       from bb_install_parts ip',
'      where ip.installation_date is null',
'      group by ip.order_id ),',
'      authorized_territories as(',
'        select distinct utp.territory_id',
'          from bb_user_territory_privs utp',
'         where utp.user_id = :G_USER_ID)',
'select o.*, nvl(op.out_count, 0) out_count',
'     , (select count(*) from bb_install_parts ip where ip.order_id = o.order_id) install_part_count',
'     , (select max(actual_delivery_date) from bb_install_parts ip where ip.order_id = o.order_id) final_delivery_date',
'     , (select max(installation_date) from bb_install_parts ip where ip.order_id = o.order_id) final_install_date',
'  from bb_orders o, outstanding_parts op, authorized_territories auth',
'  where o.territory_id = auth.territory_id',
'    and o.order_id = op.order_id(+)',
') parts,  bb_territories t',
'     where parts.out_count = 0',
'       and t.territory_id = parts.territory_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(2598504166786719797)
,p_name=>'Completed Orders'
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
,p_internal_uid=>2260664087434424528
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2598504486986719802)
,p_db_column_name=>'ORDER_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP:P6_ORDER_ID,P6_RETURN_PAGE:#ORDER_ID#,15'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2598504888168719803)
,p_db_column_name=>'CLIENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Client Name'
,p_column_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP:P6_ORDER_ID,P6_RETURN_PAGE:#ORDER_ID#,15'
,p_column_linktext=>'#CLIENT_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2598505345469719804)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Order Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2598515759443719804)
,p_db_column_name=>'FINAL_DELIVERY_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Final Delivery<br  />Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2598516114119719805)
,p_db_column_name=>'FINAL_INSTALL_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Final Install<br /> Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2598516483856719806)
,p_db_column_name=>'INSTALL_PART_COUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Install<br /> Part<br />Count'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2598516881931719806)
,p_db_column_name=>'INITIAL_OR_FOLLOWUP'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Initial Or<br />Followup'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(336850257816692689)
,p_db_column_name=>'TERRITORY'
,p_display_order=>17
,p_column_identifier=>'H'
,p_column_label=>'Territory'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(2598532680451722010)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'22606927'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORDER_ID:CLIENT_NAME:ORDER_DATE:FINAL_DELIVERY_DATE:FINAL_INSTALL_DATE:INSTALL_PART_COUNT:INITIAL_OR_FOLLOWUP:TERRITORY'
,p_sort_column_1=>'FINAL_INSTALL_DATE'
,p_sort_direction_1=>'DESC'
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(65461474825932189)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(2598503988292719797)
,p_button_name=>'Reset'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(16247625805411137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65461772175940115)
,p_name=>'P15_REPORT_REGION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(2598503988292719797)
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(168873245801374419)
,p_name=>'P15_SCROLL_POS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2598503988292719797)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(65462087384943656)
,p_computation_sequence=>20
,p_computation_item=>'P15_REPORT_REGION_ID'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select region_id ',
'  from APEX_APPLICATION_PAGE_IR_RPT ',
' where application_id = :APP_ID ',
'   and page_id = :APP_PAGE_ID',
'   and status = ''PUBLIC'' ',
'   and report_type = ''PRIMARY_DEFAULT'''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(171525854769882824)
,p_name=>'Set Scroll Pos'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'unload'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(171526224812882825)
,p_event_id=>wwv_flow_api.id(171525854769882824)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_SCROLL_POS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(window).scrollTop();'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(171526676043884042)
,p_name=>'Save Scroll Pos'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'unload'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(171527070862884042)
,p_event_id=>wwv_flow_api.id(171526676043884042)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P15_SCROLL_POS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65462431266952116)
,p_name=>'Reset Pressed'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(65461474825932189)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65462809057952124)
,p_event_id=>wwv_flow_api.id(65462431266952116)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' APEX_IR.RESET_REPORT(',
'   p_page_id => :APP_PAGE_ID,',
'   p_region_id => :P15_REPORT_REGION_ID,',
'   p_report_id => NULL );',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65463301538952125)
,p_event_id=>wwv_flow_api.id(65462431266952116)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(2598503988292719797)
);
wwv_flow_api.component_end;
end;
/
