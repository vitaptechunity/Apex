prompt --application/create_application
begin
--   Manifest
--     FLOW: 120
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>120
,p_default_id_offset=>3303201628629764337
,p_default_owner=>'APPS'
);
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'APPS')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'LTS Portal')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'LTSAPP')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'AD628843F50219521BC42859E9ACFC35EE75BB177CEE6D1B413AF7C0EC4E5DBF'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'19.2'
,p_flow_language=>'he'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'Y'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2022.12.27.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(3275648851351067153)
,p_application_tab_set=>1
,p_logo_type=>'C'
,p_logo=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span><img src="#APP_IMAGES#TheJewishAgencyLogo.png" width="130.83" height="31.11"></span>',
'<span><img src="#APP_IMAGES#Line 1.png" style="margin:0px 10px"></span>',
'<span><img src="#APP_IMAGES#WordZionist.png" width="139" height="31"></span>'))
,p_app_builder_icon_name=>'app-icon.svg'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'LTS Portal'
,p_last_updated_by=>'KERENT'
,p_last_upd_yyyymmddhh24miss=>'20260628092256'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>679
,p_ui_type_name => null
);
wwv_flow_api.component_end;
end;
/
