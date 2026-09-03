prompt --application/pages/page_00023
begin
--   Manifest
--     PAGE: 00023
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
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(3275772552271542776)
,p_name=>'Flights and Visas'
,p_alias=>'FLIGHTS-AND-VISAS'
,p_step_title=>'Flights and Visas'
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
'.clickable {',
'    cursor: pointer;',
'}',
'',
'#cardsRegion .cards-container {',
'    display: flex;',
'    justify-content: center;',
'    align-items: center;',
'    gap: 30px;',
'    padding: 60px;',
'}',
'',
'#cardsRegion .card {',
'    width: 231px;',
'    height: 216px;',
'    border-radius: 20px;',
'    background-color: #FFFFFF;',
'    box-shadow: 0px 4px 35px 0px #172B541A;',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    flex-flow: column;',
'    gap: 30px;',
'}',
'',
'#cardsRegion .card.clickable:active {',
'    border: 1px solid rgba(79, 137, 146, .5); ',
'}',
'',
'#cardsRegion .card-title {',
'    font-weight: 700;',
'    font-size: 16px;',
'    line-height: 20px;',
'    letter-spacing: 0%;',
'    text-align: center;',
'    color: #A3A3A3;',
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
'}'))
,p_step_template=>wwv_flow_api.id(3267451177050446051)
,p_page_css_classes=>'homepage custom-body'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DRORA'
,p_last_upd_yyyymmddhh24miss=>'20260512114329'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2616417684960634516)
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
 p_id=>wwv_flow_api.id(2616417545045634515)
,p_plug_name=>'Cards'
,p_region_name=>'cardsRegion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="cards-container">',
'    <div id="visasCard" class="card">',
'        <img class="card-image" src="#APP_IMAGES#visa-disabled.svg" />',
unistr('        <div class="card-title">\05D5\05D9\05D6\05D5\05EA</div>'),
'    </div>',
'    <div id="flightsCard" class="card">',
'        <img class="card-image" src="#APP_IMAGES#flights-disabled.svg" />',
unistr('        <div class="card-title">\05D8\05D9\05E1\05D5\05EA</div>'),
'    </div>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2392492484016787021)
,p_plug_name=>'Logout Dialog'
,p_region_name=>'MyAlertR'
,p_region_css_classes=>'js-dialog-size343x250'
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-size480x320:margin-top-none'
,p_plug_template=>wwv_flow_api.id(3052159502813868459)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2392493152247787028)
,p_plug_name=>'<span></span>'
,p_parent_plug_id=>wwv_flow_api.id(2392492484016787021)
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
 p_id=>wwv_flow_api.id(2112953490250941268)
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
 p_id=>wwv_flow_api.id(2011818551980829086)
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
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(2606051865663660235)
,p_branch_name=>'Redirect to VISAS'
,p_branch_action=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:CR,24::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'VISAS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2616417470407634514)
,p_name=>'P23_ENABLE_VISAS_CARD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2616417545045634515)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(2616417418432634513)
,p_computation_sequence=>10
,p_computation_item=>'P23_ENABLE_VISAS_CARD'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ''Y''',
'from    per_people_x ppx,',
'        per_assignments_x pax,',
'        per_all_vacancies pav',
'where   ppx.PERSON_ID= pax.PERSON_ID',
'        and pax.VACANCY_ID = pav.vacancy_id',
'        and pav.attribute11 = ''N''',
'        and pav.attribute_category = ''LTS''',
'        and jafi_hr_pkg.get_location_country (pax.LOCATION_ID) = ''US''',
'        and pax.BUSINESS_GROUP_ID = 4088',
'        and ppx.PERSON_ID = :P0_PERSON_ID',
'        and rownum = 1'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2616417296209634512)
,p_name=>'Enable Cards'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2616417152801634511)
,p_event_id=>wwv_flow_api.id(2616417296209634512)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P23_ENABLE_VISAS_CARD'') == ''Y'') {',
'    $(''#visasCard'').addClass(''clickable'');',
'    $(''#visasCard img'').attr(''src'', ''#APP_IMAGES#visa.svg'');',
'    $(''#visasCard .card-title'').css({ ''color'': ''inherit'' });',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2616417127446634510)
,p_name=>'Visas Card Click'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#visasCard.clickable'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2606051971428660236)
,p_event_id=>wwv_flow_api.id(2616417127446634510)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'VISAS'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2616416918845634508)
,p_name=>'Flights Card Click'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#flightsCard.clickable'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2616416783809634507)
,p_event_id=>wwv_flow_api.id(2616416918845634508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'alert(''flights'');'
);
wwv_flow_api.component_end;
end;
/
