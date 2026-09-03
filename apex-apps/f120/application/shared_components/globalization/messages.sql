prompt --application/shared_components/globalization/messages
begin
--   Manifest
--     MESSAGES: 120
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>120
,p_default_id_offset=>3303201628629764337
,p_default_owner=>'APPS'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>120
,p_default_id_offset=>3303201628629764337
,p_default_owner=>'APPS'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(3068583051510085727)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.COUNTER'
,p_message_language=>'he'
,p_message_text=>unistr('\05D1\05D1\05E7\05E9\05D4 \05EA\05DE\05EA\05D9\05E0\05D5 <span id="apex_login_throttle_sec">%0</span> \05E9\05E0\05D9\05D5\05EA \05DC\05E4\05E0\05D9 \05E0\05E1\05D9\05D5\05DF \05E0\05D5\05E1\05E3.')
,p_is_js_message=>true
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>120
,p_default_id_offset=>3303201628629764337
,p_default_owner=>'APPS'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(3068582864799074709)
,p_name=>'INVALID_CREDENTIALS'
,p_message_language=>'he'
,p_message_text=>unistr('*\05D0\05D5\05D9 \05DE\05E9\05D4\05D5 \05D4\05E9\05EA\05D1\05E9, \05DB\05D3\05D0\05D9 \05DC\05D1\05D3\05D5\05E7 \05E9\05D5\05D1 \05D0\05EA \05D0\05D7\05D3 \05DE\05E4\05E8\05D8\05D9 \05D4\05D6\05D4\05D5\05EA.')
,p_is_js_message=>true
);
null;
wwv_flow_api.component_end;
end;
/
