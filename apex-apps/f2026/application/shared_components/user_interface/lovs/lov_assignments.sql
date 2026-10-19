prompt --application/shared_components/user_interface/lovs/lov_assignments
begin
--   Manifest
--     LOV_ASSIGNMENTS
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
 p_id=>wwv_flow_api.id(710066277226946835)
,p_lov_name=>'LOV_ASSIGNMENTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select	flv.Description d, flv.lookup_code r',
'From 	FND_LOOKUP_VALUES flv',
'Where 	flv.Lookup_Type = ''JAFI_HR_AMITY_ISRAEL_ASS_CORE''',
'		and flv.enabled_flag = ''Y''',
'		AND flv.LANGUAGE=''US''',
'order by flv.lookup_code'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'ABM'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
