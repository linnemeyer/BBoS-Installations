prompt --application/shared_components/user_interface/lovs/vendors
begin
--   Manifest
--     VENDORS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.5'
,p_default_workspace_id=>1608381483082323
,p_default_application_id=>100
,p_default_id_offset=>336536533326679440
,p_default_owner=>'BBOSINSTALLS'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(167578738051615688)
,p_lov_name=>'VENDORS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select vendor_name dis, vendor_id ret',
'  from bb_vendors',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'RET'
,p_display_column_name=>'DIS'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
