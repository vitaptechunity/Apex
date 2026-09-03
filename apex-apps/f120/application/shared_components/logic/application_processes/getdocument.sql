prompt --application/shared_components/logic/application_processes/getdocument
begin
--   Manifest
--     APPLICATION PROCESS: GetDocument
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
 p_id=>wwv_flow_api.id(3065325836105283596)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetDocument'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  vBlob blob;',
'  vmimetype varchar2(50):= ''application/pdf'';',
'  p_file_name varchar2(1000);',
'BEGIN',
'  ',
'   ',
'   select IDO.BINARY_DOC,',
'          IDO.File_Name',
'     INTO vBlob,',
'          p_file_name',
'    from irc_documents IDO',
'    where ido.person_id = :P0_PERSON_ID',
'    and ido.end_date is null',
'    and type = ''PLACEMENT'' ; ',
' ',
'  ',
'   sys.HTP.init;',
'  sys.OWA_UTIL.mime_header(vmimetype, FALSE);',
'  sys.HTP.p(''Content-Length: '' || DBMS_LOB.getlength(vBlob));',
'  sys.HTP.p(''Content-Disposition:attachment; filename="'' || p_file_name || ''"'');',
'  sys.OWA_UTIL.http_header_close;',
'',
'  sys.WPG_DOCLOAD.download_file(vBlob);',
'  apex_application.stop_apex_engine;',
'EXCEPTION',
'  WHEN apex_application.e_stop_apex_engine THEN',
'    NULL;',
'  WHEN OTHERS THEN',
'    HTP.p(''Whoops''||sqlerrm);',
'END;'))
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_api.component_end;
end;
/
