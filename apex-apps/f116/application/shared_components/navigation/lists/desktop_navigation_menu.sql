prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
--   Manifest
--     LIST: Desktop Navigation Menu
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>503
,p_default_id_offset=>2556963023090302471
,p_default_owner=>'APPS'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(119978609050743116)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(119978609050743117)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Logout'
,p_list_item_link_target=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20'
);
wwv_flow_api.component_end;
end;
/
