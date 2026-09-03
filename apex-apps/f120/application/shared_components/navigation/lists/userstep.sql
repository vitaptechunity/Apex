prompt --application/shared_components/navigation/lists/userstep
begin
--   Manifest
--     LIST: UserStep
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
 p_id=>wwv_flow_api.id(3256227334398567918)
,p_name=>'UserStep'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3256227221188567636)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\05D1\05D9\05D8\05D5\05D7 \05E8\05E4\05D0\05D5\05D9')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3256226835001567598)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\05DE\05E8\05DB\05D6 \05D4\05E2\05E8\05DB\05D4')
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3256226432945567593)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('\05E8\05E2\05D9\05D5\05DF \05D0\05D9\05E9\05D9')
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3256226055681567590)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('\05DE\05D1\05D7\05DF \05D0\05D9\05E9\05D9\05D5\05EA\05D9')
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
