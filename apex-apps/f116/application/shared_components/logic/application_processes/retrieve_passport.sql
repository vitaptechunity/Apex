prompt --application/shared_components/logic/application_processes/retrieve_passport
begin
--   Manifest
--     APPLICATION PROCESS: RETRIEVE_PASSPORT
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>503
,p_default_id_offset=>2556963023090302471
,p_default_owner=>'APPS'
);
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(903491849227071841)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'RETRIEVE_PASSPORT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  vBlob blob;',
'  vMimeType varchar2(50) := ''application/pdf'';',
'  p_file_name varchar2(1000);',
'BEGIN',
'   select IDO.BINARY_DOC,',
'          IDO.File_Name,',
'          IDO.MIME_TYPE',
'     INTO vBlob,',
'          p_file_name,',
'          vMimeType',
'    from irc_documents IDO',
'    where ido.document_id = V(''P5_CURRENT_PASSPORT_DOC_ID'') and ido.binary_doc is not null;',
'  ',
'    owa_util.mime_header(vMimeType, FALSE);',
'    HTP.P(''Content-Length: '' || DBMS_LOB.getlength(vBlob));',
'    htp.p(''Content-Disposition: inline; filename="'' || p_file_name || ''"'');',
'    owa_util.http_header_close;',
'',
'    wpg_docload.download_file(vBlob);',
'    --apex_application.stop_apex_engine;',
'EXCEPTION WHEN NO_DATA_FOUND THEN',
'    htp.p(''File not found!'');',
'END;'))
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_api.component_end;
end;
/
