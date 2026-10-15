prompt --application/shared_components/files/app_js
begin
--   Manifest
--     APP STATIC FILES: 116
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>503
,p_default_id_offset=>2556963023090302471
,p_default_owner=>'APPS'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '66756E6374696F6E2068696465446F776E6C6F61644469616C6F672829207B0D0A0976617220666C6167203D20747275653B0D0A0964656275676765723B0D0A0972657475726E3B0D0A090D0A097768696C652028666C616729207B0D0A090969662028';
wwv_flow_api.g_varchar2_table(2) := '2428272E666C69676874732D6D616E6167656D656E742D6469616C6F6727292E6C656E677468203E203129207B0D0A0909092428272E666C69676874732D6D616E6167656D656E742D6469616C6F673A6C61737427292E72656D6F766528293B0D0A0909';
wwv_flow_api.g_varchar2_table(3) := '092428272E75692D7769646765742D6F7665726C61793A6C61737427292E72656D6F766528293B0D0A090909666C6167203D2066616C73653B0D0A09097D0D0A097D090D0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(834759161043545200)
,p_file_name=>'app.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
