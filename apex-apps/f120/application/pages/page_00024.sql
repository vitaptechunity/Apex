prompt --application/pages/page_00024
begin
--   Manifest
--     PAGE: 00024
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
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(3275772552271542776)
,p_name=>'Family Visas'
,p_alias=>'FAMILY-VISAS'
,p_step_title=>'Family Visas'
,p_welcome_text=>'&G_FONT.'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>'&G_FONT.'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var savepos = localStorage.getItem("savepos");',
'',
'function myfncReload(){',
'    apex.theme.openRegion(''MyAlertR'');',
'    var dialog = $(''#MyAlertR'').closest(''.ui-dialog'');',
'    dialog.addClass(''logoutdialog'');',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.addEventListener("DOMContentLoaded", function(event) { ',
'    var scrollpos = localStorage.getItem(''scrollpos'');',
'    if (scrollpos) ',
'        window.scrollTo(0, scrollpos);',
'});',
'',
'window.onbeforeunload = function(e) {',
'    localStorage.setItem(''scrollpos'', window.scrollY);',
'};',
'',
'$(''body'').on(''click'', function() {',
'    savepos = $(window).scrollTop();',
'    localStorage.setItem("savepos", savepos);',
'});',
'',
'$(document).ready(function() {',
'   if (savepos)',
'        $(window).scrollTop(savepos);',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.desktop-br {',
'    display: block;',
'}',
'',
'.mobile-br {',
'    display: none;',
'}',
'',
'.apex-item-text {',
'    background-color: white;',
'}',
'',
'.header-instructions {',
'    margin-bottom: 10px;',
'    font-size: 18px;',
'}',
'',
'.visas-col {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'}',
'',
'#cardsRegion {',
'    min-width: 950px;',
'}',
'',
'.visa-control .t-Form-itemWrapper {',
'    flex-direction: column-reverse;',
'}',
'',
'.visa-control .a-Form-error {',
'    color: red;',
'    font-size: 14px;',
'}',
'',
'.visa-item {',
'    display: flex;',
'    width: 100%;',
'    background-color: white;',
'    border-radius: 10px;',
'    margin-bottom: 10px;',
'}',
'',
'.visa-item label {',
'    font-size: 14px !important;',
'}',
'',
'.visa-item input,',
'.visa-item span {',
'    font-size: 16px !important;',
'    width: 100%;',
'}',
'',
'.visa-name,',
'.visa-email {',
'    width: 35%;',
'}',
'',
'.visa-national-id {',
'    width: 10%;',
'}',
'.visa-ds160 {',
'    width: 20%;',
'}',
'',
'.clickable {',
'    cursor: pointer;',
'}',
'',
'.visas-col-container {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'}',
'',
'',
'.header-title {',
'    height: 148px;',
'    background-color: #E7EDEF;',
'    align-items: center;',
'    justify-content: center;',
'    display: flex;',
'    font-weight: 700;',
'    font-size: 25px;',
'    line-height: 100%;',
'    letter-spacing: 0%;',
'    text-align: center;',
'    color: #4F8992;',
'}',
'',
'#mainHeader {',
'    min-height: 69px;',
'    background-color: #398b94;',
'}',
'',
'.t-Body-contentInner {',
'    padding: 0px;',
'}',
'',
'.headerTopLogosRow span a div {',
'    margin-top: 15px;',
'} ',
'',
'body .ui-dialog .ui-dialog-titlebar {',
'    background-color: transparent;',
'    border-bottom: none;',
'}',
'',
'.footerlogos img:not(:last-child) {',
'    margin-left: 0px;',
'}',
'',
'@media (max-width: 600px) {',
'    #cardsRegion .cards-container {',
'        flex-flow: column;   ',
'    }',
'    ',
'    #cardsRegion {',
'        padding-left: 15px;',
'        padding-right: 15px;',
'        margin-top: 10px !important;',
'    }',
'    ',
'    .visa-item {',
'        flex-flow: column;',
'        margin-bottom: 20px;',
'    }',
'    ',
'    .visa-control {',
'        width: 100%;',
'    }',
'    ',
'    .desktop-br {',
'        display: none;',
'    }',
'    ',
'    .mobile-br {',
'        display: block;',
'    }',
'    ',
'    .header-text {',
'        padding-right: 20px;',
'        padding-left: 20px;',
'    }',
'',
'    #cardsRegion {',
'        min-width: 100%;',
'    }',
'}'))
,p_step_template=>wwv_flow_api.id(3267451177050446051)
,p_page_css_classes=>'homepage custom-body'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'VITAP'
,p_last_upd_yyyymmddhh24miss=>'20260608093507'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2606050830555660225)
,p_plug_name=>'Back To Main Menu Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="width: 100%; display: flex; align-items: center; justify-content: center; margin-top: 40px;">',
unistr('    <span id="backToMainMenu" style="font-weight: 700; font-style: Bold; font-size: 20px; line-height: 100%; letter-spacing: 0%; text-align: center; color: #D02C68; cursor: pointer;">\05D7\05D6\05E8\05D4 \05DC\05EA\05E4\05E8\05D9\05D8 \05D4\05E8\05D0\05E9\05D9</a>'),
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2606050489460660221)
,p_plug_name=>'Header Text'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="width: 100%; display: flex; align-items: center; justify-content: center; margin-top: 40px;">',
'',
'<p class="header-text" style="font-weight: 700; font-size: 18px; line-height: 100%; letter-spacing: 0%; text-align: center; color: #4F8992;">',
unistr('\05E9\05DC\05D9\05D7.\05D4 \05D9\05E7\05E8.\05D4,<br/>'),
'<br/>',
unistr('\05DB\05D7\05DC\05E7 \05DE\05D4\05E0\05D7\05D9\05D5\05EA \05E9\05DC\05D8\05D5\05E0\05D5\05EA \05D0\05E8\05D4"\05D1, \05DC\05E6\05D5\05E8\05DA \05D4\05D5\05E6\05D0\05EA'),
unistr('\05D5\05D9\05D6\05D4, <br/>\05D0\05E0\05D5 \05E0\05D3\05E8\05E9\05D9\05DD \05DC\05D4\05D6\05D9\05DF \05E2\05D1\05D5\05E8 \05DB\05DC \05E9\05DC\05D9\05D7 \05D5\05DB\05DC \05D0\05D7\05D3'),
unistr('\05DE\05D1\05E0\05D9 \05DE\05E9\05E4\05D7\05EA\05D5 <br/>\05D4\05D9\05D5\05E6\05D0\05D9\05DD \05D0\05D9\05EA\05D5 \05DC\05E9\05DC\05D9\05D7\05D5\05EA \05DB\05EA\05D5\05D1\05EA \05DE\05D9\05D9\05DC \05E9\05D5\05E0\05D4.'),
'<br/>',
unistr('\05E0\05D5\05D3\05D4 \05DC\05DB\05DD \05D0\05DD \05EA\05D5\05DB\05DC\05D5 \05DC\05D4\05DB\05E0\05D9\05E1 \05E2\05D1\05D5\05E8 \05DB\05DC \05D1\05DF \05DE\05E9\05E4\05D7\05D4<br/>'),
unistr('\05DB\05EA\05D5\05D1\05EA \05DE\05D9\05D9\05DC (\05D0\05E0\05D5 \05DE\05D5\05D3\05E2\05D9\05DD \05DB\05D9 \05D7\05DC\05E7 \05DE\05D4\05E0\05DC\05D5\05D5\05D9\05DD \05D4\05D9\05E0\05DD'),
unistr('\05D9\05DC\05D3\05D9\05DD \05DC\05DC\05D0 \05DB\05EA\05D5\05D1\05EA \05DE\05D9\05D9\05DC, <br/>\05D9\05E9 \05DC\05E4\05EA\05D5\05D7'),
unistr('\05E2\05D1\05D5\05E8\05DD \05DB\05EA\05D5\05D1\05EA \05DE\05D9\05D9\05DC \05D9\05D9\05E2\05D5\05D3\05D9\05EA \05DC\05E6\05D5\05E8\05DA \05D6\05D4).<br/>'),
'<br/>',
unistr('\05D1\05E0\05D5\05E1\05E3 \05E2\05DC \05DB\05DA, \05D9\05E9 \05DC\05D4\05D6\05D9\05DF \05E2\05D1\05D5\05E8 \05DB\05DC \05D0\05D7\05D3 \05DE\05D1\05E0\05D9<br/>'),
unistr('\05D4\05DE\05E9\05E4\05D7\05D4 \05D0\05EA \05DE\05E1\05E4\05E8 \05D4- DS-160 \05E9\05DC\05D5.<br/>'),
unistr('\05D0\05EA \05DE\05E1\05E4\05E8 \05D4 DS-160 \05E7\05D9\05D1\05DC\05EA\05DD \05DE\05D9\05D3 \05DB\05E9\05D4\05EA\05D7\05DC\05EA\05DD'),
unistr('\05DC\05DE\05DC\05D0 \05D0\05EA \05D8\05E4\05E1\05D9 \05D4\05D1\05E7\05E9\05D4 \05DC\05D5\05D9\05D6\05D4,<br/> \05D5\05DB\05DF \05D4\05D5\05D0 \05E0\05DE\05E6\05D0 \05D2\05DD'),
unistr('\05D1 confirmation page \05D1\05E1\05D5\05E3 \05EA\05D4\05DC\05D9\05DA \05DE\05D9\05DC\05D5\05D9<br/>'),
unistr('\05D4\05D1\05E7\05E9\05D4 \05DC\05D5\05D9\05D6\05D4 (\05D6\05D4 \05DE\05E1\05E4\05E8 \05E9\05DE\05EA\05D7\05D9\05DC \05D1-AA00).<br/>'),
'<br/>',
unistr('\05D1\05DB\05DC \05E9\05D0\05DC\05D4 \05E0\05D9\05EA\05DF \05DC\05E4\05E0\05D5\05EA \05D0\05DC \05DE\05E0\05D4\05DC\05EA \05D4\05EA\05D9\05E7 \05E9\05DC\05DA.<br/>'),
'<br/>',
unistr('\05D1\05D4\05E6\05DC\05D7\05D4!'),
'</p>',
'',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1925957129839378624)
,p_plug_name=>'Header Title'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="header-title">',
unistr('\05E4\05D5\05E8\05D8\05DC \05DE\05D5\05E2\05DE\05D3\05D9\05DD - \05E9\05DC\05D9\05D7\05D5\05EA \05D0\05E8\05D5\05DB\05D4'),
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1925956989924378623)
,p_plug_name=>'Visas'
,p_region_name=>'cardsRegion'
,p_region_template_options=>'#DEFAULT#:margin-top-lg'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_grid_column_css_classes=>'visas-col'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<div id="visas-container"></div>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="header-instructions">',
unistr('    \05D0\05E0\05D0 \05DE\05DC\05D0\05D5 \05D0\05EA \05D4\05E4\05E8\05D8\05D9\05DD \05D4\05D1\05D0\05D9\05DD:'),
'</div>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1702031928895531129)
,p_plug_name=>'Logout Dialog'
,p_region_name=>'MyAlertR'
,p_region_css_classes=>'js-dialog-size343x250'
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-size480x320:margin-top-none'
,p_plug_template=>wwv_flow_api.id(3052159502813868459)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1702032597126531136)
,p_plug_name=>'<span></span>'
,p_parent_plug_id=>wwv_flow_api.id(1702031928895531129)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p class="logoutdialog-img"><img src="#APP_IMAGES#LogOutFace.png">',
'<p class="logoutdialog-user"> &P0_USER_NAME. </p>',
'<p class="logoutdialog-link"> <a href="https://oicp.jafi.org.il/ic/builder/rt/Jewish_agencyLTS_1_0/live/webApps/jewish_agencylts/"><img src="#APP_IMAGES#log-out.png"></a></p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1422492935129685376)
,p_plug_name=>'Custom Footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>20
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
 p_id=>wwv_flow_api.id(1321357996859573194)
,p_plug_name=>'Header'
,p_region_name=>'mainHeader'
,p_region_css_classes=>'topslider-rs'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2616416596318634505)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1925956989924378623)
,p_button_name=>'Submit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3275607763891615338)
,p_button_image_alt=>unistr('\05E9\05DE\05D5\05E8 \05E4\05E8\05D8\05D9\05DD')
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2606050103930660217)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(2606050830555660225)
,p_button_name=>'BackToMainMenuBtn'
,p_button_static_id=>'backToMainMenuBtn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3275795122090542834)
,p_button_image_alt=>'Backtomainmenubtn'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_button_cattributes=>'style="display: none;"'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(2606050605012660222)
,p_branch_name=>'BackToMainMenu'
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'BACK_TO_MENU'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2616415465762634494)
,p_name=>'P24_MAIN_PERSON_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1925956989924378623)
,p_use_cache_before_default=>'NO'
,p_source=>':P0_PERSON_ID'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2616414763943634487)
,p_name=>'P24_MAIN_ASSIGNMENT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1925956989924378623)
,p_use_cache_before_default=>'NO'
,p_source=>':P0_ASSIGNMENT_ID'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2606051439145660231)
,p_name=>'P24_VISA_REQUESTS_COUNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1925956989924378623)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2616416315820634502)
,p_name=>'Set GUI For Edit'
,p_event_sequence=>10
,p_condition_element=>'P24_VISA_REQUESTS_COUNT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2616415555029634495)
,p_event_id=>wwv_flow_api.id(2616416315820634502)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''.visas-col'').parent().addClass(''visas-col-container'');',
'',
'//Initialize Data',
'apex.server.process("GetFamilyMembers", {}, {',
'    dataType: "json",',
'    success: function(pData) {',
'        var familyMembers = pData.items;',
'        debugger;',
'        if (!familyMembers || familyMembers.length == 0) return;',
'        ',
'        for (var count = 1; count <= familyMembers.length; count++) {',
'            var fm = familyMembers[count - 1];',
'            var html = ',
'                ''<div class="visa-item" data-person-id="'' + fm.person_id + ''"><div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel apex-item-wrapper apex-item-wrapper--display-only visa-control visa-name"><div class="t-Form-labelCon'
||'tainer">'' +',
unistr('                ''<label for="visa-name-'' + count + ''" class="t-Form-label">\05E9\05DD \05DE\05DC\05D0</label></div><div class="t-Form-inputContainer"><div class="t-Form-itemWrapper"><span id="visa-name-'' + count + ''" class="display_only apex-item-display-only">'' +'),
'                fm.full_name + ''</span></div></div></div>'' +',
'',
'                ''<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel apex-item-wrapper apex-item-wrapper--display-only visa-control visa-national-id"><div class="t-Form-labelContainer">'' +',
unistr('                ''<label for="visa-national-id-'' + count + ''" class="t-Form-label">\05EA\05E2\05D5\05D3\05EA \05D6\05D4\05D5\05EA</label></div><div class="t-Form-inputContainer"><div class="t-Form-itemWrapper"><span id="visa-national-id-'' + count + ''" class="display_only apex-item-displ')
||'ay-only">'' +',
'                fm.national_id + ''</span></div></div></div>'' +',
'',
'                ''<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked is-required apex-item-wrapper apex-item-wrapper--text-field visa-control visa-email js-show-label"><div class="t-Form-labelContainer">'' +',
unistr('                ''<label for="visa-email-'' + count + ''" class="t-Form-label">\05DB\05EA\05D5\05D1\05EA \05D3\05D5\05D0"\05DC <span class="u-VisuallyHidden">(\05E9\05D3\05D4 \05D7\05D5\05D1\05D4)</span></label></div><div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">'' +'),
'                ''<input type="text" id="visa-email-'' + count + ''" name="visa-email-'' + count + ''" class="text_field apex-item-text" value="'' + (fm.email_address ? fm.email_address : '''') + ''" size="30" maxlength=""/><span data-input-id="visa-email-'' +'
||' count + ''" class="a-Form-error"/></div></div></div>'' +',
'',
'                ''<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked is-required apex-item-wrapper apex-item-wrapper--text-field visa-control visa-ds160 js-show-label"><div class="t-Form-labelContainer">'' +',
unistr('                ''<label for="visa-ds160-'' + count + ''" class="t-Form-label">DS-160<span class="u-VisuallyHidden">(\05E9\05D3\05D4 \05D7\05D5\05D1\05D4)</span></label></div><div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">'' +'),
'                ''<input type="text" id="visa-ds160-'' + count + ''" name="visa-ds160-'' + count + ''" class="text_field apex-item-text" value="" maxlength="10" size="10" maxlength=""/><span data-input-id="visa-ds160-'' + count + ''" class="a-Form-error"/><'
||'/div></div></div></div>'';',
'            var existingHtml = $(''#visas-container'').html();',
'            $(''#visas-container'').html(existingHtml + html);',
'        }',
'    },',
'    error: function(e) {',
'        alert(''Get Family Members process error'');',
'    }',
'});'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2606051378784660230)
,p_name=>'Set GUI For Display'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_when_cond=>'P24_VISA_REQUESTS_COUNT'
,p_display_when_cond2=>'0'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2606051287765660229)
,p_event_id=>wwv_flow_api.id(2606051378784660230)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''.visas-col'').parent().addClass(''visas-col-container'');',
unistr('$(''.header-instructions'').text($v(''P24_VISA_REQUESTS_COUNT'') == ''1'' ? ''\05D4\05D5\05D2\05E9\05D4 \05D1\05E7\05E9\05D4 \05D0\05D7\05EA:'' : ''\05D4\05D5\05D2\05E9\05D5 '' + $v(''P24_VISA_REQUESTS_COUNT'') + '' \05D1\05E7\05E9\05D5\05EA:'');'),
'',
'//Initialize Data',
'apex.server.process("GetVisaRequests", {}, {',
'    dataType: "json",',
'    success: function(pData) {',
'        var familyMembers = pData.items;',
'        if (!familyMembers || familyMembers.length == 0) return;',
'        ',
'        for (var count = 1; count <= familyMembers.length; count++) {',
'            var fm = familyMembers[count - 1];',
'            var html = ',
'                ''<div class="visa-item" data-person-id="'' + fm.person_id + ''"><div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel apex-item-wrapper apex-item-wrapper--display-only visa-control visa-name"><div class="t-Form-labelCon'
||'tainer">'' +',
unistr('                ''<label for="visa-name-'' + count + ''" class="t-Form-label">\05E9\05DD \05DE\05DC\05D0</label></div><div class="t-Form-inputContainer"><div class="t-Form-itemWrapper"><span id="visa-name-'' + count + ''" class="display_only apex-item-display-only">'' +'),
'                fm.full_name + ''</span></div></div></div>'' +',
'',
'                ''<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel apex-item-wrapper apex-item-wrapper--display-only visa-control visa-national-id"><div class="t-Form-labelContainer">'' +',
unistr('                ''<label for="visa-national-id-'' + count + ''" class="t-Form-label">\05EA\05E2\05D5\05D3\05EA \05D6\05D4\05D5\05EA</label></div><div class="t-Form-inputContainer"><div class="t-Form-itemWrapper"><span id="visa-national-id-'' + count + ''" class="display_only apex-item-displ')
||'ay-only">'' +',
'                fm.national_id + ''</span></div></div></div>'' +',
'                ',
'                ''<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel apex-item-wrapper apex-item-wrapper--display-only visa-control visa-email"><div class="t-Form-labelContainer">'' +',
unistr('                ''<label for="visa-email-'' + count + ''" class="t-Form-label">\05DB\05EA\05D5\05D1\05EA \05D3\05D5\05D0"\05DC</label></div><div class="t-Form-inputContainer"><div class="t-Form-itemWrapper"><span id="visa-email-'' + count + ''" class="display_only apex-item-display-only">'' ')
||'+',
'                fm.email_address + ''</span></div></div></div>'' +',
'                ',
'                ''<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel apex-item-wrapper apex-item-wrapper--display-only visa-control visa-ds160"><div class="t-Form-labelContainer">'' +',
'                ''<label for="visa-ds160-'' + count + ''" class="t-Form-label">DS-160</label></div><div class="t-Form-inputContainer"><div class="t-Form-itemWrapper"><span id="visa-ds160-'' + count + ''" class="display_only apex-item-display-only">'' +',
'                fm.ds160 + ''</span></div></div></div>'';',
'            ',
'            var existingHtml = $(''#visas-container'').html();',
'            $(''#visas-container'').html(existingHtml + html);',
'        }',
'    },',
'    error: function(e) {',
'        alert(''Get Family Members process error'');',
'    }',
'});'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2606051093570660227)
,p_event_id=>wwv_flow_api.id(2606051378784660230)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(2616416596318634505)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2616415422999634493)
,p_name=>'Submit Click'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(2616416596318634505)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2616415300806634492)
,p_event_id=>wwv_flow_api.id(2616415422999634493)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var emailRegex = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|.(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;',
'var alphaNumericRegex = /^[A-Za-z0-9]+$/i;',
'var isValid = true;',
'var firstInvalidElement = null;',
'',
'$(''.visa-control input'').each(function(index, element) {',
'    var validationMessage = '''';',
'    var value = $(element).val();',
'    var isEmail = $(element).parents(''.visa-control'').hasClass(''visa-email'');',
'    var isDS160 = $(element).parents(''.visa-control'').hasClass(''visa-ds160'');',
'    ',
'    if (value == '''') {',
'        isValid = false;',
unistr('        validationMessage = ''\05E9\05D3\05D4 \05D7\05D5\05D1\05D4'';'),
'    }',
'    else if (isEmail === true && !emailRegex.test(value)) {',
'        isValid = false;',
unistr('        validationMessage = ''\05DB\05EA\05D5\05D1\05EA \05D3\05D5\05D0"\05DC \05DC\05D0 \05EA\05E7\05D9\05E0\05D4'';'),
'    }',
'    else if (isDS160 === true && !value.startsWith(''AA00'')) {',
'        isValid = false;',
unistr('        validationMessage = ''\05D4\05E2\05E8\05DA \05D7\05D9\05D9\05D1 \05DC\05D4\05EA\05D7\05D9\05DC \05E2\05DD AA00'';'),
'    }',
'    else if (isDS160 === true && value.length != 10) {',
'        isValid = false;',
unistr('        validationMessage = ''\05D4\05E2\05E8\05DA \05D7\05D9\05D9\05D1 \05D0\05D5\05E8\05DA \05E9\05DC 10 \05EA\05D5\05D5\05D9\05DD'';'),
'    }',
'    else if (isDS160 === true && !alphaNumericRegex.test(value)) {',
'        isValid = false;',
unistr('        validationMessage = ''\05E0\05D9\05EA\05DF \05DC\05D4\05D6\05D9\05DF \05D0\05D5\05EA\05D9\05D5\05EA \05D5\05DE\05E1\05E4\05E8\05D9\05DD \05D1\05DC\05D1\05D3'';'),
'    }',
'    $(''span[data-input-id="'' + element.id + ''"].a-Form-error'').text(validationMessage);',
'    if (isValid === false && firstInvalidElement == null) firstInvalidElement = element;        ',
'});',
'',
'if (firstInvalidElement != null) {',
'    $(firstInvalidElement).focus();',
'}',
'',
'sessionStorage.setItem(''visasFormIsValid'', isValid);'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2616415198231634491)
,p_event_id=>wwv_flow_api.id(2616415422999634493)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var isValid = sessionStorage.getItem(''visasFormIsValid'') == ''true'';',
'if (isValid === true) {',
'    var visasObj = { ''visas'': [] };',
'    ',
'    $(''.visa-item'').each(function(index, element) {',
'        var visaItem = {',
'            ''personId'': $(element).data(''person-id''),',
'            ''fullName'': $(element).find(''.visa-name span'').text(),',
'            ''nationalId'': $(element).find(''.visa-national-id span'').text(),',
'            ''email'': $(element).find(''.visa-email input'').val(),',
'            ''ds160'': $(element).find(''.visa-ds160 input'').val()',
'        };',
'        visasObj.visas.push(visaItem);',
'    });',
'    ',
'    apex.server.process("SaveVisas", { p_clob_01: JSON.stringify(visasObj) }, {',
'    dataType: "json",',
'    success: function(pData) {',
'        window.location.reload();',
'    },',
'    error: function(e) {',
'        alert(''ERROR!\nStatus: '' + e.status + ''\nStatus Text: '' + e.statusText + ''\nReady State: '' + e.readyState + ''\nResponse Text: '' + e.responseText);',
'    }});',
'}',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2606050793240660224)
,p_name=>'Back To Main Menu'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#backToMainMenu'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2606049964448660216)
,p_event_id=>wwv_flow_api.id(2606050793240660224)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#backToMainMenuBtn'').click();'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2606051614688660232)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Existing Visa Requests Count'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*) into :P24_VISA_REQUESTS_COUNT from per_assignment_extra_info',
'where assignment_id = :P0_ASSIGNMENT_ID and information_type = ''JAFI_LTS_ACCOMPANIES_DS'';'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2616415721145634496)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetFamilyMembers'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.OPEN_ARRAY(''items'');',
'    ',
'    FOR r IN (',
'        select ppx.person_id,',
'       ppx.full_name,',
'       ppx.national_identifier,',
'       '''' email_address',
'  from per_people_x ppx',
' ',
'where ppx.person_id = :P0_PERSON_ID',
'and not exists (select 1 from per_people_extra_info pei',
'                where pei.information_type = ''JAFI_HR_PASSPORT''',
'                AND PEI.PERSON_ID = PPX.PERSON_ID',
'                and pei.pei_information5 =''US'')',
' ',
'union',
' ',
'select ppx1.person_id,',
'       ppx1.full_name,',
'       ppx1.NATIONAL_IDENTIFIER,',
'       '''' email_address',
'  from per_people_x              ppx,',
'       per_assignments_x         pax,',
'       per_assignment_extra_info paei,',
'       per_people_x              ppx1',
' ',
' ',
'where ppx.PERSON_ID = pax.PERSON_ID',
'   and pax.ASSIGNMENT_ID = paei.assignment_id',
'   and ppx1.person_id = paei.aei_information3',
' ',
'   and paei.information_type = ''JAFI_EMISSARY_ACCOMPANYING''',
'   and ppx.PERSON_ID = :P0_PERSON_ID',
'   and not exists (select 1 from   per_contact_relationships pcr,',
'       per_contact_extra_info_f pce',
'       where   pcr.contact_person_id = ppx1.PERSON_ID',
'   and pcr.contact_relationship_id = pce.contact_relationship_id',
'   and pce.information_type = ''JAFI_HR_CONTACT_PASSPORT''',
'   and pce.cei_information5 =''US'')',
'    )',
'    LOOP',
'        APEX_JSON.OPEN_OBJECT;',
'        APEX_JSON.WRITE(''person_id'', r.person_id);',
'        APEX_JSON.WRITE(''national_id'', r.NATIONAL_IDENTIFIER);',
'        APEX_JSON.WRITE(''full_name'', r.full_name);',
'        APEX_JSON.WRITE(''email_address'', r.email_address);',
'        APEX_JSON.WRITE(''ds160'', '''');',
'        APEX_JSON.CLOSE_OBJECT;',
'    END LOOP;',
'    ',
'    APEX_JSON.CLOSE_ARRAY;',
'    APEX_JSON.CLOSE_OBJECT;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>120
,p_default_id_offset=>3303201628629764337
,p_default_owner=>'APPS'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2606051142062660228)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetVisaRequests'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.OPEN_ARRAY(''items'');',
'    ',
'    FOR r IN (',
'        select AEI_INFORMATION1 person_id,	',
'               AEI_INFORMATION2 full_name,	',
'               AEI_INFORMATION3 national_id,	',
'               AEI_INFORMATION4 email_address,	',
'               AEI_INFORMATION5 ds160',
'        from per_assignment_extra_info',
'        where assignment_id = :P0_ASSIGNMENT_ID and information_type = ''JAFI_LTS_ACCOMPANIES_DS''',
'        order by ASSIGNMENT_EXTRA_INFO_ID ',
'    )',
'    LOOP',
'        APEX_JSON.OPEN_OBJECT;',
'        APEX_JSON.WRITE(''person_id'', r.person_id);',
'        APEX_JSON.WRITE(''national_id'', r.national_id);',
'        APEX_JSON.WRITE(''full_name'', r.full_name);',
'        APEX_JSON.WRITE(''email_address'', r.email_address);',
'        APEX_JSON.WRITE(''ds160'', r.ds160);',
'        APEX_JSON.CLOSE_OBJECT;',
'    END LOOP;',
'    ',
'    APEX_JSON.CLOSE_ARRAY;',
'    APEX_JSON.CLOSE_OBJECT;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2606051745004660234)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SaveVisas'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    visaRequests apex_json.t_values;',
'    visasCount   number(10);',
'    personId     varchar2(100);',
'    fullName     varchar2(100);',
'    nationalId   varchar2(100);',
'    email        varchar2(100);',
'    ds160        varchar2(100);',
'    p_assignment_extra_info_id number;',
'    p_object_version_number number;',
'begin',
'    APEX_JSON.parse(visaRequests, APEX_APPLICATION.g_clob_01);',
'    visasCount := apex_json.get_count(p_path => ''visas'', p_values => visaRequests);',
'    ',
'    FOR i IN 1 .. visasCount LOOP',
'    ',
'        personId := apex_json.get_varchar2(p_values => visaRequests, p_path => ''visas[%d].personId'', p0 => i);',
'        fullName := apex_json.get_varchar2(p_values => visaRequests, p_path => ''visas[%d].fullName'', p0 => i);',
'        nationalId := apex_json.get_varchar2(p_values => visaRequests, p_path => ''visas[%d].nationalId'', p0 => i);',
'        email := apex_json.get_varchar2(p_values => visaRequests, p_path => ''visas[%d].email'', p0 => i);',
'        ds160 := apex_json.get_varchar2(p_values => visaRequests, p_path => ''visas[%d].ds160'', p0 => i);',
'        ',
'        hr_assignment_extra_info_api.create_assignment_extra_info(p_assignment_id            => :P0_ASSIGNMENT_ID,',
'                                                                  p_information_type         => ''JAFI_LTS_ACCOMPANIES_DS'',',
'                                                                  p_aei_information_category => ''JAFI_LTS_ACCOMPANIES_DS'',',
'                                                                  p_aei_information1         => personId,',
'                                                                  p_aei_information2         => fullName,',
'                                                                  p_aei_information3         => nationalId,',
'                                                                  p_aei_information4         => email,',
'                                                                  p_aei_information5         => ds160,',
'                                                                  p_assignment_extra_info_id => p_assignment_extra_info_id,',
'                                                                  p_object_version_number    => p_object_version_number);',
'                                                                  ',
'    END LOOP;',
'    ',
'    APEX_JSON.open_object;',
'    APEX_JSON.write(''status'', ''success'');',
'    APEX_JSON.write(''message'', ''Visa request inserted successfully'');',
'    APEX_JSON.close_object;',
'',
'    EXCEPTION WHEN OTHERS THEN',
'        APEX_JSON.open_object;',
'        APEX_JSON.write(''status'', ''error'');',
'        APEX_JSON.write(''message'', SQLCODE || '' - '' || SQLERRM);',
'        APEX_JSON.close_object;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
