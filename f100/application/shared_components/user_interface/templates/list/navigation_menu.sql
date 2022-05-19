prompt --application/shared_components/user_interface/templates/list/navigation_menu
begin
--   Manifest
--     REGION TEMPLATE: NAVIGATION_MENU
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.6'
,p_default_workspace_id=>1608381483082323
,p_default_application_id=>100
,p_default_id_offset=>336536533326679440
,p_default_owner=>'BBOSINSTALLS'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(16247806462647732266)
,p_list_template_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Navigation Menu'
,p_internal_name=>'NAVIGATION_MENU'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.jqm-navmenu-panel .ui-listview > li .ui-collapsible-heading {',
'    margin: 0;',
'}',
'.jqm-navmenu-panel .ui-collapsible.ui-li-static {',
'    border: medium none !important;',
'    padding: 0;',
'}',
'.jqm-navmenu-panel .ui-collapsible + li > .ui-btn, .jqm-navmenu-panel .ui-collapsible + .ui-collapsible > .ui-collapsible-heading > .ui-btn, .jqm-navmenu-panel .ui-panel-inner > .ui-listview > li.ui-first-child .ui-btn {',
'    border-top: medium none !important;',
'}',
'.jqm-navmenu-panel .ui-listview .ui-listview .ui-btn {',
'    color: #999;',
'    padding-left: 1.5em;',
'}',
'.jqm-navmenu-panel .ui-listview .ui-listview .ui-btn.ui-btn-active {',
'    color: #fff;',
'}',
'.jqm-navmenu-panel .ui-btn:after {',
'    opacity: 0.4;',
'}',
'.jqm-demos .jqm-navmenu-panel.jqm-panel-page-nav {',
'    display: none;',
'    left: 12px;',
'    position: absolute;',
'    top: 178px;',
'}',
'.jqm-demos .jqm-navmenu-panel.jqm-panel-page-nav ul li:first-child a {',
'    border-top: medium none;',
'}',
'',
''))
,p_theme_id=>51
,p_theme_class_id=>9
,p_list_template_before_rows=>'<ul data-role="listview">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul data-role="listview" data-theme="b">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-role="collapsible" data-iconpos="right" data-inset="false">',
'    <h2>#TEXT_ESC_SC#</h2>',
'    <ul data-role="listview" data-theme="b">',
'        #SUB_LISTS#',
'    </ul>',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-role="collapsible" data-iconpos="right" data-inset="false">',
'    <h2>#TEXT_ESC_SC#</h2>',
'    #SUB_LISTS#',
'</li>'))
,p_sub_templ_curr_w_child=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_reference_id=>5052261073199403386
);
wwv_flow_api.component_end;
end;
/
