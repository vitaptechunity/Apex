prompt --application/shared_components/user_interface/lovs/lov_religious_environment
begin
--   Manifest
--     LOV_RELIGIOUS_ENVIRONMENT
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>220
,p_default_id_offset=>1696803741697335224
,p_default_owner=>'APPS'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(602376332249521439)
,p_lov_name=>'LOV_RELIGIOUS_ENVIRONMENT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select flv.meaning d, flv.lookup_code r',
'from fnd_lookup_values flv ',
'where flv.lookup_type=''JAFI_HR_KEHILATI_AFFILIATION'' ',
'and flv.language=''IW'' --and flv.attribute2=''Y''',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'ABM'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'D'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
