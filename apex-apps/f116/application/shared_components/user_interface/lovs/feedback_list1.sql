prompt --application/shared_components/user_interface/lovs/feedback_list1
begin
--   Manifest
--     FEEDBACK_LIST1
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
 p_id=>wwv_flow_api.id(119978609050743162)
,p_lov_name=>'FEEDBACK_LIST1'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  '' <img src="#APP_IMAGES#1.png"  alt="image" height="68"/>  <h4>Very Satisfied</h4>'' Meaning  ,',
'  fcl.LOOKUP_CODE ',
'from FND_COMMON_LOOKUPS FCL',
'where lookup_type=''JAFI_SC_SATISFACTION''',
'and  FCL.LOOKUP_CODE  = ''VERY SATISFIED''',
'union ',
'',
'select  '' <img src="#APP_IMAGES#2.png" alt="image" height="68"/> <h4>Satisfied</h4> '' Meaning  ,',
'  fcl.LOOKUP_CODE ',
'from FND_COMMON_LOOKUPS FCL',
'where lookup_type=''JAFI_SC_SATISFACTION''',
'and  FCL.LOOKUP_CODE  = ''SATISFIED''',
'union ',
'',
'select  '' <img src="#APP_IMAGES#3.png" alt="image" height="68"/> <h4>Neutral</h4>'' Meaning  ,',
'  fcl.LOOKUP_CODE ',
'from FND_COMMON_LOOKUPS FCL',
'where lookup_type=''JAFI_SC_SATISFACTION''',
'and  FCL.LOOKUP_CODE  = ''NEUTRAL''',
'union ',
'',
'select  '' <img src="#APP_IMAGES#4.png" alt="image" height="68"/> <h4>Unsatisfied</h4>'' Meaning  ,',
'  fcl.LOOKUP_CODE ',
'from FND_COMMON_LOOKUPS FCL',
'where lookup_type=''JAFI_SC_SATISFACTION''',
'and  FCL.LOOKUP_CODE  = ''UNSATISFIED''',
'union ',
'',
'select  '' <img src="#APP_IMAGES#5.png" height="68"/> <h4>Very Unsatisfied </h4>'' Meaning  ,',
'  fcl.LOOKUP_CODE ',
'from FND_COMMON_LOOKUPS FCL',
'where lookup_type=''JAFI_SC_SATISFACTION''',
'and  FCL.LOOKUP_CODE  = ''VERY UNSATISFIED'' '))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
