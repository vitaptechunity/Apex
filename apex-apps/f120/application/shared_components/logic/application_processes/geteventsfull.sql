prompt --application/shared_components/logic/application_processes/geteventsfull
begin
--   Manifest
--     APPLICATION PROCESS: GetEventsFull
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
 p_id=>wwv_flow_api.id(3051960427187251922)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetEventsFull'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   ',
'	   select count(*)',
'     	into :P0_EVENT_NO_FULL',
'	    from  jafi_irc_lts_events_new ',
'	   where  person_id = :P0_PERSON_ID',
'	     and  EVENT_STATUS = ''N'';',
' ',
' IF :P0_EVENT_NO_FULL < 3  Then',
'   :P0_EVENTS_PER_PAGE := :P0_EVENT_NO_FULL ; ',
'ELSIF    :P0_EVENT_NO_FULL >= 3  THen ',
'   :P0_EVENTS_PER_PAGE := 3;',
'END IF;',
'',
'  ',
'END;'))
);
wwv_flow_api.component_end;
end;
/
