prompt --application/shared_components/navigation/lists/interviews
begin
--   Manifest
--     LIST: INTERVIEWS
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
 p_id=>wwv_flow_api.id(1916915666465738990)
,p_name=>'INTERVIEWS'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  null as level_value,',
'case when :P0_EVENT_FLAG  =1 THEN    ',
unistr('           ''\05DE\05E8\05DB\05D6 \05D4\05E2\05E8\05DB\05D4''||'' ''|| to_char(course_start_date, ''dd/mm/yyyy'')'),
'     when  :P0_EVENT_FLAG  = 2 THEN      ',
unistr('            ''\05E8\05D0\05D9\05D5\05DF \05D0\05D9\05E9\05D9'' ||'' ''|| to_char(course_start_date, ''dd/mm/yyyy'')'),
'     when  :P0_EVENT_FLAG  = 3 THEN            ',
unistr('            ''\05D1\05D9\05D8\05D5\05D7 \05E8\05E4\05D5\05D0\05D9'' ||'' ''|| to_char(course_start_date, ''dd/mm/yyyy'')'),
'     when :P0_EVENT_FLAG  = 4 THEN        ',
unistr('             ''\05DE\05D1\05D7\05DF \05D0\05D9\05E9\05D9\05D5\05EA\05D9'' ||'' ''|| to_char(course_start_date, ''dd/mm/yyyy'')'),
' end  as label_value , ',
'case when event_status <> ''F'' then',
'''f?p=&APP_ID.:5:&APP_SESSION.:::5:P5_EVENT_ID,P5_VACANCY_ID,P5_COURSE_DATE,P5_BTN:''||EVENT_ID||'',''||VACANCY_ID||'',''||COURSE_START_DATE||'',Y'' ',
'else',
'  ''javascript:void(0);'' end link ',
' , null as is_current ',
'       , null as image_value ',
'       , null as image_attr_value ',
'       , null as image_alt_value ,',
unistr('''\05EA\05D0\05E8\05D9\05DA \05D5\05E9\05E2\05D4: ''||START_DAY_WEEK||'' ''||COURSE_START_TIME||''<br>''||'),
unistr('''\05DE\05D9\05E7\05D5\05DD: ''||LOCATION_CODE||''<br>''||'),
unistr('''\05E1\05D8\05D8\05D5\05E1 \05D4\05E8\05E9\05DE\05D4: <b style="color:#D02C68;">''|| case when num_of_places < 7 then  event_status_heb'),
unistr('         else   ''\05DE\05E7\05D5\05DE\05D5\05EA \05E4\05E0\05D5\05D9\05D9\05DD'' '),
'       end ',
'           ||''</b>'' as attribute1',
'from  jafi_irc_lts_events_new ',
'where person_id = :P0_PERSON_ID',
'--and flag = :P0_EVENT_FLAG',
'order by 1'))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
