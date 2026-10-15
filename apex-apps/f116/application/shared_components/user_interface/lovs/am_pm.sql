prompt --application/shared_components/user_interface/lovs/am_pm
begin
--   Manifest
--     AM_PM
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
 p_id=>wwv_flow_api.id(119978609050743146)
,p_lov_name=>'AM_PM'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Hl.Meaning , hl.lookup_code',
'  From Hr_Lookups Hl',
' Where Hl.Lookup_Type = ''JAFI_HR_SC_AM_PM''',
' and Hl.enabled_flag = ''Y''',
'   ;'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
