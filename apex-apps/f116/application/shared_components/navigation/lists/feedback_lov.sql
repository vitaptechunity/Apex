prompt --application/shared_components/navigation/lists/feedback_lov
begin
--   Manifest
--     LIST: FEEDBACK_LOV
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>503
,p_default_id_offset=>2556963023090302471
,p_default_owner=>'APPS'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(119978609050743091)
,p_name=>'FEEDBACK_LOV'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT null, ',
'       ''<i style="color:green;" class="fa fa-smile-o fa-3x"></i>'' label, ',
'       ''javascript:DoFeedback(5);'' target',
'FROM  dual',
'UNION all',
'SELECT null, ',
'       ''<I style="color:orange;" class="fa fa-emoji-slight-smile fa-3x"></i>'' label, ',
'       ''javascript:DoFeedback(4);'' target',
'FROM  dual',
'',
''))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
