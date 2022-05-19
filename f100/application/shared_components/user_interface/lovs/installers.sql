prompt --application/shared_components/user_interface/lovs/installers
begin
--   Manifest
--     INSTALLERS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.6'
,p_default_workspace_id=>1608381483082323
,p_default_application_id=>100
,p_default_id_offset=>336536533326679440
,p_default_owner=>'BBOSINSTALLS'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(831850999325532181)
,p_lov_name=>'INSTALLERS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select i.installer, ui.installer_id, i.calendar_css',
'  from bb_installers i, bb_user_installers ui',
' where i.installer_id = ui.installer_id',
'   and ui.user_id = :G_USER_ID',
'   and nvl(inactive, ''N'') != ''Y''',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'INSTALLER_ID'
,p_display_column_name=>'INSTALLER'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
