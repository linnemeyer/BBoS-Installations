prompt --application/shared_components/logic/application_processes/getimage
begin
--   Manifest
--     APPLICATION PROCESS: GETIMAGE
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.5'
,p_default_workspace_id=>1608381483082323
,p_default_application_id=>100
,p_default_id_offset=>336536533326679440
,p_default_owner=>'BBOSINSTALLS'
);
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(342004482037620429)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GETIMAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    for c1 in (select *',
'                 from bb_files',
'                where file_id = :FILE_ID) loop',
'        --',
'        sys.htp.init;',
'        sys.owa_util.mime_header( c1.file_mimetype, FALSE );',
'        sys.htp.p(''Content-length: '' || sys.dbms_lob.getlength( c1.blob_content));',
'        sys.htp.p(''Content-Disposition: attachment; filename="'' || c1.file_name || ''"'' );',
'        sys.htp.p(''Cache-Control: max-age=36000'');  -- tell the browser to cache for one hour, adjust as necessary',
'        sys.owa_util.http_header_close;',
'        sys.wpg_docload.download_file( c1.blob_content );',
'     ',
'        apex_application.stop_apex_engine;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_api.component_end;
end;
/
