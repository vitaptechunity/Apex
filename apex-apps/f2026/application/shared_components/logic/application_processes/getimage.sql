prompt --application/shared_components/logic/application_processes/getimage
begin
--   Manifest
--     APPLICATION PROCESS: GetImage
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>220
,p_default_id_offset=>1696803741697335224
,p_default_owner=>'APPS'
);
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(59542259926399760)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetImage'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  vBlob blob;',
'  vmimetype varchar2(50):= ''application/pdf'';',
'  p_file_name varchar2(1000);',
'BEGIN',
'   select IDO.BINARY_DOC,',
'          IDO.File_Name,',
'          IDO.MIME_TYPE',
'     INTO vBlob,',
'          p_file_name,',
'          vmimetype',
'    from irc_documents IDO',
'    where ido.person_id = :P12_PERSON_ID',
'  and type = ''PHOTO''',
'  and ido.end_date is null',
'  AND IDO.LAST_UPDATE_DATE =',
'       (SELECT MAX(ID1.LAST_UPDATE_DATE)',
'          FROM IRC_DOCUMENTS ID1',
'         WHERE IDO.PERSON_ID = ID1.PERSON_ID',
'           AND IDO.TYPE = ID1.TYPE);',
'  ',
'  /*exception ',
'  when no_data_found then',
'   XX_MY_UTILS.add_msg(''Failed IN AJAX:''||SQLERRM);',
'END;*/',
'',
'if vBlob is null then',
'    select pic.BINARY_DOC,',
'          pic.File_Name,',
'          pic.MIME_TYPE',
'     INTO vBlob,',
'          p_file_name,',
'          vmimetype',
'    from irc_documents pic',
'    where pic.type = ''PHOTO''--p_type',
'    AND PIC.PERSON_ID = 75831--p_person_id of Hanoch',
'    AND upper(PIC.DESCRIPTION) LIKE ''%APEX_CAMP%''',
'    and rownum < 2;',
'end if;',
'',
'sys.HTP.init;',
'  sys.OWA_UTIL.mime_header(vmimetype, FALSE);',
'  sys.HTP.p(''Content-Length: '' || DBMS_LOB.getlength(vBlob));',
'  sys.HTP.p(''Content-Disposition:inline; filename="'' || p_file_name || ''"'');',
'  sys.OWA_UTIL.http_header_close;',
'',
'  sys.WPG_DOCLOAD.download_file(vBlob);',
'  apex_application.stop_apex_engine;',
'EXCEPTION',
'  WHEN apex_application.e_stop_apex_engine THEN',
'    NULL;',
'  WHEN OTHERS THEN',
'    HTP.p(''No photo found for shaliach'');',
'END;'))
);
wwv_flow_api.component_end;
end;
/
