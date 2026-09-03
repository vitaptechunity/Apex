prompt --application/shared_components/files/line_1_png
begin
--   Manifest
--     APP STATIC FILES: 120
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>120
,p_default_id_offset=>3303201628629764337
,p_default_owner=>'APPS'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000002000000220806000000751A0812000000097048597300000B1300000B1301009A9C18000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000001F494441547801EDC63101000008';
wwv_flow_api.g_varchar2_table(2) := 'C3B082739403C7EE2958AED43E601A497C0E798D04C193BCFE860000000049454E44AE426082';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(3198818687113999675)
,p_file_name=>'Line 1.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
