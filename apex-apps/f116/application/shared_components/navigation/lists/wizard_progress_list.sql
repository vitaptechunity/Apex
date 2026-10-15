prompt --application/shared_components/navigation/lists/wizard_progress_list
begin
--   Manifest
--     LIST: Wizard Progress List
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
 p_id=>wwv_flow_api.id(119978609050743108)
,p_name=>'Wizard Progress List'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(119978609050743109)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Camp Details'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(119978609050743110)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Contact Details'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(119978609050743111)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Summer Details'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(119978609050743112)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Shlichim Request'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(119978609050743113)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Mishlachat Information'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(119978609050743114)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Returning Shlichim'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(119978609050743115)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'One Last Thing'
,p_list_item_link_target=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
