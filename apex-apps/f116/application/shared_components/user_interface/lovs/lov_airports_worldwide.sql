prompt --application/shared_components/user_interface/lovs/lov_airports_worldwide
begin
--   Manifest
--     LOV_AIRPORTS_WORLDWIDE
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
 p_id=>wwv_flow_api.id(642249824757209932)
,p_lov_name=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'ABM'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(803274772374120743)
,p_query_column_name=>'LOOKUP_CODE'
,p_heading=>'Code'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(803449693938076055)
,p_query_column_name=>'R'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(803275177664120742)
,p_query_column_name=>'MEANING'
,p_heading=>'Meaning'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(803450055181076055)
,p_query_column_name=>'D'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(803373983467096055)
,p_query_column_name=>'NUM'
,p_heading=>'Num'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.component_end;
end;
/
