prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(16247647600803137983)
,p_name=>'Scheduled Installs'
,p_step_title=>'Scheduled Installs'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-Button--noUI, .t-Button--hideShow, .t-Button--noUI, .t-Button--simple, .ui-button:not(.ui-button--hot) {',
'    background-color: whitesmoke;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LARRY'
,p_last_upd_yyyymmddhh24miss=>'20220309155044'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28244416565745503)
,p_plug_name=>'Actions'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16247573660091137931)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>2
,p_plug_display_column=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27507203664793896225)
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
 p_id=>wwv_flow_api.id(27507204257029896227)
,p_plug_name=>'Scheduled Installs'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16247573660091137931)
,p_plug_display_sequence=>10
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
'select case when di.balance_due > 0 then '' DUE: ''||to_char(di.balance_due, ''$99,999.99'')||'',  '' else '' '' end ||di.client_name||',
'         case when di.installation_date is not null then '' INSTALLED,  '' else '' '' end ||',
'         case when di.gate_code is not null then ''GATE CODE:''||di.gate_code||''  '' else '' '' end ||',
'       '' - ''||bb_all_install_parts(di.order_id, di.scheduled_install_date, di.installer_id)||'' ''||',
'       di.client_address||'' ''||bb_install_notes(di.order_id, di.scheduled_install_date) client_name, di.order_id',
'     , di.scheduled_install_date, di.installation_date',
'     , (di.scheduled_install_date+((bb_install_length(di.order_id, di.scheduled_install_date))/60/24)) install_end_date',
'     , di.calendar_css css_class',
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
,p_attribute_05=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP:P6_ORDER_ID,P6_RETURN_PAGE:&ORDER_ID.,20'
,p_attribute_06=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RP:P18_EVENT_DATE:&APEX$NEW_START_DATE.'
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(137986760894109426)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(28244416565745503)
,p_button_name=>'MARK_INSTALLED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Mark All for Install Date as INSTALLED'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(336850175848692688)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(28244416565745503)
,p_button_name=>'Add_Non_Install_Event'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16247625762670137965)
,p_button_image_alt=>'Add Non Install Event'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RP,18::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(137986974191109428)
,p_branch_name=>'RETURN'
,p_branch_action=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(137986760894109426)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64225044850002087)
,p_name=>'P20_INSTALL_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(28244416565745503)
,p_item_default=>'select to_char(LOCALTIMESTAMP, ''DD-MON-YYYY'') from dual'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Install Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>13
,p_field_template=>wwv_flow_api.id(16247625219456137964)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(137986835866109427)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Mark Today as INSTALLED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update bb_install_parts ',
'   set installation_date = trunc(scheduled_install_date)',
' where trunc(scheduled_install_date) = to_date(:P20_INSTALL_DATE, ''DD-MON-YYYY'')',
'   and installation_date is null;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(137986760894109426)
);
wwv_flow_api.component_end;
end;
/
