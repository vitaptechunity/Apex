prompt --application/shared_components/user_interface/lovs/lov_supervision_op_autonomy_html
begin
--   Manifest
--     LOV_SUPERVISION_OP_AUTONOMY_HTML
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
 p_id=>wwv_flow_api.id(597108560100246470)
,p_lov_name=>'LOV_SUPERVISION_OP_AUTONOMY_HTML'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''<b>''||flv.meaning ||'':</b> <i>''||flv.description||''</i>''  d, flv.lookup_code r',
'from fnd_lookup_values flv',
'where flv.lookup_type = ''JAFI_HR_KEHILATI_SUPERVISION''',
'and flv.language = ''IW'' --and flv.attribute2 = ''Y''',
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
