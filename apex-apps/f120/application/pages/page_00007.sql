prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(3275772552271542776)
,p_name=>'Flag5'
,p_alias=>'FLAG5'
,p_step_title=>unistr('\05D0\05D6\05D5\05E8 \05D0\05D9\05E9\05D9 \05D4\05D9\05D7\05D9\05D3\05D4 \05DC\05E9\05DC\05D9\05D7\05D5\05EA ')
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>'&G_FONT.'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_IMAGES#custom-lts.js',
''))
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
'.u-RTL td[align=right] {',
'    text-align: right;',
'}',
'',
'#myVideo {',
' ',
'    min-width:100%;',
'    max-width:100%;',
' }',
''))
,p_step_template=>wwv_flow_api.id(3267451177050446051)
,p_page_css_classes=>'homepage'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_last_updated_by=>'EYALM'
,p_last_upd_yyyymmddhh24miss=>'20240201084409'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3064164482800589286)
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
 p_id=>wwv_flow_api.id(2963029544530477104)
,p_plug_name=>'MainContainer'
,p_region_css_classes=>'topslider-rs'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</style>',
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
 p_id=>wwv_flow_api.id(2927282742038165708)
,p_plug_name=>'Pictures'
,p_parent_plug_id=>wwv_flow_api.id(2963029544530477104)
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
 p_id=>wwv_flow_api.id(3084790420977282166)
,p_plug_name=>'Picture11'
,p_parent_plug_id=>wwv_flow_api.id(2927282742038165708)
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
 p_id=>wwv_flow_api.id(3084790369025282165)
,p_plug_name=>'Picture10'
,p_parent_plug_id=>wwv_flow_api.id(2927282742038165708)
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
 p_id=>wwv_flow_api.id(3084790217394282164)
,p_plug_name=>'Picture9'
,p_parent_plug_id=>wwv_flow_api.id(2927282742038165708)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3084790202870282163)
,p_plug_name=>'Picture8'
,p_parent_plug_id=>wwv_flow_api.id(2927282742038165708)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>100
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img id="pic8" src="#APP_IMAGES#08.jpg" width="100%" >',
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
 p_id=>wwv_flow_api.id(3084790006598282162)
,p_plug_name=>'Picture7'
,p_parent_plug_id=>wwv_flow_api.id(2927282742038165708)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img id="pic7" src="#APP_IMAGES#07.jpg" width="100%" >',
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
 p_id=>wwv_flow_api.id(3084789926821282161)
,p_plug_name=>'Picture6'
,p_parent_plug_id=>wwv_flow_api.id(2927282742038165708)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img id="pic6" src="#APP_IMAGES#06.jpg" width="100%" >',
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
 p_id=>wwv_flow_api.id(3084789821131282160)
,p_plug_name=>'Picture5'
,p_parent_plug_id=>wwv_flow_api.id(2927282742038165708)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img id="pic5" src="#APP_IMAGES#05.jpg" width="100%" >',
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
 p_id=>wwv_flow_api.id(3084789763898282159)
,p_plug_name=>'Picture4'
,p_parent_plug_id=>wwv_flow_api.id(2927282742038165708)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img id="pic4" src="#APP_IMAGES#04.jpg" width="100%" >',
'<img class="pic4m" id="pic4m" src="#APP_IMAGES#05m.jpg" width="100%" >'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>'<img src="#APP_IMAGES#04.jpg" width="100%" >'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3084789603218282157)
,p_plug_name=>'Video'
,p_parent_plug_id=>wwv_flow_api.id(2927282742038165708)
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
 p_id=>wwv_flow_api.id(2963029772531477107)
,p_plug_name=>'Picture1'
,p_parent_plug_id=>wwv_flow_api.id(2927282742038165708)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img id="pic1" src="#APP_IMAGES#01.jpg" width="100%" >',
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
 p_id=>wwv_flow_api.id(2963029744409477106)
,p_plug_name=>'Picture2'
,p_parent_plug_id=>wwv_flow_api.id(2927282742038165708)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img id="pic2" src="#APP_IMAGES#02.jpg" width="100%" >',
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
 p_id=>wwv_flow_api.id(2963029355756477102)
,p_plug_name=>'Picture3'
,p_parent_plug_id=>wwv_flow_api.id(2927282742038165708)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img id="pic3" src="#APP_IMAGES#03.jpg" width="100%" >',
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
 p_id=>wwv_flow_api.id(2963029087033477100)
,p_plug_name=>'finish'
,p_region_name=>'BLUE_HEADER'
,p_region_css_classes=>'container-inner'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'wrapper-container'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_column_width=>'style="background-color:#3A8B94;"'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3158176985384256603)
,p_plug_name=>unistr('<span style="font-size:48px;line-height:48px;color:#EDD64A;font-weight:700;">\05E1\05D9\05D9\05DE\05EA \05D0\05EA \05EA\05D4\05DC\05D9\05DA \05D4\05DE\05D9\05D5\05DF \05D1\05D4\05E6\05DC\05D7\05D4</span>')
,p_region_name=>'view_pdf'
,p_parent_plug_id=>wwv_flow_api.id(2963029087033477100)
,p_region_css_classes=>'container-inner'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-bottom-md'
,p_region_attributes=>'style="background-color:#3A8B94;"'
,p_plug_template=>wwv_flow_api.id(3275857159846542908)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="font-size:24px;line-height:25px;color:white;font-weight:300;"><br>',
unistr('\05D4\05EA\05E9\05D5\05D1\05D4 \05D4\05D9\05D0 \05DB\05DF! \05D0\05E0\05D7\05E0\05D5 \05E9\05DE\05D7\05D9\05DD \05DC\05D1\05E9\05E8 \05DC\05DA, \05E9\05E2\05D1\05E8\05EA \05D1\05D4\05E6\05DC\05D7\05D4 \05D0\05EA \05EA\05D4\05DC\05D9\05DA \05D4\05DE\05D9\05D5\05DF.<br><br> \05D1\05D9\05DE\05D9\05DD \05D4\05E7\05E8\05D5\05D1\05D9\05DD \05D9\05E6\05E8\05D5 \05D0\05D9\05EA\05DA \05E7\05E9\05E8 \05E0\05E6\05D9\05D2\05D9 \05DE\05E1\05DC\05D5\05DC \05D4\05E9\05DC\05D9\05D7\05D5\05EA \05D0\05DC\05D9\05D5 \05D4\05EA\05DE\05D9\05D9\05E0\05EA \05E2\05DD \05E4\05E8\05D8\05D9\05DD \05D5\05DE\05D9\05D3\05E2 \05E0\05D5\05E1\05E3 \05D0\05D5\05D3\05D5\05EA \05D4\05E9\05DC\05D1 \05D4\05D1\05D0: <br><br>\05D4\05E8\05D0\05D9\05D5\05E0\05D5\05EA \05DE\05E2\05D1\05E8 \05DC\05D9\05DD!<br><br> \05DC\05D0 \05D9\05D5\05D3\05E2\05D9\05DD \05DE\05D4 \05D0\05D9\05EA\05DA, \05D0\05D1\05DC \05D0\05E0\05D7\05E0\05D5 \05DE\05EA\05E8\05D2\05E9\05D9\05DD\D83E\DD29 <br><b')
||'r>',
'',
unistr('\05DB\05DC \05D4\05E4\05E8\05D8\05D9\05DD \05DE\05D7\05DB\05D9\05DD \05DC\05DA \05D1\05DE\05DB\05EA\05D1.'),
'</span>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2963028997664477099)
,p_plug_name=>'PersonProgress'
,p_region_name=>'image-progess'
,p_parent_plug_id=>wwv_flow_api.id(2963029087033477100)
,p_region_css_classes=>'image-progess-img '
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_plug_grid_column_css_classes=>'personProgress-img'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="imageEdit">',
'    <span aria-hidden="true" class="fa fa-camera fa-2x"></span>',
'</div>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2917258187040484611)
,p_plug_name=>'SPACE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container-inner">',
'<br><br>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_column_width=>'style="background-color:#3A8B94;"'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2751707672839374494)
,p_plug_name=>'LogOut'
,p_region_name=>'MyAlertR'
,p_region_css_classes=>'js-dialog-size343x250'
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-size480x320:margin-top-none'
,p_plug_template=>wwv_flow_api.id(3052159502813868459)
,p_plug_display_sequence=>160
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(2751708341070374501)
,p_plug_name=>'<span></span>'
,p_parent_plug_id=>wwv_flow_api.id(2751707672839374494)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3084790799043282169)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3158176985384256603)
,p_button_name=>'DOCS'
,p_button_static_id=>'DOCS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(3275794959972542834)
,p_button_image_alt=>unistr('\05DC\05D4\05D5\05E8\05D3\05D4')
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P0_SHIBUTZ_DOC'
,p_button_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_button_cattributes=>'style="top:10px; width:150px;height:48px; font-size:24px; line-height:30px;background-color:#D02C68;color:white;"'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(2694285449226302882)
,p_branch_name=>'AfterLoadReload'
,p_branch_action=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3120127180473686925)
,p_name=>'P7_DOWNLOAD_LINK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3158176985384256603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3082169728079732282)
,p_name=>'P7_BROWSE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(2963028997664477099)
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(3275796133589542838)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3082169353394732280)
,p_name=>'P7_USER_PIC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(2963028997664477099)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3082172682906732289)
,p_name=>'DoTheCircule'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3082173128776732290)
,p_event_id=>wwv_flow_api.id(3082172682906732289)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     ',
'var percent = $v(''P7_PERCENT'');',
'var link    = $v(''P7_USER_PIC'');',
'',
'if(link == "0"){',
'      var link    = ''#APP_IMAGES#no-profile-pic.jpg'';',
'}',
'',
'var myProgress = $("#image-progess").imgProgress(',
'    {',
'        img_url: link ,',
'        size: 320,',
'        barSize: 10,',
'        backgroundColor: ''#fff'',',
'        foregroundColor: ''#D02C68'',',
'        percent: 110}',
');',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3082173619951732290)
,p_event_id=>wwv_flow_api.id(3082172682906732289)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_BROWSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3082174060073732290)
,p_name=>'WhenClickImageEdit'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.imageEdit'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3082174547721732290)
,p_event_id=>wwv_flow_api.id(3082174060073732290)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_BROWSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3082171217426732287)
,p_name=>'OnChangeBrowse'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_BROWSE'
,p_condition_element=>'P7_BROWSE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3082171770069732288)
,p_event_id=>wwv_flow_api.id(3082171217426732287)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_BROWSE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3082172282767732289)
,p_event_id=>wwv_flow_api.id(3082171217426732287)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'LOAD'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3120127560894686929)
,p_name=>'New'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(3084790799043282169)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3120127647442686930)
,p_event_id=>wwv_flow_api.id(3120127560894686929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.href = "f?p=&APP_ID.:1:&APP_SESSION.:APPLICATION_PROCESS=GetDocument::::"'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2694283640112236760)
,p_name=>'WhenLoad'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2694284068747236802)
,p_event_id=>wwv_flow_api.id(2694283640112236760)
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3082170406123732285)
,p_process_sequence=>30
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
'      WHERE NAME = :P7_BROWSE;',
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
 p_id=>wwv_flow_api.id(2694285136503301251)
,p_process_sequence=>60
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
 p_id=>wwv_flow_api.id(3082170885291732286)
,p_process_sequence=>40
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
'        select       APEX_UTIL.HOST_URL ||apex_page.get_url(p_application => :APP_ID,   p_request => ''APPLICATION_PROCESS=GetImage'')       ',
'          into  :P7_USER_PIC',
'          from dual;  ',
'    ELSE',
'        :P7_USER_PIC := ''0'';',
'     END IF;',
'   ',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3120127260739686926)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SetDownloadLink'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
':P7_DOWNLOAD_LINK := ''f?p=&APP_ID.:1:&APP_SESSION.:APPLICATION_PROCESS=GetDocument::::''  ;    ',
'',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
