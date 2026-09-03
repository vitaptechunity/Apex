prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(3275772552271542776)
,p_name=>'Form_Fill'
,p_alias=>'FORM_FILL'
,p_step_title=>unistr('\05D0\05D6\05D5\05E8 \05D0\05D9\05E9\05D9 \05E9\05DC\05D9\05D7\05D5\05EA \05D0\05E8\05D5\05DB\05D4')
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
'body{',
'    overflow-y:hidden;',
'}',
'',
''))
,p_step_template=>wwv_flow_api.id(3267451177050446051)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'EYALM'
,p_last_upd_yyyymmddhh24miss=>'20240122122031'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2974803490692586770)
,p_plug_name=>'LogOut'
,p_region_name=>'MyAlertR'
,p_region_css_classes=>'js-dialog-size300x220'
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-size480x320:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(3052159502813868459)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2974803404593586769)
,p_plug_name=>'<span></span>'
,p_parent_plug_id=>wwv_flow_api.id(2974803490692586770)
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
 p_id=>wwv_flow_api.id(2050579930542246258)
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
 p_id=>wwv_flow_api.id(1593045832567057933)
,p_plug_name=>unistr('\05D4\05D8\05E4\05E1\05D9\05DD \05E9\05DE\05D9\05DC\05D0\05EA \05D4\05EA\05E7\05D1\05DC\05D5 \05D1\05D4\05E6\05DC\05D7\05D4!')
,p_region_css_classes=>'container-inner pt-80'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h640:t-Region--noBorder:t-Region--scrollBody:margin-top-lg:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'contentandheadings no-title-pad'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="wp-text-block">',
'    <div class="wp-text-block-content">',
unistr('        <p>\05E0\05E6\05D9\05D2\05D9 \05DE\05E1\05DC\05D5\05DC \05D4\05E9\05DC\05D9\05D7\05D5\05EA \05D9\05D9\05E6\05E8\05D5 \05D0\05D9\05EA\05DA \05E7\05E9\05E8 \05D1\05D4\05E7\05D3\05DD \05DC\05D4\05E1\05D1\05E8 \05D0\05D5\05D3\05D5\05EA \05D4\05DE\05E9\05DA \05EA\05D4\05DC\05D9\05DA \05D4\05E9\05D9\05D1\05D5\05E5 \05D5\05EA\05D9\05D0\05D5\05DD </p>'),
unistr('        <p>\05D4\05E8\05D0\05D9\05D5\05E0\05D5\05EA \05D4\05D1\05D0\05D9\05DD (\05D1\05D6\05D5\05DD).</p>'),
unistr('        <p class="custom-margin">\05D9\05E9 \05DC\05DA \05E9\05D0\05DC\05D5\05EA \05E0\05D5\05E1\05E4\05D5\05EA? \05E0\05D9\05EA\05DF \05DC\05D9\05E6\05D5\05E8 \05D0\05D9\05EA\05E0\05D5 \05E7\05E9\05E8 \05D1\05D5\05D5\05D8\05E1\05D0\05E4</p>'),
unistr('        <a class="custom-link" href="&PO_WHATSAPP." target="_blank" rel="noopener noreferrer"><img src="#APP_IMAGES#red_whatsapp.png" alt="whatsapp"> <span style="color:#D02C68";>\05DC\05DE\05E2\05D1\05E8 \05DC\05D5\05D5\05D8\05E1\05D0\05E4 \05DC\05D7\05E5 \05DB\05D0\05DF</span> </a>'),
'    </div>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1198416625941024163)
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
wwv_flow_api.component_end;
end;
/
