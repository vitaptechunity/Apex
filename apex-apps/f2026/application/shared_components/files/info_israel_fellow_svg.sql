prompt --application/shared_components/files/info_israel_fellow_svg
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
wwv_flow_api.g_varchar2_table(1) := '3C7376672077696474683D22323222206865696768743D223235222076696577426F783D22302030203232203235222066696C6C3D226E6F6E652220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667223E0D0A3C7061';
wwv_flow_api.g_varchar2_table(2) := '746820643D224D31302E3832353320324C31392E393138362031372E373548312E37333230354C31302E3832353320325A22207374726F6B653D222331373242353422207374726F6B652D77696474683D2232222F3E0D0A3C7061746820643D224D3130';
wwv_flow_api.g_varchar2_table(3) := '2E383235332032322E393939394C312E373332303620372E32343939354C31392E3931383620372E32343939354C31302E383235332032322E393939395A22207374726F6B653D222331373242353422207374726F6B652D77696474683D2232222F3E0D';
wwv_flow_api.g_varchar2_table(4) := '0A3C2F7376673E0D0A';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(291259080647336956)
,p_file_name=>'info-israel-fellow.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
