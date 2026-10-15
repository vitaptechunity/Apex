prompt --application/shared_components/navigation/navigation_bar
begin
--   Manifest
--     ICON BAR ITEMS: 116
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>503
,p_default_id_offset=>2556963023090302471
,p_default_owner=>'APPS'
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(119978609050743142)
,p_icon_sequence=>10
,p_icon_subtext=>'Feedback'
,p_icon_target=>'f?p=&APP_ID.:102:&SESSION.:::102:P102_APPLICATION_ID,P102_PAGE_ID:&APP_ID.,&APP_PAGE_ID.'
,p_nav_entry_is_feedback_yn=>'Y'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_api.component_end;
end;
/
