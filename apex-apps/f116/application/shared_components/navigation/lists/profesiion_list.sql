prompt --application/shared_components/navigation/lists/profesiion_list
begin
--   Manifest
--     LIST: PROFESIION_LIST
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
 p_id=>wwv_flow_api.id(119978609050743105)
,p_name=>'PROFESIION_LIST'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(119978609050743106)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'ART & CRAFTS'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bell'
,p_list_text_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'hgdjasgdhajshgdajgshdhasgdjahdsga',
'jgsdjHAGDJhagdJHAGDJhagdjHAD'))
,p_list_text_03=>'AC'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(119978609050743107)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'PERFORMING ARTS'
,p_list_item_link_target=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-awesome-face'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
