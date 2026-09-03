prompt --application/shared_components/logic/application_processes/display_user_blob
begin
--   Manifest
--     APPLICATION PROCESS: display_user_blob
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>120
,p_default_id_offset=>3303201628629764337
,p_default_owner=>'APPS'
);
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(3202705821398705075)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'display_user_blob'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  ',
'   LOB_LOC blob;',
'   L_LENGTH varchar2(50) ; ',
'   L_FILE_NAME varchar2(1000);',
'   L_MIME varchar2(100); ',
'         ',
'         ',
'BEGIN',
'  ',
'',
'  SELECT BINARY_DOC,',
'         DBMS_LOB.GETLENGTH(BINARY_DOC),',
'         file_name,',
'         mime_type',
'  INTO   LOB_LOC,',
'         L_LENGTH,',
'         L_FILE_NAME,',
'         L_MIME',
'  FROM   irc_documents ',
'  WHERE  document_id =   11278 -- :P_DOC',
'  and type = ''PHOTO'';',
'  ',
'    ',
'',
'   OWA_UTIL.MIME_HEADER(L_MIME, FALSE);',
'   HTP.P(''Content-length: '' || L_LENGTH);',
'   HTP.P(''Content-Disposition:  filename="'' ||',
'    SUBSTR(L_FILE_NAME, INSTR(L_FILE_NAME, ''/'') + 1) || ''"'');',
'    OWA_UTIL.HTTP_HEADER_CLOSE;',
' ',
'    WPG_DOCLOAD.DOWNLOAD_FILE(LOB_LOC);',
'    ',
'  sys.HTP.init;',
'  sys.OWA_UTIL.mime_header(L_MIME, FALSE);',
'  sys.HTP.p(''Content-Length: '' || L_LENGTH);',
'  sys.HTP.p(''Content-Disposition:inline; filename="'' || L_FILE_NAME || ''"'');',
'  sys.OWA_UTIL.http_header_close;',
'',
'  sys.WPG_DOCLOAD.download_file(LOB_LOC);',
'  apex_application.stop_apex_engine;',
'END;'))
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_api.component_end;
end;
/
