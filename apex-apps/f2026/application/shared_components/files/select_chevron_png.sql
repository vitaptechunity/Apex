prompt --application/shared_components/files/select_chevron_png
begin
--   Manifest
--     APP STATIC FILES: 2026
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>220
,p_default_id_offset=>1696803741697335224
,p_default_owner=>'APPS'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000012000000120802000000D9AC1900000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000000970485973000012740000127401DE661F780000009249444154384FED90B10EC41018';
wwv_flow_api.g_varchar2_table(2) := '80EF110D86363178498351A44691588574410C5EA127FAE7526DEF869BFB6D1FBEF8796D7FF16417864C4A29840039C01833C6807486CC7B8F10524A817738E718E3941278E73CA473AE1DD25AEFDA2E9FE739C6B8EB879BB78510A669B2D62ECB4208C9';
wwv_flow_api.g_varchar2_table(3) := '39C3C681FB2F59D7B50594D2520A2C8DDC678D56D65A412E7CCD7EF36427B6ED0D18C3AEBEBF6D8CC80000000049454E44AE426082';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(191446219567412298)
,p_file_name=>'select-chevron.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
