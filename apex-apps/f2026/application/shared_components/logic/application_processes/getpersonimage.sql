prompt --application/shared_components/logic/application_processes/getpersonimage
begin
--   Manifest
--     APPLICATION PROCESS: GetPersonImage
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
 p_id=>wwv_flow_api.id(59822340905270207)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetPersonImage'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*begin',
'       JAFI_SC_APEX_UTILS.DISPLAY_ADMIN_IMAGE(:P0_DOC_ID); --:P0_DOC 11248',
' ',
' end;*/',
'DECLARE',
'    l_length   NUMBER;',
'    lob_loc    BLOB;',
'BEGIN',
'    BEGIN',
'        -- Fetch the image and its length',
'        SELECT person_image,',
'               DBMS_LOB.GETLENGTH(person_image)',
'        INTO   lob_loc,',
'               l_length',
'        FROM   jafi.jafi_shlichut_training_reg jsst',
'        WHERE  seqnum = :P0_DOC_ID;',
'',
'        -- Set MIME type and headers',
'        OWA_UTIL.MIME_HEADER(''image/jpeg'', FALSE);',
'        HTP.P(''Content-length: '' || l_length);',
'        OWA_UTIL.HTTP_HEADER_CLOSE;',
'',
'        -- Serve the file',
'        WPG_DOCLOAD.DOWNLOAD_FILE(lob_loc);',
'',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            -- Handle missing images',
'            OWA_UTIL.MIME_HEADER(''image/png'', FALSE); -- Default to PNG if no image',
'            HTP.P(''Content-length: 0'');',
'            OWA_UTIL.HTTP_HEADER_CLOSE;',
'          --  HTP.P(''<html><body><p>No image available</p></body></html>''); -- HTML for fallback',
'    END;',
'END;'))
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_api.component_end;
end;
/
