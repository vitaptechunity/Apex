prompt --application/shared_components/user_interface/lovs/lov_youth_movements
begin
--   Manifest
--     LOV_YOUTH_MOVEMENTS
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
 p_id=>wwv_flow_api.id(633657113339460119)
,p_lov_name=>'LOV_YOUTH_MOVEMENTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select flv.lookup_code r, flv.meaning d',
'from fnd_lookup_values flv',
'where flv.lookup_type = ''JAFI_HR_SSH_RF_YOUTH_MOVMENTS'' and flv.language = ''US''',
'order by d'))
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
