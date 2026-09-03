prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(3275772552271542776)
,p_name=>'campus'
,p_alias=>'CAMPUS'
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
' }'))
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
,p_last_upd_yyyymmddhh24miss=>'20260628092220'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2685302989504776025)
,p_plug_name=>'LogOut'
,p_region_name=>'MyAlertR'
,p_region_css_classes=>'js-dialog-size343x250'
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-size480x320:margin-top-none'
,p_plug_template=>wwv_flow_api.id(3052159502813868459)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2685303657735776032)
,p_plug_name=>'<span></span>'
,p_parent_plug_id=>wwv_flow_api.id(2685302989504776025)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p class="logoutdialog-img"><img src="#APP_IMAGES#LogOutFace.png">',
'<p class="logoutdialog-user"> &P0_USER_NAME. </p>',
'<p class="logoutdialog-link"> <a href="&PO_LOGIN_URL_OIC."><img src="#APP_IMAGES#log-out.png"></a></p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2434130596752550153)
,p_plug_name=>'FOR_RISHUM'
,p_region_css_classes=>'contentandheadings custom '
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P0_EVENT_FLAG'
,p_plug_display_when_cond2=>'8'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2592159016810452593)
,p_plug_name=>unistr('\05D0\05D9\05DF \05D0\05D9\05E8\05D5\05E2\05D9\05DD \05D6\05DE\05D9\05E0\05D9\05DD \05E2\05D1\05D5\05E8\05DA \05DB\05E2\05EA')
,p_parent_plug_id=>wwv_flow_api.id(2434130596752550153)
,p_region_css_classes=>'card-list-slider'
,p_region_template_options=>'#DEFAULT#:margin-top-none'
,p_component_template_options=>'#DEFAULT#:t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(3187398663660849920)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(3188156049469034409)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'NVL(:P0_BOOKED_TO_EVENT,0) = 0 and :P0_EVENT_NO_FULL = 0 and :P0_BOOKED_FINAL <> 1'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2458752556691216447)
,p_plug_name=>'<span></span>'
,p_parent_plug_id=>wwv_flow_api.id(2434130596752550153)
,p_region_css_classes=>'container-inner custom'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody:margin-top-none:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>130
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2450526380435310110)
,p_plug_name=>unistr('\05E9\05D9\05E0\05D5\05D9 \05D4\05E8\05E9\05DE\05D4 \05EA\05D0\05E8\05D9\05DB\05D9\05DD \05E4\05E0\05D5\05D9\05D9\05DD:')
,p_parent_plug_id=>wwv_flow_api.id(2434130596752550153)
,p_region_css_classes=>'container-inner '
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-lg:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('*\05D9\05E9 \05DC\05D1\05D8\05DC \05D4\05E8\05E9\05DE\05D4 \05E0\05D5\05DB\05D7\05D9\05EA \05DC\05E4\05E0\05D9 \05E9\05D9\05E0\05D5\05D9 \05DC\05DE\05D5\05E2\05D3 \05D7\05D3\05E9'),
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'NVL(:P0_BOOKED_TO_EVENT,0) <> 0 and :P0_EVENT_NO_FULL = 0 or :P0_BOOKED_FINAL =1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2415806997417789164)
,p_plug_name=>unistr('\05E0\05E8\05E9\05DE\05EA \05D1\05D4\05E6\05DC\05D7\05D4 \05DC\05E4\05D2\05D9\05E9\05EA \05D4\05DB\05E8\05D5\05EA!')
,p_parent_plug_id=>wwv_flow_api.id(2434130596752550153)
,p_region_css_classes=>'container-inner main pt-mob-40 pt-80'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\05E4\05D2\05D9\05E9\05EA \05D4\05D4\05DB\05E8\05D5\05EA \05E9\05DC\05DA \05EA\05E2\05E8\05DA \05D1&PO_START_DAY_WEEK. \05D1\05E9\05E2\05D4: &P0_PERSON_ETIME.<br>'),
unistr('\05E7\05D9\05E9\05D5\05E8 \05DC\05D6\05D5\05DD \05D9\05E9\05DC\05D7 \05D0\05DC\05D9\05D9\05DA \05D1\05DE\05D9\05D9\05DC \05D1\05E1\05DE\05D5\05DA \05DC\05DE\05D5\05E2\05D3 \05D4\05DE\05E4\05D2\05E9.')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'SQL_EXPRESSION'
,p_plug_display_when_condition=>'NVL(:P0_BOOKED_TO_EVENT,0) <> 0  or  :P0_BOOKED_FINAL =1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2415805890475789153)
,p_plug_name=>unistr('\05E9\05D9\05E0\05D5\05D9 \05D4\05E8\05E9\05DE\05D4 \05EA\05D0\05E8\05D9\05DB\05D9\05DD \05E4\05E0\05D5\05D9\05D9\05DD:')
,p_parent_plug_id=>wwv_flow_api.id(2434130596752550153)
,p_region_css_classes=>'container-inner assessment-section'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>100
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('*\05D0\05D9\05DF \05DB\05E8\05D2\05E2 \05DE\05E7\05D5\05DE\05D5\05EA \05E4\05E0\05D5\05D9\05D9\05DD, \05D1\05D9\05D8\05D5\05DC \05D5\05D4\05E8\05E9\05DE\05D4 \05DE\05D7\05D3\05E9 \05DC\05D0 \05EA\05EA\05D0\05E4\05E9\05E8')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'NVL(:P0_BOOKED_TO_EVENT,0) <> 0 and :P0_EVENT_NO_FULL = 0'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2415805812422789152)
,p_plug_name=>'events_no_action'
,p_parent_plug_id=>wwv_flow_api.id(2434130596752550153)
,p_region_css_classes=>'card-list-slider hide-nav-dot'
,p_region_template_options=>'#DEFAULT#:margin-top-lg'
,p_component_template_options=>'#DEFAULT#:t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(3254411434216674946)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(3187434974679035449)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'( NVL(:P0_BOOKED_TO_EVENT,0) <> 0 and :P0_EVENT_NO_FULL > 0 ) or :P0_BOOKED_FINAL = 1'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2415804717443789141)
,p_plug_name=>'BITUL'
,p_region_name=>'BITUL'
,p_parent_plug_id=>wwv_flow_api.id(2434130596752550153)
,p_region_css_classes=>'js-dialog-size410X100'
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-size480x320:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(3052159502813868459)
,p_plug_display_sequence=>110
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2592160743103452610)
,p_plug_name=>unistr('<span style="text-align:right;color:#3A8B94;font-size:32px;font-height:33px;font-weight:700;">\05D1\05D9\05D8\05D5\05DC \05D4\05E9\05EA\05EA\05E4\05D5\05EA\05DA \05D1\05DE\05E4\05D2\05E9 \05D4\05DB\05E8\05D5\05EA</span>')
,p_parent_plug_id=>wwv_flow_api.id(2415804717443789141)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_region_attributes=>'style="width:410px;padding:20px;"'
,p_plug_template=>wwv_flow_api.id(3202293099369440283)
,p_plug_display_sequence=>10
,p_plug_display_column=>2
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="font-size:16px;line-height:18px;color:#3A8B94;font-weight:300;">',
unistr('\05D4\05E9\05EA\05EA\05E4\05D5\05EA \05D1\05DE\05E4\05D2\05E9 \05D4\05DB\05E8\05D5\05EA \05DC\05D9\05D5\05DD &P0_PERSON_EDATE. \05D1\05E9\05E2\05D4 &P0_PERSON_ETIME.  \05D1-&P0_PERSON_ECITY.'),
'</span><br>',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'JAFI_LTS_APEX_UTILS.lts_get_cancelation_count(:P0_PERSON_ID, :P0_EVENT_FLAG)  = 0'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2592160115968452604)
,p_plug_name=>unistr('\05E9\05D9\05E0\05D5\05D9 \05DE\05D5\05E2\05D3 \05D4\05E2\05E8\05DB\05D4')
,p_parent_plug_id=>wwv_flow_api.id(2415804717443789141)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg'
,p_region_attributes=>'style="padding:15px;"'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>30
,p_plug_display_column=>2
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
 p_id=>wwv_flow_api.id(2284802016761535825)
,p_plug_name=>unistr('\05D4\05E8\05E9\05DE\05D5 \05DC\05E4\05D2\05D9\05E9\05EA \05D4\05DB\05E8\05D5\05EA \05D1\05D6\05D5\05DD')
,p_parent_plug_id=>wwv_flow_api.id(2434130596752550153)
,p_region_css_classes=>'container-inner '
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody:margin-top-md:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\05E2\05DC \05DE\05E0\05EA \05DC\05D4\05EA\05E7\05D3\05DD \05D1\05EA\05D4\05DC\05D9\05DA \05D5\05DC\05E7\05D1\05DC \05D0\05E4\05E9\05E8\05D5\05D9\05D5\05EA \05D4\05E9\05DE\05D4 \05E8\05D1\05D5\05EA \05D9\05D5\05EA\05E8, \05DE\05D5\05DE\05DC\05E5 \05DC\05D1\05D7\05D5\05E8 \05D0\05EA \05D4\05EA\05D0\05E8\05D9\05DA \05D4\05DE\05D5\05E7\05D3\05DD \05D1\05D9\05D5\05EA\05E8 \05DE\05D1\05D9\05DF \05D4\05D0\05D5\05E4\05E6\05D9\05D5\05EA \05D4\05D1\05D0\05D5\05EA:'),
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'NVL(:P0_BOOKED_TO_EVENT,0) = 0 and :P0_BOOKED_FINAL <> 1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2284801884342535824)
,p_plug_name=>'events'
,p_parent_plug_id=>wwv_flow_api.id(2434130596752550153)
,p_region_css_classes=>'card-list-slider'
,p_region_template_options=>'#DEFAULT#:margin-top-lg'
,p_component_template_options=>'#DEFAULT#:t-Cards--basic:t-Cards--3cols:t-Cards--animColorFill'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(3254411434216674946)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(3254410638194662946)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'NVL(:P0_BOOKED_TO_EVENT,0) = 0 and :P0_EVENT_NO_FULL > 0 and :P0_BOOKED_FINAL <> 1'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1119177953199530821)
,p_plug_name=>'BITUL FINAL BOOKED'
,p_region_name=>'BITULFINAL'
,p_parent_plug_id=>wwv_flow_api.id(2434130596752550153)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:t-DialogRegion--noPadding:js-dialog-size600x400:margin-bottom-none'
,p_region_attributes=>'style="width: 620px;"'
,p_plug_template=>wwv_flow_api.id(3052159502813868459)
,p_plug_display_sequence=>120
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1119178096652530822)
,p_plug_name=>unistr('<span style="text-align:right;color:#3A8B94;font-size:32px;line-height:33px;font-weight:700;">\05D1\05D9\05D8\05D5\05DC \05D4\05E9\05EA\05EA\05E4\05D5\05EA\05DA \05D1\05DE\05E4\05D2\05E9 \05D4\05DB\05E8\05D5\05EA</span>')
,p_region_name=>'MyAlertR'
,p_parent_plug_id=>wwv_flow_api.id(1119177953199530821)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_region_attributes=>'style="hight:220px;"'
,p_plug_template=>wwv_flow_api.id(3202293099369440283)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p style="font-size:16px;line-height:17px;">\05DC\05D0 \05E0\05D9\05EA\05DF \05DC\05D1\05D8\05DC \05E8\05D9\05E9\05D5\05DD \05DC\05E9\05D9\05D7\05EA \05D4\05DB\05E8\05D5\05EA \05E4\05D7\05D5\05EA \05DE-24 \05E9\05E2\05D5\05EA \05DE\05E8\05D0\05E9.<br/>'),
unistr('\05D1\05DE\05D9\05D3\05D4 \05D5\05D1\05E8\05E6\05D5\05E0\05DA \05DC\05D1\05D8\05DC \05D0\05EA \05D4\05D2\05E2\05EA\05DA <BR>\05D9\05E9 \05DC\05E4\05E0\05D5\05EA \05DC\05D0\05D5\05E8\05D9 '),
'&nbsp;<a href="mailto:uschwartz@hillel.org" target="_blank" rel="noopener noreferrer">uschwartz@hillel.org</a> </p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'JAFI_LTS_APEX_UTILS.lts_get_cancelation_count(:P0_PERSON_ID, :P0_EVENT_FLAG)  = 0'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(406413486928993731)
,p_plug_name=>unistr('&PO_USER_FNAME., &P20_GENDER_TEXT. \05DC\05DE\05E1\05DC\05D5\05DC \05D4\05E7\05DE\05E4\05D5\05E1\05D9\05DD \05D1\05E6\05E4\05D5\05DF \05D0\05DE\05E8\05D9\05E7\05D4!<br /> <span style="font-size:28px">(AKA \05E2\05DE\05D9\05EA\05D9 \05D9\05E9\05E8\05D0\05DC)</span>')
,p_parent_plug_id=>wwv_flow_api.id(2434130596752550153)
,p_region_css_classes=>'container-inner pt-mob-40 pt-80'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h640:t-Region--noBorder:t-Region--scrollBody:margin-top-md:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'contentandheadings'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\05E9\05DE\05D7\05E0\05D5 \05DC\05E9\05D5\05D7\05D7 \05D5\05DC\05D4\05DB\05D9\05E8! \05DB\05D7\05DC\05E7 \05DE\05E9\05D9\05D1\05D5\05E6\05DA \05DC\05DE\05E1\05DC\05D5\05DC \05E9\05DC\05D9\05D7\05D5\05EA \05D4\05E7\05DE\05E4\05D5\05E1\05D9\05DD, \05D4\05E9\05DC\05D1 \05D4\05D1\05D0 \05D9\05D4\05D9\05D4 <br>\05E7\05D1\05D9\05E2\05EA \05DE\05D5\05E2\05D3 \05DC\05E4\05D2\05D9\05E9\05EA \05D4\05DB\05E8\05D5\05EA \05E2\05DD \05E6\05D5\05D5\05EA \05D4\05DE\05E1\05DC\05D5\05DC \05D1\05E6\05E4\05D5\05DF \05D0\05DE\05E8\05D9\05E7\05D4. '),
'<br>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'NVL(:P0_BOOKED_TO_EVENT,0) = 0  and :P0_BOOKED_FINAL <> 1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2405763995738930272)
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
 p_id=>wwv_flow_api.id(11784774825966099)
,p_plug_name=>'MainContainer'
,p_region_css_classes=>'topslider-rs'
,p_region_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>10
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1916874124882579362)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(2592160743103452610)
,p_button_name=>'BITUL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(3275795122090542834)
,p_button_image_alt=>unistr('\05DB\05DF \05D0\05E0\05D9 \05E8\05D5\05E6\05D4 \05DC\05D1\05D8\05DC')
,p_button_position=>'BELOW_BOX'
,p_button_cattributes=>'style="height:48px;width:100%;background-color:#3A8B94;font-size:20px;color:white;"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1916875669103579367)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(2415806997417789164)
,p_button_name=>'BITUL_SADNA'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_api.id(3275795122090542834)
,p_button_image_alt=>unistr('\05DC\05D1\05D9\05D8\05D5\05DC \05D4\05E8\05E9\05DE\05D4')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.theme.openRegion(''BITUL'');'
,p_button_condition=>'NVL(:P0_BOOKED_TO_EVENT,0) <> 0 and :P0_BOOKED_FINAL = 0'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_button_css_classes=>'main-popup'
,p_button_cattributes=>'style="color:#3A8B94;border:solid 1px #3A8B94;top:40px;width:100%;min-width:280px; max-width:320px;height:48px; font-size:24px; line-height:30px;"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1119177557727530817)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(2415806997417789164)
,p_button_name=>'BITUL_FINAL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_api.id(3275795122090542834)
,p_button_image_alt=>unistr('\05DC\05D1\05D9\05D8\05D5\05DC \05D4\05E8\05E9\05DE\05D4')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.theme.openRegion(''BITULFINAL'');'
,p_button_condition=>':P0_BOOKED_FINAL = 1'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_button_css_classes=>'main-popup'
,p_button_cattributes=>'style="color:#3A8B94;border:solid 1px #3A8B94;top:40px;width:100%;min-width:280px; max-width:320px;height:48px; font-size:24px; line-height:30px;"'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1916892257796579493)
,p_branch_name=>'AfterLoadReload'
,p_branch_action=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1916871594861579354)
,p_name=>'P20_SADANA_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2434130596752550153)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1905973580535038898)
,p_name=>'P20_GENDER_TEXT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(2434130596752550153)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('  select  DECODE(gender, ''M'', ''\05D1\05E8\05D5\05DA \05D4\05D1\05D0'' , ''\05D1\05E8\05D5\05DB\05D4 \05D4\05D1\05D0\05D4'' ) gender'),
'  from    jafi_lts_events_v t',
'  where   t.person_id =  :P0_PERSON_ID ; ',
''))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1916891212971579491)
,p_name=>'WhenClickPage'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'body'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1916891715116579492)
,p_event_id=>wwv_flow_api.id(1916891212971579491)
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
 p_id=>wwv_flow_api.id(1916884980219579483)
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
wwv_flow_api.component_end;
end;
/
