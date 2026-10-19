prompt --application/shared_components/files/favorite_svg
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
wwv_flow_api.g_varchar2_table(1) := '3C7376672077696474683D22323022206865696768743D223139222076696577426F783D22302030203230203139222066696C6C3D226E6F6E652220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667223E0D0A3C7061';
wwv_flow_api.g_varchar2_table(2) := '746820643D224D392E39393939322031342E383330394C31352E363634392031382E32354C31342E313636322031312E383035394C31392E3136363620372E34373436324C31322E3537353820362E39303632394C392E393939393220302E3833333337';
wwv_flow_api.g_varchar2_table(3) := '344C372E343234303920362E39303632394C302E38333332353220372E34373436324C352E38333336372031312E383035394C342E33333439322031382E32354C392E39393939322031342E383330395A222066696C6C3D2223313732423534222F3E0D';
wwv_flow_api.g_varchar2_table(4) := '0A3C2F7376673E0D0A';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(69323232903364472)
,p_file_name=>'favorite.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
