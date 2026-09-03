prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 120
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>120
,p_default_id_offset=>3303201628629764337
,p_default_owner=>'APPS'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(3275769440170542717)
,p_group_name=>'Administration'
);
wwv_flow_api.component_end;
end;
/
