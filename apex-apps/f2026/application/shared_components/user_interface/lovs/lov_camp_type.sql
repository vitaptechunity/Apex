prompt --application/shared_components/user_interface/lovs/lov_camp_type
begin
--   Manifest
--     LOV_CAMP_TYPE
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
 p_id=>wwv_flow_api.id(602405594007061934)
,p_lov_name=>'LOV_CAMP_TYPE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select decode (flv.Lookup_Code, ''D'', flv.meaning ||'' ''|| ''(Local)'' , flv.meaning ||'' ''||''(Residential)'') d, flv.Lookup_Code r',
'from fnd_lookup_values flv ',
'where flv.lookup_type=''JAFI_SC_CAMP_TYPE'' ',
'and flv.language=''US''',
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
