prompt --application/shared_components/user_interface/lovs/countries_lov
begin
--   Manifest
--     COUNTRIES_LOV
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
 p_id=>wwv_flow_api.id(7856664682621305)
,p_lov_name=>'COUNTRIES_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  flv.meaning, flv.LOOKUP_CODE         ',
'from FND_LOOKUP_VALUES_VL flv',
'where flv.LOOKUP_TYPE = ''JAFI_HR_COUNTRIES''',
'order by  flv.meaning; ',
''))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
