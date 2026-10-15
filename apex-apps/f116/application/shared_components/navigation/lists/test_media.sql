prompt --application/shared_components/navigation/lists/test_media
begin
--   Manifest
--     LIST: test_media
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
 p_id=>wwv_flow_api.id(119978609050743092)
,p_name=>'test_media'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  ''1'',',
'  null list_title,',
'  null list_text,',
'  '''' list_class,',
'  ''javascript:DoFeedback(1)'' link, ',
'  null link_attr,',
'  null icon_color_class,',
'  ''fa fa-smile-o'' icon_class,',
'  null list_badge',
'from dual',
'union all',
'select',
'  ''2'',',
'  null list_title,',
'  null list_text,',
'  '' '' list_class,',
'  ''javascript:DoFeedback(1)'' link, ',
'  null link_attr,',
'  null icon_color_class,',
'  ''fa fa-smile-o'' icon_class,',
'  null list_badge',
'from dual'))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
