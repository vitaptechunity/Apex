prompt --application/shared_components/logic/application_processes/getcurrentflag
begin
--   Manifest
--     APPLICATION PROCESS: GetCurrentFlag
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
 p_id=>wwv_flow_api.id(3220957326299676430)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetCurrentFlag'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      begin',
'        select DISTINCT flag',
'        into :P0_EVENT_FLAG',
'        from  jafi_lts_events_v  t',
'        where t.person_id = :P0_PERSON_ID;',
'',
'    exception',
'    when others then',
'     null;',
'    end;'))
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
