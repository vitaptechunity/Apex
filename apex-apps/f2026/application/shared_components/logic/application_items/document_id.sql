prompt --application/shared_components/logic/application_items/document_id
begin
--   Manifest
--     APPLICATION ITEM: DOCUMENT_ID
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>220
,p_default_id_offset=>1696803741697335224
,p_default_owner=>'APPS'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(116522658067472118)
,p_name=>'DOCUMENT_ID'
,p_protection_level=>'B'
);
wwv_flow_api.component_end;
end;
/
