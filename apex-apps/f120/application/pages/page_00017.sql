prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
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
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(3275772552271542776)
,p_name=>'Maagar'
,p_alias=>'MAAGAR'
,p_step_title=>unistr('\05D0\05D6\05D5\05E8 \05D0\05D9\05E9\05D9 \05D4\05D9\05D7\05D9\05D3\05D4 \05DC\05E9\05DC\05D9\05D7\05D5\05EA ')
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>'&G_FONT.'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var savepos = localStorage.getItem("savepos");',
'function myfncReload(){',
'      apex.theme.openRegion(''MyAlertR'');',
'var dialog = apex.jQuery(''#MyAlertR'').closest(''.ui-dialog'');',
'  dialog.addClass(''logoutdialog'');',
' }'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.NoTitleColor{',
'    background-color:transparent;',
'}',
'',
'#BLUE_HEADER .t-Region-header {',
'      background-color: #398b94;',
'   ',
'}',
'.t-Body-contentInner {',
'    padding: 0px;',
'}',
'',
'.t-Cards--basic .t-Card-titleWrap {',
'    box-shadow: none;',
'}',
'body .ui-dialog .ui-dialog-titlebar {',
'    background-color: transparent;',
'    border-bottom: none;',
'}',
'',
'/*',
'.t-Footer {',
'     padding: 0px;',
'}',
'',
'.customFooter {',
'     padding: 0px;',
'}',
'*/',
'',
'',
'	.t-Body-content {',
'    min-height: auto;',
'}',
'',
'.footerlogos img:not(:last-child) {',
'    margin-left: 0px;',
'}',
'',
'/*',
'.t-Footer {',
'      display: none;',
'}',
'*/',
''))
,p_step_template=>wwv_flow_api.id(3267451177050446051)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KERENT'
,p_last_upd_yyyymmddhh24miss=>'20250331140456'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2978613689230957616)
,p_plug_name=>'LogOut'
,p_region_name=>'MyAlertR'
,p_region_css_classes=>'js-dialog-size300x220'
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-size480x320:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(3052159502813868459)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2978613603131957615)
,p_plug_name=>'<span></span>'
,p_parent_plug_id=>wwv_flow_api.id(2978613689230957616)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p style="text-align:center;"><img src="#APP_IMAGES#LogOutFace.png"><br>',
'<p style="text-align:center;color: #3a8b94;" > &P0_USER_NAME. </p>',
'      ',
'<p style="text-align:center;"> <a href="&PO_LOGIN_URL_OIC."><img src="#APP_IMAGES#log-out.png"> </a> </p>',
'  '))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2054390129080617104)
,p_plug_name=>'Custom Footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'REGION_POSITION_05'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="customFooter">',
'    <div class="container-inner">',
'        <div class="row">',
'            <div class="col col-6">',
'                <div class="footerlogos">',
'                    <img src="#APP_IMAGES#logo-1-1101.png"  width="223.47" height="52.88" alt="logo" >',
'          <img src="#APP_IMAGES#Line_Black.png"  style="margin-right:10px;" >  ',
'                    <img src="#APP_IMAGES#logo1101.png"  style="margin-right:15px;"   width="240.53" height="58" alt="logo">',
'                </div>',
'            </div>',
'            <div class="col col-6">',
'                <div class="socialIcons">',
'                    <a href="&PO_YAHIDA_MAIL." target="_blank" rel="noopener noreferrer"><img src="#APP_IMAGES#mail-icon.png" alt="mail"></a>',
'                    <a href="&PO_FACEBOOK." target="_blank" rel="noopener noreferrer"><img src="#APP_IMAGES#facebook-icon.png" alt="facebook"></a>',
'                    <a href="&PO_WHATSAPP." target="_blank" rel="noopener noreferrer"><img src="#APP_IMAGES#whatsapp-icon.png" alt="whatsapp"></a>',
'                    <a href="&PO_INSTAG." target="_blank" rel="noopener noreferrer"><img src="#APP_IMAGES#instagram-icon.png" alt="instagram"></a>',
'                </div>',
'            </div>',
'        </div>',
'    </div>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1596856031105428779)
,p_plug_name=>unistr('\05D4\05D9\05D9  &PO_USER_FNAME. , ')
,p_region_css_classes=>'pt-80 container-inner'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'contentandheadings'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="custom-ltr-rtl-content">',
unistr('<p>.\05EA\05D5\05D3\05D4 \05E2\05DC \05D4\05D2\05E9\05EA \05DE\05D5\05E2\05DE\05D3\05D5\05EA\05DA \05DC\05E9\05DC\05D9\05D7\05D5\05EA</p>'),
' ',
'',
unistr('<p>.\05D4\05E4\05E8\05D5\05E4\05D9\05DC \05E9\05DC\05DA \05E0\05DE\05E6\05D0 \05DE\05EA\05D0\05D9\05DD \05DC\05EA\05D7\05D9\05DC\05EA \05EA\05D4\05DC\05D9\05DA \05DE\05D9\05D5\05DF \05DC\05E9\05DC\05D9\05D7\05D5\05EA, \05E2\05DD \05D6\05D0\05EA \05D1\05E9\05DC\05D1 \05D4\05D6\05D4 \05DC\05D0 \05E0\05D5\05EA\05E8\05D5 \05EA\05E4\05E7\05D9\05D3\05D9\05DD \05D1\05E9\05DC\05D9\05D7\05D5\05EA '),
unistr('\05D4\05DE\05EA\05D0\05D9\05DE\05D9\05DD \05DC\05E4\05E8\05D5\05E4\05D9\05DC \05E9\05DC\05DA'),
'</p>',
'',
'<p>',
unistr('.\05D0\05E0\05D5 \05DE\05E2\05E8\05D9\05DB\05D9\05DD \05D0\05EA \05E8\05E6\05D5\05E0\05DA \05DC\05D4\05EA\05DE\05D9\05D9\05DF, \05D5\05E0\05E9\05DE\05D7 \05DC\05E4\05E0\05D5\05EA \05D0\05DC\05D9\05DA \05D1\05DE\05D9\05D3\05D4 \05D5\05D9\05D9\05E4\05EA\05D7\05D5 \05EA\05E4\05E7\05D9\05D3\05D9\05DD \05E8\05DC\05D5\05D5\05E0\05D8\05D9\05D9\05DD \05E2\05D1\05D5\05E8\05DA \05D1\05D4\05DE\05E9\05DA'),
'</p>',
'<p>',
unistr('.\05DB\05DE\05D5 \05DB\05DF, \05D1\05D0\05E4\05E9\05E8\05D5\05EA\05DA \05D2\05DD \05DC\05E4\05E0\05D5\05EA \05D0\05DC\05D9\05E0\05D5 \05DC\05D1\05D3\05D9\05E7\05EA \05EA\05E7\05E0\05D9\05DD \05D7\05D3\05E9\05D9\05DD</p>'),
'',
'',
'',
'',
unistr('<p>.\05DC\05DB\05DC \05E9\05D0\05DC\05D4 \05D6\05DE\05D9\05E0\05D9\05DD \05E2\05D1\05D5\05E8\05DA \05D1\05DB\05EA\05D5\05D1\05EA \05D4\05DE\05D9\05D9\05DC \05D5\05D1\05D5\05D5\05D8\05E1\05D0\05E4</p>'),
'',
unistr('<p>.\05E0\05D9\05EA\05DF \05DC\05E4\05E0\05D5\05EA \05D0\05DC\05D9\05E0\05D5</p>'),
'',
'<p><a href="&amp;PO_YAHIDA_MAIL." rel="noopener noreferrer" target="_blank"><img alt="mail" src="#APP_IMAGES#mail-icon.png" /></a> <img src="#APP_IMAGES#Line_Black.png" style="height:40px; margin:0px 10px" /> <a href="&amp;PO_WHATSAPP." rel="noopener'
||' noreferrer" target="_blank"><img alt="whatsapp" src="#APP_IMAGES#whatsapp-icon.png" /></a></p>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1202226824479395009)
,p_plug_name=>'MainContainer'
,p_region_css_classes=>'topslider-rs'
,p_region_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'<style>',
'     .headerTopLogosRow {',
'         background-color: #3a8b94;',
'     }',
'   ',
' </style>',
'<div class="headerTopLogosRow">',
'     <div class="container-inner">',
'          <div>',
'               <a href="javascript:myfncReload();">',
'                    <img src="#APP_IMAGES#profileLogout.png" class="log-out-icon">',
'               </a>',
'          </div>',
'     </div>',
'     <span>',
'          <a>',
'               <div>',
'                    <div class="app-logos">',
'                         <img src="#APP_IMAGES#TheJewishAgencyLogo.png" class="hide-mobile" width="130.83" height="31.11">',
'                         <img src="#APP_IMAGES#Line 1.png" class="hide-mobile" style="margin:0px 10px">',
'                         <img src="#APP_IMAGES#WordZionist.png" class="hide-mobile" width="139" height="31">',
'                    </div>',
'                    <img src="#APP_IMAGES#Upper_left_logo.png" width="198" height="100" class="main-logo">',
'               </div>',
'          </a>',
'     </span>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1912459345031175662)
,p_branch_name=>'BackTo2'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'BACK'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1912459713132175662)
,p_branch_name=>'DisplayMsgSuccess'
,p_branch_action=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:Y,::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1912458362454175661)
,p_name=>'OnClickBack'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#back'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1912458854002175661)
,p_event_id=>wwv_flow_api.id(1912458362454175661)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'BACK'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1912457886000175661)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'RISHUM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_ok varchar2(200):=''OK'';',
'begin',
':P17_OK :='''';',
'',
'',
'  v_ok := JAFI_IRC_SC_WORKSHOP_ENROL_PKG.cre_upd_enrollment(:P0_PERSON_ID,',
'                                                            :P17_EVENT_ID,',
'															''P'',',
'															:P17_COURSE_DATE,',
'															:P17_VACANCY_ID);',
'',
'',
'if v_ok <> ''OK''  then',
'   apex_error.add_error (',
unistr('    p_message          => ''\05EA\05E7\05DC\05D4 \05D9\05E9 \05DC\05E4\05E0\05D5\05EA \05DC\05D2\05D5\05E8\05DD \05D4\05DE\05D8\05E4\05DC''||'' ''||v_ok,'),
'    p_display_location => apex_error.c_inline_in_notification );',
'else',
'  :P17_OK := v_ok;',
'end if;',
'',
'/*',
'if 1=1 then',
'    apex_error.add_error (',
'    p_message          => ''Params''||'' person ''||:P0_PERSON_ID||'' event ''||:P17_EVENT_ID||'' course date ''||:P17_COURSE_DATE||'' vacancy''||:P17_VACANCY_ID,',
'    p_display_location => apex_error.c_inline_in_notification );',
'    end if;',
'    */',
'end; '))
,p_process_error_message=>unistr('\05EA\05E7\05DC\05D4 \05D9\05E9 \05DC\05E4\05E0\05D5\05EA \05DC\05D2\05D5\05E8\05DD \05D4\05DE\05D8\05E4\05DC')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
