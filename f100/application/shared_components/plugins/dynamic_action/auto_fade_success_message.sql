prompt --application/shared_components/plugins/dynamic_action/auto_fade_success_message
begin
--   Manifest
--     PLUGIN: AUTO FADE SUCCESS MESSAGE
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.5'
,p_default_workspace_id=>1608381483082323
,p_default_application_id=>100
,p_default_id_offset=>336536533326679440
,p_default_owner=>'BBOSINSTALLS'
);
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(10358674492102451124)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'AUTO FADE SUCCESS MESSAGE'
,p_display_name=>'Auto Fade Success Message 5.1'
,p_category=>'EXECUTE'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','AUTO FADE SUCCESS MESSAGE'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Developed by Tim Halbach - https://thalbachdevelop.blogspot.de/',
'FUNCTION render_autoFadeOut (p_dynamic_action IN apex_plugin.t_dynamic_action, p_plugin IN apex_plugin.t_plugin)',
'  RETURN apex_plugin.t_dynamic_action_render_result',
'AS',
'  -- Return variable',
'  l_result                      apex_plugin.t_dynamic_action_render_result;',
'',
'  -- Save plugin-parameter in local variables',
'  l_view_time           apex_application_page_regions.attribute_01%type := p_dynamic_action.attribute_01;',
'',
'  ',
'  -- Variables for javascript parts',
'  l_complete_code varchar2(4000);',
'',
'begin',
'/* During plug-in development it''s very helpful to have some debug information */',
'  IF APEX_APPLICATION.g_debug THEN',
'    apex_plugin_util.debug_dynamic_action (p_plugin => p_plugin, p_dynamic_action => p_dynamic_action);',
'  END IF;',
'',
'/* Escaping der Parameter */',
'  l_view_time          := apex_plugin_util.escape(l_view_time, true);',
'',
'/* Function declaration */',
'  ',
'  l_complete_code := q''[function(){',
'  apex.jQuery( document ).ready( function() {',
'  apex.theme42.configureSuccessMessages({',
'    autoDismiss: true,',
'    duration: ]'' || l_view_time || q''[',
'  });',
'});',
']'';',
'  ',
'/* Finish Code */',
'  l_complete_code := l_complete_code || ''}'';',
'',
'  l_result.javascript_function := l_complete_code;',
'  return l_result;',
'end render_autoFadeOut;'))
,p_api_version=>2
,p_render_function=>'render_autoFadeOut'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'0.2'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(10360182721913601367)
,p_plugin_id=>wwv_flow_api.id(10358674492102451124)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Display Time in ms'
,p_attribute_type=>'NUMBER'
,p_is_required=>false
,p_default_value=>'1500'
,p_supported_ui_types=>'DESKTOP'
,p_is_translatable=>false
,p_help_text=>'Enter your display time for the success message'
);
wwv_flow_api.component_end;
end;
/
