prompt --application/pages/page_09999
begin
--   Manifest
--     PAGE: 09999
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>120
,p_default_id_offset=>3303201628629764337
,p_default_owner=>'APPS'
);
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(3275772552271542776)
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>unistr('\05D0\05D6\05D5\05E8 \05D0\05D9\05E9\05D9 \05D4\05D9\05D7\05D9\05D3\05D4 \05DC\05E9\05DC\05D9\05D7\05D5\05EA ')
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'&G_FONT.',
'<!-- The video -->',
'<video autoplay   loop id="myVideo" class="desktop-video hide-iphone" data-src="#APP_IMAGES#SOJNUT_VIDEO.mp4">',
'</video>',
' ',
'&G_FONT.',
'<!-- The video -->',
'<video autoplay loop id="mobileVideo" class="mobile-video" data-src="#APP_IMAGES#new_mobile_viedo.mp4">',
'</video>',
'',
'<!-- The video -->',
'<img data-src="#APP_IMAGES#new_IPhone.gif" id="iphoneGif" class="iphone-gif d-none" />'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var savepos = localStorage.getItem("savepos");',
'function myfncReload(){',
'      apex.theme.openRegion(''MyAlertR'');',
'var dialog = apex.jQuery(''#MyAlertR'').closest(''.ui-dialog'');',
'  dialog.addClass(''logoutdialog'');',
' }'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.loginPage-lts::before {',
'    background: transparent;',
'  }',
'',
'.headerTopLogosRow span a div {',
'       margin-top: 115px;',
'} ',
'#myVideo {',
'   position:fixed;',
'    min-width:100%;',
'    max-width:100%;',
'    width:100vw;',
'    height:100vh;',
'    z-index:-100;',
'    object-fit: cover;',
' }',
''))
,p_step_template=>wwv_flow_api.id(3275904468027542967)
,p_page_css_classes=>'loginPage-lts'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'VITAP'
,p_last_upd_yyyymmddhh24miss=>'20240311215128'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3275768531030542703)
,p_plug_name=>unistr('\05D4\05D0\05DD \05D0\05EA\05DD \05DE\05D5\05DB\05E0\05D9\05DD?')
,p_region_css_classes=>'lts-login-section'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275682520124264380)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3275763840118542682)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_api.id(3275768531030542703)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3274289430395275513)
,p_plug_name=>'Welcome'
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    .headerTopLogosRow span {',
'         left: 0px;',
'}',
'</style>',
'	',
'	',
'	',
'	<div class="headerTopLogosRow">',
'    <div class="header-container-inner">',
'        <div>',
'            <img src="#APP_IMAGES#TheJewishAgencyLogo.png" width="130.83" height="31.11" >  ',
'			<img src="#APP_IMAGES#Line 1.png" style="margin:0px 10px" >  ',
'            <img src="#APP_IMAGES#WordZionist.png" width="139" height="31" > ',
'        </div>',
'    </div>',
' <span>',
'            <div >',
'                 <img src="#APP_IMAGES#Upper_left_logo.png" width="198" height="100" >  				 ',
'        	</div> ',
' </span>',
'</div>',
'',
'	',
'<div class="header-container-inner">',
'    <p class="loginTitle">',
unistr('    \05D1\05E8\05D5\05DB\05D9\05DD \05D4\05D1\05D0\05D9\05DD \05DC\05D9\05D7\05D9\05D3\05D4 \05DC\05E9\05DC\05D9\05D7\05D5\05EA'),
'    </p>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3274290269070275521)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(3275768531030542703)
,p_button_name=>'RESET_LINK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link'
,p_button_template_id=>wwv_flow_api.id(3275795122090542834)
,p_button_image_alt=>unistr('\05E9\05DB\05D7\05EA\05D9 \05E1\05D9\05E1\05DE\05D4')
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3275765759522542687)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(3275768531030542703)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3275795122090542834)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\05DB\05E0\05D9\05E1\05D4')
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3275768188013542698)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3275768531030542703)
,p_prompt=>unistr('\05E9\05DD \05DE\05E9\05EA\05DE\05E9')
,p_placeholder=>unistr('\05E9\05DD \05DE\05E9\05EA\05DE\05E9')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(3275796481351542840)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3275767806569542696)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3275768531030542703)
,p_prompt=>unistr('\05E1\05D9\05E1\05DE\05D4')
,p_placeholder=>unistr('\05E1\05D9\05E1\05DE\05D4')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(3275796481351542840)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3275766653956542690)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(3275768531030542703)
,p_prompt=>unistr('\05D6\05DB\05D5\05E8 \05E9\05DD \05DE\05E9\05EA\05DE\05E9')
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(3275767514811542695)||'.'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_field_template=>wwv_flow_api.id(3275796481351542840)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3274290181077275520)
,p_validation_name=>'CheckUsername'
,p_validation_sequence=>10
,p_validation=>'JAFI_LTS_APEX_UTILS.jafi_check_if_lts(:P9999_USERNAME)'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>unistr('*\05D0\05D5\05D9 \05DE\05E9\05D4\05D5 \05D4\05E9\05EA\05D1\05E9, \05DB\05D3\05D0\05D9 \05DC\05D1\05D3\05D5\05E7 \05E9\05D5\05D1 \05D0\05EA \05E9\05DD \05D4\05DE\05E9\05EA\05DE\05E9. ')
,p_associated_item=>wwv_flow_api.id(3275768188013542698)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3044584649264618667)
,p_validation_name=>'CheckPassword'
,p_validation_sequence=>20
,p_validation=>'jafi_apex_camp_utils.custom_ebs_auth (:P9999_USERNAME, :P9999_PASSWORD) = true'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>unistr('*\05D0\05D5\05D9 \05DE\05E9\05D4\05D5 \05D4\05E9\05EA\05D1\05E9, \05DB\05D3\05D0\05D9 \05DC\05D1\05D3\05D5\05E7 \05E9\05D5\05D1 \05D0\05EA \05E9\05DD \05D4\05E1\05D9\05E1\05DE\05D4. ')
,p_associated_item=>wwv_flow_api.id(3275767806569542696)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3275764997589542684)
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
 p_id=>wwv_flow_api.id(3275765371440542685)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username =>    :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );',
'',
'',
''))
,p_process_error_message=>unistr('*\05D0\05D5\05D9 \05DE\05E9\05D4\05D5 \05D4\05E9\05EA\05D1\05E9, \05DB\05D3\05D0\05D9 \05DC\05D1\05D3\05D5\05E7 \05E9\05D5\05D1 \05D0\05EA \05D0\05D7\05D3 \05DE\05E4\05E8\05D8\05D9 \05D4\05D6\05D4\05D5\05EA. ')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3274290376940275522)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SetParams'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_err_mes varchar2(10000):='''';',
'v_status  varchar2(10000);',
'v_page varchar2(30);',
'l_flag varchar2(2);',
'l_count number;',
'v_step_count number  :=0;',
'v_maslul    varchar2(10); ',
'v_maslul_code number; ',
'begin',
'',
'  :PO_LOGIN_URL_OIC :=  ''https://oicp.jafi.org.il/ic/builder/rt/Jewish_agencyLTS_1_0/live/webApps/jewish_agencylts/''; ',
'   ',
'    ',
'',
' :P0_PERSON_ID         := JAFI_LTS_APEX_UTILS.jafi_get_person_id(:P9999_USERNAME);',
':PO_USER_FNAME        := JAFI_LTS_APEX_UTILS.jafi_get_person_name (:P9999_USERNAME);',
':P0_USER_NAME         := :P9999_USERNAME;',
':P0_EVENT_FLAG        := NVL(JAFI_LTS_APEX_UTILS.jafi_get_event_flag(:P9999_USERNAME), 1); ',
':PO_WHATSAPP          :=''https://api.whatsapp.com/send?phone=972522450151'';',
':PO_FACEBOOK     := ''https://www.facebook.com/Hayechida'';',
':PO_INSTAG       := ''https://www.instagram.com/hayechida/?igshid=NTc4MTIwNjQ2YQ%3D%3D'';',
':PO_YAHIDA_MAIL  := ''mailto:shlichutunit@wzo.org.il'';',
'',
' ------------------------------',
'  select CASE :P0_EVENT_FLAG',
'          WHEN ''1'' THEN ''LTSSW''',
'          WHEN ''2'' THEN  ''LTSPI''',
'          WHEN ''4'' THEN  ''LTSMMPI''',
'          WHEN ''8'' THEN  ''LTSAI'' ',
'          WHEN ''9'' THEN  ''LTSOM''',
'        END ',
'    into :P0_USER_STATUS      ',
' from dual ; ',
'----------------------------- ',
'',
' begin',
'',
'   select  user_id ',
'   into :P0_USER_ID',
'   from fnd_user fu',
'   where upper(fu.user_name) = upper(:P0_USER_NAME);',
'',
'  exception',
'  when others then',
'  :P0_USER_ID := ''vitap@techunity.co.il'';',
'  end;',
'------------------------------',
'',
'',
'   begin ',
'           select sug_sw,',
'                  assignment_status_type_id,',
'                  assignment_id,',
'                  vacancy,',
'                  maslul',
'             into :P0_SADNA_TYPE,',
'                  :P0_ASSIG_STATUS_ID,',
'                  :P0_ASSIGNMENT_ID,',
'                  v_maslul,',
'                  v_maslul_code',
'             from jafi_lts_events_v ',
'            where person_id  =:P0_PERSON_ID ; ',
'          exception',
'              when others then      ',
'                  --apex_util.redirect_url(p_url =>:PO_LOGIN_URL_OIC);',
'                    :APP_LTS_PAGE := 1;  -- Chen request the changes in 11/03/2024 ',
'           end ;',
'-------------------',
'   begin',
'     select distinct (ASS_ATTRIBUTE23) maslul_type,',
'            l.ATTRIBUTE2',
'      into :PO_MASLUL_TYPE,',
'           :PO_SORT_BY',
'          from per_all_assignments_f tt,',
'                per_all_vacancies pav,',
'                fnd_common_lookups l',
'         where tt.person_id = :P0_PERSON_ID',
'           and pav.vacancy_id= tt.vacancy_id',
'           and pav.attribute11 = ''Y''',
'           and pav.attribute_category = ''LTS''   ',
'           and TRUNC (sysdate) between tt.effective_start_date and  tt.effective_end_date',
'           and l.LOOKUP_TYPE = ''JAFI_HR_LTS_MASLUL_TYPES_PORT'' ',
'           and ASS_ATTRIBUTE23 = l.LOOKUP_CODE;',
'',
'         ',
'   ',
'      exception',
'      when others then',
'      :PO_MASLUL_TYPE := ''9999'';',
'     ',
'  end;',
'',
' ------------------------------',
'',
'   begin',
'     ',
'        select NVL(prs.flag_1_pass,''N''),',
'               NVL(prs.flag_2_pass,''N''),',
'               NVL(prs.flag_3_pass,''N''),',
'               NVL(prs.flag_4_pass,''N'')',
'        into   :P0_STEP_1,',
'               :P0_STEP_2,',
'               :P0_STEP_3,',
'               :P0_STEP_4',
'        from  jafi_apex_lts_progress prs',
'        where prs.person_id = :P0_PERSON_ID;',
'      ',
'      exception',
'      when others then',
'      null;',
'     ',
'  end;',
'  ',
'-----------------------------  ',
'   BEGIN',
'',
'       IF :P0_STEP_1  = ''Y'' THEN ',
'           v_step_count := v_step_count +1; ',
'       END IF;',
'       IF :P0_STEP_2  = ''Y'' THEN ',
'           v_step_count := v_step_count +1; ',
'       END IF;    ',
'       IF :P0_STEP_3  = ''Y'' THEN ',
'           v_step_count := v_step_count +1; ',
'       END IF;   ',
'       IF :P0_STEP_4  = ''Y'' THEN ',
'           v_step_count := v_step_count +1; ',
'       END IF;    ',
'        ',
'                   Select ',
'            Case     when v_step_count = 0 then  0',
'                     when v_step_count = 1 then  25',
'                     when v_step_count = 2 then  50',
'                     when v_step_count = 3 then  75',
'                     when v_step_count = 4 then  110',
'                     end ',
'            into :APP_LTS_PERCENT         ',
'            from  dual;',
'END ;',
'',
'-----------------------------',
'----------------------------  ',
'/* moved to prerender on page',
'   begin',
'      select max(document_id)',
'      into :P0_DOC',
'      from irc_documents',
'      where person_id = :P0_PERSON_ID',
'      and type = ''PHOTO'';',
'      ',
'      exception',
'      when others then',
'      null;',
'  end;',
'  */',
'-------------------------  ',
'IF :P0_ASSIG_STATUS_ID = 19358  THEN  -- status 16 ',
'   :APP_LTS_PAGE := 16; ',
'  ELSIF  ',
'  :P0_ASSIG_STATUS_ID = 48358  THEN  -- status 16 ',
'   :APP_LTS_PAGE := 17; ',
'  ELSIF v_maslul = ''M'' AND :P0_ASSIG_STATUS_ID not in (59358, 59359, 59360, 59361, 280)   THEN ',
'     :APP_LTS_PAGE := 18;',
'  ELSIF v_maslul_code <> 82 AND  :P0_ASSIG_STATUS_ID  in (59360,59361) THEN ',
'     :APP_LTS_PAGE := 18;',
'  ELSIF v_maslul_code = 82 AND  :P0_ASSIG_STATUS_ID  in (59360,59361) THEN ',
'     :APP_LTS_PAGE := 20;   ',
'  ELSIF v_maslul_code <> 14 AND  :P0_ASSIG_STATUS_ID  in (59358,59359) THEN ',
'     :APP_LTS_PAGE := 18;   ',
'  ELSIF v_maslul_code = 14 AND  :P0_ASSIG_STATUS_ID  in (59358,59359) THEN ',
'     :APP_LTS_PAGE := 21;      ',
'  ELSE ',
'   --  l_count := JAFI_LTS_APEX_UTILS.check_entry(upper(:P9999_USERNAME));',
'    :APP_LTS_PAGE := 1;',
' ',
'  END IF; ',
'',
'--------------------------',
'  ',
' begin ',
'  ',
'   select jafi_hr_pkg.get_phone( a.Ass_Attribute30,''W1'') menahelet_tik_phone, ',
'          a.Ass_Attribute30,',
'          JAFI_HR_PKG.get_person_heb_name2 (a.Ass_Attribute30) , ',
'          JAFI_HR_PKG.Get_Email_Address (a.Ass_Attribute30)',
'     into :P0_MENAHEL_TIK_PHONE, ',
'          :P0_MENAHEL_TIK_ID,',
'          :P0_MENAHEL_TIK_NAME,',
'          :P0_MENAHEL_TIK_EMAIL',
'       ',
'    from per_all_assignments_f a , ',
'         per_all_vacancies v',
'',
'    where a.person_id = :P0_PERSON_ID',
'    and v.vacancy_id = a.vacancy_id',
'    and v.attribute11 = ''Y''',
'    and v.attribute_category= ''LTS''',
'    and trunc (sysdate) between a.effective_start_date and a.effective_end_date;',
'  ',
'    exception',
'    when others then',
'    null;',
'   end;',
'  ',
'',
' if  :P0_EVENT_FLAG = 5 then',
'       select count(*)',
'     INTO :P0_SHIBUTZ_DOC',
'    from irc_documents IDO',
'    where ido.person_id = :P0_PERSON_ID',
'    and type = ''PLACEMENT'' ; ',
' end if;',
'  ',
'  ',
'   ',
' ',
'',
'  ',
'end;',
'',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3275764181468542682)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3275764547518542683)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3186215302838761129)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Session State '
,p_attribute_01=>'RESET_SESSION_STATE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2343890711482580932)
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
'     ',
'     IF :P0_INSTANCE in (''PROD'', ''JBI'') then  ',
'',
'       IF APEX_UTIL.HOST_URL like ''http://prodisn.jafi.org.il:%'' THEN ',
'           :PO_LOGIN_URL_OIC := ''https://oicp.jafi.org.il/ic/builder/rt/Jewish_agencyLTS_1_0/live/webApps/jewish_agencylts/''; ',
'        ELSE ',
'            :PO_LOGIN_URL_OIC := ''https://jafi-test783-ax1iipmjnp5w-am.integration.ocp.oraclecloud.com/ic/builder/rt/Jewish_agencyLTS_1_0/1.0/webApps/jewish_agency_lts/'' ;',
'        END IF; ',
'   ',
'   :PO_LOGIN_URL_OIC :=  ''https://oicp.jafi.org.il/ic/builder/rt/Jewish_agencyLTS_1_0/live/webApps/jewish_agencylts/''; ',
'   ',
'          --:LOGOUT_URL := :PO_LOGIN_URL_OIC ;',
'',
'          l_host := SYS.OWA_UTIL.GET_CGI_ENV(''QUERY_STRING'');',
'',
'',
'          l_token := substr(l_host, instr(l_host, '':'', -1, 1) + 1, length(l_host)); -- get token from URL ',
'          --l_token := OWA_UTIL.get_cgi_env(''LOGIN_TOKEN'') ;-- get token from REQUEST HEADER ',
'',
'        --  xx_my_utils.add_msg(''QUERY_STRING:  l_token - '' || l_token);',
'',
'',
'          IF l_token IS NULL THEN ',
'             :P0_USER_NAME := NULL;',
'             apex_util.redirect_url(p_url =>:PO_LOGIN_URL_OIC);',
'          ELSE ',
'',
'                     begin',
'                            l_get_valid_user := JAFI_APEX_SECURITY_UTILS.custom_user_name_by_token(l_token);',
'                            xx_my_utils.add_msg(''QUERY_STRING:  l_get_valid_user  '' || l_get_valid_user); ',
'',
'                             if l_get_valid_user IS NULL then',
'                                  l_check_auth := ''N'';',
'                                  :P0_USER_NAME := NULL;',
'                                  apex_util.redirect_url(p_url =>:PO_LOGIN_URL_OIC);',
'',
'                             else',
'                                  l_check_auth := ''Y'';',
'                                  :P0_USER_NAME  :=l_get_valid_user;',
'                              end if;',
'                      exception',
'                        when others then',
'                          l_check_auth := ''N'';',
'                          :P0_USER_NAME := NULL;',
'                          apex_util.redirect_url(p_url =>:PO_LOGIN_URL_OIC);',
'',
'                      end;',
'',
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
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2343890873042580933)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'TokenAuth_SetParams'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_err_mes varchar2(10000):='''';',
'v_status  varchar2(10000);',
'v_page varchar2(30);',
'l_flag varchar2(2);',
'l_count number;',
'v_step_count number  :=0;',
'v_maslul    varchar2(10); ',
'v_maslul_code number;',
'begin',
'',
':PO_WHATSAPP          :=''https://api.whatsapp.com/send?phone=972522450151'';',
':PO_FACEBOOK     := ''https://www.facebook.com/Hayechida'';',
':PO_INSTAG       := ''https://www.instagram.com/hayechida/?igshid=NTc4MTIwNjQ2YQ%3D%3D'';',
':PO_YAHIDA_MAIL  := ''mailto:shlichutunit@wzo.org.il'';',
'',
'',
' xx_my_utils.add_msg(''P0_USER_NAME  ''||:P0_USER_NAME);',
' ',
' ',
'       IF :P0_USER_NAME IS NOT NULL THEN  ',
'',
'        :P0_PERSON_ID         := JAFI_LTS_APEX_UTILS.jafi_get_person_id(:P0_USER_NAME);',
'        :PO_USER_FNAME        := JAFI_LTS_APEX_UTILS.jafi_get_person_name (:P0_USER_NAME);',
'        :P0_EVENT_FLAG        := NVL(JAFI_LTS_APEX_UTILS.jafi_get_event_flag(:P0_USER_NAME), 1); ',
'',
'            ------------------------------',
'      select CASE :P0_EVENT_FLAG',
'              WHEN ''1'' THEN ''LTSSW''',
'              WHEN ''2'' THEN  ''LTSPI''',
'              WHEN ''4'' THEN  ''LTSMMPI''',
'              WHEN ''8'' THEN  ''LTSAI'' ',
'              WHEN ''9'' THEN  ''LTSOM''',
'            END ',
'        into :P0_USER_STATUS      ',
'     from dual ; ',
'    -----------------------------  ',
'         begin',
'',
'           select  user_id ',
'           into :P0_USER_ID',
'           from fnd_user fu',
'           where upper(fu.user_name) = upper(:P0_USER_NAME);',
'',
'          exception',
'          when others then',
'               :P0_USER_ID := ''vitap@techunity.co.il'';',
'          end;',
'          ------------------------------',
'    ',
'         begin ',
'           select sug_sw,',
'                  assignment_status_type_id,',
'                  assignment_id,',
'                  vacancy,',
'                  maslul',
'             into :P0_SADNA_TYPE,',
'                  :P0_ASSIG_STATUS_ID,',
'                  :P0_ASSIGNMENT_ID,',
'                  v_maslul,',
'                  v_maslul_code',
'             from jafi_lts_events_v ',
'            where person_id  =:P0_PERSON_ID ; ',
'          exception',
'              when others then      ',
'                  --apex_util.redirect_url(p_url =>:PO_LOGIN_URL_OIC);',
'                    :APP_LTS_PAGE := 1;  -- chenged 11/03/2024 - request by chen ',
'           end ;',
'        -------------------',
'         begin',
'           select distinct (ASS_ATTRIBUTE23) maslul_type,',
'                  l.ATTRIBUTE2',
'            into :PO_MASLUL_TYPE,',
'                 :PO_SORT_BY',
'                from per_all_assignments_f tt,',
'                      per_all_vacancies pav,',
'                      fnd_common_lookups l',
'               where tt.person_id = :P0_PERSON_ID',
'                 and pav.vacancy_id= tt.vacancy_id',
'                 and pav.attribute11 = ''Y''',
'                 and pav.attribute_category = ''LTS''   ',
'                 and TRUNC (sysdate) between tt.effective_start_date and  tt.effective_end_date',
'                 and l.LOOKUP_TYPE = ''JAFI_HR_LTS_MASLUL_TYPES_PORT'' ',
'                 and ASS_ATTRIBUTE23 = l.LOOKUP_CODE;',
'         ',
'            exception',
'              when others then',
'              :PO_MASLUL_TYPE := ''9999'';',
'          end;',
'',
'           ------------------------------',
'',
'           begin',
'                select NVL(prs.flag_1_pass,''N''),',
'                       NVL(prs.flag_2_pass,''N''),',
'                       NVL(prs.flag_3_pass,''N''),',
'                       NVL(prs.flag_4_pass,''N'')',
'                into   :P0_STEP_1,',
'                       :P0_STEP_2,',
'                       :P0_STEP_3,',
'                       :P0_STEP_4',
'                from  jafi_apex_lts_progress prs',
'                where prs.person_id = :P0_PERSON_ID;',
'              exception',
'                when others then',
'                     null;',
'           end;',
'  ',
'          -----------------------------  ',
'           ',
'         BEGIN',
'',
'             IF :P0_STEP_1  = ''Y'' THEN ',
'                 v_step_count := v_step_count +1; ',
'             END IF;',
'             IF :P0_STEP_2  = ''Y'' THEN ',
'                 v_step_count := v_step_count +1; ',
'             END IF;    ',
'             IF :P0_STEP_3  = ''Y'' THEN ',
'                 v_step_count := v_step_count +1; ',
'             END IF;   ',
'             IF :P0_STEP_4  = ''Y'' THEN ',
'                 v_step_count := v_step_count +1; ',
'             END IF;    ',
'              ',
'              Select ',
'                Case     when v_step_count = 0 then  0',
'                         when v_step_count = 1 then  25',
'                         when v_step_count = 2 then  50',
'                         when v_step_count = 3 then  75',
'                         when v_step_count = 4 then  110',
'                         end ',
'                into :APP_LTS_PERCENT         ',
'                from  dual;',
'        END ;',
'',
'----------------------------  ',
'/* moved to prerender on page',
'   begin',
'      select max(document_id)',
'      into :P0_DOC',
'      from irc_documents',
'      where person_id = :P0_PERSON_ID',
'      and type = ''PHOTO'';',
'      ',
'      exception',
'      when others then',
'      null;',
'  end;',
'  */',
'        -------------------------  ',
'IF :P0_ASSIG_STATUS_ID = 19358  THEN  -- status 16 ',
'   :APP_LTS_PAGE := 16; ',
'  ELSIF  ',
'  :P0_ASSIG_STATUS_ID = 48358  THEN  -- status 16 ',
'   :APP_LTS_PAGE := 17; ',
'  ELSIF v_maslul = ''M'' AND :P0_ASSIG_STATUS_ID not in (59358, 59359, 59360, 59361, 280)   THEN ',
'     :APP_LTS_PAGE := 18;',
'  ELSIF v_maslul_code <> 82 AND  :P0_ASSIG_STATUS_ID  in (59360,59361) THEN ',
'     :APP_LTS_PAGE := 18;',
'  ELSIF v_maslul_code = 82 AND  :P0_ASSIG_STATUS_ID  in (59360,59361) THEN ',
'     :APP_LTS_PAGE := 20;   ',
'  ELSIF v_maslul_code <> 14 AND  :P0_ASSIG_STATUS_ID  in (59358,59359) THEN ',
'     :APP_LTS_PAGE := 18;   ',
'  ELSIF v_maslul_code = 14 AND  :P0_ASSIG_STATUS_ID  in (59358,59359) THEN ',
'     :APP_LTS_PAGE := 21;      ',
'  ELSE ',
'   --  l_count := JAFI_LTS_APEX_UTILS.check_entry(upper(:P9999_USERNAME));',
'    :APP_LTS_PAGE := 1;',
' ',
'  END IF; ',
'  ',
'  ',
' -- :P0_SHALOM_LINK := apex_util.prepare_url(''f?p=&APP_ID.:1:&APP_SESSION.:::::'');',
'  ',
'        --------------------------',
'          ',
'         begin ',
'          ',
'           select jafi_hr_pkg.get_phone( a.Ass_Attribute30,''W1'') menahelet_tik_phone, ',
'                  a.Ass_Attribute30,',
'                  JAFI_HR_PKG.get_person_heb_name2 (a.Ass_Attribute30) , ',
'                  JAFI_HR_PKG.Get_Email_Address (a.Ass_Attribute30)',
'             into :P0_MENAHEL_TIK_PHONE, ',
'                  :P0_MENAHEL_TIK_ID,',
'                  :P0_MENAHEL_TIK_NAME,',
'                  :P0_MENAHEL_TIK_EMAIL',
'               ',
'            from per_all_assignments_f a , ',
'                 per_all_vacancies v',
'',
'            where a.person_id = :P0_PERSON_ID',
'            and v.vacancy_id = a.vacancy_id',
'            and v.attribute11 = ''Y''',
'            and v.attribute_category= ''LTS''',
'            and trunc (sysdate) between a.effective_start_date and a.effective_end_date;',
'          ',
'            exception',
'            when others then',
'            null;',
'           end;',
'  ',
'',
'           if  :P0_EVENT_FLAG = 5 then',
'                 select count(*)',
'               INTO :P0_SHIBUTZ_DOC',
'              from irc_documents IDO',
'              where ido.person_id = :P0_PERSON_ID',
'              and type = ''PLACEMENT'' ; ',
'           end if;',
'                                                      ',
'                      wwv_flow_custom_auth_std.login(P_UNAME      => :P0_USER_NAME, --:P101_USERNAME,',
'                                                     P_PASSWORD   => ''123456'', --:P101_PASSWORD,',
'                                                     P_SESSION_ID => v(''APP_SESSION''),',
'                                                     P_FLOW_PAGE  => :APP_ID || '':'' || :APP_LTS_PAGE);     ',
'                                                     ',
'                             ',
'  ELSE',
'         apex_util.redirect_url(p_url =>:PO_LOGIN_URL_OIC);',
'  END IF;',
'  ',
'   exception when others then ',
'   ',
'   apex_util.redirect_url(p_url =>:PO_LOGIN_URL_OIC);',
'end;',
'',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':P0_INSTANCE in (''PROD'', ''JBI'')'
,p_process_when_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.component_end;
end;
/
