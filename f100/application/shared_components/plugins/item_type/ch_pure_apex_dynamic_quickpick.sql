prompt --application/shared_components/plugins/item_type/ch_pure_apex_dynamic_quickpick
begin
--   Manifest
--     PLUGIN: CH.PURE.APEX.DYNAMIC_QUICKPICK
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
 p_id=>wwv_flow_api.id(79936369618885325084)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'CH.PURE.APEX.DYNAMIC_QUICKPICK'
,p_display_name=>'Dynamic Quick Pick (1.0)'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('ITEM TYPE','CH.PURE.APEX.DYNAMIC_QUICKPICK'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--===============================================================================',
'-- Renders the Dynamic quick pick item type based on the configuration of the page item.',
'--===============================================================================',
'',
'FUNCTION render_quick_pick (',
'   p_item                  IN apex_plugin.t_page_item,',
'   p_plugin                IN apex_plugin.t_plugin,',
'   p_value                 IN VARCHAR2,',
'   p_is_readonly           IN BOOLEAN,',
'   p_is_printer_friendly   IN BOOLEAN)',
'   RETURN apex_plugin.t_page_item_render_result',
'IS',
'   v_left                        VARCHAR2 (10) := p_item.attribute_01;',
'   v_right                       VARCHAR2 (10) := p_item.attribute_02;',
'   v_separator                   VARCHAR2 (10) := p_item.attribute_03;',
'   v_link_attr                   VARCHAR2 (255) := p_item.attribute_04;',
'   v_readonly_render             VARCHAR2 (1) := p_item.attribute_05;',
'',
'   -- constants for accessing our l_column_value_list array',
'   c_label              CONSTANT NUMBER := 1;',
'   c_page_item_names    CONSTANT NUMBER := 2;',
'   c_return_values      CONSTANT NUMBER := 3;',
'   c_display_values     CONSTANT NUMBER := 4;',
'',
'   c_escape_character   CONSTANT VARCHAR2 (1) := ''\'';',
'',
'',
'',
'   l_column_value_list           wwv_flow_plugin_util.t_column_value_list;',
'',
'   l_result                      wwv_flow_plugin.t_page_item_render_result;',
'',
'    l_page_item_names_string      VARCHAR2 (32767);',
'   l_return_values_string        VARCHAR2 (32767);',
'   l_display_values_string       VARCHAR2 (32767);',
'   t_page_item_names             APEX_APPLICATION_GLOBAL.VC_ARR2;',
'   t_return_values               APEX_APPLICATION_GLOBAL.VC_ARR2;',
'   t_display_values              APEX_APPLICATION_GLOBAL.VC_ARR2;',
'   l_output                      VARCHAR2 (32767);',
'',
' ',
'   -- the page_item part (first part) cannot be an empty string',
'   -- must have exact number of , on each of the component (page item, return values, and if not null, display values)',
'   FUNCTION validate_string',
'      RETURN BOOLEAN',
'   IS',
'      FUNCTION count_character (p_string                VARCHAR2,',
'                                p_character_to_count    VARCHAR2 DEFAULT '','')',
'         RETURN NUMBER',
'      IS',
'         v_ret   NUMBER;',
'      BEGIN',
'         SELECT   NVL (',
'                     LENGTH (',
'                        REPLACE (p_string,',
'                                 c_escape_character || p_character_to_count,',
'                                 NULL)),',
'                     0)',
'                - NVL (',
'                     LENGTH (',
'                        REPLACE (',
'                           REPLACE (',
'                              p_string,',
'                              c_escape_character || p_character_to_count,',
'                              NULL),',
'                           p_character_to_count,',
'                           NULL)),',
'                     0)',
'           INTO v_ret',
'           FROM DUAL;',
'',
'         RETURN v_ret;',
'      END;',
'   BEGIN',
'      -- count number of ,-s',
'      IF     (count_character (l_page_item_names_string) =',
'                 count_character (l_return_values_string))',
'         AND (   l_display_values_string IS NULL',
'              OR (count_character (l_page_item_names_string) =',
'                     count_character (l_display_values_string)))',
'      THEN',
'         RETURN TRUE;',
'      ELSE',
'         IF wwv_flow.g_debug',
'         THEN',
'            wwv_flow.debug (',
'                  ''Syntax error in Quick Pick query, page item names: "''',
'               || l_page_item_names_string',
'               || ''", number of commas: ''',
'               || count_character (l_page_item_names_string));',
'            wwv_flow.debug (',
'                  ''Syntax error in Quick Pick query, return values: "''',
'               || l_return_values_string',
'               || ''", number of commas: ''',
'               || count_character (l_return_values_string));',
'',
'            IF l_display_values_string IS NOT NULL',
'            THEN',
'               wwv_flow.debug (',
'                     ''Syntax error in Quick Pick query, display values: "''',
'                  || l_display_values_string',
'                  || ''", number of commas: ''',
'                  || count_character (l_display_values_string));',
'            END IF;',
'         END IF;',
'',
'         RETURN FALSE;',
'      END IF;',
'   END validate_string;',
'BEGIN',
'   IF wwv_flow.g_debug',
'   THEN',
'      apex_plugin_util.debug_page_item (',
'         p_plugin                => p_plugin,',
'         p_page_item             => p_item,',
'         p_value                 => p_value,',
'         p_is_readonly           => p_is_readonly,',
'         p_is_printer_friendly   => p_is_printer_friendly);',
'   END IF;',
'',
'   IF (p_is_readonly AND v_readonly_render = ''Y'') OR NOT p_is_readonly',
'   THEN',
'      -- get all values',
'      l_column_value_list :=',
'         apex_plugin_util.get_data (',
'            p_sql_statement    => p_item.lov_definition,',
'            p_min_columns      => 3,',
'            p_max_columns      => 4,',
'            p_component_name   => p_item.name);',
'',
'      FOR i IN 1 .. l_column_value_list (1).COUNT',
'      LOOP',
'         l_page_item_names_string :=',
'            sys.HTF.escape_sc (l_column_value_list (c_page_item_names) (i));',
'         l_return_values_string :=',
'            sys.HTF.escape_sc (l_column_value_list (c_return_values) (i));',
'            ',
'         if l_column_value_list.EXISTS (c_display_values) then   ',
'         l_display_values_string :=',
'            sys.HTF.escape_sc (l_column_value_list (c_display_values) (i));',
'         end if;    ',
'',
'         ',
'',
'         IF validate_string AND NOT p_is_readonly',
'         THEN',
'            t_page_item_names :=',
'               APEX_UTIL.STRING_TO_TABLE (l_page_item_names_string, '','');',
'            t_return_values :=',
'               APEX_UTIL.STRING_TO_TABLE (l_return_values_string, '','');',
'',
'            IF l_display_values_string IS NOT NULL',
'            THEN',
'               t_display_values :=',
'                  APEX_UTIL.STRING_TO_TABLE (l_display_values_string, '','');',
'            ELSE',
'               t_display_values :=',
'                  APEX_UTIL.STRING_TO_TABLE (l_return_values_string, '','');',
'            END IF;',
'',
'            -- t_return_values might be null in case of clear a single item',
'            IF t_return_values.COUNT = 0',
'            THEN',
'               t_return_values (1) := NULL;',
'            END IF;',
'',
'            IF t_display_values.COUNT = 0',
'            THEN',
'               t_display_values (1) := NULL;',
'            END IF;',
'',
'             ',
'               l_output := l_output || ''<a href="'';',
'',
'               FOR z IN 1 .. t_page_item_names.COUNT',
'               LOOP',
'                  IF SUBSTR (t_return_values (z), 1, 2) = ''$v''',
'                  THEN -- support $v value assignment, so value is not enclosed between quotes.',
'                     l_output :=',
'                           l_output',
'                        || ''javascript:$s(''''''',
'                        || t_page_item_names (z)',
'                        || '''''',''',
'                        || t_return_values (z)',
'                        || '');'';',
'                  ELSE',
'                     l_output :=',
'                           l_output',
'                        || ''javascript:$s(''''''',
'                        || t_page_item_names (z)',
'                        || '''''',''''''',
'                        || t_return_values (z)',
'                        || '''''',''''''',
'                        || t_display_values (z)',
'                        || '''''');'';',
'                  END IF;',
'               END LOOP;',
'',
'               -- escape special characters based on item setup instead of always',
'               --  l_output := l_output||''"''||v_link_attr||''>''||v_left||sys.htf.escape_sc(l_column_value_list(c_label)(i))||v_right||''</a>'';',
'               l_output :=',
'                     l_output',
'                  || ''"''',
'                  || v_link_attr',
'                  || ''>''',
'                  || v_left',
'                  || apex_plugin_util.escape (',
'                        p_value    => l_column_value_list (c_label) (i),',
'                        p_escape   => p_item.escape_output)',
'                  || v_right',
'                  || ''</a>'';',
'          ',
'',
'       ELSE',
'            -- print only the label marking with * for the error',
'            -- escape special characters based on item setup instead of always',
'            -- l_output := l_output||''<span ''||v_link_attr||''>''||v_left||sys.htf.escape_sc(l_column_value_list(c_label)(i));',
'            l_output :=',
'                  l_output',
'               || ''<span ''',
'               || v_link_attr',
'               || ''>''',
'               || v_left',
'               || apex_plugin_util.escape (',
'                     p_value    => l_column_value_list (c_label) (i),',
'                     p_escape   => p_item.escape_output);',
'',
'            IF NOT p_is_readonly',
'            THEN                          -- mark only when not pinterfriendly',
'               l_output := l_output || ''*'' || v_right || ''</span>'';',
'            ELSE',
'               l_output := l_output || v_right || ''</span>'';',
'            END IF;',
'         END IF;',
'',
'         IF i != l_column_value_list (1).COUNT',
'         THEN',
'            l_output := l_output || v_separator;',
'         END IF;',
'      END LOOP;',
'',
'      IF p_is_readonly OR p_is_printer_friendly',
'      THEN',
'         -- emit display span with the value',
'         apex_plugin_util.print_display_only (',
'            p_item_name          => p_item.name,',
'            p_display_value      => l_output,',
'            p_show_line_breaks   => FALSE,',
'            p_escape             => FALSE,',
'            p_attributes         => p_item.element_attributes);',
'      ELSE',
'         HTP.p (l_output);',
'      END IF;',
'   END IF;',
'',
'   RETURN l_result;',
'END;'))
,p_api_version=>1
,p_render_function=>'render_quick_pick'
,p_standard_attributes=>'VISIBLE:READONLY:ESCAPE_OUTPUT:ELEMENT:ELEMENT_OPTION:LOV'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'	&nbsp;</p>',
'<p>',
'	<span style="background-color: rgb(248, 248, 248); color: rgb(0, 0, 0); font-family: Arial, Helvetica, Geneva, sans-serif; font-weight: bold; text-align: -webkit-left; ">Dynamic Quick Pick&nbsp;</span>extends the functionality of the static Quick Pi'
||'ck introduced in Apex 4.0. It provides the possibility to define the Quick Pick entries based on a SQL statement.</p>',
'<p>',
'	The plugin supports all standard page items (and item-plugins), which can be set using the $s JavaScript API. Furthermore, with one-click, it can support value-assignment to multiple page items at the same time. In such case, the page items, the ret'
||'urn values (and the optional display values) has to be separates by a comma. It&#39;s also possible to use and reference to existing page item value on the page using the $v API, if the $v is the first 2 characters of a return value field.</p>',
'<p>',
'	Please, have a look at the demo page for various examples.</p>',
''))
,p_version_identifier=>'1.0'
,p_about_url=>'http://apex.oracle.com/pls/apex/f?p=PURE:DYNAMICQP'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(79936429014861333338)
,p_plugin_id=>wwv_flow_api.id(79936369618885325084)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Link Left  Separator'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'['
,p_display_length=>3
,p_max_length=>10
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Displayed character at the beginning of the label, default value is:',
'['))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(79936825029667356549)
,p_plugin_id=>wwv_flow_api.id(79936369618885325084)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Link Right Separator'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>']'
,p_display_length=>3
,p_max_length=>10
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Displayed character at the end of the label, default value is:',
']'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(79936872012830361154)
,p_plugin_id=>wwv_flow_api.id(79936369618885325084)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Element Separator'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'&nbsp;'
,p_display_length=>5
,p_max_length=>10
,p_is_translatable=>false
,p_help_text=>'Separator between link labels.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(79970347719940577117)
,p_plugin_id=>wwv_flow_api.id(79936369618885325084)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Link Attributes'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'style="color:#811919;font-size: 11px;margin: 0 5px 5px 0;text-decoration:none;white-space:nowrap;"'
,p_display_length=>140
,p_max_length=>255
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Use these link attributes when displaying each "Quick Pick" link.<br>',
'The apex builder style quick pick is:<br><br>',
'<i>style="color:#811919;font-size: 11px;margin: 0 5px 5px 0;text-decoration:none;white-space:nowrap;"</i>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(79970357904141581961)
,p_plugin_id=>wwv_flow_api.id(79936369618885325084)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Render as text when readonly'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_std_attribute(
 p_id=>wwv_flow_api.id(16443527054813640772)
,p_plugin_id=>wwv_flow_api.id(79936369618885325084)
,p_name=>'LOV'
,p_sql_min_column_count=>3
,p_sql_max_column_count=>4
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'Each query must return at least 3 columns: <b>LABEL</b>, <b>PAGE_ITEM_NAME</b> and <b>RETURN_VALUES</b> and optionally <b>DISPLAY_VALUES</b><br>',
'to support page item of type "Popup LOV" where the attribute "Input Field" = "Not Enterable, Show Display Value and Store Return Value". ',
'</p>',
'<p>',
'Examples:',
'</p>',
'<pre>',
'select ''label'' LABEL, ',
'	''P1_ITEM1,P1_ITEM2,P1_ITEM3'' PAGE_ITEM_NAMES,',
'        ''12345,,54321'' RETURN_VALUES',
' from dual ',
'union all ',
'select ''Clear all'' LABEL, ',
'	''P1_ITEM1,P1_ITEM2,P1_ITEM3'' PAGE_ITEM_NAMES, ',
'	'',,'' RETURN_VALUES',
' from dual',
'</pre>'))
);
wwv_flow_api.component_end;
end;
/
