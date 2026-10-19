prompt --application/pages/page_09999
begin
--   Manifest
--     PAGE: 09999
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>220
,p_default_id_offset=>1696803741697335224
,p_default_owner=>'APPS'
);
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Community Portal'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(491199926137075117)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'VITAP'
,p_last_upd_yyyymmddhh24miss=>'20261014105915'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(491335919609075425)
,p_plug_name=>'Community Portal'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491245977136075193)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(491340516255075449)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_api.id(491335919609075425)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(491338642894075444)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(491335919609075425)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(491309386210075286)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(491336336343075430)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(491335919609075425)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(491307949719075281)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(491336610991075431)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(491335919609075425)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(491307949719075281)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(491337707009075439)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(491335919609075425)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(491336954368075432)||'.'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_field_template=>wwv_flow_api.id(491307949719075281)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(491339457250075447)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(491339028802075446)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3079998700383868)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SetParams'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_org_info1 hr_organization_information.org_information1%type;',
'begin',
'',
'  begin',
'    if :P9999_USERNAME = ''TNT2026'' then',
'      :P0_ORG_ID := 0;',
'    else',
'      :P0_ORG_ID := JAFI_COMMUNITY_APEX_UTILS.get_org_id(:P9999_USERNAME);',
'    end if;',
'  exception',
'    when others then',
'      :P0_ORG_ID := 0;',
'  end;',
'',
'',
'  :P0_USER_ID       := JAFI_COMMUNITY_APEX_UTILS.get_user_id(:P9999_USERNAME);',
'  :P0_RESP_ID       := 67094;',
'  :P0_USER_NAME     := :P9999_USERNAME;',
'  :PO_LOGIN_URL_OIC := ''f?p=&APP_ID.:9999:&SESSION.'';',
'',
'  if :P0_ORG_ID = 0 then',
'    :APP_CP_PAGE := 28;',
'  else',
'    begin',
'      select hoi.org_information1',
'        into l_org_info1',
'        from hr_organization_information hoi',
'       where hoi.org_information_context = ''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'         and hoi.organization_id = :P0_ORG_ID;',
'    exception',
'      when no_data_found then',
'        l_org_info1 := null;',
'    end;',
'',
'    if l_org_info1 = ''AMI'' then',
'      :APP_CP_PAGE := 30;',
'    else',
'      :APP_CP_PAGE := 1; -- HOME',
'    end if;',
'  end if;',
'',
'  :P0_CURRENT_YEAR := JAFI_COMMUNITY_APEX_UTILS.Get_Current_Year();',
'  -- fnd_global.APPS_INITIALIZE(:P0_USER_ID,67094,800);   --run application process : apps_initialize',
'',
'  select fnd_profile.value(''JAFI_SSH_RF_EDIT_END_DATE'')',
'    into :P0_END_DATE',
'    from dual;',
'',
'  select fnd_profile.value(''JAFI_COMMUNITY_RF_EDIT_END_DATE'')',
'    into :P0_COMMUNITY_END_DATE',
'    from dual;',
'',
'end;',
'',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(491340261938075448)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13933296196796048)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Session State'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(491339870712075447)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13933038776796045)
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
'',
'   select instance_name',
'     into   :P0_INSTANCE',
'     from   v$instance  ',
'     where rownum = 1 ;  ',
'    ',
'      ',
'     IF :P0_INSTANCE in (''PROD'', ''JBI'') then  ',
'',
'        IF :P0_INSTANCE  like ''PROD'' THEN ',
'              :PO_LOGIN_URL_OIC := ''https://oicp.jafi.org.il/ic/builder/rt/community_portal_1_0/live/webApps/community_portal/'' ;',
'        ELSE ',
'              :PO_LOGIN_URL_OIC := ''https://oict.jafi.org.il/ic/builder/rt/community_portal/1.0/webApps/community_portal/'' ;',
'                 ',
'    END IF; ',
'        ',
'      l_host := SYS.OWA_UTIL.GET_CGI_ENV(''QUERY_STRING'');',
'       ',
'       ',
'       xx_my_utils.add_msg(''220 l_host:'' || l_host);',
'    ',
'            ',
'          l_token := substr(l_host, instr(l_host, '':'', -1, 1) + 1, length(l_host)); -- get token from URL ',
'       ',
'      ',
'         IF l_token IS NULL THEN ',
'             :P0_USER_NAME := NULL;',
'             apex_util.redirect_url(p_url =>:PO_LOGIN_URL_OIC);',
'          ELSE ',
'',
'                     begin',
'                     ',
'                           xx_my_utils.add_msg(''220 l_token:'' || l_token);',
'    ',
'       ',
'                            l_get_valid_user := JAFI_APEX_SECURITY_UTILS.custom_user_name_by_token(l_token);',
'                         ',
'                            xx_my_utils.add_msg(''220 l_get_valid_user:'' || l_get_valid_user);',
'    ',
'                                ',
'                             if l_get_valid_user IS NULL then',
'                                  l_check_auth := ''N'';',
'                                  :P0_USER_NAME := NULL;',
'                                  :P0_USER_TOKEN := NULL;',
'                                  apex_util.redirect_url(p_url =>:PO_LOGIN_URL_OIC);',
'',
'                             else',
'                                  l_check_auth := ''Y'';',
'                                  :P0_USER_NAME  :=l_get_valid_user;',
'                                  :P0_USER_TOKEN := l_token;',
'                                  ',
'                             end if;',
'                      exception',
'                        when others then',
'                          l_check_auth := ''N'';',
'                          :P0_USER_NAME := NULL;',
'                          :P0_USER_TOKEN := NULL;',
'                           apex_util.redirect_url(p_url =>:PO_LOGIN_URL_OIC);',
'',
'                      end;',
'',
'         END if;  ',
'    ELSE',
'          :PO_LOGIN_URL_OIC :=  ''f?p=&APP_ID.:9999:&SESSION.''; ',
'    END IF; ',
'  ',
' exception when others then ',
'  :P0_USER_NAME := NULL;',
'   apex_util.redirect_url(p_url =>:PO_LOGIN_URL_OIC);',
'   ',
'end;',
'',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13933169477796047)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'TokenAuth_SetParams'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_err_mes   varchar2(10000) := '''';',
'  v_status    varchar2(10000);',
'  v_check_way varchar2(10000) := '''';',
'  l_org_info1 hr_organization_information.org_information1%type;',
'begin',
'',
'  if :P0_USER_NAME is not null then',
'',
'    -- xx_my_utils.add_msg(''P0_USER_NAME before convert '' || :P0_USER_NAME);',
'',
'    :P0_USER_NAME := jafi_apex_camp_utils.get_camp_code(:P0_USER_NAME, :P0_USER_TOKEN);',
'',
'    begin',
'      if :P0_USER_NAME = ''TNT2026'' then',
'        :P0_ORG_ID := 0;',
'      else',
'        :P0_ORG_ID := JAFI_COMMUNITY_APEX_UTILS.get_org_id(:P0_USER_NAME);',
'      end if;',
'    exception',
'      when others then',
'        :P0_ORG_ID := 0;',
'    end;',
'',
'    :P0_USER_ID      := JAFI_COMMUNITY_APEX_UTILS.get_user_id(:P0_USER_NAME);',
'    :P0_CURRENT_YEAR := JAFI_COMMUNITY_APEX_UTILS.Get_Current_Year();',
'',
'    select fnd_profile.value(''JAFI_SSH_RF_EDIT_END_DATE'')',
'      into :P0_END_DATE',
'      from dual;',
'',
'    select fnd_profile.value(''JAFI_COMMUNITY_RF_EDIT_END_DATE'')',
'      into :P0_COMMUNITY_END_DATE',
'      from dual;',
'',
'    if :P0_INSTANCE = ''JBI'' then',
'      :P0_RESP_ID := 66934;',
'    else',
'      :P0_RESP_ID := 67094;',
'    end if;',
'',
'    if :P0_ORG_ID = 0 then',
'      :APP_CP_PAGE := 28;',
'    else',
'      begin',
'        select hoi.org_information1',
'          into l_org_info1',
'          from hr_organization_information hoi',
'         where hoi.org_information_context = ''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'           and hoi.organization_id = :P0_ORG_ID;',
'      exception',
'        when no_data_found then',
'          l_org_info1 := null;',
'      end;',
'',
'      if l_org_info1 = ''AMI'' then',
'        :APP_CP_PAGE := 30;',
'      else',
'        :APP_CP_PAGE := 1; -- HOME',
'      end if;',
'    end if;',
'',
'    -- xx_my_utils.add_msg(''after'');',
'',
'    fnd_global.APPS_INITIALIZE(:P0_USER_ID, 67094, 800);',
'    :P0_LAST_UPDATE_USER_ID := :P0_USER_ID;',
'',
'    wwv_flow_custom_auth_std.login(',
'      P_UNAME      => :P0_USER_NAME,',
'      P_PASSWORD   => ''123456'',',
'      P_SESSION_ID => v(''APP_SESSION''),',
'      P_FLOW_PAGE  => :APP_ID || '':'' || :APP_CP_PAGE',
'    );',
'',
'  else',
'    apex_util.redirect_url(p_url => :PO_LOGIN_URL_OIC);',
'  end if;',
'',
'exception',
'  when others then',
'    -- xx_my_utils.add_msg(''except '' || SQLERRM);',
'    apex_util.redirect_url(p_url => :PO_LOGIN_URL_OIC);',
'end;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':P0_INSTANCE in (''PROD'', ''JBI'')'
,p_process_when_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.component_end;
end;
/
