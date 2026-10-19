prompt --application/shared_components/files/blue_check_sign_svg
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
wwv_flow_api.g_varchar2_table(1) := '3C7376672077696474683D22313522206865696768743D223132222076696577426F783D22302030203135203132222066696C6C3D226E6F6E652220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667223E0D0A3C7061';
wwv_flow_api.g_varchar2_table(2) := '746820643D224D352E313235303720382E38303132344C312E383233383220352E34393939394C302E37303336313320362E363230324C352E31323530372031312E303431374C31342E3632353120312E35343136364C31332E3530343920302E343231';
wwv_flow_api.g_varchar2_table(3) := '3434384C352E313235303720382E38303132345A222066696C6C3D2223324439434437222F3E0D0A3C2F7376673E0D0A';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(65337025447926200)
,p_file_name=>'blue-check-sign.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
