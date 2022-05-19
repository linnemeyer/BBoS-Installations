prompt --application/pages/page_00027
begin
--   Manifest
--     PAGE: 00027
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
 p_id=>27
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'Expected Deliveries'
,p_alias=>'EXPECTED-DELIVERIES'
,p_step_title=>'Expected Deliveries'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20211016185232'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(190112242652877226)
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
 p_id=>wwv_flow_api.id(190112906392877229)
,p_plug_name=>'Expected Deliveries'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16247573660091137931)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select o.client_name||'' - ''||v.vendor_name||'' - ''||item_description items, expected_delivery_date, ip.order_id, ip.install_part_id',
'     , o.order_date, trunc(sysdate)-order_date days_since_order, ip.vendor_order_number, ip.delivery_progress_notes',
'     , case  ',
'          when expected_delivery_date <= trunc(sysdate)-7 then ''apex-cal-red''',
'          when expected_delivery_date between trunc(sysdate)-6 and trunc(sysdate)-1 then ''apex-cal-cyan''',
'         -- when  then ''apex-cal-blue''',
'         -- when di.installer_id = 1 then ''apex-cal-lime''',
'         -- when di.installer_id = 4 then ''apex-cal-orange'' apex-cal-white',
'          else ''apex-cal-blue'' ',
'       end css_class',
'from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and ip.actual_delivery_date is null',
'   and ip.vendor_id = v.vendor_id'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'EXPECTED_DELIVERY_DATE'
,p_attribute_03=>'ITEMS'
,p_attribute_05=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_INSTALL_PART_ID,P8_RETURN_PAGE:&INSTALL_PART_ID.,27'
,p_attribute_09=>'list:navigation'
,p_attribute_13=>'N'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_16=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Ordered on: &ORDER_DATE.',
'<br />',
'Days since order: &DAYS_SINCE_ORDER.',
'<br/>',
'Vendor Order: &VENDOR_ORDER_NUMBER.',
'<br />',
'Delivery Notes: &DELIVERY_PROGRESS_NOTES.'))
,p_attribute_17=>'Y'
,p_attribute_19=>'Y'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
,p_attribute_23=>'3'
);
wwv_flow_api.component_end;
end;
/
