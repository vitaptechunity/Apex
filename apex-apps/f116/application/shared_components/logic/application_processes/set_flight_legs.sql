prompt --application/shared_components/logic/application_processes/set_flight_legs
begin
--   Manifest
--     APPLICATION PROCESS: SET_FLIGHT_LEGS
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
 p_id=>wwv_flow_api.id(685949754691895968)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_FLIGHT_LEGS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    legs                 apex_json.t_values;',
'    legsCount            number(1);',
'    assignment_id        number(15);',
'    person_id            number(10);',
'    direction            varchar2(1);',
'    leg                  varchar2(1);',
'    airline              varchar2(50);',
'    flight_number        varchar2(20);',
'    departure_airport    varchar2(80);',
'    departure_date       varchar2(12);',
'    departure_time       varchar2(12);',
'    destination_airport  varchar2(80);',
'    arrival_date         varchar2(12);',
'    arrival_time         varchar2(12);',
'    meal                 varchar2(30);',
'begin',
'    if apex_collection.collection_exists (''FLIGHT_LEGS'') then apex_collection.truncate_collection(''FLIGHT_LEGS'');',
'    else apex_collection.create_collection(''FLIGHT_LEGS'');',
'    end if;',
'    ',
'    APEX_JSON.parse(legs, APEX_APPLICATION.g_clob_01);',
'    legsCount := apex_json.get_count(p_path => ''legs'', p_values => legs);',
'    ',
'    FOR i IN 1 .. legsCount LOOP',
'        assignment_id := to_number(apex_json.get_varchar2(p_values => legs, p_path => ''legs[%d].assignment_id'', p0 => i));',
'        person_id := to_number(apex_json.get_varchar2(p_values => legs, p_path => ''legs[%d].person_id'', p0 => i));',
'        direction := apex_json.get_varchar2(p_values => legs, p_path => ''legs[%d].direction'', p0 => i);',
'        leg := apex_json.get_varchar2(p_values => legs, p_path => ''legs[%d].leg'', p0 => i);',
'        airline := apex_json.get_varchar2(p_values => legs, p_path => ''legs[%d].airline'', p0 => i);',
'        flight_number := apex_json.get_varchar2(p_values => legs, p_path => ''legs[%d].flight_number'', p0 => i);',
'        departure_airport := apex_json.get_varchar2(p_values => legs, p_path => ''legs[%d].departure_airport'', p0 => i);',
'        departure_date := apex_json.get_varchar2(p_values => legs, p_path => ''legs[%d].departure_date'', p0 => i);',
'        departure_time := apex_json.get_varchar2(p_values => legs, p_path => ''legs[%d].departure_time'', p0 => i);',
'        destination_airport := apex_json.get_varchar2(p_values => legs, p_path => ''legs[%d].destination_airport'', p0 => i);',
'        arrival_date := apex_json.get_varchar2(p_values => legs, p_path => ''legs[%d].arrival_date'', p0 => i);',
'        arrival_time := apex_json.get_varchar2(p_values => legs, p_path => ''legs[%d].arrival_time'', p0 => i);',
'        meal := apex_json.get_varchar2(p_values => legs, p_path => ''legs[%d].meal'', p0 => i);',
'',
'        APEX_COLLECTION.ADD_MEMBER(p_collection_name => ''FLIGHT_LEGS'',',
'                                   p_n001            => assignment_id,',
'                                   p_n002            => person_id,',
'                                   p_c001            => direction,',
'                                   p_c002            => leg,',
'                                   p_c003            => airline,',
'                                   p_c004            => flight_number,',
'                                   p_c005            => departure_airport,',
'                                   p_c006            => departure_date,',
'                                   p_c007            => departure_time,',
'                                   p_c008            => destination_airport,',
'                                   p_c009            => arrival_date,',
'                                   p_c010            => arrival_time,',
'                                   p_c011            => meal);',
'    END LOOP;',
'    ',
'    APEX_JSON.open_object;',
'    APEX_JSON.write(''status'', ''success'');',
'    APEX_JSON.write(''message'', ''Flight leg inserted successfully'');',
'    APEX_JSON.close_object;',
'',
'    EXCEPTION WHEN OTHERS THEN',
'        APEX_JSON.open_object;',
'        APEX_JSON.write(''status'', ''error'');',
'        APEX_JSON.write(''message'', SQLCODE || '' - '' || SQLERRM);',
'        APEX_JSON.close_object;',
'end;'))
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_api.component_end;
end;
/
