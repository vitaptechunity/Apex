prompt --application/shared_components/files/filter_svg
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
wwv_flow_api.g_varchar2_table(1) := '3C7376672077696474683D22313922206865696768743D223139222076696577426F783D22302030203139203139222066696C6C3D226E6F6E652220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667223E0D0A3C7061';
wwv_flow_api.g_varchar2_table(2) := '746820643D224D31372E3431363620322E33373548312E35383332354C372E393136353820392E38363431375631352E303431374C31312E303833332031362E36323556392E38363431374C31372E3431363620322E3337355A22207374726F6B653D22';
wwv_flow_api.g_varchar2_table(3) := '2331453145314522207374726F6B652D77696474683D223222207374726F6B652D6C696E656361703D22726F756E6422207374726F6B652D6C696E656A6F696E3D22726F756E64222F3E0D0A3C2F7376673E0D0A';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(419532660830853124)
,p_file_name=>'filter.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
