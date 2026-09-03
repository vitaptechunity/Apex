prompt --application/shared_components/logic/application_processes/getfinalbooked
begin
--   Manifest
--     APPLICATION PROCESS: GetFinalBooked
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
 p_id=>wwv_flow_api.id(1119277338084898116)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetFinalBooked'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' begin',
'         ',
'',
'  ',
'select  1, COURSE_START_DATE, COURSE_START_TIME, NVL(jafi_hr_utils.Heb_Decode_Lookup(''JAFI_HR_CITIES'', hla.town_or_city), ''Zoom'') City ,  hla.telephone_number_1 mmpi_phone , ',
'  jafi_hr_utils.Heb_Decode_Lookup(''JAFI_SC_DAY_CODE_VS_HEB_DAY'',',
'                                       substr(TO_CHAR(oe.course_start_date,',
'                                                      ''DAY''),',
'                                              1,',
'                                              3)) || '' '' ||',
'       TO_CHAR(oe.course_start_date, ''DD/MM/YYYY'') START_DAY_WEEK,',
'       oe.evt_information15 ',
'       ',
'     into :P0_BOOKED_FINAL, :P0_PERSON_EDATE,:P0_PERSON_ETIME,:P0_PERSON_ECITY, :P0_MPI_PHONE , :PO_START_DAY_WEEK, :PO_ZOOM_LINK',
'         from ota_events oe, ',
'              ota_delegate_bookings odb,',
'              fnd_common_lookups      l,',
'              hr_locations_all      hla',
'                    ',
'                    ',
'        where oe.event_id = odb.event_id',
'          and JAFI_LTS_APEX_UTILS.get_booking_status(odb.delegate_person_id,',
'                                                                oe.event_id) = ''P''',
'          and oe.course_start_date between  trunc(sysdate) - 200 and trunc(sysdate) + 200',
'          and oe.course_start_date <=   trunc(sysdate) +',
'            Decode(l.ATTRIBUTE1,',
'              ''Y'',',
'              TO_NUMBER(l.ATTRIBUTE3) + 1,',
'              TO_NUMBER(fnd_Profile.VALUE(''JAFI_IRC_DEFAULT_DAYS_TO_PERMIT_ENROLLMENT'')))         ',
'          and oe.user_status =  :P0_USER_STATUS -- in (''LTSPI'', ''LTSAI'',''LTSOM'', ''SCSW'' )',
'          and odb.delegate_person_id =  :P0_PERSON_ID',
'          and l.LOOKUP_TYPE = ''EVENT_USER_STATUS''',
'          and l.LOOKUP_CODE = oe.user_status ',
'          and oe.location_id = hla.location_id(+);',
'',
'         exception',
'         when others then',
'            :P0_BOOKED_FINAL := 0;',
'         end;'))
,p_process_when=>'2,14, 20, 21'
,p_process_when_type=>'CURRENT_PAGE_IN_CONDITION'
);
wwv_flow_api.component_end;
end;
/
