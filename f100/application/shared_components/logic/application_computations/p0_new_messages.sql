prompt --application/shared_components/logic/application_computations/p0_new_messages
begin
--   Manifest
--     APPLICATION COMPUTATION: P0_NEW_MESSAGES
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
 p_id=>wwv_flow_api.id(32022858906538786)
,p_computation_sequence=>10
,p_computation_item=>'P0_NEW_MESSAGES'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when count(message_id) = 0 then null',
'       else ''You have ''||count(message_id)||'' new messages'' end message',
' from bb_user_messages',
'where user_id = &G_USER_ID.',
'  and complete_date is null'))
,p_compute_when=>'101,9999'
,p_compute_when_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
);
wwv_flow_api.component_end;
end;
/
