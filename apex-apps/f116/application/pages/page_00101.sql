prompt --application/pages/page_00101
begin
--   Manifest
--     PAGE: 00101
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>503
,p_default_id_offset=>2556963023090302471
,p_default_owner=>'APPS'
);
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(119978609050743808)
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'login'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'function openPopup()',
'{',
'  var url;',
'  url = ''f?p=&APP_ID.:46:&SESSION.::NO::'';',
'  w = open(url,"winLov","Scrollbars=1,resizable=1,width=900,height=700");',
'  if (w.opener == null)',
'   w.opener = self;',
'   w.focus();',
'}',
'</script>'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'@font-face {',
'      font-family: "Calibri";',
'      src: url(#APP_IMAGES#Calibri/calibrib.ttf);',
'    }',
'',
'',
'.t-Body {',
' background:url(#APP_IMAGES#bg_logo.jpg);',
'    background-size: cover!important;',
'    background-position: 100% 100%;',
'}',
'',
'',
'.left_logo{',
'  top: 10px;',
'  left: 5px;',
'  position: fixed;',
'  width: 200px;',
'}',
'',
'.rigth_logo{',
'  top: 5px;',
'  right: 10px;',
'  position: fixed;',
'    width: 150px;',
'}',
'',
'.face_circle{',
'    top: -100px;',
'    left: calc(50% - 70px);',
'    position: absolute;',
'    width:155px;',
'   ',
'}',
'',
'',
'.t-Login-region{',
'    background-color: #eeeffe;',
'    padding-bottom: 15px;',
'}',
'',
'',
'.t-Login-container {',
'    margin-left: 15%;',
'}',
'',
'',
'.t-Login-logo {',
'    display: none;',
'}',
'',
'',
' ',
'.t-Form-label{',
'    display: inline; ',
'}',
'    ',
'',
'',
'@media only screen and (max-width: 480px) {',
'    ',
'.t-Login-container {',
'  top: 80vw ;',
'  margin-right: 0;',
'  margin-left: 0;  ',
'    ',
'}',
'  ',
'   ',
'     ',
'.t-Body {',
'    background:url(#APP_IMAGES#SC_LOGO_MOBILE.jpg);',
'       height: 100vh;',
'    overflow-y:auto;',
'} ',
'    ',
'    .t-Login-header{',
'        color: #4552f0;',
'    }',
'',
'.B51707662883175441{',
'  color: #4552f0;  ',
'}'))
,p_step_template=>wwv_flow_api.id(111212241701550024)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'DRORA'
,p_last_upd_yyyymmddhh24miss=>'20260531104900'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(259832879808097755)
,p_plug_name=>'<h2 style="color:#4351ef; text-align:center;">Travel Agency</h2>'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(111172089784704379)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>9
,p_plug_display_column=>4
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(116070852567464452)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(259832879808097755)
,p_button_name=>'LOGIN'
,p_button_static_id=>'LOGIN_BTN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(119978609050743280)
,p_button_image_alt=>'<img src="#APP_IMAGES#logo_buton_60.png" width="142" height="42">'
,p_button_position=>'BELOW_BOX'
,p_button_cattributes=>'style=" background-color: transparent; box-shadow: none;"'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(220657615887358504)
,p_name=>'P101_NEW'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(259832879808097755)
,p_post_element_text=>'<a href="#" onclick="javascript:openPopup();"> <p style="direction: rtl; font-size: 16px; font-weight:300; line-height: 1.5; "> forget password</a>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(119978609050743336)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116070049117464449)
,p_name=>'P101_USERNAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(259832879808097755)
,p_prompt=>'username'
,p_placeholder=>'username'
,p_post_element_text=>unistr('<span class=\201Dt-Login-iconValidation a-Icon icon-check\201D></span>')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(119978609050743335)
,p_item_css_classes=>'icon-login-username'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116069606760464447)
,p_name=>'P101_PASSWORD'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(259832879808097755)
,p_prompt=>'password'
,p_placeholder=>'password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(119978609050743335)
,p_item_css_classes=>'icon-login-password'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116069208149464447)
,p_name=>'101_101_101_RESET_LINK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(259832879808097755)
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<a href="#" onclick="javascript:openPopup();">\05E9\05DB\05D7\05EA\05D9 \05E1\05D9\05E1\05DE\05D4</a>              '),
'                                                                           '))
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(119978609050743336)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(116289395058701734)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--JAFI_APEX_SECURITY_UTILS.jafi_have_permission(UPPER(:P101_USERNAME),''JAFI_HR_SC_TRAVEL_AGENCY_MGR'' )=true',
'',
'true = true'))
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'You are not authorized to access this site'
,p_associated_item=>wwv_flow_api.id(116070049117464449)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(116066467620464440)
,p_name=>'Submit Page'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P101_LOGIN_BUTTON'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(116065939753464439)
,p_event_id=>wwv_flow_api.id(116066467620464440)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(116068835451464443)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(116068451389464442)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => UPPER(:P101_USERNAME),',
'    p_password => :P101_PASSWORD );',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15746037362070281)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SetParams'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'begin',
':TRAVEL_PAGE := 2; ',
':P0_USER_NAME := :P101_USERNAME;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(116067608708464441)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(116067273709464441)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(116066837542464441)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Session State'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(212535432105804477)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'TokenAuthentication'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_host             varchar2(255) := null;',
'  l_check_auth       varchar2(1) := ''N'';',
'  l_get_valid_user varchar2(4000);',
'  l_token            varchar2(500);',
'  v_instance        varchar2(100); ',
'begin',
'    xx_my_utils.add_msg(''APEX 116 Start '');',
'    ',
'    ',
'   select instance_name',
'     into   :P0_INSTANCE',
'     from   v$instance  ',
'     where rownum = 1 ;  ',
'     ',
'     IF :P0_INSTANCE in (''PROD'', ''JBI'') then  ',
'       IF :P0_INSTANCE = ''PROD'' THEN ',
'          :PO_LOGIN_URL_OIC := ''https://oicp.jafi.org.il/ic/builder/rt/Jewish_agencyTA_1_0/live/webApps/jewish_agency_ta/'';',
'        ELSE ',
'          :PO_LOGIN_URL_OIC := ''https://oic-vbcs-oicgen3test-vb-ax1iipmjnp5w.builder.eu-amsterdam-1.ocp.oraclecloud.com/ic/builder/rt/Jewish_agencyTA/1.0.1/webApps/jewish_agency_ta/'';',
'          --''https://oict.jafi.org.il/ic/builder/rt/Jewish_agencyTA_1_0/live/webApps/jewish_agency_ta/'';',
'        END IF; ',
'       ',
'          l_host := SYS.OWA_UTIL.GET_CGI_ENV(''QUERY_STRING'');',
'          l_token := substr(l_host, instr(l_host, '':'', -1, 1) + 1, length(l_host)); -- get token from URL ',
'         -- xx_my_utils.add_msg(''VITA APEX 116 QUERY_STRING:  l_token - '' || l_token);',
'          IF l_token IS NULL THEN ',
'             :P0_USER_NAME := NULL;',
'             apex_util.redirect_url(p_url =>:PO_LOGIN_URL_OIC);',
'          ELSE ',
'                     begin',
'                            l_get_valid_user := JAFI_APEX_SECURITY_UTILS.custom_user_name_by_token(l_token);',
'                            if l_get_valid_user IS NULL then',
'                                  l_check_auth := ''N'';',
'                                  :P0_USER_NAME := NULL;',
'                                  apex_util.redirect_url(p_url =>:PO_LOGIN_URL_OIC);',
'                             else',
'                                  l_check_auth := ''Y'';',
'                                  :P0_USER_NAME  :=l_get_valid_user;',
'                              end if;',
'                      exception',
'                        when others then',
'                          l_check_auth := ''N'';',
'                          :P0_USER_NAME := NULL;',
'                          apex_util.redirect_url(p_url =>:PO_LOGIN_URL_OIC);',
'                      end;',
'         END if;  ',
'    ELSE',
'          :PO_LOGIN_URL_OIC :=  ''f?p=&APP_ID.:101:&SESSION.''; ',
'          ',
'        ',
'    END IF; ',
'  ',
' exception when others then ',
'  :P0_USER_NAME := NULL;',
'   apex_util.redirect_url(p_url =>:PO_LOGIN_URL_OIC);',
'   ',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(212535470394804478)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'TokenAuth_SetParams'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' ',
'  IF :P0_USER_NAME IS NULL THEN',
'    APEX_UTIL.REDIRECT_URL(p_url => :PO_LOGIN_URL_OIC);',
'    RETURN;',
'  END IF;',
'  :TRAVEL_PAGE := 2;',
'   ',
'  WWV_FLOW_CUSTOM_AUTH_STD.LOGIN(',
'    P_UNAME      => :P0_USER_NAME,',
'    P_PASSWORD   => ''123456'',',
'    P_SESSION_ID => V(''APP_SESSION''),',
'    P_FLOW_PAGE  => :APP_ID || '':'' || :TRAVEL_PAGE',
'  );',
'           ',
'     ',
'                                                                               ',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    xx_my_utils.add_msg(''APEX 116 2 STEP EXCEPTION CALL TO LOGIN'');',
'    APEX_UTIL.REDIRECT_URL(p_url => :PO_LOGIN_URL_OIC);',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':P0_INSTANCE in (''PROD'', ''JBI'')'
,p_process_when_type=>'SQL_EXPRESSION'
);
wwv_flow_api.component_end;
end;
/
