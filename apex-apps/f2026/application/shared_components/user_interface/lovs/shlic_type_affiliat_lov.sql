prompt --application/shared_components/user_interface/lovs/shlic_type_affiliat_lov
begin
--   Manifest
--     SHLIC_TYPE_AFFILIAT_LOV
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
 p_id=>wwv_flow_api.id(26621587677521682)
,p_lov_name=>'SHLIC_TYPE_AFFILIAT_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  ',
' select ',
'           lookup_code,',
'           MEANING',
'    from (',
'    ',
'    ',
'    ',
'    select ',
'        Null lookup_code, ',
'       ''Slichut Type'' MEANING,',
'       1 seq',
'  from dual',
'    ',
' union    ',
'    select ',
'       flv.lookup_code, ',
'       FLV.MEANING,',
'       2 seq',
'  from fnd_lookup_values FLV',
' where FLV.lookup_type = ''JAFI_HR_KEHILATI_ORG_TYPE''',
'   and FLV.language = ''US''',
'   and flv.enabled_flag = ''Y''',
'   ',
'   union',
'   ',
'   ',
'    select ',
'       Null lookup_code, ',
'       ''Affiliation'' MEANING,',
'       3 seq',
'  from dual',
'    union ',
'  ',
'   select  ',
'          flv.lookup_code, ',
'          FLV.MEANING,',
'          4 seq',
'  from fnd_lookup_values FLV',
' where FLV.lookup_type = ''JAFI_HR_KEHILATI_AFFILIATION''',
'   and FLV.language = ''US''',
'   and flv.enabled_flag = ''Y'') All_Filters',
'   order by seq, MEANING',
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
