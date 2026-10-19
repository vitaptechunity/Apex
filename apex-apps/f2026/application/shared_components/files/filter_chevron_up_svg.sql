prompt --application/shared_components/files/filter_chevron_up_svg
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
wwv_flow_api.g_varchar2_table(1) := '3C7376672077696474683D22313222206865696768743D2237222076696577426F783D223020302031322037222066696C6C3D226E6F6E652220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667223E0D0A3C70617468';
wwv_flow_api.g_varchar2_table(2) := '20643D224D31302E39373820364C352E393838393920314C302E393939393537203622207374726F6B653D222332453245324522207374726F6B652D77696474683D223222207374726F6B652D6C696E656361703D22726F756E6422207374726F6B652D';
wwv_flow_api.g_varchar2_table(3) := '6C696E656A6F696E3D22726F756E64222F3E0D0A3C2F7376673E0D0A';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(422432344729650973)
,p_file_name=>'filter-chevron-up.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
