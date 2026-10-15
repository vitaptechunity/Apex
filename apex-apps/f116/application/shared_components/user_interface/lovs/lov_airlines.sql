prompt --application/shared_components/user_interface/lovs/lov_airlines
begin
--   Manifest
--     LOV_AIRLINES
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
 p_id=>wwv_flow_api.id(642149691990218569)
,p_lov_name=>'LOV_AIRLINES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_AIRLINES'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'ABM'
,p_return_column_name=>'LOOKUP_CODE'
,p_display_column_name=>'MEANING'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
