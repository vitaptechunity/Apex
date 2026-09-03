prompt --application/shared_components/files/line_3_png
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
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000009000000090806000000E0910610000000097048597300000B1300000B1301009A9C18000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000005F4944415478018D8F810980300C';
wwv_flow_api.g_varchar2_table(2) := '04132770848CD015DCC00D7403DD40377134BB8123C417224AE1690F8E427B3444DC7D81073461F8C749433CECBFF082A9257C98583817E1C6C21423ABA1C5122F6B5746AA9A710C30C79509237E1C617F031E7581C7A4CAA9BE0000000049454E44AE42';
wwv_flow_api.g_varchar2_table(3) := '6082';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(3208019448359525286)
,p_file_name=>'Line 3.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
