prompt --application/shared_components/user_interface/lovs/lov_agents
begin
--   Manifest
--     LOV_AGENTS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>503
,p_default_id_offset=>2556963023090302471
,p_default_owner=>'APPS'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(870926081558054384)
,p_lov_name=>'LOV_AGENTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LOOKUP_CODE R, ATTRIBUTE4 D from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_SHLICHUT_FLIGHTS_USERS'' and m.LANGUAGE = ''US'' and ATTRIBUTE1 = ''T''',
'order by ATTRIBUTE4'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'ABM'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
wwv_flow_api.component_end;
end;
/
