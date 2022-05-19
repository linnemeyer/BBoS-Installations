prompt --application/create_application
begin
--   Manifest
--     FLOW: 100
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.6'
,p_default_workspace_id=>1608381483082323
,p_default_application_id=>100
,p_default_id_offset=>336536533326679440
,p_default_owner=>'BBOSINSTALLS'
);
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'BBOSINSTALLS')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'BB Installs')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'BB_INSTALLS')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'8881C3D5EE46186C73A17F014882FF9574E0991FAB6B6B5A83FD8BFE8B57FB18'
,p_bookmark_checksum_function=>'SH512'
,p_accept_old_checksums=>false
,p_max_session_length_sec=>43200
,p_on_max_session_timeout_url=>'#LOGOUT_URL#'
,p_max_session_idle_sec=>43200
,p_on_max_idle_timeout_url=>'#LOGOUT_URL#'
,p_session_timeout_warning_sec=>180
,p_compatibility_mode=>'21.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DD-MON-YYYY'
,p_date_time_format=>'DD-MON-YYYY'
,p_timestamp_format=>'DD-MON-YYYY'
,p_timestamp_tz_format=>'DD-MON-YYYY'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2018.08.07.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(754466894053466430)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'BB Installs'
,p_app_builder_icon_name=>'app-icon.svg'
,p_favicons=>'<link rel="icon" type="image/png" sizes="16x16" href="#APP_IMAGES#app-icon.svg">'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_referrer_policy=>'strict-origin-when-cross-origin'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'BB Installs'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20220518213041'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>5
,p_ui_type_name => null
,p_print_server_type=>'INSTANCE'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_description=>'TEST Budget Blinds of Scottsdale Installation management system'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_manifest_theme_color=>'#3d7d8b'
,p_pwa_manifest_icon_url=>'#APP_FILES#app-icon.svg'
);
wwv_flow_api.component_end;
end;
/
