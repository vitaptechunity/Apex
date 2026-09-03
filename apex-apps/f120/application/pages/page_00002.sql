prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(3275772552271542776)
,p_name=>'RISHUM'
,p_alias=>'RISHUM'
,p_step_title=>unistr('\05D0\05D6\05D5\05E8 \05D0\05D9\05E9\05D9 \05D4\05D9\05D7\05D9\05D3\05D4 \05DC\05E9\05DC\05D9\05D7\05D5\05EA ')
,p_welcome_text=>'&G_FONT.'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>'&G_FONT.'
,p_javascript_file_urls=>'#APP_IMAGES#custom-lts.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var savepos = localStorage.getItem("savepos");',
'function myfncReload(){',
'      apex.theme.openRegion(''MyAlertR'');',
'var dialog = apex.jQuery(''#MyAlertR'').closest(''.ui-dialog'');',
'  dialog.addClass(''logoutdialog'');',
' }',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.addEventListener("DOMContentLoaded", function(event) { ',
'            var scrollpos = localStorage.getItem(''scrollpos'');',
'            if (scrollpos) window.scrollTo(0, scrollpos);',
'        });',
'',
'        window.onbeforeunload = function(e) {',
'            localStorage.setItem(''scrollpos'', window.scrollY);',
'        };'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#BLUE_HEADER .t-Region-header {',
'      background-color: #398b94;',
'}',
'.t-Body-contentInner {',
'    padding: 0px;',
'}',
'',
'.headerTopLogosRow span a div {',
'       margin-top: 15px;',
'} ',
'',
'.t-Cards--basic .t-Card-titleWrap {',
'    box-shadow: none;',
'}',
'body .ui-dialog .ui-dialog-titlebar {',
'    background-color: transparent;',
'    border-bottom: none;',
'}',
'.footerlogos img:not(:last-child) {',
'    margin-left: 0px;',
'}',
'#myVideo {',
'    min-width:100%;',
'    max-width:100%;',
' }',
'',
''))
,p_step_template=>wwv_flow_api.id(3267451177050446051)
,p_page_css_classes=>'homepage custom-body'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KERENT'
,p_last_upd_yyyymmddhh24miss=>'20260628091852'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3080853177703376087)
,p_plug_name=>'LogOut'
,p_region_name=>'MyAlertR'
,p_region_css_classes=>'js-dialog-size343x250'
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-size480x320:margin-top-none'
,p_plug_template=>wwv_flow_api.id(3052159502813868459)
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3080853845934376094)
,p_plug_name=>'<span></span>'
,p_parent_plug_id=>wwv_flow_api.id(3080853177703376087)
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
 p_id=>wwv_flow_api.id(2829680784951150215)
,p_plug_name=>'FOR_RISHUM'
,p_region_css_classes=>'contentandheadings custom'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P0_EVENT_FLAG'
,p_plug_display_when_cond2=>'1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2987709205009052655)
,p_plug_name=>unistr('\05D0\05D9\05DF \05D0\05D9\05E8\05D5\05E2\05D9\05DD \05D6\05DE\05D9\05E0\05D9\05DD \05E2\05D1\05D5\05E8\05DA \05DB\05E2\05EA')
,p_parent_plug_id=>wwv_flow_api.id(2829680784951150215)
,p_region_css_classes=>'card-list-slider'
,p_region_template_options=>'#DEFAULT#:margin-top-none'
,p_component_template_options=>'#DEFAULT#:t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(3187398663660849920)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(3188156049469034409)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'NVL(:P0_BOOKED_TO_EVENT,0) = 0 and :P0_EVENT_NO_FULL = 0 and:P0_BOOKED_FINAL <> 1  and :P0_EVENT_FLAG <> 1'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2854302744889816509)
,p_plug_name=>unistr('\05DE\05E8\05DB\05D6 \05D4\05E2\05E8\05DB\05D4-\05EA\05E9\05D5\05D1\05D5\05EA \05DC\05DB\05DC \05D4\05E9\05D0\05DC\05D5\05EA \D83D\DE0A')
,p_parent_plug_id=>wwv_flow_api.id(2829680784951150215)
,p_region_css_classes=>'container-inner custom'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>110
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<br><p class="question-title" style="font-weight:700;">\05DE\05D4 \05D4\05DC\05D5&quot;\05D6?</p>'),
unistr('<br><p class="answer-title">\05DE\05E8\05DB\05D6 \05D4\05E2\05E8\05DB\05D4 \05D1\05DF \05DE\05E1\05E4\05E8 \05E9\05E2\05D5\05EA \05E9\05DB\05D5\05DC\05DC \05DE\05E4\05D2\05E9 \05E7\05D1\05D5\05E6\05EA\05D9 \05D1\05D5 \05DB\05DC \05DE\05D5\05E2\05DE\05D3 \05D5\05DE\05D5\05E2\05DE\05D3\05EA \05D9\05E2\05D1\05D9\05E8\05D5</p>'),
unistr('<p class="answer-title">\05DC\05E9\05D0\05E8 \05D7\05D1\05E8\05D9 \05D4\05E7\05D1\05D5\05E6\05D4 \05D7\05DC\05E7 \05DE\05DE\05E2\05E8\05DA \05E4\05E2\05D9\05DC\05D5\05EA \05DE\05DC\05D0 \05E9\05D4\05DB\05D9\05E0\05D5 \05DE\05E8\05D0\05E9 \05D1\05E0\05D5\05E9\05D0\05D9\05DD \05D4\05E7\05E9\05D5\05E8\05D9\05DD \05DC\05D9\05E9\05E8\05D0\05DC.</p>'),
unistr('<br><p class="question-title" style="font-weight:700;">\05D0\05D9\05E4\05D4?</p>'),
unistr('<br><p class="answer-title">\05D4\05DE\05D9\05E7\05D5\05DD \05D4\05D5\05D0 \05D1\05D4\05EA\05D0\05DD \05DC\05E8\05D9\05E9\05D5\05DD \05E9\05DC\05DA. \05D4\05E4\05E8\05D8\05D9\05DD \05D9\05D9\05E9\05DC\05D7\05D5 \05D0\05DC\05D9\05DA \05D1\05DE\05D9\05D9\05DC \05D5\05D1\05D5\05D5\05D8\05E1\05D0\05E4 \05DC\05D0\05D7\05E8 \05D4\05E8\05D9\05E9\05D5\05DD.</p>'),
unistr('<br><p class="question-title" style="font-weight:700;">\05D0\05E4\05E9\05E8 \05DC\05D1\05D8\05DC \05D0\05D5 \05DC\05E9\05E0\05D5\05EA?</p>'),
unistr('<br><p class="answer-title">\05D0\05E4\05E9\05E8, \05E4\05E2\05DD \05D0\05D7\05EA \05D1\05DC\05D1\05D3! \05D0\05DD \05E7\05E8\05D4 \05DE\05E9\05D4\05D5 \05D7\05E8\05D9\05D2 \05D5\05D0\05D9\05DF \05D1\05D0\05E4\05E9\05E8\05D5\05EA\05DA \05DC\05D4\05D2\05D9\05E2,</p>'),
unistr('<p class="answer-title">\05D7\05E9\05D5\05D1 \05DC\05D1\05D8\05DC \05D0\05EA \05D4\05D4\05E9\05EA\05EA\05E4\05D5\05EA \05D1\05D4\05E7\05D3\05DD \05D4\05D0\05E4\05E9\05E8\05D9 - \05E2\05D3 48 \05E9\05E2\05D5\05EA \05DC\05E4\05E0\05D9 \05EA\05D7\05D9\05DC\05EA \05DE\05E8\05DB\05D6 \05D4\05D4\05E2\05E8\05DB\05D4.</p>'),
unistr('<p class="answer-title"> \05DB\05D3\05D9 \05DC\05D4\05D9\05E8\05E9\05DD \05DC\05EA\05D0\05E8\05D9\05DA \05D0\05D7\05E8, \05E7\05D5\05D3\05DD \05DB\05DC \05E6\05E8\05D9\05DA \05DC\05D1\05D8\05DC \05D0\05EA \05D4\05E9\05D9\05D1\05D5\05E5 \05D4\05E7\05D9\05D9\05DD, \05D5\05D0\05D6 \05DC\05D4\05E9\05EA\05D1\05E5 \05DE\05D7\05D3\05E9.</p>'),
'',
'',
'',
'',
unistr('<b style="font-weight: 900;"> \05D7\05E9\05D5\05D1 \05DC\05E9\05D9\05DD \05DC\05D1 \2013 \05D1\05D9\05D8\05D5\05DC \05D4\05D2\05E2\05D4 \05E4\05D7\05D5\05EA \05DE\05D9\05D5\05DE\05D9\05D9\05DD \05DC\05E4\05E0\05D9 \05D4\05DE\05D5\05E2\05D3 \05E9\05DC \05DE\05E8\05DB\05D6 \05D4\05D4\05E2\05E8\05DB\05D4 \05D9\05D9\05D7\05E9\05D1 \05DC\05D0\05D9 \05D4\05D2\05E2\05D4. </b><br>'),
unistr('<b style="font-weight: 900;"> \05D1\05D9\05D8\05D5\05DC\05D9\05DD \05DE\05E8\05D5\05D1\05D9\05DD \05DC\05DE\05E8\05DB\05D6 \05D4\05E2\05E8\05DB\05D4 \05D9\05DB\05D5\05DC\05D9\05DD \05DC\05D2\05E8\05D5\05E8 \05D4\05E1\05E8\05D4 \05DE\05EA\05D4\05DC\05D9\05DA \05D4\05DE\05D9\05D5\05DF \05DC\05D0\05D5\05EA\05D4 \05E2\05D5\05E0\05D4. </b>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P0_SADNA_TYPE not in (''BINA'')'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2846076568633910172)
,p_plug_name=>unistr('\05E9\05D9\05E0\05D5\05D9 \05D4\05E8\05E9\05DE\05D4 \05EA\05D0\05E8\05D9\05DB\05D9\05DD \05E4\05E0\05D5\05D9\05D9\05DD:')
,p_parent_plug_id=>wwv_flow_api.id(2829680784951150215)
,p_region_css_classes=>'container-inner '
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>130
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\05D9\05E9 \05DC\05D1\05D8\05DC \05D4\05E8\05E9\05DE\05D4 \05E0\05D5\05DB\05D7\05D9\05EA \05DC\05E4\05E0\05D9 \05E9\05D9\05E0\05D5\05D9 \05DC\05DE\05D5\05E2\05D3 \05D7\05D3\05E9'),
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'(NVL(:P0_BOOKED_TO_EVENT,0) <> 0 and :P0_EVENT_NO_FULL > 0  or   :P0_BOOKED_FINAL = 1 ) and  :P0_EVENT_FLAG <> 1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2811357185616389226)
,p_plug_name=>unistr('\05E0\05E8\05E9\05DE\05EA \05D1\05D4\05E6\05DC\05D7\05D4 \05DC\05DE\05E8\05DB\05D6 \05D4\05E2\05E8\05DB\05D4!')
,p_parent_plug_id=>wwv_flow_api.id(2829680784951150215)
,p_region_css_classes=>'container-inner main custom '
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>100
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b style="font-weight: 900;">',
unistr('\05E0\05E9\05DE\05D7 \05DC\05E4\05D2\05D5\05E9 \05D0\05D5\05EA\05DA \05D1\05DE\05E8\05DB\05D6 \05D4\05E2\05E8\05DB\05D4 \05E9\05D9\05D9\05E2\05E8\05DA \05D1&PO_START_DAY_WEEK. \05D1\05E9\05E2\05D4 &P0_PERSON_ETIME..<br/>\05D1\05DB\05EA\05D5\05D1\05EA &P0_PERSON_ELOCATION..'),
'</b>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'NVl(:P0_BOOKED_TO_EVENT,0) <> 0  or  :P0_BOOKED_FINAL =1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2811356078674389215)
,p_plug_name=>unistr('\05E9\05D9\05E0\05D5\05D9 \05D4\05E8\05E9\05DE\05D4 \05EA\05D0\05E8\05D9\05DB\05D9\05DD \05E4\05E0\05D5\05D9\05D9\05DD:')
,p_parent_plug_id=>wwv_flow_api.id(2829680784951150215)
,p_region_css_classes=>'container-inner assessment-section'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>150
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('*\05D0\05D9\05DF \05DB\05E8\05D2\05E2 \05DE\05E7\05D5\05DE\05D5\05EA \05E4\05E0\05D5\05D9\05D9\05DD, \05D1\05D9\05D8\05D5\05DC \05D5\05D4\05E8\05E9\05DE\05D4 \05DE\05D7\05D3\05E9 \05DC\05D0 \05EA\05EA\05D0\05E4\05E9\05E8')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'NVL(:P0_BOOKED_TO_EVENT,0) <> 0 and :P0_EVENT_NO_FULL = 0'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2811356000621389214)
,p_plug_name=>'events_no_action'
,p_parent_plug_id=>wwv_flow_api.id(2829680784951150215)
,p_region_css_classes=>'card-list-slider'
,p_region_template_options=>'#DEFAULT#:margin-top-lg'
,p_component_template_options=>'#DEFAULT#:t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>140
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(3254411434216674946)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(3187434974679035449)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'(( NVL(:P0_BOOKED_TO_EVENT,0)  <> 0 and :P0_EVENT_NO_FULL > 0 ) or :P0_BOOKED_FINAL = 1) and :P0_EVENT_FLAG <> 1'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2811354905642389203)
,p_plug_name=>'BITUL'
,p_region_name=>'BITUL'
,p_parent_plug_id=>wwv_flow_api.id(2829680784951150215)
,p_region_css_classes=>'js-dialog-size410X100'
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-size480x320:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(3052159502813868459)
,p_plug_display_sequence=>160
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2987710931302052672)
,p_plug_name=>unistr('<span style="text-align:right;color:#3A8B94;font-size:32px;font-height:33px;font-weight:700;">\05D1\05D9\05D8\05D5\05DC \05D4\05E9\05EA\05EA\05E4\05D5\05EA\05DA \05D1\05DE\05E8\05DB\05D6 \05D4\05E2\05E8\05DB\05D4</span>')
,p_parent_plug_id=>wwv_flow_api.id(2811354905642389203)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_region_attributes=>'style="width:410px;padding:20px;"'
,p_plug_template=>wwv_flow_api.id(3202293099369440283)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="font-size:16px;line-height:18px;color:#3A8B94;font-weight:300;">',
unistr('\05D4\05E9\05EA\05EA\05E4\05D5\05EA \05D1\05DE\05E8\05DB\05D6 \05D4\05D4\05E2\05E8\05DB\05D4 \05EA\05D5\05D0\05DE\05D4 \05DC\05D9\05D5\05DD &P0_PERSON_EDATE. \05D1\05E9\05E2\05D4 &P0_PERSON_ETIME.  \05D1-&P0_PERSON_ECITY.'),
'</span><br>',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'JAFI_LTS_APEX_UTILS.lts_get_cancelation_count(:P0_PERSON_ID, :P0_EVENT_FLAG)  = 0 and :P0_BOOKED_FINAL <> 1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2987710304167052666)
,p_plug_name=>unistr('\05E9\05D9\05E0\05D5\05D9 \05DE\05D5\05E2\05D3 \05D4\05E2\05E8\05DB\05D4')
,p_parent_plug_id=>wwv_flow_api.id(2811354905642389203)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg'
,p_region_attributes=>'style="padding:15px;"'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<span style="text-align:right;color:#3A8B94;font-size:32px;font-height:33px;font-weight:700;"> \05E9\05D9\05E0\05D5\05D9 \05DE\05D5\05E2\05D3 \05DE\05E8\05DB\05D6 \05D4\05E2\05E8\05DB\05D4'),
'</span><br><br><br>',
'<span style="font-size:16px;line-height:18px;color:#3A8B94;font-weight:300;">',
unistr('\05DC\05E6\05E2\05E8\05E0\05D5, \05DC\05D0 \05E0\05D9\05EA\05DF \05DC\05D1\05D8\05DC \05D4\05E8\05E9\05DE\05D4 \05E4\05E2\05DD \05E0\05D5\05E1\05E4\05EA \05D1\05DE\05E2\05E8\05DB\05EA.<br>'),
unistr('\05E2\05DC \05DE\05E0\05EA \05DC\05D1\05D8\05DC, \05D9\05E9 \05DC\05D9\05E6\05D5\05E8 \05E7\05E9\05E8 \05E2\05DD \05E6\05D5\05D5\05EA \05D4\05DE\05D9\05D5\05DF \05D1\05DE\05D9\05D9\05DC:<br>'),
'',
' shlichutunit@wzo.org.il',
'</span><br><br>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'JAFI_LTS_APEX_UTILS.lts_get_cancelation_count(:P0_PERSON_ID, :P0_EVENT_FLAG)  = 1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1768027319862855670)
,p_plug_name=>unistr('<span style="text-align:right;color:#3A8B94;font-size:32px;line-height:33px;font-weight:700;">\05D1\05D9\05D8\05D5\05DC \05D4\05E9\05EA\05EA\05E4\05D5\05EA\05DA \05D1\05D9\05D5\05DD \05D4\05E2\05E8\05DB\05D4</span>')
,p_region_name=>'MyAlertR'
,p_parent_plug_id=>wwv_flow_api.id(2811354905642389203)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_region_attributes=>'style="width:600px;hight:220px;padding:20px;"'
,p_plug_template=>wwv_flow_api.id(3202293099369440283)
,p_plug_display_sequence=>20
,p_plug_display_column=>2
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p style="font-size:16px;line-height:17px;">\05DC\05D0 \05E0\05D9\05EA\05DF \05DC\05D1\05D8\05DC \05E8\05D9\05E9\05D5\05DD \05DC\05D9\05D5\05DD \05DE\05E1\05DC\05D5\05DC \05E4\05D7\05D5\05EA \05DE-48 \05E9\05E2\05D5\05EA \05DE\05E8\05D0\05E9.<br/>'),
unistr('\05D1\05DE\05D9\05D3\05D4 \05D5\05D1\05E8\05E6\05D5\05E0\05DA \05DC\05D1\05D8\05DC \05D4\05D2\05E2\05EA\05DA, \05D9\05E9 \05DC\05E4\05E0\05D5\05EA \05D0\05DC\05D9\05E0\05D5  '),
unistr('<a href="&PO_WHATSAPP." target="_blank rel=">\05DB\05D0\05DF</a></p>'),
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P0_BOOKED_FINAL = 1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2680352204960135887)
,p_plug_name=>unistr('\05D4\05E6\05E2\05D3 \05D4\05D1\05D0: \05D4\05E8\05E9\05DE\05D4 \05DC\05DE\05E8\05DB\05D6 \05D4\05D4\05E2\05E8\05DB\05D4')
,p_parent_plug_id=>wwv_flow_api.id(2829680784951150215)
,p_region_css_classes=>'container-inner '
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\05D1\05DE\05E8\05DB\05D6 \05D4\05D4\05E2\05E8\05DB\05D4 \05D0\05E0\05D7\05E0\05D5 \05E0\05E6\05DC\05D5\05DC \05D9\05D7\05D3 \05D0\05DC \05E2\05D5\05DC\05DE\05D5\05EA \05D4\05EA\05D5\05DB\05DF \05E9\05DC \05D4\05E9\05DC\05D9\05D7\05D5\05EA, \05E0\05E2\05D1\05D5\05D3 \05D1\05E7\05D1\05D5\05E6\05D5\05EA \05D5\05E0\05D1\05D7\05DF \05DB\05D9\05E9\05D5\05E8\05D9\05DD \05DB\05DE\05D5 \05E2\05D1\05D5\05D3\05EA \05E6\05D5\05D5\05EA,<br/>'),
unistr('\05E2\05DE\05D9\05D3\05D4 \05DE\05D5\05DC \05E7\05D1\05D5\05E6\05D4, \05D5\05E9\05DC\05D9\05D8\05D4 \05D1\05E9\05E4\05D4 \05D4\05E8\05DC\05D5\05D5\05E0\05D8\05D9\05EA. \05D4\05E8\05E9\05DE\05D5 \05DC\05DE\05E8\05DB\05D6 \05D4\05E2\05E8\05DB\05D4:</p>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'NVL(:P0_BOOKED_TO_EVENT,0) = 0 and :P0_BOOKED_FINAL <> 1 and :P0_SADNA_TYPE  <>''BINA'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2680352072541135886)
,p_plug_name=>'events'
,p_parent_plug_id=>wwv_flow_api.id(2829680784951150215)
,p_region_css_classes=>'card-list-slider'
,p_region_template_options=>'#DEFAULT#:margin-top-lg'
,p_component_template_options=>'#DEFAULT#:t-Cards--basic:t-Cards--3cols:t-Cards--animColorFill'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(3254411434216674946)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(3254410638194662946)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'NVL(:P0_BOOKED_TO_EVENT,0) = 0 and /* :P0_EVENT_NO_FULL > 0 and */ :P0_BOOKED_FINAL <> 1'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(757840463103326704)
,p_plug_name=>unistr('\05D4\05E6\05E2\05D3 \05D4\05D1\05D0: \05D4\05E8\05E9\05DE\05D4 \05DC\05DE\05E8\05DB\05D6 \05D4\05D4\05E2\05E8\05DB\05D4')
,p_parent_plug_id=>wwv_flow_api.id(2829680784951150215)
,p_region_css_classes=>'container-inner '
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\05D1\05DE\05E8\05DB\05D6 \05D4\05D4\05E2\05E8\05DB\05D4 \05D0\05E0\05D7\05E0\05D5 \05E0\05E6\05DC\05D5\05DC \05D9\05D7\05D3 \05D0\05DC \05E2\05D5\05DC\05DE\05D5\05EA \05D4\05EA\05D5\05DB\05DF \05E9\05DC \05D4\05E9\05DC\05D9\05D7\05D5\05EA, \05E0\05E2\05D1\05D5\05D3 \05D1\05E7\05D1\05D5\05E6\05D5\05EA \05D5\05E0\05D1\05D7\05DF \05DB\05D9\05E9\05D5\05E8\05D9\05DD \05DB\05DE\05D5 \05E2\05D1\05D5\05D3\05EA \05E6\05D5\05D5\05EA,<br/>'),
unistr('\05E2\05DE\05D9\05D3\05D4 \05DE\05D5\05DC \05E7\05D1\05D5\05E6\05D4, \05D5\05E9\05DC\05D9\05D8\05D4 \05D1\05E9\05E4\05D4 \05D4\05D0\05E0\05D2\05DC\05D9\05EA. \05D4\05E8\05E9\05DE\05D5 \05DC\05DE\05E8\05DB\05D6 \05D4\05E2\05E8\05DB\05D4:</p>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'NVL(:P0_BOOKED_TO_EVENT,0) = 0 and :P0_BOOKED_FINAL <> 1 and :P0_SADNA_TYPE  =''BINA'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(757840147896326701)
,p_plug_name=>unistr('\05DE\05E8\05DB\05D6 \05D4\05E2\05E8\05DB\05D4-\05EA\05E9\05D5\05D1\05D5\05EA \05DC\05DB\05DC \05D4\05E9\05D0\05DC\05D5\05EA \D83D\DE0A')
,p_parent_plug_id=>wwv_flow_api.id(2829680784951150215)
,p_region_css_classes=>'container-inner custom'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>120
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<br><p class="question-title" style="font-weight:700;">\05DE\05D4 \05D4\05DC\05D5&quot;\05D6?</p>'),
unistr('<br><p class="answer-title">\05DE\05E8\05DB\05D6 \05D4\05E2\05E8\05DB\05D4 \05D1\05DF \05DE\05E1\05E4\05E8 \05E9\05E2\05D5\05EA \05E9\05DB\05D5\05DC\05DC \05DE\05E4\05D2\05E9 \05E7\05D1\05D5\05E6\05EA\05D9 \05D1\05D5 \05DB\05DC \05DE\05D5\05E2\05DE\05D3 \05D5\05DE\05D5\05E2\05DE\05D3\05EA \05D9\05E2\05D1\05D9\05E8\05D5</p>'),
unistr('<p class="answer-title">\05DC\05E9\05D0\05E8 \05D7\05D1\05E8\05D9 \05D4\05E7\05D1\05D5\05E6\05D4 \05D7\05DC\05E7 \05DE\05DE\05E2\05E8\05DA \05E4\05E2\05D9\05DC\05D5\05EA \05DE\05DC\05D0 \05E9\05D4\05DB\05D9\05E0\05D5 \05DE\05E8\05D0\05E9 \05D1\05E0\05D5\05E9\05D0\05D9\05DD \05D4\05E7\05E9\05D5\05E8\05D9\05DD \05DC\05D9\05E9\05E8\05D0\05DC.</p>'),
unistr('<br><p class="question-title" style="font-weight:700;">\05D0\05D9\05E4\05D4?</p>'),
unistr('<br><p class="answer-title">\05E7\05E8\05D9\05EA \05DE\05D5\05E8\05D9\05D4 \2013 \05E8\05D7\05D5\05D1 \05D4\05E2\05E1\05E7\05DF 3, \05D9\05E8\05D5\05E9\05DC\05D9\05DD.</p>'),
unistr('<br><p class="question-title" style="font-weight:700;">\05D0\05E4\05E9\05E8 \05DC\05D1\05D8\05DC \05D0\05D5 \05DC\05E9\05E0\05D5\05EA?</p>'),
unistr('<br><p class="answer-title">\05D0\05E4\05E9\05E8, \05E4\05E2\05DD \05D0\05D7\05EA \05D1\05DC\05D1\05D3! \05D0\05DD \05E7\05E8\05D4 \05DE\05E9\05D4\05D5 \05D7\05E8\05D9\05D2 \05D5\05D0\05D9\05DF \05D1\05D0\05E4\05E9\05E8\05D5\05EA\05DA \05DC\05D4\05D2\05D9\05E2,</p>'),
unistr('<p class="answer-title">\05D7\05E9\05D5\05D1 \05DC\05D1\05D8\05DC \05D0\05EA \05D4\05D4\05E9\05EA\05EA\05E4\05D5\05EA \05D1\05D4\05E7\05D3\05DD \05D4\05D0\05E4\05E9\05E8\05D9 - \05E2\05D3 48 \05E9\05E2\05D5\05EA \05DC\05E4\05E0\05D9 \05EA\05D7\05D9\05DC\05EA \05DE\05E8\05DB\05D6 \05D4\05D4\05E2\05E8\05DB\05D4.</p>'),
unistr('<p class="answer-title"> \05DB\05D3\05D9 \05DC\05D4\05D9\05E8\05E9\05DD \05DC\05EA\05D0\05E8\05D9\05DA \05D0\05D7\05E8, \05E7\05D5\05D3\05DD \05DB\05DC \05E6\05E8\05D9\05DA \05DC\05D1\05D8\05DC \05D0\05EA \05D4\05E9\05D9\05D1\05D5\05E5 \05D4\05E7\05D9\05D9\05DD, \05D5\05D0\05D6 \05DC\05D4\05E9\05EA\05D1\05E5 \05DE\05D7\05D3\05E9.</p>'),
unistr('<p class="answer-title">\05D1\05DE\05D9\05D3\05D4 \05D5\05DC\05D0 \05E0\05D9\05EA\05DF \05DC\05D1\05D8\05DC \05E2\05D5\05D3 \05D3\05E8\05DA \05D4\05D0\05D6\05D5\05E8 \05D4\05D0\05D9\05E9\05D9, \05D9\05E9 \05DC\05E4\05E0\05D5\05EA \05DC\05D0\05E1\05EA\05E8 \05D9\05D3\05D9\05D3 \05D1\05D8\05DC\05E4\05D5\05DF &P0_MENAHEL_TIK_PHONE. \05D0\05D5 \05D1\05DE\05D9\05D9\05DC &P0_MENAHEL_TIK_EMAIL.<BR>'),
unistr('\05D0\05D5 \05D0\05DC\05D9\05E0\05D5 \05D1\05D5\05D5\05D8\05E1\05D0\05E4 \05D0\05D5 \05D1\05DE\05D9\05D9\05DC \05D7\05D5\05D6\05E8 (\05D4\05DE\05D9\05D9\05DC \05E9\05D0\05DC\05D9\05D5 \05E7\05D9\05D1\05DC\05EA \05D0\05EA \05D4\05D6\05D9\05DE\05D5\05DF).'),
'</p>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P0_SADNA_TYPE  =''BINA'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2801314183937530334)
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
 p_id=>wwv_flow_api.id(2745817509254597050)
,p_plug_name=>'INTERVIEW'
,p_region_css_classes=>'contentandheadings'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P0_EVENT_FLAG'
,p_plug_display_when_cond2=>'2'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2987709779431052660)
,p_plug_name=>unistr('\05E9\05D9\05E0\05D5\05D9 \05D4\05E8\05E9\05DE\05D4 \05EA\05D0\05E8\05D9\05DB\05D9\05DD \05E4\05E0\05D5\05D9\05D9\05DD:')
,p_parent_plug_id=>wwv_flow_api.id(2745817509254597050)
,p_region_css_classes=>'container-inner  one_eventList contentandheadings custom-title'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>160
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('*\05D0\05D9\05DF \05DB\05E8\05D2\05E2 \05DE\05E7\05D5\05DE\05D5\05EA \05E4\05E0\05D5\05D9\05D9\05DD, \05D1\05D9\05D8\05D5\05DC \05D5\05D4\05E8\05E9\05DE\05D4 \05DE\05D7\05D3\05E9 \05DC\05D0 \05EA\05EA\05D0\05E4\05E9\05E8')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P0_BOOKED_TO_EVENT <> 0 and :P0_EVENT_NO_FULL = 0'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2987709110970052654)
,p_plug_name=>unistr('\05D0\05D9\05DF \05D0\05D9\05E8\05D5\05E2\05D9\05DD \05D6\05DE\05D9\05E0\05D9\05DD \05E2\05D1\05D5\05E8\05DA \05DB\05E2\05EA')
,p_parent_plug_id=>wwv_flow_api.id(2745817509254597050)
,p_region_css_classes=>'card-list-slider'
,p_region_template_options=>'#DEFAULT#:margin-top-none'
,p_component_template_options=>'#DEFAULT#:t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>100
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(3187398663660849920)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(3188156049469034409)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P0_BOOKED_TO_EVENT = 0 and :P0_EVENT_NO_FULL = 0',
'and :P0_ASSIG_STATUS_ID not in (282, 	15364)'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2846076597642910173)
,p_plug_name=>unistr('\05E9\05D9\05E0\05D5\05D9 \05D4\05E8\05E9\05DE\05D4 \05EA\05D0\05E8\05D9\05DB\05D9\05DD \05E4\05E0\05D5\05D9\05D9\05DD:')
,p_parent_plug_id=>wwv_flow_api.id(2745817509254597050)
,p_region_css_classes=>'contentandheadings container-inner'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>150
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('*\05D9\05E9 \05DC\05D1\05D8\05DC \05D4\05E8\05E9\05DE\05D4 \05E0\05D5\05DB\05D7\05D9\05EA \05DC\05E4\05E0\05D9 \05E9\05D9\05E0\05D5\05D9 \05DC\05DE\05D5\05E2\05D3 \05D7\05D3\05E9')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P0_BOOKED_TO_EVENT <> 0 and :P0_EVENT_NO_FULL > 0 AND 1=0'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2846075560822910162)
,p_plug_name=>unistr('\05D4\05E6\05E2\05D3 \05D4\05D1\05D0: \05D4\05E8\05E9\05DE\05D4 \05DC\05E8\05D0\05D9\05D5\05DF \05D0\05D9\05E9\05D9')
,p_parent_plug_id=>wwv_flow_api.id(2745817509254597050)
,p_region_css_classes=>'container-inner'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\05D4\05E6\05E2\05D3 \05D4\05D1\05D0: \05D4\05E8\05E9\05DE\05D4 \05DC\05E8\05D0\05D9\05D5\05DF \05D0\05D9\05E9\05D9<br>'),
'<br>',
unistr('\05D4\05E8\05D9\05D0\05D9\05D5\05DF \05D4\05D0\05D9\05E9\05D9 \05D9\05D9\05E2\05E8\05DA \05DB\05E9\05E2\05D4 \05D1\05D6\05D5\05DD \05E2\05DD \05E6\05D5\05D5\05EA \05D4\05DE\05D9\05D5\05DF. \05E0\05DB\05D9\05E8 \05DC\05E2\05D5\05DE\05E7, \05E0\05E9\05DE\05E2 \05E2\05DC \05D4\05E0\05D9\05E1\05D9\05D5\05DF \05D4\05DE\05E7\05E6\05D5\05E2\05D9 \05D4\05E7\05D5\05D3\05DD \05E9\05DC\05DA, \05E0\05E2\05E0\05D4 \05E2\05DC \05E9\05D0\05DC\05D5\05EA, \05D0\05EA\05D2\05E8\05D9\05DD \05D5\05D4\05EA\05DC\05D1\05D8\05D5\05D9\05D5\05EA. <br>'),
unistr('\05D4\05E8\05D9\05D0\05D9\05D5\05DF \05D4\05D0\05D9\05E9\05D9 \05E9\05DC\05DA \05E0\05E7\05D1\05E2 \05DC\05EA\05D0\05E8\05D9\05DA \05D4\05D1\05D0:'),
'<br><br>',
unistr('\05DC\05D4\05E8\05E9\05DE\05D4 \05DC\05E8\05D0\05D9\05D5\05DF \05D4\05D0\05D9\05E9\05D9:')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P0_BOOKED_TO_EVENT = 0  AND :P0_USER_STEP in (1,3)'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2811356417753389218)
,p_plug_name=>unistr('\05E0\05E8\05E9\05DE\05EA \05D1\05D4\05E6\05DC\05D7\05D4 \05DC\05E8\05D0\05D9\05D5\05DF \05D4\05D0\05D9\05E9\05D9!')
,p_parent_plug_id=>wwv_flow_api.id(2745817509254597050)
,p_region_css_classes=>'container-inner'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>110
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\05D4\05E8\05D0\05D9\05D5\05DF \05E9\05DC\05DA \05D9\05D9\05E2\05E8\05DA \05D1&PO_START_DAY_WEEK. \05D1\05E9\05E2\05D4 &P0_PERSON_ETIME. \05D1\05D6\05D5\05DD. '),
unistr('<br>\05E7\05D9\05E9\05D5\05E8 \05DC\05D6\05D5\05DD:<a href="&PO_ZOOM_LINK." target="_blank" > <u><b>\05DC\05D7\05E5 \05DB\05D0\05DF</b></u> </a> '),
'<br><br>',
unistr('\05DC\05E9\05D9\05E0\05D5\05D9/\05D1\05D9\05D8\05D5\05DC \05D4\05E8\05E9\05DE\05D4 \05D9\05E9 \05DC\05E4\05E0\05D5\05EA \05D0\05DC\05D9\05E0\05D5 \05D1\05D5\05D5\05D8\05E1\05D0\05E4 0522450151 \05D0\05D5 \05D1\05DE\05D9\05D9\05DC shlichutunit@wzo.org.il')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'SQL_EXPRESSION'
,p_plug_display_when_condition=>'(NVl(:P0_BOOKED_TO_EVENT,0) <> 0  or  :P0_BOOKED_FINAL =1 ) AND :PO_ZOOM_LINK IS NOT NULL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2770439469193263344)
,p_plug_name=>unistr('\05D6\05D5\05D2\05D5\05EA \05E9\05D9\05DE\05D5 \05DC\05D1 ')
,p_parent_plug_id=>wwv_flow_api.id(2745817509254597050)
,p_region_css_classes=>'container-inner'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>130
,p_plug_grid_column_css_classes=>'contentandheadings'
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('\05D1\05E0\05D9 \05D6\05D5\05D2 \05D4\05DE\05D5\05E2\05DE\05D3\05D9\05DD \05DC\05E9\05DC\05D9\05D7\05D5\05EA -\00A0\00A0\05D4\05E8\05E9\05DE\05D4 \05E9\05DC \05D0\05D7\05D3 \05DE\05D1\05E0\05D9 \05D4\05D6\05D5\05D2 \05EA\05D1\05D9\05D0 \05DC\05E8\05D9\05E9\05D5\05DD \05D0\05D5\05D8\05D5\05DE\05D8\05D9 \05E9\05DC \05E9\05E0\05D9 \05D1\05E0\05D9 \05D4\05D6\05D5\05D2 \05DC\05E8\05D0\05D9\05D5\05DF. <br>\05D7\05E9\05D5\05D1 \05DC\05D5\05D5\05D3\05D0 \05E9\05D4\05DE\05D5\05E2\05D3 \05DE\05EA\05D0\05D9\05DD \05DC\05E9\05E0\05D9\05DB\05DD.<br><br>')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P0_SADNA_TYPE = ''GENERAL30M'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2823275365779488089)
,p_plug_name=>'CouplesSubR'
,p_parent_plug_id=>wwv_flow_api.id(2770439469193263344)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'contentandheadings'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\05D6\05D5\05D2 \05D4\05DB\05D5\05DC\05DC \05DE\05D5\05E2\05DE\05D3/\05EA \05D5\05E0\05DC\05D5\05D5\05D4 \05DC\05E9\05DC\05D9\05D7\05D5\05EA - \05D9\05D9\05E8\05E9\05DD \05DC\05E8\05D9\05D0\05D9\05D5\05DF \05D0\05D9\05E9\05D9 '),
unistr('\05D5\05D9\05D2\05D9\05E2 \05D1\05DC\05D9\05D5\05D5\05D9 \05D1\05DF/\05D1\05EA \05D4\05D6\05D5\05D2. <br>\05D7\05E9\05D5\05D1 \05DC\05D5\05D5\05D3\05D0 \05E9\05D4\05DE\05D5\05E2\05D3 \05DE\05EA\05D0\05D9\05DD \05DC\05E9\05E0\05D9\05DB\05DD.\00A0')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P0_SADNA_TYPE <> ''GENERAL30M'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2716177230680996311)
,p_plug_name=>'BITUL_INTERVIEW'
,p_region_name=>'BITUL_I'
,p_parent_plug_id=>wwv_flow_api.id(2745817509254597050)
,p_region_css_classes=>'js-dialog-size480x360'
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-size480x320:margin-top-none'
,p_plug_template=>wwv_flow_api.id(3052159502813868459)
,p_plug_display_sequence=>170
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2892533256340659780)
,p_plug_name=>unistr('\05D1\05D9\05D8\05D5\05DC \05D4\05E9\05EA\05EA\05E4\05D5\05EA\05DA \05D1\05E8\05D0\05D9\05D5\05DF \05D4\05D0\05D9\05E9\05D9')
,p_parent_plug_id=>wwv_flow_api.id(2716177230680996311)
,p_region_css_classes=>'popup-content'
,p_region_template_options=>'#DEFAULT#:margin-top-sm:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'popup-layout'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="popup-content-title">',
unistr('    <h2>\05D1\05D9\05D8\05D5\05DC \05D4\05E9\05EA\05EA\05E4\05D5\05EA\05DA \05D1\05E8\05D0\05D9\05D5\05DF \05D4\05D0\05D9\05E9\05D9</h2>'),
'</div>',
unistr('<p class="popup-content-text">\05D4\05E9\05EA\05EA\05E4\05D5\05EA \05D1\05E8\05D0\05D9\05D5\05DF \05D0\05D9\05E9\05D9 \05EA\05D5\05D0\05DE\05D4 \05DC\05D9\05D5\05DD 12/02/2024 \05D1\05E9\05E2\05D4 12:30-13:30  \05D1-ZOOM</p>'),
unistr('<p class="popup-content-text">\05D7\05E9\05D5\05D1 \05DC\05E9\05D9\05DD \05DC\05D1, \05D1\05D9\05D8\05D5\05DC \05D4\05D4\05E9\05EA\05EA\05E4\05D5\05EA, \05D5\05D4\05E8\05E9\05DE\05D4 \05DC\05DE\05D5\05E2\05D3 \05D0\05D7\05E8 \05EA\05EA\05D0\05E4\05E9\05E8 \05E4\05E2\05DD \05D0\05D7\05EA \05D1\05DC\05D1\05D3.</p>'),
unistr('<p class="popup-content-text">\05D4\05D0\05DD \05D1\05DB\05DC \05D6\05D0\05EA \05DC\05D1\05D8\05DC?</p>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'JAFI_LTS_APEX_UTILS.lts_get_cancelation_count(:P0_PERSON_ID, :P0_EVENT_FLAG)  = 0'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2892532629205659774)
,p_plug_name=>unistr('\05D1\05D9\05D8\05D5\05DC \05D4\05E9\05EA\05EA\05E4\05D5\05EA\05DA \05D1\05DE\05E8\05DB\05D6 \05D4\05E2\05E8\05DB\05D4')
,p_parent_plug_id=>wwv_flow_api.id(2716177230680996311)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg'
,p_region_attributes=>'style="padding:20px;"'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>20
,p_plug_display_column=>2
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<span style="text-align:right;color:#3A8B94;font-size:28px;font-height:30px;font-weight:300;">1\05E9\05D9\05E0\05D5\05D9 \05D4\05E9\05EA\05EA\05E4\05D5\05EA\05DA'),
unistr('\05D1\05E8\05D0\05D9\05D5\05DF \05D0\05D9\05E9\05D9</span><br><br><br>'),
'<span style="font-size:16px;line-height:18px;color:#3A8B94;font-weight:300;">',
unistr('\05DC\05E6\05E2\05E8\05E0\05D5, \05DC\05D0 \05E0\05D9\05EA\05DF \05DC\05D1\05D8\05DC \05D4\05E8\05E9\05DE\05D4 \05E4\05E2\05DD \05E0\05D5\05E1\05E4\05EA \05D1\05DE\05E2\05E8\05DB\05EA.<br>'),
unistr('\05E2\05DC \05DE\05E0\05EA \05DC\05D1\05D8\05DC, \05D9\05E9 \05DC\05D9\05E6\05D5\05E8 \05E7\05E9\05E8 \05E2\05DD \05E6\05D5\05D5\05EA \05D4\05DE\05D9\05D5\05DF \05D1\05DE\05D9\05D9\05DC:<br>'),
'',
' shlichutunit@wzo.org.il',
'</span><br><br>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'JAFI_LTS_APEX_UTILS.lts_get_cancelation_count(:P0_PERSON_ID, :P0_EVENT_FLAG)  = 1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2629707513054994832)
,p_plug_name=>unistr('\05D6\05D5\05D2\05D5\05EA \05E9\05D9\05DE\05D5 \05DC\05D1 ')
,p_parent_plug_id=>wwv_flow_api.id(2745817509254597050)
,p_region_css_classes=>'container-inner'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>180
,p_plug_grid_column_css_classes=>'contentandheadings'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color: red;" dir="rtl">',
unistr('\05E2\05DC\05D9\05DB\05DD \05DC\05D4\05D2\05D9\05E2 \05DC\05E8\05D0\05D9\05D5\05DF \05DE\05E9\05D5\05EA\05E3. \05D4\05D4\05E9\05EA\05EA\05E4\05D5\05EA \05E9\05DC \05E9\05E0\05D9 \05D1\05E0\05D9 \05D4\05D6\05D5\05D2 \05D1\05E8\05D0\05D9\05D5\05DF \05D4\05DB\05E8\05D7\05D9\05EA \05E2\05DC \05DE\05E0\05EA \05DC\05D4\05DE\05E9\05D9\05DA \05D1\05EA\05D4\05DC\05D9\05DA!<br/>\05D7\05E9\05D5\05D1 \05DC\05D5\05D5\05D3\05D0 \05E9\05D4\05DE\05D5\05E2\05D3 \05DE\05EA\05D0\05D9\05DD \05DC\05E9\05E0\05D9\05DB\05DD.'),
unistr('\05D1\05DE\05D9\05D3\05D4 \05D5\05E9\05E0\05D9 \05D1\05E0\05D9 \05D4\05D6\05D5\05D2 \05DE\05EA\05DE\05D9\05D9\05E0\05D9\05DD \05DC\05E9\05DC\05D9\05D7\05D5\05EA, \05D4\05E8\05D9\05E9\05D5\05DD \05DC\05E8\05D0\05D9\05D5\05DF \05D6\05D5\05D2\05D9 \05D9\05E2\05E9\05D4<br/>\05E2\05DC \05D9\05D3\05D9 \05D0\05D7\05D3 \05DE\05D1\05E0\05D9 \05D4\05D6\05D5\05D2 \05E2\05D1\05D5\05E8 \05E9\05E0\05D9\05DB\05DD.'),
'</span>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P0_SADNA_TYPE = ''TEACH'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2596488929263582722)
,p_plug_name=>unistr('\05D4\05E6\05E2\05D3 \05D4\05D1\05D0: \05D4\05E8\05E9\05DE\05D4 \05DC\05E8\05D0\05D9\05D5\05DF \05D0\05D9\05E9\05D9')
,p_parent_plug_id=>wwv_flow_api.id(2745817509254597050)
,p_region_css_classes=>'container-inner'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\05E7\05D5\05D3\05DD \05DB\05DC - \05DB\05DC \05D4\05DB\05D1\05D5\05D3!\00A0 \05E2\05D1\05E8\05EA \05D1\05D4\05E6\05DC\05D7\05D4 \05D0\05EA \05E9\05DC\05D1 \05DE\05E8\05DB\05D6 \05D4\05D4\05E2\05E8\05DB\05D4!<br>'),
'<br>',
unistr('\05D4\05E9\05DC\05D1 \05D4\05D1\05D0 \05D4\05D5\05D0 \05E9\05DC\05D1 \05D4\05E8\05D0\05D9\05D5\05DF \05D4\05D0\05D9\05E9\05D9 \05D1\05D5 \05E0\05DB\05D9\05E8 \05D9\05D5\05EA\05E8 \05DC\05E2\05D5\05DE\05E7.<br>'),
unistr('\05D4\05E8\05D0\05D9\05D5\05DF \05D9\05D9\05E2\05E8\05DA \05DB\05E9\05E2\05D4 \05E2\05DD \05E6\05D5\05D5\05EA \05D4\05DE\05D9\05D5\05DF, \05D1\05DE\05D4\05DC\05DB\05D5 \05E0\05E9\05DE\05E2 \05E2\05DC \05D4\05E0\05E1\05D9\05D5\05DF \05D5\05D4\05E4\05E2\05D9\05DC\05D5\05D9\05D5\05EA \05D4\05E7\05D5\05D3\05DE\05D5\05EA \05E9\05DC\05DA,<br>'),
unistr('\05E0\05E2\05E0\05D4 \05E2\05DC \05E9\05D0\05DC\05D5\05EA \05D5\05D4\05EA\05DC\05D1\05D8\05D5\05D9\05D5\05EA \05D5\05E0\05EA\05E7\05D3\05DD \05E2\05D5\05D3 \05E9\05DC\05D1 \05D1\05D3\05E8\05DA \05DC\05D4\05EA\05D0\05DE\05D4 \05D4\05DE\05D3\05D5\05D9\05D9\05E7\05EA \05D1\05D9\05D5\05EA\05E8 \05E2\05D1\05D5\05E8\05DA.\00A0 \00A0'),
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'(:P0_BOOKED_TO_EVENT = 0  AND :P0_USER_STEP = 2 AND :P0_BOOKED_FINAL = 0 AND :P0_ASSIG_STATUS_ID <> 282)'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2596488796844582721)
,p_plug_name=>'events'
,p_parent_plug_id=>wwv_flow_api.id(2745817509254597050)
,p_region_css_classes=>'card-list-slider'
,p_region_template_options=>'#DEFAULT#:margin-top-lg'
,p_component_template_options=>'#DEFAULT#:t-Cards--basic:t-Cards--3cols:t-Cards--animColorFill'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(3254411434216674946)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(3254410638194662946)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P0_BOOKED_TO_EVENT = 0 and :P0_EVENT_NO_FULL > 0 and :P0_BOOKED_FINAL = 0 and :P0_ASSIG_STATUS_ID <> 282'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(757841071941326710)
,p_plug_name=>unistr('\05D4\05E6\05E2\05D3 \05D4\05D1\05D0: \05D4\05E8\05E9\05DE\05D4 \05DC\05E8\05D0\05D9\05D5\05DF \05D0\05D9\05E9\05D9')
,p_parent_plug_id=>wwv_flow_api.id(2745817509254597050)
,p_region_css_classes=>'container-inner'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\05E7\05D5\05D3\05DD \05DB\05DC - \05DB\05DC \05D4\05DB\05D1\05D5\05D3!\00A0 \05E2\05D1\05E8\05EA \05D1\05D4\05E6\05DC\05D7\05D4 \05D0\05EA \05E9\05DC\05D1 \05DE\05E8\05DB\05D6 \05D4\05D4\05E2\05E8\05DB\05D4!<br>'),
'<br>',
unistr('\05D4\05E9\05DC\05D1 \05D4\05D1\05D0 \05D4\05D5\05D0 \05E9\05DC\05D1 \05D4\05E8\05D0\05D9\05D5\05DF \05D4\05D0\05D9\05E9\05D9 \05D1\05D5 \05E0\05DB\05D9\05E8 \05D9\05D5\05EA\05E8 \05DC\05E2\05D5\05DE\05E7.<br>'),
unistr('\05D4\05E8\05D0\05D9\05D5\05DF \05D9\05D9\05E2\05E8\05DA \05DB\05E9\05E2\05D4 \05E2\05DD \05E6\05D5\05D5\05EA \05D4\05DE\05D9\05D5\05DF, \05D1\05DE\05D4\05DC\05DB\05D5 \05E0\05E9\05DE\05E2 \05E2\05DC \05D4\05E0\05E1\05D9\05D5\05DF \05D5\05D4\05E4\05E2\05D9\05DC\05D5\05D9\05D5\05EA \05D4\05E7\05D5\05D3\05DE\05D5\05EA \05E9\05DC\05DA,<br>'),
unistr('\05E0\05E2\05E0\05D4 \05E2\05DC \05E9\05D0\05DC\05D5\05EA \05D5\05D4\05EA\05DC\05D1\05D8\05D5\05D9\05D5\05EA \05D5\05E0\05EA\05E7\05D3\05DD \05E2\05D5\05D3 \05E9\05DC\05D1 \05D1\05D3\05E8\05DA \05DC\05D4\05EA\05D0\05DE\05D4 \05D4\05DE\05D3\05D5\05D9\05D9\05E7\05EA \05D1\05D9\05D5\05EA\05E8 \05E2\05D1\05D5\05E8\05DA.\00A0 \00A0'),
'<br><br>',
unistr('\05DC\05E6\05D5\05E8\05DA \05E8\05D9\05E9\05D5\05DD \05DC\05E8\05D0\05D9\05D5\05DF \05D5\05DC\05E4\05E8\05D8\05D9\05DD \05E0\05D5\05E1\05E4\05D9\05DD \05E0\05D9\05EA\05DF \05DC\05E4\05E0\05D5\05EA \05D0\05DC \05DE\05E0\05D4\05DC\05EA \05D4\05EA\05D9\05E7 - &P0_MENAHEL_TIK_NAME. \05DE\05D9\05D9\05DC &P0_MENAHEL_TIK_EMAIL. \05D8\05DC\05E4\05D5\05DF &P0_MENAHEL_TIK_PHONE.'),
unistr('\05D0\05D5 \05D1\05D5\05D5\05D8\05E1\05D0\05E4: 0522450151')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P0_BOOKED_TO_EVENT = 0  AND :P0_USER_STEP = 2 AND :P0_BOOKED_FINAL = 0 AND :P0_ASSIG_STATUS_ID = 282'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>'Only for P0_ASSIG_STATUS_ID = 282 and  :P0_EVENT_NO_FULL =0 --- > we need to add additional line '
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(379619701686937050)
,p_plug_name=>unistr('\05E0\05E8\05E9\05DE\05EA \05D1\05D4\05E6\05DC\05D7\05D4 \05DC\05E8\05D0\05D9\05D5\05DF \05D4\05D0\05D9\05E9\05D9!')
,p_parent_plug_id=>wwv_flow_api.id(2745817509254597050)
,p_region_css_classes=>'container-inner'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>120
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\05D4\05E8\05D0\05D9\05D5\05DF \05E9\05DC\05DA \05D9\05D9\05E2\05E8\05DA \05D1&PO_START_DAY_WEEK. \05D1\05E9\05E2\05D4 &P0_PERSON_ETIME. \05D1\05D6\05D5\05DD. '),
'<br>',
unistr('\05E7\05D9\05E9\05D5\05E8 \05DC\05D6\05D5\05DD \05D9\05D9\05E9\05DC\05D7 \05D0\05DC\05D9\05DA \05E2\05D3 \05D9\05D5\05DD \05DC\05E4\05E0\05D9 \05D4\05E8\05D0\05D9\05D5\05DF. \05D1\05DE\05D9\05D3\05D4 \05D5\05DC\05D0 \05D4\05EA\05E7\05D1\05DC \05D4\05E7\05D9\05E9\05D5\05E8 \05D9\05E9 \05DC\05E4\05E0\05D5\05EA \05D0\05DC\05D9\05E0\05D5.'),
'<br><br>',
unistr('\05DC\05E9\05D9\05E0\05D5\05D9/\05D1\05D9\05D8\05D5\05DC \05D4\05E8\05E9\05DE\05D4 \05D9\05E9 \05DC\05E4\05E0\05D5\05EA \05D0\05DC\05D9\05E0\05D5 \05D1\05D5\05D5\05D8\05E1\05D0\05E4 0522450151 \05D0\05D5 \05D1\05DE\05D9\05D9\05DC shlichutunit@wzo.org.il')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'SQL_EXPRESSION'
,p_plug_display_when_condition=>'(NVl(:P0_BOOKED_TO_EVENT,0) <> 0  or  (:P0_BOOKED_FINAL =1) )  and  NVL(:PO_ZOOM_LINK, ''0'')= ''0'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2700179245667418152)
,p_plug_name=>'MainContainer'
,p_region_css_classes=>'topslider-rs'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2664432443175106756)
,p_plug_name=>'Pictures'
,p_parent_plug_id=>wwv_flow_api.id(2700179245667418152)
,p_region_css_classes=>'js-cycle20s'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:js-cycle5s:i-h640:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(3275881395305542934)
,p_plug_display_sequence=>20
,p_plug_grid_column_css_classes=>'heroSlider'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="slider_wp_chat">',
'<div class="container-inner">',
'  <a href="&PO_WHATSAPP." target="_blank rel="noopener noreferrer">',
'    <img src="#APP_IMAGES#wp-social-media-logo.png">',
unistr('<span> <p style="text-align:right">\05D9\05E9 \05DC\05DB\05DD \05E9\05D0\05DC\05D5\05EA?<br />'),
unistr('\05D3\05D1\05E8\05D5 \05D0\05D9\05EA\05E0\05D5 \05D1\05D5\05D5\05D0\05D8\05E1\05D0\05E4</p><span/>'),
'</a>',
'</div>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2947507663433389198)
,p_plug_name=>'Picture1'
,p_parent_plug_id=>wwv_flow_api.id(2664432443175106756)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img class="pic1" id="pic1" src="#APP_IMAGES#01.jpg" width="100%" >',
'<img class="pic1m" id="pic1m" src="#APP_IMAGES#02m.jpg" width="100%" >'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="slideContentOverlay"></div>',
'<div class="slideContent">',
'    <div class="container-inner">',
unistr('        <h1 class="heroSlideTitle">\05D4\05D9\05D9 &PO_USER_FNAME., \05D4\05DE\05E1\05E2 \05E9\05DC\05DA \05E2\05DD \05D4\05D9\05D7\05D9\05D3\05D4 \05DC\05E9\05DC\05D9\05D7\05D5\05EA \05DE\05EA\05D7\05D9\05DC \05DB\05D0\05DF</h1>'),
'        <div class="heroSlideText">',
unistr('            <p>\05D1\05D0\05D9\05D6\05D5\05E8 \05D4\05D0\05D9\05E9\05D9 \05E9\05DC\05DA \05E0\05D9\05EA\05DF \05DC\05D4\05EA\05E2\05D3\05DB\05DF \05D1\05DB\05DC \05E9\05DC\05D1\05D9 \05EA\05D4\05DC\05D9\05DA \05D4\05DE\05D9\05D5\05DF, \05E6\05E2\05D3 \05D0\05D7\05E8 \05E6\05E2\05D3, \05DE\05EA\05D7\05D9\05DC\05EA\05D5 \05D5\05E2\05D3 \05E1\05D5\05E4\05D5.</p>'),
unistr('            <p>\05D4\05E8\05E9\05DE\05D4 \05DC\05DE\05E8\05DB\05D6\05D9 \05D4\05E2\05E8\05DB\05D4, \05E8\05D0\05D9\05D5\05E0\05D5\05EA, \05D4\05D2\05E9\05EA \05D8\05E4\05E1\05D9\05DD \05D5\05DE\05E1\05DE\05DB\05D9\05DD, \05DE\05D9\05D3\05E2 \05D7\05E9\05D5\05D1 \05D5\05D2\05DD \05DB\05DE\05D4 \05D8\05D9\05E4\05D9\05DD. \05E9\05E0\05EA\05D7\05D9\05DC?</p>'),
'        </div>',
'    </div>',
'</div>'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2947505726208389179)
,p_plug_name=>'Picture4'
,p_parent_plug_id=>wwv_flow_api.id(2664432443175106756)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img class="pic4" id="pic4" src="#APP_IMAGES#04.jpg" width="100%" >',
'<img class="pic4m" id="pic4m" src="#APP_IMAGES#05m.jpg" width="100%" >'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="slideContentOverlay"></div>',
'<div class="slideContent">',
'    <div class="container-inner">',
unistr('        <h2 class="heroSlideTitle">\05D4\05D9\05D9 &PO_USER_FNAME., \05D4\05DE\05E1\05E2 \05E9\05DC\05DA \05E2\05DD \05D4\05D9\05D7\05D9\05D3\05D4 \05DC\05E9\05DC\05D9\05D7\05D5\05EA \05DE\05EA\05D7\05D9\05DC \05DB\05D0\05DF</h2>'),
'        <div class="heroSlideText">',
unistr('            <p>\05D1\05D0\05D9\05D6\05D5\05E8 \05D4\05D0\05D9\05E9\05D9 \05E9\05DC\05DA \05E0\05D9\05EA\05DF \05DC\05D4\05EA\05E2\05D3\05DB\05DF \05D1\05DB\05DC \05E9\05DC\05D1\05D9 \05EA\05D4\05DC\05D9\05DA \05D4\05DE\05D9\05D5\05DF, \05E6\05E2\05D3 \05D0\05D7\05E8 \05E6\05E2\05D3, \05DE\05EA\05D7\05D9\05DC\05EA\05D5 \05D5\05E2\05D3 \05E1\05D5\05E4\05D5.</p>'),
unistr('            <p>\05D4\05E8\05E9\05DE\05D4 \05DC\05DE\05E8\05DB\05D6\05D9 \05D4\05E2\05E8\05DB\05D4, \05E8\05D0\05D9\05D5\05E0\05D5\05EA, \05D4\05D2\05E9\05EA \05D8\05E4\05E1\05D9\05DD \05D5\05DE\05E1\05DE\05DB\05D9\05DD, \05DE\05D9\05D3\05E2 \05D7\05E9\05D5\05D1 \05D5\05D2\05DD \05DB\05DE\05D4 \05D8\05D9\05E4\05D9\05DD. \05E9\05E0\05EA\05D7\05D9\05DC?</p>'),
'        </div>',
'    </div>',
'</div>'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2947505656893389178)
,p_plug_name=>'Picture5'
,p_parent_plug_id=>wwv_flow_api.id(2664432443175106756)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img class="pic5" id="pic5" src="#APP_IMAGES#03.jpg" width="100%" >',
'<img class="pic5m" id="pic5m" src="#APP_IMAGES#01m.jpg" width="100%" >'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="slideContentOverlay"></div>',
'<div class="slideContent">',
'    <div class="container-inner">',
unistr('        <h2 class="heroSlideTitle">\05D4\05D9\05D9 &PO_USER_FNAME., \05D4\05DE\05E1\05E2 \05E9\05DC\05DA \05E2\05DD \05D4\05D9\05D7\05D9\05D3\05D4 \05DC\05E9\05DC\05D9\05D7\05D5\05EA \05DE\05EA\05D7\05D9\05DC \05DB\05D0\05DF</h2>'),
'        <div class="heroSlideText">',
unistr('            <p>\05D1\05D0\05D9\05D6\05D5\05E8 \05D4\05D0\05D9\05E9\05D9 \05E9\05DC\05DA \05E0\05D9\05EA\05DF \05DC\05D4\05EA\05E2\05D3\05DB\05DF \05D1\05DB\05DC \05E9\05DC\05D1\05D9 \05EA\05D4\05DC\05D9\05DA \05D4\05DE\05D9\05D5\05DF, \05E6\05E2\05D3 \05D0\05D7\05E8 \05E6\05E2\05D3, \05DE\05EA\05D7\05D9\05DC\05EA\05D5 \05D5\05E2\05D3 \05E1\05D5\05E4\05D5.</p>'),
unistr('            <p>\05D4\05E8\05E9\05DE\05D4 \05DC\05DE\05E8\05DB\05D6\05D9 \05D4\05E2\05E8\05DB\05D4, \05E8\05D0\05D9\05D5\05E0\05D5\05EA, \05D4\05D2\05E9\05EA \05D8\05E4\05E1\05D9\05DD \05D5\05DE\05E1\05DE\05DB\05D9\05DD, \05DE\05D9\05D3\05E2 \05D7\05E9\05D5\05D1 \05D5\05D2\05DD \05DB\05DE\05D4 \05D8\05D9\05E4\05D9\05DD. \05E9\05E0\05EA\05D7\05D9\05DC?</p>'),
'        </div>',
'    </div>',
'</div>'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2947505542052389177)
,p_plug_name=>'Picture6'
,p_parent_plug_id=>wwv_flow_api.id(2664432443175106756)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img class="pic6" id="pic6" src="#APP_IMAGES#06.jpg" width="100%" >',
'<img class="pic6m" id="pic6m" src="#APP_IMAGES#06m.jpg" width="100%" >'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="slideContentOverlay"></div>',
'<div class="slideContent">',
'    <div class="container-inner">',
unistr('        <h2 class="heroSlideTitle">\05D4\05D9\05D9 &PO_USER_FNAME., \05D4\05DE\05E1\05E2 \05E9\05DC\05DA \05E2\05DD \05D4\05D9\05D7\05D9\05D3\05D4 \05DC\05E9\05DC\05D9\05D7\05D5\05EA \05DE\05EA\05D7\05D9\05DC \05DB\05D0\05DF</h2>'),
'        <div class="heroSlideText">',
unistr('            <p>\05D1\05D0\05D9\05D6\05D5\05E8 \05D4\05D0\05D9\05E9\05D9 \05E9\05DC\05DA \05E0\05D9\05EA\05DF \05DC\05D4\05EA\05E2\05D3\05DB\05DF \05D1\05DB\05DC \05E9\05DC\05D1\05D9 \05EA\05D4\05DC\05D9\05DA \05D4\05DE\05D9\05D5\05DF, \05E6\05E2\05D3 \05D0\05D7\05E8 \05E6\05E2\05D3, \05DE\05EA\05D7\05D9\05DC\05EA\05D5 \05D5\05E2\05D3 \05E1\05D5\05E4\05D5.</p>'),
unistr('            <p>\05D4\05E8\05E9\05DE\05D4 \05DC\05DE\05E8\05DB\05D6\05D9 \05D4\05E2\05E8\05DB\05D4, \05E8\05D0\05D9\05D5\05E0\05D5\05EA, \05D4\05D2\05E9\05EA \05D8\05E4\05E1\05D9\05DD \05D5\05DE\05E1\05DE\05DB\05D9\05DD, \05DE\05D9\05D3\05E2 \05D7\05E9\05D5\05D1 \05D5\05D2\05DD \05DB\05DE\05D4 \05D8\05D9\05E4\05D9\05DD. \05E9\05E0\05EA\05D7\05D9\05DC?</p>'),
'        </div>',
'    </div>',
'</div>'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2947505382183389176)
,p_plug_name=>'Picture7'
,p_parent_plug_id=>wwv_flow_api.id(2664432443175106756)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img class="pic7" id="pic7" src="#APP_IMAGES#07.jpg" width="100%" >',
'<img class="pic7m" class="pic7m" src="#APP_IMAGES#07m.jpg" width="100%" >'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="slideContentOverlay"></div>',
'<div class="slideContent">',
'    <div class="container-inner">',
unistr('        <h2 class="heroSlideTitle">\05D4\05D9\05D9 &PO_USER_FNAME., \05D4\05DE\05E1\05E2 \05E9\05DC\05DA \05E2\05DD \05D4\05D9\05D7\05D9\05D3\05D4 \05DC\05E9\05DC\05D9\05D7\05D5\05EA \05DE\05EA\05D7\05D9\05DC \05DB\05D0\05DF</h2>'),
'        <div class="heroSlideText">',
unistr('            <p>\05D1\05D0\05D9\05D6\05D5\05E8 \05D4\05D0\05D9\05E9\05D9 \05E9\05DC\05DA \05E0\05D9\05EA\05DF \05DC\05D4\05EA\05E2\05D3\05DB\05DF \05D1\05DB\05DC \05E9\05DC\05D1\05D9 \05EA\05D4\05DC\05D9\05DA \05D4\05DE\05D9\05D5\05DF, \05E6\05E2\05D3 \05D0\05D7\05E8 \05E6\05E2\05D3, \05DE\05EA\05D7\05D9\05DC\05EA\05D5 \05D5\05E2\05D3 \05E1\05D5\05E4\05D5.</p>'),
unistr('            <p>\05D4\05E8\05E9\05DE\05D4 \05DC\05DE\05E8\05DB\05D6\05D9 \05D4\05E2\05E8\05DB\05D4, \05E8\05D0\05D9\05D5\05E0\05D5\05EA, \05D4\05D2\05E9\05EA \05D8\05E4\05E1\05D9\05DD \05D5\05DE\05E1\05DE\05DB\05D9\05DD, \05DE\05D9\05D3\05E2 \05D7\05E9\05D5\05D1 \05D5\05D2\05DD \05DB\05DE\05D4 \05D8\05D9\05E4\05D9\05DD. \05E9\05E0\05EA\05D7\05D9\05DC?</p>'),
'        </div>',
'    </div>',
'</div>'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2947505299666389175)
,p_plug_name=>'Picture8'
,p_parent_plug_id=>wwv_flow_api.id(2664432443175106756)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>100
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img class="pic8" id="pic8" src="#APP_IMAGES#08.jpg" width="100%" >',
'<img class="pic8m" id="pic8m" src="#APP_IMAGES#08m.jpg" width="100%" >'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="slideContentOverlay"></div>',
'<div class="slideContent">',
'    <div class="container-inner">',
unistr('        <h2 class="heroSlideTitle">\05D4\05D9\05D9 &PO_USER_FNAME., \05D4\05DE\05E1\05E2 \05E9\05DC\05DA \05E2\05DD \05D4\05D9\05D7\05D9\05D3\05D4 \05DC\05E9\05DC\05D9\05D7\05D5\05EA \05DE\05EA\05D7\05D9\05DC \05DB\05D0\05DF</h2>'),
'        <div class="heroSlideText">',
unistr('            <p>\05D1\05D0\05D9\05D6\05D5\05E8 \05D4\05D0\05D9\05E9\05D9 \05E9\05DC\05DA \05E0\05D9\05EA\05DF \05DC\05D4\05EA\05E2\05D3\05DB\05DF \05D1\05DB\05DC \05E9\05DC\05D1\05D9 \05EA\05D4\05DC\05D9\05DA \05D4\05DE\05D9\05D5\05DF, \05E6\05E2\05D3 \05D0\05D7\05E8 \05E6\05E2\05D3, \05DE\05EA\05D7\05D9\05DC\05EA\05D5 \05D5\05E2\05D3 \05E1\05D5\05E4\05D5.</p>'),
unistr('            <p>\05D4\05E8\05E9\05DE\05D4 \05DC\05DE\05E8\05DB\05D6\05D9 \05D4\05E2\05E8\05DB\05D4, \05E8\05D0\05D9\05D5\05E0\05D5\05EA, \05D4\05D2\05E9\05EA \05D8\05E4\05E1\05D9\05DD \05D5\05DE\05E1\05DE\05DB\05D9\05DD, \05DE\05D9\05D3\05E2 \05D7\05E9\05D5\05D1 \05D5\05D2\05DD \05DB\05DE\05D4 \05D8\05D9\05E4\05D9\05DD. \05E9\05E0\05EA\05D7\05D9\05DC?</p>'),
'        </div>',
'    </div>',
'</div>'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2947504948310389171)
,p_plug_name=>'Picture9'
,p_parent_plug_id=>wwv_flow_api.id(2664432443175106756)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>110
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img class="pic9" id="pic9" src="#APP_IMAGES#09.jpg" width="100%" >',
'<img class="pic9m" id="pic9m" src="#APP_IMAGES#09m.jpg" width="100%" >'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="slideContentOverlay"></div>',
'<div class="slideContent">',
'    <div class="container-inner">',
unistr('        <h2 class="heroSlideTitle">\05D4\05D9\05D9 &PO_USER_FNAME., \05D4\05DE\05E1\05E2 \05E9\05DC\05DA \05E2\05DD \05D4\05D9\05D7\05D9\05D3\05D4 \05DC\05E9\05DC\05D9\05D7\05D5\05EA \05DE\05EA\05D7\05D9\05DC \05DB\05D0\05DF</h2>'),
'        <div class="heroSlideText">',
unistr('            <p>\05D1\05D0\05D9\05D6\05D5\05E8 \05D4\05D0\05D9\05E9\05D9 \05E9\05DC\05DA \05E0\05D9\05EA\05DF \05DC\05D4\05EA\05E2\05D3\05DB\05DF \05D1\05DB\05DC \05E9\05DC\05D1\05D9 \05EA\05D4\05DC\05D9\05DA \05D4\05DE\05D9\05D5\05DF, \05E6\05E2\05D3 \05D0\05D7\05E8 \05E6\05E2\05D3, \05DE\05EA\05D7\05D9\05DC\05EA\05D5 \05D5\05E2\05D3 \05E1\05D5\05E4\05D5.</p>'),
unistr('            <p>\05D4\05E8\05E9\05DE\05D4 \05DC\05DE\05E8\05DB\05D6\05D9 \05D4\05E2\05E8\05DB\05D4, \05E8\05D0\05D9\05D5\05E0\05D5\05EA, \05D4\05D2\05E9\05EA \05D8\05E4\05E1\05D9\05DD \05D5\05DE\05E1\05DE\05DB\05D9\05DD, \05DE\05D9\05D3\05E2 \05D7\05E9\05D5\05D1 \05D5\05D2\05DD \05DB\05DE\05D4 \05D8\05D9\05E4\05D9\05DD. \05E9\05E0\05EA\05D7\05D9\05DC?</p>'),
'        </div>',
'    </div>',
'</div>'))
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2947504840178389170)
,p_plug_name=>'Picture10'
,p_parent_plug_id=>wwv_flow_api.id(2664432443175106756)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>120
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img class="pic10" id="pic10" src="#APP_IMAGES#10.jpg" width="100%" >',
'<img class="pic10m" id="pic10m" src="#APP_IMAGES#10m.jpg" width="100%" >'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="slideContentOverlay"></div>',
'<div class="slideContent">',
'    <div class="container-inner">',
unistr('        <h2 class="heroSlideTitle">\05D4\05D9\05D9 &PO_USER_FNAME., \05D4\05DE\05E1\05E2 \05E9\05DC\05DA \05E2\05DD \05D4\05D9\05D7\05D9\05D3\05D4 \05DC\05E9\05DC\05D9\05D7\05D5\05EA \05DE\05EA\05D7\05D9\05DC \05DB\05D0\05DF</h2>'),
'        <div class="heroSlideText">',
unistr('            <p>\05D1\05D0\05D9\05D6\05D5\05E8 \05D4\05D0\05D9\05E9\05D9 \05E9\05DC\05DA \05E0\05D9\05EA\05DF \05DC\05D4\05EA\05E2\05D3\05DB\05DF \05D1\05DB\05DC \05E9\05DC\05D1\05D9 \05EA\05D4\05DC\05D9\05DA \05D4\05DE\05D9\05D5\05DF, \05E6\05E2\05D3 \05D0\05D7\05E8 \05E6\05E2\05D3, \05DE\05EA\05D7\05D9\05DC\05EA\05D5 \05D5\05E2\05D3 \05E1\05D5\05E4\05D5.</p>'),
unistr('            <p>\05D4\05E8\05E9\05DE\05D4 \05DC\05DE\05E8\05DB\05D6\05D9 \05D4\05E2\05E8\05DB\05D4, \05E8\05D0\05D9\05D5\05E0\05D5\05EA, \05D4\05D2\05E9\05EA \05D8\05E4\05E1\05D9\05DD \05D5\05DE\05E1\05DE\05DB\05D9\05DD, \05DE\05D9\05D3\05E2 \05D7\05E9\05D5\05D1 \05D5\05D2\05DD \05DB\05DE\05D4 \05D8\05D9\05E4\05D9\05DD. \05E9\05E0\05EA\05D7\05D9\05DC?</p>'),
'        </div>',
'    </div>',
'</div>'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2947504683880389169)
,p_plug_name=>'Picture11'
,p_parent_plug_id=>wwv_flow_api.id(2664432443175106756)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>130
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img class="pic11" id="pic11" src="#APP_IMAGES#05.jpg" width="100%" >',
'<img class="pic11m" id="pic11m" src="#APP_IMAGES#11m.jpg" width="100%" >'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="slideContentOverlay"></div>',
'<div class="slideContent">',
'    <div class="container-inner">',
unistr('        <h2 class="heroSlideTitle">\05D4\05D9\05D9 &PO_USER_FNAME., \05D4\05DE\05E1\05E2 \05E9\05DC\05DA \05E2\05DD \05D4\05D9\05D7\05D9\05D3\05D4 \05DC\05E9\05DC\05D9\05D7\05D5\05EA \05DE\05EA\05D7\05D9\05DC \05DB\05D0\05DF</h2>'),
'        <div class="heroSlideText">',
unistr('            <p>\05D1\05D0\05D9\05D6\05D5\05E8 \05D4\05D0\05D9\05E9\05D9 \05E9\05DC\05DA \05E0\05D9\05EA\05DF \05DC\05D4\05EA\05E2\05D3\05DB\05DF \05D1\05DB\05DC \05E9\05DC\05D1\05D9 \05EA\05D4\05DC\05D9\05DA \05D4\05DE\05D9\05D5\05DF, \05E6\05E2\05D3 \05D0\05D7\05E8 \05E6\05E2\05D3, \05DE\05EA\05D7\05D9\05DC\05EA\05D5 \05D5\05E2\05D3 \05E1\05D5\05E4\05D5.</p>'),
unistr('            <p>\05D4\05E8\05E9\05DE\05D4 \05DC\05DE\05E8\05DB\05D6\05D9 \05D4\05E2\05E8\05DB\05D4, \05E8\05D0\05D9\05D5\05E0\05D5\05EA, \05D4\05D2\05E9\05EA \05D8\05E4\05E1\05D9\05DD \05D5\05DE\05E1\05DE\05DB\05D9\05DD, \05DE\05D9\05D3\05E2 \05D7\05E9\05D5\05D1 \05D5\05D2\05DD \05DB\05DE\05D4 \05D8\05D9\05E4\05D9\05DD. \05E9\05E0\05EA\05D7\05D9\05DC?</p>'),
'        </div>',
'    </div>',
'</div>'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2823271897378488055)
,p_plug_name=>'Video'
,p_parent_plug_id=>wwv_flow_api.id(2664432443175106756)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!-- The video -->',
'<video autoplay muted loop id="myVideo" class="desktop-video hide-iphone" data-src="#APP_IMAGES#SOJNUT_VIDEO.mp4">',
'</video>',
' ',
'<!-- The video -->',
'<video autoplay muted loop id="mobileVideo" class="mobile-video" data-src="#APP_IMAGES#new_mobile_viedo.mp4">',
'</video>',
'',
'',
'<img data-src="#APP_IMAGES#new_IPhone.gif" id="iphoneGif" class="iphone-gif d-none" />',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="slideContentOverlay"></div>',
'<div class="slideContent">',
'    <div class="container-inner">',
unistr('        <h1 class="heroSlideTitle">\05D4\05D9\05D9 &PO_USER_FNAME., \05D4\05DE\05E1\05E2 \05E9\05DC\05DA \05E2\05DD \05D4\05D9\05D7\05D9\05D3\05D4 \05DC\05E9\05DC\05D9\05D7\05D5\05EA \05DE\05EA\05D7\05D9\05DC \05DB\05D0\05DF</h1>'),
'        <div class="heroSlideText">',
unistr('            <p>\05D1\05D0\05D9\05D6\05D5\05E8 \05D4\05D0\05D9\05E9\05D9 \05E9\05DC\05DA \05E0\05D9\05EA\05DF \05DC\05D4\05EA\05E2\05D3\05DB\05DF \05D1\05DB\05DC \05E9\05DC\05D1\05D9 \05EA\05D4\05DC\05D9\05DA \05D4\05DE\05D9\05D5\05DF, \05E6\05E2\05D3 \05D0\05D7\05E8 \05E6\05E2\05D3, \05DE\05EA\05D7\05D9\05DC\05EA\05D5 \05D5\05E2\05D3 \05E1\05D5\05E4\05D5.</p>'),
unistr('            <p>\05D4\05E8\05E9\05DE\05D4 \05DC\05DE\05E8\05DB\05D6\05D9 \05D4\05E2\05E8\05DB\05D4, \05E8\05D0\05D9\05D5\05E0\05D5\05EA, \05D4\05D2\05E9\05EA \05D8\05E4\05E1\05D9\05DD \05D5\05DE\05E1\05DE\05DB\05D9\05DD, \05DE\05D9\05D3\05E2 \05D7\05E9\05D5\05D1 \05D5\05D2\05DD \05DB\05DE\05D4 \05D8\05D9\05E4\05D9\05DD. \05E9\05E0\05EA\05D7\05D9\05DC?</p>'),
'        </div>',
'    </div>',
'</div>'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2700179445546418154)
,p_plug_name=>'Picture2'
,p_parent_plug_id=>wwv_flow_api.id(2664432443175106756)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img class="pic2" id="pic2" src="#APP_IMAGES#02.jpg" width="100%" >',
'<img class="pic2m" id="pic2m" src="#APP_IMAGES#03m.jpg" width="100%" >'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="slideContentOverlay"></div>',
'<div class="slideContent">',
'    <div class="container-inner">',
unistr('        <h2 class="heroSlideTitle">\05D4\05D9\05D9 &PO_USER_FNAME., \05D4\05DE\05E1\05E2 \05E9\05DC\05DA \05E2\05DD \05D4\05D9\05D7\05D9\05D3\05D4 \05DC\05E9\05DC\05D9\05D7\05D5\05EA \05DE\05EA\05D7\05D9\05DC \05DB\05D0\05DF</h2>'),
'        <div class="heroSlideText">',
unistr('            <p>\05D1\05D0\05D9\05D6\05D5\05E8 \05D4\05D0\05D9\05E9\05D9 \05E9\05DC\05DA \05E0\05D9\05EA\05DF \05DC\05D4\05EA\05E2\05D3\05DB\05DF \05D1\05DB\05DC \05E9\05DC\05D1\05D9 \05EA\05D4\05DC\05D9\05DA \05D4\05DE\05D9\05D5\05DF, \05E6\05E2\05D3 \05D0\05D7\05E8 \05E6\05E2\05D3, \05DE\05EA\05D7\05D9\05DC\05EA\05D5 \05D5\05E2\05D3 \05E1\05D5\05E4\05D5.</p>'),
unistr('            <p>\05D4\05E8\05E9\05DE\05D4 \05DC\05DE\05E8\05DB\05D6\05D9 \05D4\05E2\05E8\05DB\05D4, \05E8\05D0\05D9\05D5\05E0\05D5\05EA, \05D4\05D2\05E9\05EA \05D8\05E4\05E1\05D9\05DD \05D5\05DE\05E1\05DE\05DB\05D9\05DD, \05DE\05D9\05D3\05E2 \05D7\05E9\05D5\05D1 \05D5\05D2\05DD \05DB\05DE\05D4 \05D8\05D9\05E4\05D9\05DD. \05E9\05E0\05EA\05D7\05D9\05DC?</p>'),
'        </div>',
'    </div>',
'</div>'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2700179056893418150)
,p_plug_name=>'Picture3'
,p_parent_plug_id=>wwv_flow_api.id(2664432443175106756)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img class="pic3" id="pic3" src="#APP_IMAGES#11.jpg" width="100%" >',
'<img class="pic3m" id="pic3m" src="#APP_IMAGES#04m.jpg" width="100%" >'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="slideContentOverlay"></div>',
'<div class="slideContent">',
'    <div class="container-inner">',
unistr('        <h2 class="heroSlideTitle">\05D4\05D9\05D9 &PO_USER_FNAME., \05D4\05DE\05E1\05E2 \05E9\05DC\05DA \05E2\05DD \05D4\05D9\05D7\05D9\05D3\05D4 \05DC\05E9\05DC\05D9\05D7\05D5\05EA \05DE\05EA\05D7\05D9\05DC \05DB\05D0\05DF</h2>'),
'        <div class="heroSlideText">',
unistr('            <p>\05D1\05D0\05D9\05D6\05D5\05E8 \05D4\05D0\05D9\05E9\05D9 \05E9\05DC\05DA \05E0\05D9\05EA\05DF \05DC\05D4\05EA\05E2\05D3\05DB\05DF \05D1\05DB\05DC \05E9\05DC\05D1\05D9 \05EA\05D4\05DC\05D9\05DA \05D4\05DE\05D9\05D5\05DF, \05E6\05E2\05D3 \05D0\05D7\05E8 \05E6\05E2\05D3, \05DE\05EA\05D7\05D9\05DC\05EA\05D5 \05D5\05E2\05D3 \05E1\05D5\05E4\05D5.</p>'),
unistr('            <p>\05D4\05E8\05E9\05DE\05D4 \05DC\05DE\05E8\05DB\05D6\05D9 \05D4\05E2\05E8\05DB\05D4, \05E8\05D0\05D9\05D5\05E0\05D5\05EA, \05D4\05D2\05E9\05EA \05D8\05E4\05E1\05D9\05DD \05D5\05DE\05E1\05DE\05DB\05D9\05DD, \05DE\05D9\05D3\05E2 \05D7\05E9\05D5\05D1 \05D5\05D2\05DD \05DB\05DE\05D4 \05D8\05D9\05E4\05D9\05DD. \05E9\05E0\05EA\05D7\05D9\05DC?</p>'),
'        </div>',
'    </div>',
'</div>'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2700178788170418148)
,p_plug_name=>unistr('<span class="tls-Region-title" style="color:#EDD64A;">\05D4\05E9\05DC\05D1 \05E9\05DC\05D9 \05D1\05EA\05D4\05DC\05D9\05DA \05D4\05DE\05D9\05D5\05DF:</span>')
,p_region_name=>'BLUE_HEADER'
,p_region_css_classes=>'container-inner bgDarkCyan'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'pro-selection-process'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_column_width=>'style="background-color:#3A8B94;"'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2700178698801418147)
,p_plug_name=>'PersonProgress'
,p_region_name=>'image-progess'
,p_parent_plug_id=>wwv_flow_api.id(2700178788170418148)
,p_region_css_classes=>'image-progess-img'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>7
,p_plug_grid_column_css_classes=>'personProgress-img'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="imageEdit">',
'    <span aria-hidden="true" class="fa fa-camera fa-2x"></span>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(2700178334445418143)
,p_name=>'USERSTEP'
,p_parent_plug_id=>wwv_flow_api.id(2700178788170418148)
,p_template=>wwv_flow_api.id(3275884580557542937)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--staticRowColors:t-Report--rowHighlightOff:t-Report--noBorders'
,p_new_grid_row=>false
,p_grid_column_css_classes=>'personProgress-step'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   ',
'   select maslul_steps.sort_by,',
'             maslul_steps.step,',
'      ',
'      case when  cheked_flag = ''Y'' then ',
'            ''&nbsp;<i class="fa fa-check fa-2x"></i>''',
'           else ',
'            null',
'           end step_cheked, ',
'       case when ( :P0_EVENT_FLAG = maslul_steps. step_ligh ) OR  cheked_flag = ''Y'' then',
'             ''white''',
'            else',
'             ''lightgray'' end active_step',
'   ',
'  from (select l.ATTRIBUTE1 sort_by,',
unistr('               ''\05DE\05E8\05DB\05D6 \05D4\05E2\05E8\05DB\05D4'' step,'),
'               ''1''           step_ligh,',
'                :P0_STEP_1    cheked_flag,',
'                l.LOOKUP_CODE',
'          from fnd_common_lookups l',
'         where l.LOOKUP_TYPE = ''JAFI_HR_LTS_MASLUL_TYPES_PORT''',
'        union',
'        Select l.ATTRIBUTE2 sort_by,',
unistr('               ''\05E8\05D0\05D9\05D5\05DF \05D0\05D9\05E9\05D9'' step,'),
'               ''2''          step_ligh,',
'               :P0_STEP_2   cheked_flag, ',
'               l.LOOKUP_CODE',
'          from fnd_common_lookups l',
'         where l.LOOKUP_TYPE = ''JAFI_HR_LTS_MASLUL_TYPES_PORT''',
'        union',
'        select l.ATTRIBUTE3 sort_by,',
unistr('               ''\05D1\05D9\05D8\05D5\05D7 \05E8\05E4\05D5\05D0\05D9'' step,'),
'               ''3''          step_ligh,',
'               :P0_STEP_3   cheked_flag, ',
'               l.LOOKUP_CODE',
'          from fnd_common_lookups l',
'         where l.LOOKUP_TYPE = ''JAFI_HR_LTS_MASLUL_TYPES_PORT''',
'        union',
'        select l.ATTRIBUTE4 sort_by,',
unistr('               ''\05DE\05D1\05D7\05DF \05D0\05D9\05E9\05D9\05D5\05EA\05D9'' step,'),
'               ''4''          step_ligh,',
'               :P0_STEP_4   cheked_flag, ',
'               l.LOOKUP_CODE',
'          from fnd_common_lookups l',
'         where l.LOOKUP_TYPE = ''JAFI_HR_LTS_MASLUL_TYPES_PORT''',
'         ) maslul_steps',
' ',
'where maslul_steps.LOOKUP_CODE = :PO_MASLUL_TYPE',
'order by  maslul_steps.sort_by',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(3275828284632542878)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3246139294803077852)
,p_query_column_id=>1
,p_column_alias=>'SORT_BY'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3246138070126077851)
,p_query_column_id=>2
,p_column_alias=>'STEP'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="color:#ACTIVE_STEP#;"> #STEP# #STEP_CHEKED# </span>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3246138407114077851)
,p_query_column_id=>3
,p_column_alias=>'STEP_CHEKED'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3246138850111077852)
,p_query_column_id=>4
,p_column_alias=>'ACTIVE_STEP'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2654407888177425659)
,p_plug_name=>'SHALOM'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container-inner">',
unistr('\00A0  <div class="journeySection">\00A0'),
unistr('\00A0 \00A0 \00A0 \00A0 <h2>\05D4\05D9\05D9 &PO_USER_FNAME.,<br> \05D4\05DE\05E1\05E2 \05E9\05DC\05DA \05E2\05DD \05D4\05D9\05D7\05D9\05D3\05D4 \05DC\05E9\05DC\05D9\05D7\05D5\05EA \05DE\05EA\05D7\05D9\05DC \05DB\05D0\05DF</h2>'),
unistr('\00A0 \00A0 \00A0 \00A0 <p>\05D1\05D0\05D9\05D6\05D5\05E8 \05D4\05D0\05D9\05E9\05D9 \05E9\05DC\05DA \05E0\05D9\05EA\05DF \05DC\05D4\05EA\05E2\05D3\05DB\05DF \05D1\05DB\05DC \05E9\05DC\05D1\05D9 \05EA\05D4\05DC\05D9\05DA \05D4\05DE\05D9\05D5\05DF, \05E6\05E2\05D3 \05D0\05D7\05E8 \05E6\05E2\05D3, \05DE\05EA\05D7\05D9\05DC\05EA\05D5 \05D5\05E2\05D3 \05E1\05D5\05E4\05D5.'),
unistr('\00A0 \00A0 \00A0 \00A0 \00A0 \00A0 <br />\05D4\05E8\05E9\05DE\05D4 \05DC\05DE\05E8\05DB\05D6\05D9 \05D4\05E2\05E8\05DB\05D4, \05E8\05D0\05D9\05D5\05E0\05D5\05EA, \05D4\05D2\05E9\05EA \05D8\05E4\05E1\05D9\05DD \05D5\05DE\05E1\05DE\05DB\05D9\05DD, \05DE\05D9\05D3\05E2 \05D7\05E9\05D5\05D1 \05D5\05D2\05DD \05DB\05DE\05D4 \05D8\05D9\05E4\05D9\05DD. \05E9\05E0\05EA\05D7\05D9\05DC?</p>'),
unistr('\00A0 \00A0</div>'),
'  ',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_column_width=>'style="background-color:#3A8B94;"'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3246131934388077835)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(2892533256340659780)
,p_button_name=>'BITUL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(3275795122090542834)
,p_button_image_alt=>unistr('\05DB\05DF \05D0\05E0\05D9 \05E8\05D5\05E6\05D4 \05DC\05D1\05D8\05DC')
,p_button_position=>'BELOW_BOX'
,p_button_css_classes=>'popup-button'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3246126625099077822)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(2987710931302052672)
,p_button_name=>'BITUL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(3275795122090542834)
,p_button_image_alt=>unistr('\05DB\05DF \05D0\05E0\05D9 \05E8\05D5\05E6\05D4 \05DC\05D1\05D8\05DC')
,p_button_position=>'BELOW_BOX'
,p_button_css_classes=>'popup-button'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(757840513058326705)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(757840463103326704)
,p_button_name=>'MORE_INFO_M_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft:t-Button--gapRight:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_api.id(3275795122090542834)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\05DC\05DE\05D9\05D3\05E2 \05E0\05D5\05E1\05E3 \05E2\05DC \05DE\05E8\05DB\05D6 \05D4\05E2\05E8\05DB\05D4')
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5:P5_BTN:N'
,p_button_cattributes=>' 	style="top:40px;width:350px;height:48px; font-size:24px; line-height:30px;background-color:#D02C68;color:white;"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(712840008852621411)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(2680352204960135887)
,p_button_name=>'MORE_INFO_M'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft:t-Button--gapRight:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_api.id(3275795122090542834)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\05DC\05DE\05D9\05D3\05E2 \05E0\05D5\05E1\05E3 \05E2\05DC \05DE\05E8\05DB\05D6 \05D4\05E2\05E8\05DB\05D4')
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5:P5_BTN:N'
,p_button_cattributes=>' 	style="top:40px;width:350px;height:48px; font-size:24px; line-height:30px;background-color:#D02C68;color:white;"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3246130382260077832)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(2811356417753389218)
,p_button_name=>'BITUL_INTERVIEW'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_api.id(3275795122090542834)
,p_button_image_alt=>unistr('\05DC\05D1\05D9\05D8\05D5\05DC \05D4\05E8\05E9\05DE\05D4')
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.theme.openRegion(''BITUL_I'');'
,p_button_condition_type=>'NEVER'
,p_button_cattributes=>' 	style="color:#3A8B94;border:solid 1px #3A8B94;top:40px;width:100%;max-width:350px;height:48px; font-size:24px; line-height:30px;"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3246124626233077814)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(2811357185616389226)
,p_button_name=>'BITUL_SADNA'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_api.id(3275795122090542834)
,p_button_image_alt=>unistr('\05DC\05D1\05D9\05D8\05D5\05DC \05D4\05E8\05E9\05DE\05D4')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.theme.openRegion(''BITUL'');'
,p_button_condition=>':P0_BOOKED_TO_EVENT <> 0 AND :P0_EVENT_FLAG  <> 1'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_button_css_classes=>'main-popup'
,p_button_cattributes=>' 	style="color:#3A8B94;border:solid 1px #3A8B94;top:40px;width:350px;height:48px; font-size:24px; line-height:30px;"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3246125105424077817)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(2811357185616389226)
,p_button_name=>'MORE_INFO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_api.id(3275795122090542834)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\05DC\05DE\05D9\05D3\05E2 \05E0\05D5\05E1\05E3 \05E2\05DC \05DE\05E8\05DB\05D6 \05D4\05E2\05E8\05DB\05D4')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5:P5_BTN:N'
,p_button_cattributes=>' 	style="top:40px;width:350px;height:48px; font-size:24px; line-height:30px;background-color:#D02C68;color:white;"'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3246148619462077894)
,p_branch_name=>'AfterLoadReload'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3246140800054077855)
,p_name=>'P2_USER_PIC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(2700178698801418147)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3246140384536077854)
,p_name=>'P2_PERCENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(2700178698801418147)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3246139956072077854)
,p_name=>'P2_BROWSE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2700178698801418147)
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(3275796133589542838)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3246123054024077808)
,p_name=>'P2_SADANA_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2829680784951150215)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(379619289659937045)
,p_name=>'P2_ZOOM_LINK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2700179245667418152)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3246143008456077886)
,p_name=>'DoTheCircule'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3246143510728077888)
,p_event_id=>wwv_flow_api.id(3246143008456077886)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     ',
'var percent = ''&APP_LTS_PERCENT.'';  //$v(''P2_PERCENT'');',
'var link    = $v(''P2_USER_PIC'');',
'',
'if(link == "0"){',
'      var link    = ''#APP_IMAGES#no-profile-pic.jpg'';',
'}',
'',
'var myProgress = $("#image-progess").imgProgress(',
'    {',
'        img_url: link ,',
'        size: 320,',
'        barSize: 6,',
'        backgroundColor: ''#fff'',',
'        foregroundColor: ''#D02C68'',',
'        percent: percent}',
');',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3246144059005077888)
,p_event_id=>wwv_flow_api.id(3246143008456077886)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_BROWSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3246144478041077889)
,p_name=>'WhenClickImageEdit'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.imageEdit'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3246144994742077889)
,p_event_id=>wwv_flow_api.id(3246144478041077889)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_BROWSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3246145321997077889)
,p_name=>'OnChangeBrowse'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_BROWSE'
,p_condition_element=>'P2_BROWSE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3246145828293077890)
,p_event_id=>wwv_flow_api.id(3246145321997077889)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_BROWSE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3246146314586077890)
,p_event_id=>wwv_flow_api.id(3246145321997077889)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'LOAD'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3246146711843077890)
,p_name=>'WhenLoad'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3246147242668077891)
,p_event_id=>wwv_flow_api.id(3246146711843077890)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//alert(''in after refresh ''+ localStorage+'' ''+savepos);',
'',
'if (savepos){',
'    $(window).scrollTop(savepos);',
'}'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(304803302479489101)
,p_event_id=>wwv_flow_api.id(3246146711843077890)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   begin ',
'           select assignment_status_type_id',
'            into  :P0_ASSIG_STATUS_ID',
'             from jafi_lts_events_v ',
'            where person_id  =:P0_PERSON_ID ; ',
'  end ;      '))
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3246147700762077891)
,p_name=>'WhenClickPage'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'body'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3246148119800077891)
,p_event_id=>wwv_flow_api.id(3246147700762077891)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'savepos = $(window).scrollTop();',
'',
'     localStorage.setItem("savepos", savepos);',
'',
'    console.log(localStorage+'' ''+savepos);'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3246141130634077883)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LoadImage'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_file blob;',
'   l_filename varchar2(300);',
'   l_mime varchar2(100);',
'   l_id_number number ; ',
'   x_document_id number ; ',
'   x_own number ; ',
'     ',
'',
'begin',
' ',
'',
'      SELECT blob_content, filename,mime_type',
'      into l_file,l_filename,l_mime',
'      FROM apex_application_temp_files',
'      WHERE NAME = :P2_BROWSE;',
'      ',
'    Select  f.national_identifier ',
'      into  l_id_number',
'      from  per_all_people_f f',
'      where f.person_id = :P0_PERSON_ID  ',
'      and   trunc(sysdate) between f.effective_start_date and f.effective_end_date  ; ',
' ',
' ',
' ',
'    irc_document_api.CREATE_DOCUMENT(p_type => ''PHOTO''',
'                                  ,p_person_id => :P0_PERSON_ID ',
'                                  ,p_effective_date => Sysdate',
'                                  ,p_mime_type =>   ''image/jpeg''',
'                                  ,p_file_name => l_id_number || ''.jpg''',
'                                  ,p_description => ''uploaded by applicant in Apex''',
'                                  ,p_document_id => x_document_id',
'                                  ,p_object_version_number => x_own ) ;',
'                                           ',
'  Update irc_documents i',
'        Set i.binary_doc = l_file',
'      Where i.document_id = x_document_id   ;',
'     ',
'  irc_document_api.process_document (x_document_id);                               ',
'   ',
' EXCEPTION WHEN OTHERS THEN       ',
'     ',
'         apex_error.add_error (',
unistr('        p_message          => ''\05D1\05E2\05D9\05D4 \05D1\05D4\05DC\05E2\05D0\05EA \05D4\05EA\05DE\05D5\05E0\05D4, \05D9\05E9 \05DC\05E4\05E0\05D5\05EA \05DC\05D2\05D5\05E8\05DD \05D4\05DE\05D8\05E4\05DC''||sqlerrm,'),
'        p_display_location => apex_error.c_inline_in_notification );',
'   ',
'     ',
'    end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'LOAD'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3246141431356077884)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'BitulRishum'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_ok varchar2(200):=''OK'';',
'',
'cursor get_it is',
'select  event_id,COURSE_START_DATE,vacancy_id',
'      from  JAFI_IRC_LTS_EVENTS_NEW jic',
'     where  jic.person_id = :P0_PERSON_ID',
'     and  jic.booking_status_code = ''P'' ;',
'begin',
'',
'for vrec in get_it LOOP',
'  v_ok := JAFI_IRC_SC_WORKSHOP_ENROL_PKG.cre_upd_enrollment(:P0_PERSON_ID,',
'                                                            vrec.event_id,',
'															''C'',',
'															vrec.COURSE_START_DATE,',
'															vrec.VACANCY_ID);',
'',
'end loop;',
'',
'if v_ok <> ''OK''  then',
'   apex_error.add_error (',
unistr('    p_message          => ''\05EA\05E7\05DC\05D4 \05D9\05E9 \05DC\05E4\05E0\05D5\05EA \05DC\05D2\05D5\05E8\05DD \05D4\05DE\05D8\05E4\05DC''||'' ''||v_ok,'),
'    p_display_location => apex_error.c_inline_in_notification );',
'',
'end if;',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'BITUL,BITUL_IN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3246142205800077885)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetPercentInProgress'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'/*',
'Select',
'Case    when t.flag =1   then  0',
'         when t.flag = 2   then  25',
'         when t.flag = 3   then  50',
'         when t.flag =4   then  75',
'         when t.flag =5   then  110 end ',
'into :P13_PERCENT         ',
'from  jafi_lts_events_v t',
'where t.person_id = :P0_PERSON_ID;',
'*/',
'',
'Select ',
'Case     when :P0_STEP_1  = ''N'' AND :P0_STEP_2 = ''N'' AND :P0_STEP_3 = ''N'' AND :P0_STEP_4 = ''N''  then  0',
'         when :P0_STEP_1  = ''Y'' AND :P0_STEP_2 = ''N'' AND :P0_STEP_3 = ''N'' AND :P0_STEP_4 = ''N''  then  0',
'         when :P0_STEP_1  = ''Y'' AND :P0_STEP_2 = ''Y'' AND :P0_STEP_3 = ''N'' AND :P0_STEP_4 = ''N''   then  25',
'         when :P0_STEP_1  = ''Y'' AND :P0_STEP_2 = ''Y'' AND :P0_STEP_3 = ''Y'' AND :P0_STEP_4 = ''N''    then  50',
'         when :P0_STEP_1  = ''Y'' AND :P0_STEP_2 = ''Y'' AND :P0_STEP_3 = ''Y'' AND :P0_STEP_4 = ''Y''    then  75',
'         end ',
'into :P2_PERCENT         ',
'from  dual;',
'',
'END ;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
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
 p_id=>wwv_flow_api.id(3246141834661077884)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetPUserPicture'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'',
' begin',
'      select NVL(max(document_id), 0)',
'      into :P0_DOC',
'      from irc_documents',
'      where person_id = :P0_PERSON_ID',
'      and  end_date is null',
'      and type = ''PHOTO'';',
'      ',
'      exception',
'      when others then',
'      :P0_DOC := 0;',
'   ',
'  end;',
'  ',
' ',
'    IF :P0_DOC > 0 THEN         ',
'        select   ',
'        APEX_UTIL.HOST_URL ||apex_page.get_url(p_application => :APP_ID,   p_request => ''APPLICATION_PROCESS=GetImage'')       ',
'        ',
'        --''https://irt.jafi.org.il''||apex_page.get_url(p_application => :APP_ID,   p_request => ''APPLICATION_PROCESS=GetImage'') ',
'  ',
'            into  :P2_USER_PIC',
'          from dual;  ',
'    ELSE',
'        :P2_USER_PIC := ''0'';',
'     END IF;',
' ',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3246142667869077885)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetPUserStep'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' ',
' if :P0_EVENT_FLAG  = 2 THEN ',
' ',
'    Select l.ATTRIBUTE2 ',
'      Into :P0_USER_STEP ',
'          from fnd_common_lookups l',
'         where l.LOOKUP_TYPE = ''JAFI_HR_LTS_MASLUL_TYPES_PORT''',
'         and   l.LOOKUP_CODE = :PO_MASLUL_TYPE;         ',
' end if;  ',
' ',
'    ',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(379619164635937044)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set_Params'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'',
'select oe.evt_information15 zoom',
'into :P2_ZOOM_LINK ',
'  from ota_events oe, ota_delegate_bookings odb',
'',
'where oe.event_id = odb.event_id',
'   and oe.user_status = ''LTSPI''',
'   and odb.delegate_person_id = :P0_PERSON_ID;',
'   ',
'',
'',
'',
'EXCEPTION when others then    ',
'    :P2_ZOOM_LINK := null;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
