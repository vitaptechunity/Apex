prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(3275772552271542776)
,p_name=>'FLAG6'
,p_alias=>'FLAG6'
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
''))
,p_step_template=>wwv_flow_api.id(3267451177050446051)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_last_updated_by=>'EYALM'
,p_last_upd_yyyymmddhh24miss=>'20240122121530'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3189112411549021713)
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
 p_id=>wwv_flow_api.id(3087977015781909527)
,p_plug_name=>'finish'
,p_region_name=>'BLUE_HEADER'
,p_region_css_classes=>'container-inner'
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_column_width=>'style="background-color:#3A8B94;"'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3283124914132689030)
,p_plug_name=>unistr('<span style="font-size:48px;color:#EDD64A;font-weight:700;">\05D0\05EA\05D4 \05E0\05DE\05E6\05D0 \05D1\05EA\05D4\05DC\05D9\05DA \05D4\05DE\05EA\05E0\05D4 \05DC\05E9\05DC\05D1 \05D4\05D1\05D0\05D4</span>')
,p_parent_plug_id=>wwv_flow_api.id(3087977015781909527)
,p_region_css_classes=>'container-inner'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-bottom-md'
,p_region_attributes=>'style="background-color:#3A8B94;"'
,p_plug_template=>wwv_flow_api.id(3275857159846542908)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="font-size:24px;font-height:25px;color:white;font-weight:300;">',
unistr('\05D4\05EA\05E9\05D5\05D1\05D4 \05D4\05D9\05D0 \05DB\05DF! \05D0\05E0\05D7\05E0\05D5 \05E9\05DE\05D7\05D9\05DD \05DC\05D1\05E9\05E8 \05DC\05DA, \05E9\05E2\05D1\05E8\05EA \05D1\05D4\05E6\05DC\05D7\05D4 \05D0\05EA \05EA\05D4\05DC\05D9\05DA \05D4\05DE\05D9\05D5\05DF.<br><br> \05D1\05D9\05DE\05D9\05DD \05D4\05E7\05E8\05D5\05D1\05D9\05DD \05D9\05E6\05E8\05D5 \05D0\05D9\05EA\05DA \05E7\05E9\05E8 \05E0\05E6\05D9\05D2\05D9 \05DE\05E1\05DC\05D5\05DC \05D4\05E9\05DC\05D9\05D7\05D5\05EA \05D0\05DC\05D9\05D5 \05D4\05EA\05DE\05D9\05D9\05E0\05EA \05E2\05DD \05E4\05E8\05D8\05D9\05DD \05D5\05DE\05D9\05D3\05E2 \05E0\05D5\05E1\05E3 \05D0\05D5\05D3\05D5\05EA \05D4\05E9\05DC\05D1 \05D4\05D1\05D0:<br><br> \05D4\05E8\05D0\05D9\05D5\05E0\05D5\05EA \05DE\05E2\05D1\05E8 \05DC\05D9\05DD! \05DC\05D0 \05D9\05D5\05D3\05E2\05D9\05DD \05DE\05D4 \05D0\05D9\05EA\05DA, \05D0\05D1\05DC \05D0\05E0\05D7\05E0\05D5 \05DE\05EA\05E8\05D2\05E9\05D9\05DD\D83E\DD29 <br><br>'),
'',
unistr('\05DC\05D0 \05D6\05D4 \05DC\05D0 \05D7\05DC\05D5\05DD, \05DB\05DC \05D4\05E4\05E8\05D8\05D9\05DD \05DE\05D7\05DB\05D9\05DD \05DC\05DA \05D1\05DE\05DB\05EA\05D1.'),
'</span>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3087976926412909526)
,p_plug_name=>'PersonProgress'
,p_region_name=>'image-progess'
,p_parent_plug_id=>wwv_flow_api.id(3087977015781909527)
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
 p_id=>wwv_flow_api.id(3042206115788917038)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3026369418895288175)
,p_plug_name=>'MainContainer'
,p_region_css_classes=>'topslider-rs'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
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
 p_id=>wwv_flow_api.id(2990622616402976779)
,p_plug_name=>'Pictures'
,p_parent_plug_id=>wwv_flow_api.id(3026369418895288175)
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
 p_id=>wwv_flow_api.id(3273697836661259221)
,p_plug_name=>'Picture1'
,p_parent_plug_id=>wwv_flow_api.id(2990622616402976779)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>25
,p_plug_display_point=>'BODY'
,p_plug_source=>'<img class="pic1" src="#APP_IMAGES#01.jpg" width="100%" >'
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
 p_id=>wwv_flow_api.id(3273695899436259202)
,p_plug_name=>'Picture4'
,p_parent_plug_id=>wwv_flow_api.id(2990622616402976779)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_source=>'<img class="pic4" src="#APP_IMAGES#04.jpg" width="100%" >'
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
 p_id=>wwv_flow_api.id(3273695830121259201)
,p_plug_name=>'Picture5'
,p_parent_plug_id=>wwv_flow_api.id(2990622616402976779)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>15
,p_plug_display_point=>'BODY'
,p_plug_source=>'<img class="pic5" src="#APP_IMAGES#05.jpg" width="100%" >'
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
 p_id=>wwv_flow_api.id(3273695715280259200)
,p_plug_name=>'Picture6'
,p_parent_plug_id=>wwv_flow_api.id(2990622616402976779)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_source=>'<img class="pic6" src="#APP_IMAGES#06.jpg" width="100%" >'
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
 p_id=>wwv_flow_api.id(3273695555411259199)
,p_plug_name=>'Picture7'
,p_parent_plug_id=>wwv_flow_api.id(2990622616402976779)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_plug_source=>'<img class="pic7" src="#APP_IMAGES#07.jpg" width="100%" >'
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
 p_id=>wwv_flow_api.id(3273695472894259198)
,p_plug_name=>'Picture8'
,p_parent_plug_id=>wwv_flow_api.id(2990622616402976779)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY'
,p_plug_source=>'<img class="pic8" src="#APP_IMAGES#08.jpg" width="100%" >'
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
 p_id=>wwv_flow_api.id(3273695121538259194)
,p_plug_name=>'Picture9'
,p_parent_plug_id=>wwv_flow_api.id(2990622616402976779)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>100
,p_plug_display_point=>'BODY'
,p_plug_source=>'<img class="pic9" src="#APP_IMAGES#09.jpg" width="100%" >'
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
 p_id=>wwv_flow_api.id(3273695013406259193)
,p_plug_name=>'Picture10'
,p_parent_plug_id=>wwv_flow_api.id(2990622616402976779)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>110
,p_plug_display_point=>'BODY'
,p_plug_source=>'<img class="pic10" src="#APP_IMAGES#10.jpg" width="100%" >'
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
 p_id=>wwv_flow_api.id(3273694857108259192)
,p_plug_name=>'Picture11'
,p_parent_plug_id=>wwv_flow_api.id(2990622616402976779)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>120
,p_plug_display_point=>'BODY'
,p_plug_source=>'<img class="pic11" src="#APP_IMAGES#11.jpg" width="100%" >'
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
 p_id=>wwv_flow_api.id(3026369646896288178)
,p_plug_name=>'Video'
,p_parent_plug_id=>wwv_flow_api.id(2990622616402976779)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!-- The video -->',
'<video autoplay muted loop id="myVideo">',
'  <source src="#APP_IMAGES#SOJNUT_VIDEO.mp4" type="video/mp4">',
'</video>',
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
 p_id=>wwv_flow_api.id(3026369618774288177)
,p_plug_name=>'Picture2'
,p_parent_plug_id=>wwv_flow_api.id(2990622616402976779)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>'<img class="pic2" src="#APP_IMAGES#02.jpg" width="100%" >'
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
 p_id=>wwv_flow_api.id(3026369230121288173)
,p_plug_name=>'Picture3'
,p_parent_plug_id=>wwv_flow_api.id(2990622616402976779)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_source=>'<img class="pic3" src="#APP_IMAGES#03.jpg" width="100%" >'
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
 p_id=>wwv_flow_api.id(2748189507251328091)
,p_plug_name=>'LogOut'
,p_region_name=>'MyAlertR'
,p_region_css_classes=>'js-dialog-size343x250'
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-size480x320:margin-top-none'
,p_plug_template=>wwv_flow_api.id(3052159502813868459)
,p_plug_display_sequence=>130
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
 p_id=>wwv_flow_api.id(2748190175482328098)
,p_plug_name=>'<span></span>'
,p_parent_plug_id=>wwv_flow_api.id(2748189507251328091)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3070513035663097988)
,p_name=>'P8_BROWSE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(3087976926412909526)
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(3275796133589542838)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3059562904160857513)
,p_name=>'P8_USER_PIC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3087976926412909526)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3059563994561857590)
,p_name=>'DoTheCircule'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3059564384672857592)
,p_event_id=>wwv_flow_api.id(3059563994561857590)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     ',
'var percent = $v(''P8_PERCENT'');',
'var link    = $v(''P8_USER_PIC'');',
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3070515162229962841)
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
'      WHERE NAME = :P8_BROWSE;',
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
 p_id=>wwv_flow_api.id(3070515643005968570)
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
'        select      ''http://dvpap.jafi.org.il:8080''||apex_page.get_url(p_application => :APP_ID,   p_request => ''APPLICATION_PROCESS=GetImage'') ',
'          into  :P8_USER_PIC',
'          from dual;  ',
'    ELSE',
'        :P8_USER_PIC := ''0'';',
'     END IF;',
'   ',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
