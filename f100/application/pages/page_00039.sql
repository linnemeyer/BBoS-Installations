prompt --application/pages/page_00039
begin
--   Manifest
--     PAGE: 00039
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
 p_id=>39
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'Average Delivery Days Graph'
,p_alias=>'AVERAGE-DELIVERY-DAYS-GRAPH'
,p_step_title=>'Average Delivery Days Graph'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20220308155101'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(156899933942388129)
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
 p_id=>wwv_flow_api.id(156900598684388129)
,p_plug_name=>'Average Delivery Days Graph'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16247573660091137931)
,p_plug_display_sequence=>10
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(156901009810388130)
,p_region_id=>wwv_flow_api.id(156900598684388129)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(156902712643388133)
,p_chart_id=>wwv_flow_api.id(156901009810388130)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select vendor||'' - ''||product vendor_prod, minimum_delivery_days, max_delivery_days, avg_delivery_days',
'from (',
'select ''Norman'' vendor, ''Cellular Shades'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_name = ''Norman''',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and instr(lower(ip.item_description), ''cellular'') > 0',
'   and instr(lower(ip.item_description), ''vertical'') = 0',
'   and ip.actual_delivery_date > sysdate - nvl(:P39_DAYS_BACK, 60)  )',
'union',
'select ''Norman'' vendor, ''Vertical Cellulars'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_name = ''Norman''',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and instr(lower(ip.item_description), ''cellular'') > 0',
'   and instr(lower(ip.item_description), ''vertical'') > 0',
'   and ip.actual_delivery_date > sysdate - nvl(:P39_DAYS_BACK, 60)  )',
'union',
'select ''Norman'' vendor, ''Vertical Blinds'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_name = ''Norman''',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and instr(lower(ip.item_description), ''cellular'') = 0',
'   and instr(lower(ip.item_description), ''vertical'') > 0',
'   and ip.actual_delivery_date > sysdate - nvl(:P39_DAYS_BACK, 60)  )',
'union',
'select ''Norman'' vendor, ''Faux Woods'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_name = ''Norman''',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and instr(lower(ip.item_description), ''faux'') > 0',
'   and instr(lower(ip.item_description), ''vertical'') = 0',
'   and ip.actual_delivery_date > sysdate - nvl(:P39_DAYS_BACK, 60)  )',
'union',
'select ''Norman'' vendor, ''Roller Shades'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_name = ''Norman''',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and instr(lower(ip.item_description), ''roller'') > 0',
'   and instr(lower(ip.item_description), ''vertical'') = 0',
'   and ip.actual_delivery_date > sysdate - nvl(:P39_DAYS_BACK, 60)  )',
'union',
'select ''Norman'' vendor, ''Shutters'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_name = ''Norman''',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and instr(lower(ip.item_description), ''shutter'') > 0',
'   and ip.actual_delivery_date > sysdate -  nvl(:P39_DAYS_BACK, 60)  )',
'   union',
'select ''Norman NA'' vendor, ''Shutters'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_name = ''Norman NA''',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and instr(lower(ip.item_description), ''shutter'') > 0',
'   and ip.actual_delivery_date > sysdate -  nvl(:P39_DAYS_BACK, 60)  )',
'union',
'select ''Norman'' vendor, ''SmartDrapes'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_name = ''Norman''',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and instr(lower(ip.item_description), ''drape'') > 0',
'   and ip.actual_delivery_date > sysdate -  nvl(:P39_DAYS_BACK, 60)  )',
'union',
'select ''Lutron'' vendor, ''Roller Shades'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_name = ''Lutron''',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and instr(lower(ip.item_description), ''roller'') > 0',
'   and ip.actual_delivery_date > sysdate - nvl(:P39_DAYS_BACK, 60)  )',
'union',
'select ''Lutron'' vendor, ''Cellular Shades'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_name = ''Lutron''',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and instr(lower(ip.item_description), ''cellular'') > 0',
'   and ip.actual_delivery_date > sysdate - nvl(:P39_DAYS_BACK, 60)  )',
'union',
'select ''Draper'' vendor, ''Roller Shades'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_name = ''Draper''',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and instr(lower(ip.item_description), ''roller'') > 0',
'   and ip.actual_delivery_date > sysdate - nvl(:P39_DAYS_BACK, 60)  )',
'union',
'select ''Hunter Douglas'' vendor, ''All Products'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_name = ''Hunter Douglas''',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and ip.actual_delivery_date > sysdate - nvl(:P39_DAYS_BACK, 60)  )',
'union',
'select ''Horizons'' vendor, ''All Products'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_name = ''Horizons''',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and ip.actual_delivery_date > sysdate - nvl(:P39_DAYS_BACK, 60)  )',
'union',
'select ''Inspired Shades'' vendor, ''All Other Products'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) Avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_id in ( 101, 212 )',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and instr(lower(ip.item_description), ''roller'') = 0',
'   and ip.actual_delivery_date > sysdate - nvl(:P39_DAYS_BACK, 60)  )',
'union',
'select ''Inspired Shades'' vendor, ''Roller Shades'' product, count(*) order_count',
'      , min(delivery_time) minimum_delivery_days',
'      , max(delivery_time) max_delivery_days',
'      , round(avg(delivery_time), 1) Avg_delivery_days',
'  from (',
'select v.vendor_name, ip.item_description, ip.actual_delivery_date, o.order_date',
'     , ip.actual_delivery_date - o.order_date delivery_time',
'  from bb_install_parts ip, bb_orders o, bb_vendors v',
' where o.order_id = ip.order_id',
'   and v.vendor_id = ip.vendor_id',
'   and v.vendor_id in ( 101, 212 )',
'   and ip.actual_delivery_date is not null',
'   and o.initial_or_followup = ''I''',
'   and instr(lower(ip.item_description), ''roller'') > 0',
'   and ip.actual_delivery_date > sysdate - nvl(:P39_DAYS_BACK, 60)  )',
')',
'order by avg_delivery_days'))
,p_items_value_column_name=>'AVG_DELIVERY_DAYS'
,p_group_short_desc_column_name=>'VENDOR_PROD'
,p_items_label_column_name=>'VENDOR_PROD'
,p_color=>'#307980'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_items_label_font_color=>'#FFFFFF'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(156901430713388131)
,p_chart_id=>wwv_flow_api.id(156901009810388130)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>true
,p_zoom_order_weeks=>true
,p_zoom_order_months=>true
,p_zoom_order_quarters=>true
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(156902029110388133)
,p_chart_id=>wwv_flow_api.id(156901009810388130)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>true
,p_zoom_order_weeks=>true
,p_zoom_order_months=>true
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137987907843109437)
,p_name=>'P39_DAYS_BACK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(156900598684388129)
,p_item_default=>'60'
,p_prompt=>'Days Back Received'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>1
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.component_end;
end;
/
