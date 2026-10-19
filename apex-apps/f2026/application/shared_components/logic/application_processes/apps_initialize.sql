prompt --application/shared_components/logic/application_processes/apps_initialize
begin
--   Manifest
--     APPLICATION PROCESS: apps_initialize
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
 p_id=>wwv_flow_api.id(27721891218786152)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'apps_initialize'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   fnd_global.APPS_INITIALIZE(:PO_USER_ID,:PO_RESP_ID,800);',
' ',
' end;'))
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
