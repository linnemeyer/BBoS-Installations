prompt --application/pages/page_00038
begin
--   Manifest
--     PAGE: 00038
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
 p_id=>38
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'Install Order Status'
,p_alias=>'INSTALL-ORDER-STATUS'
,p_step_title=>'Install Order Status'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.u-colors .a-CardView-items>:nth-child(45n+1) .u-color, .u-colors>:nth-child(45n+1) .u-color { ',
'    background-color: #d66959;',
'}',
'.u-colors .a-CardView-items>:nth-child(45n+2) .u-color, .u-colors>:nth-child(45n+2) .u-color { ',
'    background-color: #94B382;',
'    color:black;',
'}',
'',
'.u-colors .a-CardView-items>:nth-child(45n+3) .u-color, .u-colors>:nth-child(45n+3) .u-color { ',
'    background-color:#bf6f60;',
'    color:black;',
'}',
'.u-colors .a-CardView-items>:nth-child(45n+4) .u-color, .u-colors>:nth-child(45n+4) .u-color { ',
'    background-color:#768752;',
'}',
'.u-colors .a-CardView-items>:nth-child(45n+5) .u-color, .u-colors>:nth-child(45n+5) .u-color { ',
'    background-color:#e28441;',
'}',
'.u-colors .a-CardView-items>:nth-child(45n+6) .u-color, .u-colors>:nth-child(45n+6) .u-color { ',
'    background-color:#f4bf6f;',
'}',
'.u-colors .a-CardView-items>:nth-child(45n+7) .u-color, .u-colors>:nth-child(45n+7) .u-color { ',
'    background-color:#21837f;',
'}',
'.u-colors .a-CardView-items>:nth-child(45n+8) .u-color, .u-colors>:nth-child(45n+8) .u-color { ',
'    background-color:#98745d;',
'}',
'.u-colors .a-CardView-items>:nth-child(45n+9) .u-color, .u-colors>:nth-child(45n+9) .u-color { ',
'    background-color:#bf6f60;',
'}',
'.u-colors .a-CardView-items>:nth-child(45n+10) .u-color, .u-colors>:nth-child(45n+10) .u-color { ',
'    background-color:#9a4945;',
'}',
'.u-colors .a-CardView-items>:nth-child(45n+11) .u-color, .u-colors>:nth-child(45n+11) .u-color { ',
'    background-color:#7a4141;',
'}',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20220422001534'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(155191916339141953)
,p_plug_name=>'Install Order Status'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_plug_template=>wwv_flow_api.id(155582807435345853)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*) status_count, part_status,',
'       case when part_status = ''RGA Action Needed'' then 1',
'            when part_status = ''Track Package'' then 2',
'            when part_status = ''Delivery Due'' then 3',
'            when part_status = ''Schedule'' then 4',
'            when part_status = ''Installed ?'' then 5',
'            when part_status = ''Waiting Other Parts'' then 6',
'            else 7 end status_order from (',
'select o.order_id, ip.install_part_id, ip.item_description, v.vendor_name vendor, ip.vendor_order_number, o.order_date, ip.expected_delivery_date',
'      , bb_install_part_status(o.order_id, ip.install_part_id) part_status',
'from bb_orders o, bb_install_parts ip, bb_vendors v',
'where o.order_id = ip.order_id',
'and ip.installation_date is null',
'and v.vendor_id = ip.vendor_id',
'and nvl(ip.all_parts_received, ''asdf'') != ''ALL'')',
'group by part_status',
'order by status_order'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_card(
 p_id=>wwv_flow_api.id(155192380361141959)
,p_region_id=>wwv_flow_api.id(155191916339141953)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'PART_STATUS'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'STATUS_COUNT'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'PART_STATUS'
);
wwv_flow_api.create_card_action(
 p_id=>wwv_flow_api.id(137987385465109432)
,p_card_id=>wwv_flow_api.id(155192380361141959)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RIR:IR_PART_STATUS,P19_RETURN_PAGE:&PART_STATUS.,38'
);
wwv_flow_api.component_end;
end;
/
