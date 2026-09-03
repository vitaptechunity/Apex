prompt --application/shared_components/logic/application_processes/getbooked
begin
--   Manifest
--     APPLICATION PROCESS: GetBooked
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
 p_id=>wwv_flow_api.id(3050057894265574118)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetBooked'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' begin',
'    select  count(*) ',
'      into  :P0_BOOKED_TO_EVENT',
'      from  JAFI_IRC_LTS_EVENTS_NEW jic',
'     where  jic.person_id = :P0_PERSON_ID',
'     and  jic.booking_status_code = ''P'' ;',
'     ',
'     IF :P0_BOOKED_TO_EVENT <> 0 THEN ',
'         begin',
'         select  COURSE_START_DATE, COURSE_START_TIME, NVL(CITY, ''Zoom'') City,  jic.mmpi_phone ,jic.START_DAY_WEEK ,  jic.zoom, jic.address_line_1',
'                ---substr(COURSE_START_TIME,0,instr(COURSE_START_TIME,''-'',1)-1) ',
'         into :P0_PERSON_EDATE,:P0_PERSON_ETIME,:P0_PERSON_ECITY, :P0_MPI_PHONE, :PO_START_DAY_WEEK, :PO_ZOOM_LINK, :P0_PERSON_ELOCATION',
'          from  JAFI_IRC_LTS_EVENTS_NEW jic',
'         where  jic.person_id = :P0_PERSON_ID',
'         and  jic.booking_status_code = ''P'' ;',
'',
'',
'',
'         exception',
'         when others then null;',
'         end;',
'    END IF;     ',
'end;'))
,p_process_when=>'2,14, 20, 21'
,p_process_when_type=>'CURRENT_PAGE_IN_CONDITION'
);
wwv_flow_api.component_end;
end;
/
