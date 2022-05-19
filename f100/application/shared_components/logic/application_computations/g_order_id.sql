prompt --application/shared_components/logic/application_computations/g_order_id
begin
--   Manifest
--     APPLICATION COMPUTATION: G_ORDER_ID
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.6'
,p_default_workspace_id=>1608381483082323
,p_default_application_id=>100
,p_default_id_offset=>336536533326679440
,p_default_owner=>'BBOSINSTALLS'
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(32012390344349590)
,p_computation_sequence=>10
,p_computation_item=>'G_ORDER_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'return null;'
,p_compute_when=>'6,7,8,62,101,9999'
,p_compute_when_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
);
wwv_flow_api.component_end;
end;
/
