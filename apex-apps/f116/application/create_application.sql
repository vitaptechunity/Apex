prompt --application/create_application
begin
--   Manifest
--     FLOW: 116
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>503
,p_default_id_offset=>2556963023090302471
,p_default_owner=>'APPS'
);
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'APPS')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'JAFI TRAVEL Agency')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'SCTRAVEL')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'1D21B972C2B3659BB3CF611FF21EDB4D9465B3C23B692F19BB81905EB4AB25B8'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'5.1'
,p_flow_language=>'he'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DD/MM/YYYY'
,p_date_time_format=>'DD/MM/YYYY HH24:MI'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(119978609050743742)
,p_populate_roles=>'A'
,p_application_tab_set=>0
,p_logo_type=>'IT'
,p_logo=>'#APP_IMAGES#app-icon.jpg'
,p_logo_text=>'JAFI Flights'
,p_app_builder_icon_name=>'app-icon.jpg'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0 SangIT'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'S'
,p_vpd=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  execute immediate q''[alter session set nls_language = ''HEBREW'']'';',
'end;'))
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_default_error_display_loc=>'INLINE_WITH_FIELD'
,p_last_updated_by=>'DRORA'
,p_last_upd_yyyymmddhh24miss=>'20261004124858'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>166
,p_ui_type_name => null
);
wwv_flow_api.component_end;
end;
/
