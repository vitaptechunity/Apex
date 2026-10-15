prompt --application/user_interfaces
begin
--   Manifest
--     USER INTERFACES: 116
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>503
,p_default_id_offset=>2556963023090302471
,p_default_owner=>'APPS'
);
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(119978609050743808)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:&TRAVEL_PAGE.:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(119978609050743116)
,p_navigation_list_position=>'TOP'
,p_navigation_list_template_id=>wwv_flow_api.id(119978609050743324)
,p_nav_list_template_options=>'#DEFAULT#:js-tabLike'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_IMAGES#app-style.css',
'https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css'))
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js',
'#APP_IMAGES#app.js'))
,p_include_legacy_javascript=>'18'
,p_include_jquery_migrate=>true
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(119978609050743116)
,p_nav_bar_list_template_id=>wwv_flow_api.id(119978609050743314)
,p_nav_bar_template_options=>'#DEFAULT#'
);
wwv_flow_api.component_end;
end;
/
