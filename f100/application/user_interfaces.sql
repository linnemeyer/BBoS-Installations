prompt --application/user_interfaces
begin
--   Manifest
--     USER INTERFACES: 100
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.6'
,p_default_workspace_id=>1608381483082323
,p_default_application_id=>100
,p_default_id_offset=>336536533326679440
,p_default_owner=>'BBOSINSTALLS'
);
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(16247647600803137983)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(16247527481152137900)
,p_navigation_list_position=>'TOP'
,p_navigation_list_template_id=>wwv_flow_api.id(16247621152845137961)
,p_nav_list_template_options=>'#DEFAULT#:js-addActions:js-tabLike'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_javascript_file_urls=>'#APP_IMAGES#js/display-shortcut.js'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(16247647312492137983)
,p_nav_bar_list_template_id=>wwv_flow_api.id(16247618951195137960)
,p_nav_bar_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(16247817463432732611)
,p_ui_type_name=>'JQM_SMARTPHONE'
,p_display_name=>'Mobile'
,p_display_seq=>20
,p_use_auto_detect=>false
,p_is_default=>false
,p_theme_id=>51
,p_home_url=>'f?p=&APP_ID.:HOME_JQM_SMARTPHONE:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_JQM_SMARTPHONE:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>999
,p_navigation_list_id=>wwv_flow_api.id(16247826349029732622)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(16247806462647732266)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'NAVBAR'
);
wwv_flow_api.component_end;
end;
/
