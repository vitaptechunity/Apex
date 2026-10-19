prompt --application/shared_components/user_interface/lovs/org_lov
begin
--   Manifest
--     ORG_LOV
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
 p_id=>wwv_flow_api.id(28822898869849176)
,p_lov_name=>'ORG_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select   hoi.org_information_id lookup_code,',
'           hoi.ORG_INFORMATION1  MEANING',
'  from hr_organization_information hoi',
' where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG''',
'   and hoi.ORG_INFORMATION10 = ''Y''',
'   and hoi.organization_id =  :P0_ORG_ID;'))
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
