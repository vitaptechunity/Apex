prompt --application/shared_components/logic/application_items/check_login
begin
--   Manifest
--     APPLICATION ITEM: CHECK_LOGIN
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
 p_id=>wwv_flow_api.id(119978609050743143)
,p_name=>'CHECK_LOGIN'
,p_protection_level=>'I'
);
wwv_flow_api.component_end;
end;
/
