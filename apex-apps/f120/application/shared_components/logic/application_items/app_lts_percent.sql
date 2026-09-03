prompt --application/shared_components/logic/application_items/app_lts_percent
begin
--   Manifest
--     APPLICATION ITEM: APP_LTS_PERCENT
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>120
,p_default_id_offset=>3303201628629764337
,p_default_owner=>'APPS'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(3145672655364589643)
,p_name=>'APP_LTS_PERCENT'
,p_protection_level=>'N'
);
wwv_flow_api.component_end;
end;
/
