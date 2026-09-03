prompt --application/shared_components/navigation/lists/no_events
begin
--   Manifest
--     LIST: NO_EVENTS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>120
,p_default_id_offset=>3303201628629764337
,p_default_owner=>'APPS'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(3187398663660849920)
,p_name=>'NO_EVENTS'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  null as level_value,',
'  null as label_value , ',
' null as link ,',
' null as is_current ,',
' null as image_value ,',
' null as image_attr_value, ',
' null as image_alt_value ,',
unistr('''\05DC\05E6\05E2\05E8\05E0\05D5, \05D0\05D9\05DF \05DB\05E8\05D2\05E2 \05EA\05D0\05E8\05D9\05DB\05D9\05DD \05E4\05E0\05D5\05D9\05D9\05DD. <br>\05D1\05D9\05DE\05D9\05DD \05D4\05E7\05E8\05D5\05D1\05D9\05DD \05D9\05EA\05E4\05E8\05E1\05DE\05D5 \05EA\05D0\05E8\05D9\05DB\05D9\05DD \05D7\05D3\05E9\05D9\05DD \05DC\05E9\05D9\05D1\05D5\05E5. <br> \05D4\05DE\05E9\05D9\05DB\05D5 \05DC\05D4\05EA\05E2\05D3\05DB\05DF!'' as attribute1'),
' from dual '))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
