prompt --application/shared_components/user_interface/lovs/kehilati_res_key_areas_lov
begin
--   Manifest
--     KEHILATI_RES_KEY_AREAS_LOV
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
 p_id=>wwv_flow_api.id(62325567405182307)
,p_lov_name=>'KEHILATI_RES_KEY_AREAS_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'Select Hl.Meaning , hl.lookup_code',
'  From Hr_Lookups Hl',
' Where Hl.Lookup_Type = ''JAFI_HR_KEHILATI_RES_KEY_AREAS''',
' and Hl.enabled_flag = ''Y''',
' order by Hl.Meaning    ;',
'   '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'ABM'
,p_return_column_name=>'LOOKUP_CODE'
,p_display_column_name=>'MEANING'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'MEANING'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
