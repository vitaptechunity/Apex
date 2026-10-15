prompt --application/shared_components/logic/application_items/person_id
begin
--   Manifest
--     APPLICATION ITEM: PERSON_ID
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>503
,p_default_id_offset=>2556963023090302471
,p_default_owner=>'APPS'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(119978609050743144)
,p_name=>'PERSON_ID'
,p_protection_level=>'I'
);
wwv_flow_api.component_end;
end;
/
