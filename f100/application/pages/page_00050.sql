prompt --application/pages/page_00050
begin
--   Manifest
--     PAGE: 00050
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
 p_id=>50
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'Install Map'
,p_alias=>'INSTALL-MAP'
,p_step_title=>'Installation Map'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//',
'// globals to memorize the previously clicked airport; important to be able to reset the highlight',
'var gPrevFeature, gPrevLayerId;',
'',
'function showFeature( pId, pFromReport ) {',
'    var lMapRegion, lLayerLargeId, lLayerSmallId, lLayerId, lFeature;',
'',
'    //',
'    // if the same airport is clicked twice, exit early without doing anything',
'    if ( gPrevFeature && gPrevFeature.id === pId ) {',
'        return false;',
'    }',
'',
'    //',
'    // get Map Region and Layer Handles',
'    lMapRegion    = apex.region("ready-for-install-map");',
'    lLayerId = lMapRegion.call("getLayerIdByName", "Ready For Install");',
'',
'   ',
'    lFeature = lMapRegion.call("getFeature", lLayerId, pId );',
'    ',
'    //',
'    // if there is no coordinate, don''t do anything ',
'    if ( lFeature && lFeature.geometry ) {',
'        //',
'        // reinstate previously selected feature on the map (remove highlight)',
'        if ( gPrevFeature ) {',
'            lMapRegion.call( "updateFeature", gPrevLayerId, gPrevFeature );',
'        }',
'        //',
'        // center the map to the clicked object',
'        lMapRegion.call( "getMapObject" ).flyTo({ ',
'            center: lFeature.geometry.coordinates,',
'            screenSpeed: 0.8',
'        });',
'        //',
'        // save the feature before changing to the "highlight" style; do a "deep copy".',
'        gPrevFeature = JSON.parse( JSON.stringify( lFeature ) );',
'        gPrevLayerId = lLayerId;',
'        // ',
'        // set highlight styles and update map',
'        lFeature.pointSvgShape     = ''Pin Circle'';',
'        lFeature.color             = ''darkorange'';',
'        lFeature.pointSvgShapeSize = 3.5;        ',
'        lMapRegion.call( "updateFeature", lLayerId, lFeature );    ',
'',
'        if ( pFromReport ) {',
'            lMapRegion.call( "closeAllInfoWindows" );',
'            lMapRegion.call( "displayPopup", "infoWindow", lLayerId, pId.toString(), false );',
'        }',
'    }',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.equal-row-height .col {',
'    display: flex;',
'}',
'',
'.equal-row-height .t-Region {',
'      flex-grow: 1;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20220414231718'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28243362496745493)
,p_plug_name=>'Ready for Install'
,p_region_name=>'ready-for-install-map'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16247573660091137931)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select whl.*, georder.geometry, ',
'       apex_page.get_url( p_page   => 6,',
'                          p_items  => ''P6_ORDER_ID,P6_RETURN_PAGE'',',
'                          p_values => whl.order_id||'',50'') href_url',
'  from (',
'select distinct whole.*',
'     , bb_all_grouped_install_parts(whole.order_id, whole.install_part_id, whole.install_grouping) install_parts',
'     , bb_commo_log_entries (whole.order_id) commo_log ',
'     , bb_grouped_install_notes(whole.order_id, whole.install_part_id, whole.install_grouping) install_notes',
'     , bb_grouped_install_target_date(whole.order_id, whole.install_part_id, whole.install_grouping) target_date',
' from (',
'with installers as (',
'      select ip.order_id, i.installer, ip.installer_id, ip.install_part_id',
'        from bb_install_parts ip, bb_installers i, bb_user_installers ui',
'       where ip.installer_id = i.installer_id',
'         and ui.installer_id = i.installer_id',
'         and ui.user_id = :G_USER_ID',
'       group by ip.order_id, i.installer, ip.installer_id, ip.install_part_id)',
'select o.client_name, o.order_id',
'     , decode(o.initial_or_followup, ''F'', ''Follow-up'', ''Initial'') initial_or_followup',
'     , o.order_date, o.hold_date',
'     , decode(ip.install_grouping, ''Together'', null, ip.install_part_id) install_part_id',
'     , ip.install_grouping, i.installer',
'     , ip.all_parts_received',
'     , t.territory_name territory',
'     , bb_install_part_status(o.order_id, ip.install_part_id) part_status',
'     , o.client_phone, o.client_address, o.client_city, o.client_zip ',
'     ,gate_code, ''Flag Pennant'' shape, ''red''  color, ''fa-flag-pennant'' icon, 1.5 scale',
' from bb_orders o, bb_install_parts ip, bb_territories t, bb_user_territory_privs utp, installers i',
' where o.order_id = ip.order_id',
'   and o.territory_id = t.territory_id',
'   and o.territory_id = utp.territory_id',
'   and utp.user_id = :G_USER_ID',
'   and utp.priviledge = ''Install''',
'   and o.order_id = i.order_id',
'   and ip.installation_date is null',
'   and i.install_part_id = ip.install_part_id) whole',
' where whole.part_status = ''Schedule'')  whl, bb_orders georder',
'  where whl.order_id = georder.order_id'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
,p_ajax_items_to_submit=>'P50_HIGHLIGHT_DATE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_map_region(
 p_id=>wwv_flow_api.id(28243509573745494)
,p_region_id=>wwv_flow_api.id(28243362496745493)
,p_height=>720
,p_tilelayer_type=>'CUSTOM'
,p_tilelayer_name_default=>'world-map'
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'MOUSEWHEEL_ZOOM:RECTANGLE_ZOOM:SCALE_BAR:INFINITE_MAP'
);
wwv_flow_api.create_map_region_layer(
 p_id=>wwv_flow_api.id(28243633053745495)
,p_map_region_id=>wwv_flow_api.id(28243509573745494)
,p_name=>'Ready For Install'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'REGION_SOURCE'
,p_has_spatial_index=>false
,p_pk_column=>'ORDER_ID'
,p_geometry_column_data_type=>'SDO_GEOMETRY'
,p_geometry_column=>'GEOMETRY'
,p_stroke_color=>'#ffffff'
,p_fill_color=>'&COLOR.'
,p_fill_opacity=>.8
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'&SHAPE.'
,p_point_svg_shape_scale=>'&SCALE.'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>true
,p_tooltip_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'&CLIENT_NAME.</br>',
'&CLIENT_PHONE.</br>',
'&CLIENT_ADDRESS.</br>',
'&INSTALL_PARTS.</br>',
'&COMMO_LOG.'))
,p_info_window_adv_formatting=>true
,p_info_window_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3><a href="&HREF_URL." alt="click to schedule">&CLIENT_NAME.</a></br></h3>',
'&CLIENT_PHONE.</br>',
'&CLIENT_ADDRESS.</br>',
'&INSTALL_PARTS.</br>',
'<h5>Install Notes</h5>',
'&INSTALL_NOTES.</br>',
'<h4>Communications Log</h4>',
'&COMMO_LOG.</br>'))
,p_allow_hide=>true
);
wwv_flow_api.create_map_region_layer(
 p_id=>wwv_flow_api.id(28244133034745500)
,p_map_region_id=>wwv_flow_api.id(28243509573745494)
,p_name=>'Scheduled Installs'
,p_layer_type=>'POINT'
,p_display_sequence=>20
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select whl.* , georder.geometry',
'     , apex_page.get_url( p_page   => 6,',
'                          p_items  => ''P6_ORDER_ID,P6_RETURN_PAGE'',',
'                          p_values => whl.order_id||'',50'') href_url',
'from (                          ',
'with daily_installs as (',
'   select distinct o.order_id, o.territory_id, ip.installer_id, ',
'          o.client_name, o.client_phone,',
'          o.client_address||'' ''||o.client_city||'' ''||o.client_zip client_address,          ',
'          ip.scheduled_install_date, ip.installation_date',
'     from bb_install_parts ip, bb_orders o, bb_user_installers ui, bb_installers i,',
'          bb_territories t, bb_user_territory_privs utp',
'    where o.order_id = ip.order_id',
'      and o.territory_id = t.territory_id',
'      and o.territory_id = utp.territory_id',
'      and utp.user_id = ui.user_id',
'      and ui.user_id = :G_USER_ID',
'      and ui.installer_id = i.installer_id',
'      and ip.installer_id = ui.installer_id',
'      and ip.scheduled_install_date is not null',
'      and ip.installation_date is null',
'      and trunc(ip.scheduled_install_date) != nvl(to_date(:P50_HIGHLIGHT_DATE, ''DD-MON-YYYY''), trunc(sysdate))',
'      and ip.scheduled_install_date between trunc(sysdate) and trunc(sysdate+14))',
'select di.client_name',
'    , bb_all_install_parts(di.order_id, di.scheduled_install_date, di.installer_id) install_parts',
'    , bb_commo_log_entries (di.order_id) commo_log ',
'    , di.client_address, di.client_phone',
'    , bb_install_notes(di.order_id, di.scheduled_install_date) install_notes',
'    , di.order_id',
'    , di.scheduled_install_date, di.installation_date',
'    , (di.scheduled_install_date+((bb_install_length(di.order_id, di.scheduled_install_date))/60/24)) install_end_date     ',
'    , ''Flag Pennant'' shape, ''blue''  color, ''fa-flag-pennant'' icon, 1.5 scale',
'  from daily_installs di )whl,  bb_orders georder',
'  where whl.order_id = georder.order_id'))
,p_has_spatial_index=>false
,p_pk_column=>'ORDER_ID'
,p_geometry_column_data_type=>'SDO_GEOMETRY'
,p_geometry_column=>'GEOMETRY'
,p_stroke_color=>'#ffffff'
,p_fill_color=>'&COLOR.'
,p_fill_opacity=>.8
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'&SHAPE.'
,p_point_svg_shape_scale=>'&SCALE.'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>true
,p_tooltip_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'&CLIENT_NAME.</br>',
'Install Date:&SCHEDULED_INSTALL_DATE.<br>',
'&CLIENT_PHONE.</br>',
'&CLIENT_ADDRESS.</br>',
'&INSTALL_PARTS.</br>',
'&COMMO_LOG.'))
,p_info_window_adv_formatting=>true
,p_info_window_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3><a href="&HREF_URL." alt="click to schedule">&CLIENT_NAME.</a></br></h3>',
'&CLIENT_PHONE.</br>',
'&CLIENT_ADDRESS.</br>',
'&INSTALL_PARTS.</br>',
'<h5>Install Notes</h5>',
'&INSTALL_NOTES.</br>',
'<h4>Communications Log</h4>',
'&COMMO_LOG.</br>'))
,p_allow_hide=>true
);
wwv_flow_api.create_map_region_layer(
 p_id=>wwv_flow_api.id(14388211315069115)
,p_map_region_id=>wwv_flow_api.id(28243509573745494)
,p_name=>'Highlight Installs'
,p_layer_type=>'POINT'
,p_display_sequence=>30
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select whl.* , georder.geometry',
'     , apex_page.get_url( p_page   => 6,',
'                          p_items  => ''P6_ORDER_ID,P6_RETURN_PAGE'',',
'                          p_values => whl.order_id||'',50'') href_url',
'from (                          ',
'with daily_installs as (',
'   select distinct o.order_id, o.territory_id, ip.installer_id, ',
'          o.client_name, o.client_phone,',
'          o.client_address||'' ''||o.client_city||'' ''||o.client_zip client_address,          ',
'          ip.scheduled_install_date, ip.installation_date',
'     from bb_install_parts ip, bb_orders o, bb_user_installers ui, bb_installers i,',
'          bb_territories t, bb_user_territory_privs utp',
'    where o.order_id = ip.order_id',
'      and o.territory_id = t.territory_id',
'      and o.territory_id = utp.territory_id',
'      and utp.user_id = ui.user_id',
'      and ui.user_id = :G_USER_ID',
'      and ui.installer_id = i.installer_id',
'      and ip.installer_id = ui.installer_id',
'      and ip.scheduled_install_date is not null',
'      and ip.installation_date is null',
'      and trunc(ip.scheduled_install_date) = nvl(to_date(:P50_HIGHLIGHT_DATE, ''DD-MON-YYYY''), trunc(sysdate)))',
'select di.client_name',
'    , bb_all_install_parts(di.order_id, di.scheduled_install_date, di.installer_id) install_parts',
'    , bb_commo_log_entries (di.order_id) commo_log ',
'    , di.client_address, di.client_phone',
'    , bb_install_notes(di.order_id, di.scheduled_install_date) install_notes',
'    , di.order_id',
'    , di.scheduled_install_date, di.installation_date',
'    , (di.scheduled_install_date+((bb_install_length(di.order_id, di.scheduled_install_date))/60/24)) install_end_date     ',
'    , ''Flag Pennant'' shape, ''blue''  color, ''fa-flag-pennant'' icon, 1.5 scale',
'  from daily_installs di )whl,  bb_orders georder',
'  where whl.order_id = georder.order_id'))
,p_has_spatial_index=>false
,p_pk_column=>'ORDER_ID'
,p_geometry_column_data_type=>'SDO_GEOMETRY'
,p_geometry_column=>'GEOMETRY'
,p_stroke_color=>'#ffffff'
,p_fill_color=>'&COLOR.'
,p_fill_opacity=>.8
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Street View'
,p_point_svg_shape_scale=>'&SCALE.'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>true
,p_tooltip_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'&CLIENT_NAME.</br>',
'Install Date:&SCHEDULED_INSTALL_DATE.<br>',
'&CLIENT_PHONE.</br>',
'&CLIENT_ADDRESS.</br>',
'&INSTALL_PARTS.</br>',
'&COMMO_LOG.'))
,p_info_window_adv_formatting=>true
,p_info_window_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3><a href="&HREF_URL." alt="click to schedule">&CLIENT_NAME.</a></br></h3>',
'&CLIENT_PHONE.</br>',
'&CLIENT_ADDRESS.</br>',
'&INSTALL_PARTS.</br>',
'<h5>Install Notes</h5>',
'&INSTALL_NOTES.</br>',
'<h4>Communications Log</h4>',
'&COMMO_LOG.</br>'))
,p_allow_hide=>true
);
wwv_flow_api.create_map_region_layer(
 p_id=>wwv_flow_api.id(28245277258745512)
,p_map_region_id=>wwv_flow_api.id(28243509573745494)
,p_name=>'Recently Installed'
,p_layer_type=>'POINT'
,p_display_sequence=>40
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select whl.* , georder.geometry',
'     , apex_page.get_url( p_page   => 6,',
'                          p_items  => ''P6_ORDER_ID,P6_RETURN_PAGE'',',
'                          p_values => whl.order_id||'',50'') href_url',
'from (                          ',
'with daily_installs as (',
'   select distinct o.order_id, o.territory_id, ip.installer_id, ',
'          o.client_name, o.client_phone,',
'          o.client_address||'' ''||o.client_city||'' ''||o.client_zip client_address,          ',
'          ip.scheduled_install_date, ip.installation_date',
'     from bb_install_parts ip, bb_orders o, bb_user_installers ui, bb_installers i,',
'          bb_territories t, bb_user_territory_privs utp',
'    where o.order_id = ip.order_id',
'      and o.territory_id = t.territory_id',
'      and o.territory_id = utp.territory_id',
'      and utp.user_id = ui.user_id',
'      and ui.user_id = :G_USER_ID',
'      and ui.installer_id = i.installer_id',
'      and ip.installer_id = ui.installer_id',
'      and ip.scheduled_install_date is not null',
'      and ip.installation_date > sysdate-7)',
'select di.client_name',
'    , bb_all_install_parts(di.order_id, di.scheduled_install_date, di.installer_id) install_parts',
'    , bb_commo_log_entries (di.order_id) commo_log ',
'    , di.client_address, di.client_phone',
'    , bb_install_notes(di.order_id, di.scheduled_install_date) install_notes',
'    , di.order_id',
'    , di.scheduled_install_date, di.installation_date',
'    , (di.scheduled_install_date+((bb_install_length(di.order_id, di.scheduled_install_date))/60/24)) install_end_date     ',
'    , ''Flag Pennant'' shape, ''green''  color, ''fa-flag-pennant'' icon, 1 scale',
'  from daily_installs di )whl,  bb_orders georder',
'  where whl.order_id = georder.order_id'))
,p_has_spatial_index=>false
,p_pk_column=>'ORDER_ID'
,p_geometry_column_data_type=>'SDO_GEOMETRY'
,p_geometry_column=>'GEOMETRY'
,p_stroke_color=>'#ffffff'
,p_fill_color=>'&COLOR.'
,p_fill_opacity=>.8
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'&SHAPE.'
,p_point_svg_shape_scale=>'&SCALE.'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>true
,p_tooltip_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'&CLIENT_NAME.</br>',
'Install Date:&SCHEDULED_INSTALL_DATE.<br>',
'&CLIENT_PHONE.</br>',
'&CLIENT_ADDRESS.</br>',
'&INSTALL_PARTS.</br>',
'&COMMO_LOG.'))
,p_info_window_adv_formatting=>true
,p_info_window_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3><a href="&HREF_URL." alt="click to schedule">&CLIENT_NAME.</a></br></h3>',
'&CLIENT_PHONE.</br>',
'&CLIENT_ADDRESS.</br>',
'&INSTALL_PARTS.</br>',
'<h5>Install Notes</h5>',
'&INSTALL_NOTES.</br>',
'<h4>Communications Log</h4>',
'&COMMO_LOG.</br>'))
,p_allow_hide=>true
);
wwv_flow_api.create_map_region_layer(
 p_id=>wwv_flow_api.id(31990059849902391)
,p_map_region_id=>wwv_flow_api.id(28243509573745494)
,p_name=>'BBoS Location'
,p_layer_type=>'POINT'
,p_display_sequence=>50
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select bo.client_name, bo.geometry',
'     , bo.client_address, bo.client_phone',
'     , bo.order_id',
'    , ''Flag Pennant'' shape, ''purple''  color, ''fa-flag-pennant'' icon, 1 scale',
'  from bb_orders bo',
'  where order_id in (4919, 4920)'))
,p_has_spatial_index=>false
,p_pk_column=>'ORDER_ID'
,p_geometry_column_data_type=>'SDO_GEOMETRY'
,p_geometry_column=>'GEOMETRY'
,p_stroke_color=>'#ffffff'
,p_fill_color=>'&COLOR.'
,p_fill_opacity=>.8
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Home'
,p_point_svg_shape_scale=>'&SCALE.'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>true
,p_tooltip_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'&CLIENT_NAME.</br>',
'&CLIENT_ADDRESS.</br>'))
,p_info_window_adv_formatting=>true
,p_info_window_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3>&CLIENT_NAME.</br></h3>',
'&CLIENT_ADDRESS.</br>'))
,p_allow_hide=>true
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27518047170643285323)
,p_plug_name=>'Scheduled Installs'
,p_region_template_options=>'#DEFAULT#:i-h640:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16247573660091137931)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with daily_installs as (',
'   select distinct o.order_id, o.territory_id, ip.installer_id,',
'          o.client_name, nvl(o.balance_due,0) balance_due,',
'          o.client_address||'' ''||o.client_city||'' ''||o.client_zip||'' ''||o.client_phone client_address,',
'          ip.scheduled_install_date, ip.installation_date, i.calendar_css, o.gate_code',
'     from bb_install_parts ip, bb_orders o, bb_user_installers ui, bb_installers i,',
'          bb_territories t, bb_user_territory_privs utp',
'    where o.order_id = ip.order_id',
'      and o.territory_id = t.territory_id',
'      and o.territory_id = utp.territory_id',
'      and utp.user_id = ui.user_id',
'      and utp.priviledge = ''Install''',
'      and ui.user_id = :G_USER_ID',
'      and ui.installer_id = i.installer_id',
'      and ip.installer_id = ui.installer_id',
'      and ip.scheduled_install_date is not null)',
'select di.client_name||',
'         case when di.installation_date is not null then '' INSTALLED,  '' else '' '' end ||',
'         case when di.gate_code is not null then ''GATE CODE:''||di.gate_code else '' '' end ||',
'         case when di.balance_due > 0 then '' DUE: ''||to_char(di.balance_due, ''$99,999.99'')||'',  '' else '' '' end ||',
'       bb_all_install_parts(di.order_id, di.scheduled_install_date, di.installer_id)||'' ''||',
'       di.client_address||'' ''||bb_install_notes(di.order_id, di.scheduled_install_date) client_name, di.order_id',
'     , di.scheduled_install_date, di.installation_date',
'     , (di.scheduled_install_date+((bb_install_length(di.order_id, di.scheduled_install_date))/60/24)) install_end_date',
'     , case  ',
'          when di.balance_due > 0 then ''apex-cal-red''',
'          else di.calendar_css ',
'       end css_class',
'  from daily_installs di',
'  union',
'  select event_text client_name',
'       , event_id order_id',
'       , event_date scheduled_install_date, event_date installation_date',
'       , event_date+(event_minutes/60/24) install_end_date',
'       , ''apex-cal-yellow'' css_class',
'   from bb_calendar_events'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'SCHEDULED_INSTALL_DATE'
,p_attribute_02=>'INSTALL_END_DATE'
,p_attribute_03=>'CLIENT_NAME'
,p_attribute_05=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,:P6_ORDER_ID,P6_RETURN_PAGE:&ORDER_ID.,50'
,p_attribute_06=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RP,:P18_EVENT_DATE:&APEX$NEW_START_DATE.'
,p_attribute_11=>'month:week:day:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'8'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
,p_attribute_23=>'3'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14388164158069114)
,p_name=>'P50_HIGHLIGHT_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(28243362496745493)
,p_item_default=>'select to_char(sysdate, ''DD-MON-YYYY'') from dual'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Highlight Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>15
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(28243691081745496)
,p_name=>'On Click Point'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(28243362496745493)
,p_bind_type=>'bind'
,p_bind_event_type=>'NATIVE_MAP_REGION|REGION TYPE|spatialmapobjectclick'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(28243838863745497)
,p_event_id=>wwv_flow_api.id(28243691081745496)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'showFeature( this.data.id, false );'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14388310782069116)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P50_HIGHLIGHT_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14388488520069117)
,p_event_id=>wwv_flow_api.id(14388310782069116)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(28243362496745493)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(28242888680745488)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get_geodata'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_clob  clob;',
'  v_values apex_json.t_values;',
'  v_paths apex_t_varchar2;',
'begin',
'   v_clob := apex_web_service.make_rest_request(',
'       p_url => ''https://www.mapquestapi.com/geocoding/v1/address'',',
'       p_http_method => ''GET'',',
'       p_parm_name => apex_util.string_to_table(''key:location''),',
'       p_parm_value => apex_util.string_to_table(''ycWyenAos80XIv13p7PoOpHCbr1HvHoA:5125 Mt Arapaho Cir, Frederick, CO 80504'')',
'   );',
'   ',
' --  :P50_JSON := dbms_lob.substr(v_clob,2000,1);',
'   :P50_JSON := NULL;',
'   apex_json.parse(p_values => v_values,',
'                   p_source => v_clob,',
'                   p_strict => TRUE);',
' --  :P50_LAT  := apex_json.get_count(p_path => ''results[1].locations[1]'', p_values => v_values);',
' --  :P50_LONG := apex_json.get_varchar2(p_path => ''results[1].locations[1].latLng.lat'', p_values => v_values, p_default =>''wrong'');',
'   :P50_LAT  := apex_json.get_number(p_path => ''results[1].locations[1].displayLatLng.lat'', p_values => v_values);',
'   :P50_LONG := apex_json.get_number(p_path => ''results[1].locations[1].displayLatLng.lng'', p_values => v_values);',
'                                  ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
