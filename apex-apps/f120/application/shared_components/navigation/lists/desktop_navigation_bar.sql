prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
--   Manifest
--     LIST: Desktop Navigation Bar
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>120
,p_default_id_offset=>3303201628629764337
,p_default_owner=>'APPS'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(3275772858285542777)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3275760410937542655)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>unistr('\05D4\05EA\05E0\05EA\05E7\05D5\05EA \05DE\05D4\05DE\05E2\05E8\05DB\05EA')
,p_list_item_icon=>'fa-sign-out fa-2x'
,p_list_item_disp_cond_type=>'CURRENT_PAGE_NOT_EQUAL_CONDITION'
,p_list_item_disp_condition=>'5'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3275761133276542657)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3275760828354542656)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'userName'
,p_list_item_disp_cond_type=>'NEVER'
,p_parent_list_item_id=>wwv_flow_api.id(3275761133276542657)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
