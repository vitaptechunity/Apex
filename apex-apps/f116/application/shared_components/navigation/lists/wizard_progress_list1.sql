prompt --application/shared_components/navigation/lists/wizard_progress_list1
begin
--   Manifest
--     LIST: Wizard Progress List1
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
 p_id=>wwv_flow_api.id(119978609050743083)
,p_name=>'Wizard Progress List1'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(119978609050743084)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Camp Details'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(119978609050743085)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Contact Details'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(119978609050743086)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Summer Details'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(119978609050743087)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Shlichim Request'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(119978609050743088)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Mishlachat Information'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(119978609050743089)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Returning Shlichim'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(119978609050743090)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'One Last Thing'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
