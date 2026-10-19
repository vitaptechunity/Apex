prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'Thank You Page'
,p_alias=>'THANK-YOU-PAGE'
,p_step_title=>'Thank You Page'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.home-link {',
'    display: block !important;',
'}',
'',
'.t-Body-contentInner {',
'    padding-top: 0;',
'}',
'',
'.t-Region-bodyWrap {',
'    height: 549px;',
'}',
'',
'.t-Region-body {',
'    min-height: 560px !important;',
'}',
'',
'.rf-thank-image {',
'    display: flex;',
'    justify-content: center;',
'    margin-block: 50px 60px;',
'}',
'',
'.rf-thank-message {',
'    font-family: ''Roboto'';',
'    font-size: 20px;',
'    font-weight: 500;',
'    line-height: 25px;',
'    text-align: center;',
'    color:   #172B54;',
'}',
'',
'.rf-thank-info {',
'    font-family: ''Roboto'';',
'    font-size: 16px;',
'    font-weight: 400;',
'    line-height: 20px;',
'    text-align: center;',
'    color:   #172B54;',
'}',
'',
'#thank-you-container table[role="presentation"] {',
'    position: absolute;',
'    bottom: 20px;',
'    left: 0;',
'}',
'',
'#thank-you-container table[role="presentation"] tr {',
'    display: flex;',
'    justify-content: center;',
'}',
'',
'.mobile-br {',
'    display: none;',
'}',
'',
'',
'',
'@media (max-width: 575px), @media (max-width: 640px) {',
'    .mobile-br {',
'        display: block;',
'    }',
'    ',
'    .desktop-br {',
'        display: none;',
'    }',
'}',
''))
,p_step_template=>wwv_flow_api.id(29244342218644)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DRORA'
,p_last_upd_yyyymmddhh24miss=>'20250827101028'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(580872959616052161)
,p_plug_name=>'<!-- FinishPage-->'
,p_region_name=>'thank-you-container'
,p_region_css_classes=>'standard-rounded-rg'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:margin-top-lg'
,p_plug_template=>wwv_flow_api.id(2889647945233431)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div> ',
'',
'<div class="rf-thank-image"><img src="#APP_IMAGES#FinishPage.svg"></div>',
'<p class="rf-thank-message">',
'  Thank you! <br>',
'   Your form has been <br class="mobile-br">successfully submitted.',
'   <br><br>',
'</p>',
'',
'<p class="rf-thank-info">',
'',
'You can update the form <br class="mobile-br">until October 31st.',
'<br><br>',
'During November, we will be in <br class="mobile-br">touch with you ',
'<br class="desktop-br">',
'regarding <br class="mobile-br">the next steps.',
'',
'</p>',
'</div> ',
'',
'',
'',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5257676995753882997)
,p_plug_name=>'Title'
,p_region_css_classes=>'bigger-title-page1'
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(1491988443724117)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SHSH Program - <br class="mobile-br">Request form',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46116593969095431)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(580872959616052161)
,p_button_name=>'BACK_TO_HOME'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back to homepage'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(46102884827625287)
,p_branch_name=>'Go To Page &P8_PAGE_REDIRECT.'
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46102112876625249)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UpdateType'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'p_status varchar2(200):='''';',
'v_org_info_id number;',
'l_ovn  number;',
'',
'begin',
'--XX_MY_UTILS.add_msg(''KEREN  :P71_INTERVIEWER_ISR''|| :P71_INTERVIEWER_ISR);  ',
'',
'Select t.org_information_id,',
'       t.object_version_number',
'into v_org_info_id,',
'     l_ovn',
'  From Hr_Organization_Information_v t',
' Where t.Org_Information_Context = ''JAFI_SC_GENERAL''',
'   And t.organization_id = :P0_ORG_ID;',
'     ',
'     fnd_global.APPS_INITIALIZE(:P0_USER_ID,60608,800);',
'     ',
'     BEGIN',
'             hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                                       ,p_object_version_number => l_ovn',
'                                                       ,p_org_info_type_code  =>  ''JAFI_SC_GENERAL''',
'                                                       ,p_org_information_id  => v_org_info_id',
'                                                       ,p_org_information3    => :P11_INT_TYPE --''In Israel''--p_interview_type',
'',
'                                                       );',
'                                       ',
'     EXCEPTION when others then                              ',
'        apex_error.add_error (',
'              p_message          => ''Failed to update =>''||p_status,',
'              p_display_location => apex_error.c_inline_in_notification );',
'     END;',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46102542554625283)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'ClearSession'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
