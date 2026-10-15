prompt --application/shared_components/user_interface/lovs/performing_arts
begin
--   Manifest
--     PERFORMING_ARTS 
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
 p_id=>wwv_flow_api.id(119978609050743175)
,p_lov_name=>'PERFORMING_ARTS '
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pcd.segment2, PC.COMPETENCE_ID',
'  from per_competences pc, per_competence_definitions pcd',
'where pc.competence_definition_id = pcd.competence_definition_id',
'   and pcd.segment1 = ''PERFORMINGARTS''',
'   and pc.date_to is null',
'   and pc.rating_scale_id = 3061'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
