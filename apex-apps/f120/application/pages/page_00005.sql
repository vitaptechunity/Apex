prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(3275772552271542776)
,p_name=>unistr('\05E8\05D9\05E9\05D5\05DD \05DC\05E1\05D3\05E0\05D0\05D5\05EA')
,p_alias=>unistr('\05E8\05D9\05E9\05D5\05DD-\05DC\05E1\05D3\05E0\05D0\05D5\05EA')
,p_step_title=>'&P5_PAGE_TITLE.'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>'&G_FONT.'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if ($v(''P5_OK'').trim()==''OK'')',
'   apex.theme.openRegion(''OK'') ;'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.fix-right-margin {',
'    position: relative;',
'    margin-right: 8px;',
'}',
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
'.t-Footer {',
'     padding: 0px;',
'}',
'.customFooter {',
'     padding: 0px;',
'}',
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
'/*body{',
'    overflow-y:hidden;',
'}*/',
'',
'.t-DialogRegion-bodyWrapperOut, .ui-dialog.ui-dialog--inline .ui-dialog-content .t-Region {',
'    padding: 15PX !important;',
'    PADDING-TOP: 0PX ! IMPORTANT;',
'}'))
,p_step_template=>wwv_flow_api.id(3267451177050446051)
,p_page_css_classes=>'custom-container'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KERENT'
,p_last_upd_yyyymmddhh24miss=>'20260628091951'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2848045310542740867)
,p_plug_name=>'<br><br><i  id="back" class="fa fa-chevron-left fa-2x"></i> &P5_TITLE.'
,p_region_css_classes=>'container-inner pt-mob-40 '
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody:margin-top-lg:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2831253522433725976)
,p_plug_name=>'GENERAL30P'
,p_parent_plug_id=>wwv_flow_api.id(2848045310542740867)
,p_region_css_classes=>'custom-title'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'custom-title'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P0_EVENT_FLAG = 1 and :P0_SADNA_TYPE = ''GENERAL30P'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2848044973843740864)
,p_plug_name=>unistr('\05DE\05D4 \05DC\05D4\05DB\05D9\05DF?')
,p_parent_plug_id=>wwv_flow_api.id(2831253522433725976)
,p_region_css_classes=>'no-title-pad'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding:margin-top-sm:margin-bottom-sm'
,p_plug_template=>wwv_flow_api.id(3202293099369440283)
,p_plug_display_sequence=>20
,p_plug_grid_column_css_classes=>'no-title-pad'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\05DC\05E7\05E8\05D0\05EA \05D4\05DE\05D5\05E2\05D3 \05E2\05DC\05D9\05DA \05DC\05D4\05DB\05D9\05DF \05DE\05E2\05E8\05DA \05E4\05E2\05D9\05DC\05D5\05EA \05DC\05D1\05D5\05D2\05E8\05D9 \05EA\05E0\05D5\05E2\05EA \05E0\05D5\05E2\05E8 (\05D9"\05D0-\05D9"\05D1) \05D1\05E2\05D1\05E8\05D9\05EA \05D1\05D0\05D5\05E8\05DA 60 \05D3\05E7\05D5\05EA, \05D1\05E0\05D5\05E9\05D0 \05D4\05E7\05E9\05D5\05E8 \05DC\05D9\05E9\05E8\05D0\05DC \05DC\05D1\05D7\05D9\05E8\05EA\05DA.<br />'),
unistr('\05D9\05E9 \05DC\05D4\05D2\05D9\05E2 \05E2\05DD \05E9\05E0\05D9 \05E2\05D5\05EA\05E7\05D9\05DD \05E9\05DC \05DE\05E2\05E8\05DA \05D4\05E4\05E2\05D9\05DC\05D5\05EA, \05D0\05D7\05D3 \05DE\05D4\05DD \05D9\05D5\05D2\05E9 \05DC\05E6\05D5\05D5\05EA \05D4\05DE\05DE\05D9\05D9\05DF.')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2848044841727740863)
,p_plug_name=>unistr('\05DE\05D4 \05E6\05E4\05D5\05D9?')
,p_parent_plug_id=>wwv_flow_api.id(2831253522433725976)
,p_region_css_classes=>'custom-title'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody:margin-top-sm:margin-bottom-sm'
,p_plug_template=>wwv_flow_api.id(3202293099369440283)
,p_plug_display_sequence=>40
,p_plug_grid_column_css_classes=>'no-title-pad'
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('\05D1\05D9\05D5\05DD \05E2\05E6\05DE\05D5 \05E0\05D1\05E7\05E9 \05DE\05DE\05DA \05DC\05D4\05E2\05D1\05D9\05E8 <b style="font-weight: 900;"> 6 \05D3\05E7\05D5\05EA \05DE\05EA\05D5\05DA \05D4\05DE\05E2\05E8\05DA</b> \05E9\05DB\05EA\05D1\05EA \05D1\05D3\05D2\05E9 \05E2\05DC \05D4\05E4\05E2\05DC\05EA \05D4\05E7\05D1\05D5\05E6\05D4 \05D5\05DC\05D0 \05EA\05D9\05D0\05D5\05E8 \05E9\05DC \05D4\05E4\05E2\05D9\05DC\05D5\05EA \05E9\05EA\05EA\05DB\05E0\05EA.')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2848044791533740862)
,p_plug_name=>unistr('\05DE\05D9\05D3\05E2 \05D7\05E9\05D5\05D1')
,p_parent_plug_id=>wwv_flow_api.id(2831253522433725976)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody:margin-top-sm:margin-bottom-sm:margin-right-sm'
,p_plug_template=>wwv_flow_api.id(3202293099369440283)
,p_plug_display_sequence=>60
,p_plug_grid_column_css_classes=>'no-title-pad'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\05D4\05E9\05DC\05D9\05D7\05D5\05EA \05D0\05D5\05E8\05DB\05EA \05DB\05E9\05E0\05EA\05D9\05D9\05DD \05DC\05E4\05D7\05D5\05EA, \05D5\05D4\05D9\05E0\05D4 \05E2\05D1\05D5\05D3\05D4 \05D1\05DE\05E9\05E8\05D4 \05DE\05DC\05D0\05D4, \05DB\05DA \05E9\05DC\05D0 \05E0\05D9\05EA\05DF \05DC\05E9\05DC\05D1 \05E2\05D1\05D5\05D3\05D4 \05E0\05D5\05E1\05E4\05EA \05D0\05D5 \05DC\05D9\05DE\05D5\05D3\05D9\05DD \05D1\05DE\05D4\05DC\05DB\05D4.<br />'),
unistr('\05D4\05E9\05DC\05D9\05D7\05D9\05DD \05D6\05DB\05D0\05D9\05DD \05D1\05DE\05E1\05D2\05E8\05EA \05E9\05DC\05D9\05D7\05D5\05EA\05DD \05DC\05E9\05DB\05E8, \05E9\05DB"\05D3, \05D1\05D9\05D8\05D5\05D7 \05E8\05E4\05D5\05D0\05D9 \05D5\05D4\05D5\05E6\05D0\05D5\05EA \05DE\05E2\05D1\05E8.<br />'),
'<br /> ',
'<br />',
unistr('\05E0\05EA\05E8\05D0\05D4 \05D1\05E7\05E8\05D5\05D1! \D83D\DE0A')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(712839598021621406)
,p_plug_name=>unistr('\05DE\05EA\05D9?')
,p_parent_plug_id=>wwv_flow_api.id(2831253522433725976)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody:margin-top-sm:margin-bottom-sm:margin-right-sm'
,p_plug_template=>wwv_flow_api.id(3202293099369440283)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'no-title-pad'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>09:30-16:00</p',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(634300268610720609)
,p_plug_name=>unistr('\05D9\05E9 \05D3\05D2\05E9\05D9\05DD?')
,p_parent_plug_id=>wwv_flow_api.id(2831253522433725976)
,p_region_css_classes=>'custom-title'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody:margin-top-sm:margin-bottom-sm'
,p_plug_template=>wwv_flow_api.id(3202293099369440283)
,p_plug_display_sequence=>50
,p_plug_grid_column_css_classes=>'no-title-pad'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\05D1\05DE\05D4\05DC\05DA \05D4\05D9\05D5\05DD \05D9\05D5\05D2\05E9 \05DB\05D9\05D1\05D5\05D3 \05E7\05DC \05D1\05DC\05D1\05D3, \05D9\05E9 \05DC\05D4\05E6\05D8\05D9\05D9\05D3 \05D1\05D0\05E8\05D5\05D7\05EA \05E6\05D4\05E8\05D9\05D9\05DD! (\05D0\05D9\05DF \05DE\05E7\05D5\05DD \05E7\05E8\05D5\05D1 \05D5\05D6\05DE\05D9\05DF \05DC\05E7\05E0\05D5\05EA \05D0\05D5\05DB\05DC)<br />'),
unistr('\05D1\05DB\05D9\05EA\05D4 \05D9\05E2\05DE\05D3\05D5 \05DC\05E8\05E9\05D5\05EA\05DA \05DC\05D5\05D7 \05DE\05D7\05D9\05E7, \05D8\05D5\05E9\05D9\05DD \05D5\05DB\05DC\05D9 \05DB\05EA\05D9\05D1\05D4 \05D1\05DC\05D1\05D3, \05D1\05D0\05E4\05E9\05E8\05D5\05EA\05DA \05DC\05D4\05D1\05D9\05D0 \05E2\05D6\05E8\05D9\05DD \05E0\05D5\05E1\05E4\05D9\05DD. \05D0\05D9\05DF \05DE\05E7\05E8\05DF, \05D5\05DC\05D0 \05E0\05D9\05EA\05DF \05D9\05D4\05D9\05D4 \05DC\05D4\05E6\05D9\05D2 \05DE\05E6\05D2\05EA.<br />'),
unistr('\05E9\05D9\05DE\05D5 \05DC\05D1 - \05D0\05D9\05DF \05D0\05E4\05E9\05E8\05D5\05EA \05DC\05D4\05D9\05DB\05E0\05E1 \05DC\05DB\05EA\05D4 \05E2\05DD \05EA\05D9\05E0\05D5\05E7\05D5\05EA! \05D1\05DE\05D9\05D3\05D4 \05D5\05DE\05E2\05D5\05E0\05D9\05D9\05E0\05D9\05DD \05DC\05D4\05D2\05D9\05E2 \05E2\05DD \05EA\05D9\05E0\05D5\05E7 \05D9\05D5\05E0\05E7 \2013<br />'),
unistr('\05D9\05E9 \05DC\05D4\05D2\05D9\05E2 \05E2\05DD \05DE\05DC\05D5\05D5\05D4 \05E9\05D9\05DE\05EA\05D9\05DF \05E2\05DD \05D4\05EA\05D9\05E0\05D5\05E7 \05D1\05D0\05D6\05D5\05E8 \05D4\05DE\05EA\05E0\05D4, \05D5\05D4\05D0\05DD \05EA\05D5\05DB\05DC \05DC\05E6\05D0\05EA \05DC\05D4\05E0\05D9\05E7 \05D1\05E9\05E2\05EA \05D4\05E6\05D5\05E8\05DA.<br />'),
'<br />',
unistr('\05D1\05E0\05D9 \05D6\05D5\05D2 \05D0\05E9\05E8 \05E9\05E0\05D9\05D4\05DD \05DE\05EA\05DE\05D9\05D9\05E0\05D9\05DD \05DC\05DE\05E1\05DC\05D5\05DC \05E9\05DC\05D9\05D7\05D5\05EA \05D6\05D4, \05E0\05D3\05E8\05E9\05D9\05DD \05DC\05D4\05D2\05D9\05E2 \05DC\05D0\05D5\05EA\05D5 \05DE\05D5\05E2\05D3 \05E9\05DC \05DE\05E8\05DB\05D6 \05D4\05E2\05E8\05DB\05D4 \05D1\05D9\05D7\05D3.<br />'),
unistr('\05E2\05DC \05DB\05DC \05D0\05D7\05D3 \05DE\05D1\05E0\05D9 \05D4\05D6\05D5\05D2 \05DC\05D4\05DB\05D9\05DF \05DE\05E2\05E8\05DA \05E9\05D9\05E2\05D5\05E8 \05E0\05E4\05E8\05D3. \05D4\05E8\05D9\05E9\05D5\05DD \05E9\05DC \05D0\05D7\05D3 \05DE\05D1\05E0\05D9 \05D4\05D6\05D5\05D2 \05D9\05D1\05D9\05D0 \05DC\05E8\05D9\05E9\05D5\05DD \05D0\05D5\05D8\05D5\05DE\05D8\05D9 \05E9\05DC \05D4\05E9\05E0\05D9 \05DC\05D0\05D5\05EA\05D5 \05DE\05D5\05E2\05D3.<br />'),
unistr('\05D0\05D9\05E9\05D5\05E8 \05D4\05E8\05E9\05DE\05D4 \05D9\05D9\05E9\05DC\05D7 \05DC\05DB\05DC \05D0\05D7\05D3 \05DE\05DB\05DD \05DC\05D0\05D7\05D3 \05D4\05E8\05D9\05E9\05D5\05DD. \05D1\05DE\05D9\05D3\05D4 \05D5\05DC\05DB\05DC \05D0\05D7\05D3 \05DE\05DB\05DD \05DE\05D5\05E4\05D9\05E2\05D9\05DD \05DE\05D5\05E2\05D3\05D9\05DD \05E9\05D5\05E0\05D9\05DD \05D1\05D0\05D6\05D5\05E8 \05D4\05D0\05D9\05E9\05D9,<br />'),
unistr('\05D6\05D4 \05D0\05D5\05DE\05E8 \05E9\05D0\05EA\05DD \05DE\05D5\05E2\05DE\05D3\05D9\05DD \05DC\05DE\05E1\05DC\05D5\05DC\05D9 \05E9\05DC\05D9\05D7\05D5\05EA \05E9\05D5\05E0\05D9\05DD, \05D5\05E2\05DC \05DB\05DF \05D9\05E9 \05DC\05D1\05E6\05E2 \05DE\05E8\05DB\05D6\05D9 \05D4\05E2\05E8\05DB\05D4 \05E0\05E4\05E8\05D3\05D9\05DD.')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2831253357096725975)
,p_plug_name=>'GENERAL30M'
,p_parent_plug_id=>wwv_flow_api.id(2848045310542740867)
,p_region_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P0_EVENT_FLAG = 1 and :P0_SADNA_TYPE = ''GENERAL30M'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2831253235841725974)
,p_plug_name=>unistr('\05DE\05D4 \05DC\05D4\05DB\05D9\05DF?')
,p_parent_plug_id=>wwv_flow_api.id(2831253357096725975)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-sm:margin-bottom-sm'
,p_plug_template=>wwv_flow_api.id(3202293099369440283)
,p_plug_display_sequence=>30
,p_plug_grid_column_css_classes=>'no-title-pad'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\05DE\05E2\05E8\05DA \05E4\05E2\05D9\05DC\05D5\05EA \05D1\05E2\05D1\05E8\05D9\05EA <b style="font-weight: 900;">\05D1\05E0\05D5\05E9\05D0 \05D4\05E7\05E9\05D5\05E8 \05DC\05D9\05E9\05E8\05D0\05DC</b> (\05DC\05D1\05D7\05D9\05E8\05EA\05DA)<br/>'),
unistr('\05D1\05D0\05D5\05E8\05DA 45 \05D3\05E7\05D5\05EA, \05E2\05D1\05D5\05E8 \05D1\05E0\05D9 \05E0\05D5\05E2\05E8/ \05E1\05D8\05D5\05D3\05E0\05D8\05D9\05DD.<br/>'),
unistr('\05D9\05E9 \05DC\05D1\05D7\05D5\05E8 \05D1-6 \05D3\05E7'' \05E9\05DC \05D4\05E4\05E2\05DC\05D4 \05E7\05D1\05D5\05E6\05EA\05D9\05EA \05D1\05D4\05E0\05D7\05D9\05D9\05EA\05DA \05DE\05EA\05D5\05DA \05D4\05E4\05E2\05D9\05DC\05D5\05EA \05E9\05DB\05EA\05D1\05EA.<br/>'),
unistr('\05E9\05D9\05DE\05D5 \05DC\05D1 \05DC\05D0 \05DC\05D4\05D2\05D9\05E2 \05E2\05DD \05D4\05E8\05E6\05D0\05D4 \05D0\05D5 \05DE\05E6\05D2\05EA \05D0\05DC\05D0 \05DE\05DE\05E9 \05DC\05D4\05DB\05D9\05DF \05E4\05E2\05D9\05DC\05D5\05EA \05E9\05EA\05E4\05E2\05D9\05DC \05D0\05EA \05D4\05E7\05D1\05D5\05E6\05D4.<br/>'),
unistr('\05D1\05DB\05EA\05D4 \05D9\05E2\05DE\05D3\05D5 \05DC\05E8\05E9\05D5\05EA\05DA \05DC\05D5\05D7 \05DE\05D7\05D9\05E7, \05D8\05D5\05E9\05D9\05DD \05D5\05DB\05DC\05D9 \05DB\05EA\05D9\05D1\05D4 \05D1\05DC\05D1\05D3. \05D1\05D0\05E4\05E9\05E8\05D5\05EA\05DA \05DC\05D4\05D1\05D9\05D0 \05E2\05D6\05E8\05D9\05DD \05E0\05D5\05E1\05E4\05D9\05DD.<br/>'),
'<br/>',
'<b style="font-weight: 900;">',
unistr('\05D9\05E9 \05DC\05D4\05E6\05D8\05D9\05D9\05D3 \05D1\05E9\05E0\05D9 \05E2\05D5\05EA\05E7\05D9\05DD \05E9\05DC \05D4\05DE\05E2\05E8\05DA \2013 \05E2\05D5\05EA\05E7 \05D0\05D7\05D3 \05DC\05DA \05D5\05E2\05D5\05EA\05E7 \05E0\05D5\05E1\05E3 \05E6\05D5\05D5\05EA \05D4\05DE\05D9\05D5\05DF<br/>'),
'</b>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2831253179042725973)
,p_plug_name=>unistr('\05DE\05D4 \05E6\05E4\05D5\05D9?')
,p_parent_plug_id=>wwv_flow_api.id(2831253357096725975)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-sm:margin-bottom-sm'
,p_plug_template=>wwv_flow_api.id(3202293099369440283)
,p_plug_display_sequence=>50
,p_plug_grid_column_css_classes=>'no-title-pad'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\05D1\05DE\05D4\05DC\05DA \05D4\05D9\05D5\05DD \05E0\05D1\05D7\05DF \05D1\05D9\05DF \05D4\05D9\05EA\05E8 \05D0\05EA \05D4\05D3\05D9\05E0\05DE\05D9\05E7\05D4 \05D4\05E7\05D1\05D5\05E6\05EA\05D9\05EA, \05D5\05D2\05DD \05E0\05D1\05E7\05E9 \05DE\05DE\05DA \05DC\05D4\05E2\05D1\05D9\05E8<b style="font-weight: 900;"> \05D1\05D0\05E0\05D2\05DC\05D9\05EA 6 \05D3\05E7\05D5\05EA \05DE\05EA\05D5\05DA \05D4\05DE\05E2\05E8\05DA \05E9\05DB\05EA\05D1\05EA.</b><br/>'),
unistr('\05D0\05DD \05D4\05E0\05DA \05D3\05D5\05D1\05E8/\05EA \05E1\05E4\05E8\05D3\05D9\05EA/\05E4\05D5\05E8\05D8\05D5\05D2\05D6\05D9\05EA/\05E6\05E8\05E4\05EA\05D9\05EA, \05D4\05E4\05E2\05D9\05DC\05D5\05EA \05EA\05D5\05E2\05D1\05E8 \05D1\05E2\05D1\05E8\05D9\05EA \05D5\05E8\05DE\05EA \05D4\05E9\05E4\05D4 \05EA\05D9\05D1\05D3\05E7 \05D1\05E0\05E4\05E8\05D3 \05D1\05DE\05D4\05DC\05DA \05D4\05D9\05D5\05DD.')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2831253058373725972)
,p_plug_name=>unistr('\05D9\05E9 \05D3\05D2\05E9\05D9\05DD?')
,p_parent_plug_id=>wwv_flow_api.id(2831253357096725975)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody:margin-top-none:margin-bottom-none:margin-right-sm'
,p_plug_template=>wwv_flow_api.id(3202293099369440283)
,p_plug_display_sequence=>70
,p_plug_grid_column_css_classes=>'no-title-pad'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
unistr('\05D1\05DE\05D4\05DC\05DA \05D4\05D9\05D5\05DD \05D9\05D5\05D2\05E9 \05DB\05D9\05D1\05D5\05D3 \05E7\05DC \05D1\05DC\05D1\05D3, \05DE\05D5\05DE\05DC\05E5 \05DC\05D4\05E6\05D8\05D9\05D9\05D3 \05D1\05D0\05D5\05DB\05DC! (\05D0\05D9\05DF \05DE\05E7\05D5\05DD \05E7\05E8\05D5\05D1 \05D5\05D6\05DE\05D9\05DF \05DC\05E7\05E0\05D5\05EA \05D0\05D5\05DB\05DC).<br />'),
unistr('\05D1\05E0\05D9 \05D6\05D5\05D2 \05D0\05E9\05E8 \05E9\05E0\05D9\05D4\05DD \05DE\05D5\05E2\05DE\05D3\05D9\05DD \05DC\05E9\05DC\05D9\05D7\05D5\05EA \05D6\05D5 \05DE\05EA\05D1\05E7\05E9\05D9\05DD \05DC\05D4\05D2\05D9\05E2 \05DC\05D0\05D5\05EA\05D5 \05DE\05D5\05E2\05D3. \05DB\05DE\05D5 \05DB\05DF, \05E2\05DC \05DB\05DC \05D0\05D7\05D3 \05DC\05D4\05DB\05D9\05DF \05DE\05E2\05E8\05DA \05E4\05E2\05D9\05DC\05D5\05EA \05E0\05E4\05E8\05D3.</p>'),
'<br />',
unistr('<b style="font-weight: 900;">\05E0\05EA\05E8\05D0\05D4 \05D1\05E7\05E8\05D5\05D1! \D83D\DE0A</b>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(712839641383621407)
,p_plug_name=>unistr('\05DE\05EA\05D9?')
,p_parent_plug_id=>wwv_flow_api.id(2831253357096725975)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody:margin-top-sm:margin-bottom-sm'
,p_plug_template=>wwv_flow_api.id(3202293099369440283)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'no-title-pad'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p> 9:30-16:00 </p',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2831252951742725971)
,p_plug_name=>'TEACH'
,p_parent_plug_id=>wwv_flow_api.id(2848045310542740867)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>30
,p_plug_grid_column_css_classes=>'no-title-pad'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P0_EVENT_FLAG = 1 and :P0_SADNA_TYPE = ''TEACH'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2831252927055725970)
,p_plug_name=>unistr('\05DE\05D4 \05DC\05D4\05DB\05D9\05DF?')
,p_parent_plug_id=>wwv_flow_api.id(2831252951742725971)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-sm:margin-bottom-sm:t-Region--noPadding'
,p_plug_template=>wwv_flow_api.id(3202293099369440283)
,p_plug_display_sequence=>40
,p_plug_grid_column_css_classes=>'no-title-pad'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\05D9\05E9 \05DC\05D4\05DB\05D9\05DF \05DE\05E2\05E8\05DA \05E9\05D9\05E2\05D5\05E8 \05E4\05E8\05D5\05E0\05D8\05DC\05D9 \05DC\05E4\05D9 \05D4\05D4\05E0\05D7\05D9\05D5\05EA \05D4\05D1\05D0\05D5\05EA:<br/>'),
unistr('\05D9\05E9 \05DC\05D9\05E6\05D5\05E8 \05E9\05D9\05E2\05D5\05E8 \05E9\05D4\05D5\05D0 \05D7\05DC\05E7 \05DE\05DE\05E2\05E8\05DA \05D4\05D5\05E8\05D0\05D4 \05D1\05D0\05D7\05D3 \05DE-4 \05D4\05E0\05D5\05E9\05D0\05D9\05DD \05D4\05D1\05D0\05D9\05DD \05D1\05DC\05D1\05D3: \05E2\05D1\05E8\05D9\05EA / \05D4\05D9\05E1\05D8\05D5\05E8\05D9\05D4 / \05EA\05E0"\05DA / \05D9\05D3\05D9\05E2\05EA \05D4\05D0\05E8\05E5.<br/>'),
unistr('\05E7\05D4\05DC \05D4\05D9\05E2\05D3: \05EA\05DC\05DE\05D9\05D3\05D9 \05D1\05D9"\05E1 \05D1\05D9\05E9\05E8\05D0\05DC \05D1\05D0\05D7\05D3 \05DE\05D4\05D2\05D9\05DC\05D0\05D9\05DD \05DC\05D4\05DC\05DF: \05D0''-\05D1'' (\05DC\05D2\05E0\05E0\05D5\05EA \05D1\05DC\05D1\05D3) / \05D2''-\05D3'' / \05D4''-\05D5'' / \05D6''-\05D7''<br/>'),
unistr('\05DE\05E2\05E8\05DA \05D4\05E4\05E2\05D9\05DC\05D5\05EA \05D4\05DB\05EA\05D5\05D1 \05E6\05E8\05D9\05DA \05DC\05D4\05D9\05D5\05EA \05DE\05D5\05EA\05D0\05DD \05DC\05DE\05E9\05DA \05E9\05DC 50 \05D3\05E7\05D5\05EA. \05DE\05EA\05D5\05DA \05D4\05DE\05E2\05E8\05DA \05DB\05D5\05DC\05D5 \05E2\05DC\05D9\05DA \05DC\05D1\05D7\05D5\05E8 8 \05D3\05E7\05D5\05EA \05D1\05DC\05D1\05D3 \05D5\05D0\05D5\05EA\05DF \05DC\05D4\05E2\05D1\05D9\05E8 \05D1\05E9\05E4\05D4 \05D4\05E2\05D1\05E8\05D9\05EA.<br/>'),
unistr('\05D9\05E9 \05DC\05D1\05E6\05E2 \05D0\05EA \05EA\05DB\05E0\05D5\05DF \05DE\05E2\05E8\05DA \05D4\05E9\05D9\05E2\05D5\05E8 \05DC\05E4\05D9 \05D4\05E4\05D5\05E8\05DE\05D8 <a href="https://shlichut.org.il/wp-content/uploads/2023/01/sadna-horaa-new.docx" target="_blank" rel="noopener noreferrer"><span style="color:#D02C68";>\05E9\05D1\05E7\05D9\05E9\05D5\05E8 \05D4\05D1\05D0</span></a> \05D5\05DC\05D4\05D1\05D9\05D0\05D5 \05DC\05DE\05E8\05DB\05D6 \05D4\05D4\05E2\05E8\05DB\05D4 \05D1\05E9\05E0\05D9 \05E2\05D5\05EA\05E7\05D9\05DD.')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2831252784037725969)
,p_plug_name=>unistr('\05DE\05D4 \05E6\05E4\05D5\05D9?')
,p_parent_plug_id=>wwv_flow_api.id(2831252951742725971)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-sm:margin-bottom-sm:t-Region--noPadding'
,p_plug_template=>wwv_flow_api.id(3202293099369440283)
,p_plug_display_sequence=>60
,p_plug_grid_column_css_classes=>'no-title-pad'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\05D1\05DE\05D4\05DC\05DA \05D4\05D9\05D5\05DD \05E0\05D1\05E7\05E9 \05DE\05DE\05DA \05DC\05D4\05E2\05D1\05D9\05E8 <b style="font-weight: 900;">8 \05D3\05E7\05D5\05EA \05D1\05E2\05D1\05E8\05D9\05EA \05DE\05EA\05D5\05DA \05D4\05DE\05E2\05E8\05DA \05E9\05DB\05EA\05D1\05EA</b>.<br /> '),
unistr('\05D7\05E9\05D5\05D1 \05DC\05D0 \05DC\05D4\05D2\05D9\05E2 \05E2\05DD \05D4\05E8\05E6\05D0\05D4 \05D0\05D5 \05DE\05E6\05D2\05EA, \05D0\05DC\05D0 \05DE\05DE\05E9 \05E4\05E2\05D9\05DC\05D5\05EA \05E9\05EA\05E4\05E2\05D9\05DC \05D0\05EA \05D4\05E7\05D1\05D5\05E6\05D4.<br />'),
unistr('\05D1\05D4\05DE\05E9\05DA \05D4\05D9\05D5\05DD \05D9\05D9\05E2\05E8\05DB\05D5 \05EA\05E8\05D2\05D9\05DC\05D9\05DD \05D2\05DD \05D1\05E9\05E4\05D4 \05D4\05D0\05E0\05D2\05DC\05D9\05EA \05D5\05D1\05E9\05E4\05D5\05EA \05E0\05D5\05E1\05E4\05D5\05EA \05DC\05E4\05D9 \05DE\05D3\05D9\05E0\05EA \05D4\05D9\05E2\05D3.')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2831252696609725968)
,p_plug_name=>unistr('\05D9\05E9 \05D3\05D2\05E9\05D9\05DD?')
,p_parent_plug_id=>wwv_flow_api.id(2831252951742725971)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-sm:margin-bottom-sm:margin-right-sm'
,p_plug_template=>wwv_flow_api.id(3202293099369440283)
,p_plug_display_sequence=>80
,p_plug_grid_column_css_classes=>'no-title-pad'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\05D1\05E0\05D9 \05D6\05D5\05D2 \05D0\05E9\05E8 \05E9\05E0\05D9\05D4\05DD \05DE\05EA\05DE\05D9\05D9\05E0\05D9\05DD \05DC\05DE\05E1\05DC\05D5\05DC \05D4\05D5\05E8\05D0\05D4 \05E0\05D3\05E8\05E9\05D9\05DD \05DC\05D4\05D2\05D9\05E2 \05DC\05D0\05D5\05EA\05D5 \05DE\05D5\05E2\05D3 \05E9\05DC \05DE\05E8\05DB\05D6 \05D4\05E2\05E8\05DB\05D4 \05D1\05D9\05D7\05D3.<br />'),
unistr('\05E2\05DC \05DB\05DC \05D0\05D7\05D3 \05DE\05D1\05E0\05D9 \05D4\05D6\05D5\05D2 \05DC\05D4\05DB\05D9\05DF \05DE\05E2\05E8\05DA \05E9\05D9\05E2\05D5\05E8 \05E0\05E4\05E8\05D3.<br />'),
unistr('\05D4\05E8\05D9\05E9\05D5\05DD \05E9\05DC \05D0\05D7\05D3 \05DE\05D1\05E0\05D9 \05D4\05D6\05D5\05D2 \05D9\05D1\05D9\05D0 \05DC\05E8\05D9\05E9\05D5\05DD \05D0\05D5\05D8\05D5\05DE\05D8\05D9 \05E9\05DC \05D4\05E9\05E0\05D9 \05DC\05D0\05D5\05EA\05D5 \05DE\05D5\05E2\05D3.<br />'),
unistr('\05D0\05D9\05E9\05D5\05E8 \05D4\05E8\05E9\05DE\05D4 \05D9\05D9\05E9\05DC\05D7 \05DC\05DB\05DC \05D0\05D7\05D3 \05DE\05DB\05DD \05DC\05D0\05D7\05D3 \05D4\05E8\05D9\05E9\05D5\05DD.<br />'),
unistr('\05D1\05DB\05D9\05EA\05D4 \05D9\05E2\05DE\05D3\05D5 \05DC\05E8\05E9\05D5\05EA\05DA \05DC\05D5\05D7 \05DE\05D7\05D9\05E7, \05D8\05D5\05E9\05D9\05DD \05D5\05DB\05DC\05D9 \05DB\05EA\05D9\05D1\05D4 \05D1\05DC\05D1\05D3, \05D1\05D0\05E4\05E9\05E8\05D5\05EA\05DA \05DC\05D4\05D1\05D9\05D0 \05E2\05D6\05E8\05D9\05DD \05E0\05D5\05E1\05E4\05D9\05DD.<br />'),
unistr('\05D1\05DE\05D4\05DC\05DA \05D4\05D9\05D5\05DD \05D9\05D5\05D2\05E9 \05DB\05D9\05D1\05D5\05D3 \05E7\05DC \05D1\05DC\05D1\05D3, \05DE\05D5\05DE\05DC\05E5 \05DC\05D4\05E6\05D8\05D9\05D9\05D3 \05D1\05D0\05D5\05DB\05DC! (\05D0\05D9\05DF \05DE\05E7\05D5\05DD \05E7\05E8\05D5\05D1 \05D5\05D6\05DE\05D9\05DF \05DC\05E7\05E0\05D5\05EA \05D0\05D5\05DB\05DC).<br />'),
unistr('\05E9\05D9\05DE\05D5 \05DC\05D1 - \05D0\05D9\05DF \05D0\05E4\05E9\05E8\05D5\05EA \05DC\05D4\05D9\05DB\05E0\05E1 \05DC\05DB\05EA\05D4 \05E2\05DD \05EA\05D9\05E0\05D5\05E7\05D5\05EA! \05D1\05DE\05D9\05D3\05D4 \05D5\05DE\05E2\05D5\05E0\05D9\05D9\05E0\05D9\05DD \05DC\05D4\05D2\05D9\05E2 \05E2\05DD \05EA\05D9\05E0\05D5\05E7 \05D9\05D5\05E0\05E7 \2013<br />'),
unistr('\05D9\05E9 \05DC\05D4\05D2\05D9\05E2 \05E2\05DD \05DE\05DC\05D5\05D5\05D4 \05E9\05D9\05DE\05EA\05D9\05DF \05E2\05DD \05D4\05EA\05D9\05E0\05D5\05E7 \05D1\05D0\05D6\05D5\05E8 \05D4\05DE\05EA\05E0\05D4, \05D5\05D4\05D0\05DD \05EA\05D5\05DB\05DC \05DC\05E6\05D0\05EA \05DC\05D4\05E0\05D9\05E7 \05D1\05E9\05E2\05EA \05D4\05E6\05D5\05E8\05DA.<br />'),
'<br />',
'<br />',
unistr('\05E0\05EA\05E8\05D0\05D4 \05D1\05E7\05E8\05D5\05D1! \D83D\DE0A')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(712839398263621404)
,p_plug_name=>unistr(' \05DE\05EA\05D9?')
,p_parent_plug_id=>wwv_flow_api.id(2831252951742725971)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-sm:margin-bottom-none:margin-right-sm'
,p_plug_template=>wwv_flow_api.id(3202293099369440283)
,p_plug_display_sequence=>20
,p_plug_grid_column_css_classes=>'no-title-pad'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>09:30-16:00</p',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2831252591982725967)
,p_plug_name=>'BINA/ REP'
,p_parent_plug_id=>wwv_flow_api.id(2848045310542740867)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P0_EVENT_FLAG = 1 and :P0_SADNA_TYPE  in ( ''BINA/ REP'',''BINA'')'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2831252507956725966)
,p_plug_name=>unistr('\05DE\05D4 \05DC\05D4\05DB\05D9\05DF?')
,p_parent_plug_id=>wwv_flow_api.id(2831252591982725967)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-sm:margin-bottom-sm'
,p_plug_template=>wwv_flow_api.id(3202293099369440283)
,p_plug_display_sequence=>20
,p_plug_grid_column_css_classes=>'no-title-pad'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: none">',
unistr('\05DE\05E2\05E8\05DA \05E4\05E2\05D9\05DC\05D5\05EA <b style="font-weight: 900;">\05D1\05E2\05D1\05E8\05D9\05EA \05D1\05D0\05D5\05E8\05DA 60 \05D3\05E7\05D5\05EA</b>, \05D1\05E0\05D5\05E9\05D0 \05D4\05E7\05E9\05D5\05E8 \05DC\05D9\05E9\05E8\05D0\05DC (\05DC\05D1\05D7\05D9\05E8\05EA\05DA)<br> \05E2\05D1\05D5\05E8 \05E1\05D8\05D5\05D3\05E0\05D8\05D9\05DD/ \05DE\05D1\05D5\05D2\05E8\05D9\05DD \05D1\05E7\05D4\05D9\05DC\05D5\05EA \05D4\05D9\05D4\05D5\05D3\05D9\05D5\05EA \05D1\05EA\05E4\05D5\05E6\05D5\05EA.<br>'),
unistr('\05DE\05D4 \05D9\05D4\05D9\05D4? \05D1\05DE\05D4\05DC\05DA \05D4\05D9\05D5\05DD \05E0\05D1\05E7\05E9 \05DE\05DE\05DA \05DC\05D4\05E2\05D1\05D9\05E8 6<b style="font-weight: 900;"> \05D3\05E7\05D5\05EA \05D1\05E2\05D1\05E8\05D9\05EA \05DE\05EA\05D5\05DA \05D4\05DE\05E2\05E8\05DA</b> \05E9\05DB\05EA\05D1\05EA.'),
'</div>',
unistr('\05DC\05E7\05E8\05D0\05EA \05D4\05DE\05D5\05E2\05D3 \05E2\05DC\05D9\05DA \05DC\05D4\05DB\05D9\05DF \05DE\05E2\05E8\05DA \05E4\05E2\05D9\05DC\05D5\05EA \05DC\05E1\05D8\05D5\05D3\05E0\05D8\05D9\05DD/ \05DE\05D1\05D5\05D2\05E8\05D9\05DD \05D1\05E7\05D4\05D9\05DC\05D5\05EA \05D4\05D9\05D4\05D5\05D3\05D9\05D5\05EA \05D1\05EA\05E4\05D5\05E6\05D5\05EA.<br>\05D4\05DE\05E2\05E8\05DA \05D9\05D4\05D9\05D4 \05D1\05E2\05D1\05E8\05D9\05EA \05D1\05D0\05D5\05E8\05DA 60  \05D3\05E7\05D5\05EA \05D1\05E0\05D5\05E9\05D0 \05D4\05E7\05E9\05D5\05E8 \05DC\05D9\05E9\05E8\05D0\05DC \05DC\05D1\05D7\05D9\05E8\05EA\05DA (\05E6\05D9\05D5\05E0\05D5\05EA, \05E2\05DE\05D9\05D5\05EA \05D9\05D4\05D5\05D3\05D9\05EA, \05D7\05D1\05E8\05D4 \05D9\05E9\05E8\05D0\05DC\05D9\05EA \05D5\05E2\05D5\05D3).<br>'),
unistr('\05D1\05D9\05D5\05DD \05E2\05E6\05DE\05D5 \05E0\05D1\05E7\05E9 \05DE\05DE\05DA <b style="font-weight: 900;">\05DC\05D4\05E2\05D1\05D9\05E8 6 \05D3\05E7\05D5\05EA \05DE\05EA\05D5\05DA \05D4\05DE\05E2\05E8\05DA \05E9\05DB\05EA\05D1\05EA</b>, \05D1\05D3\05D2\05E9 \05E2\05DC \05D4\05E4\05E2\05DC\05EA \05D4\05E7\05D1\05D5\05E6\05D4 \05D5\05DC\05D0 \05EA\05D9\05D0\05D5\05E8 \05E9\05DC \05D4\05E4\05E2\05D9\05DC\05D5\05EA \05E9\05EA\05EA\05DB\05E0\05EA.<br>'),
unistr('\05D4\05DE\05D5\05E2\05DE\05D3\05D9\05DD \05D4\05D0\05D7\05E8\05D9\05DD \05D9\05D3\05DE\05D5 \05E1\05D8\05D5\05D3\05E0\05D8\05D9\05DD/ \05DE\05D1\05D5\05D2\05E8\05D9\05DD \05DE\05D4\05E7\05D4\05D9\05DC\05D4 \05D4\05D9\05D4\05D5\05D3\05D9\05EA.')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2831252264820725964)
,p_plug_name=>unistr('\05D9\05E9 \05D3\05D2\05E9\05D9\05DD?')
,p_parent_plug_id=>wwv_flow_api.id(2831252591982725967)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-sm:margin-bottom-sm'
,p_plug_template=>wwv_flow_api.id(3202293099369440283)
,p_plug_display_sequence=>40
,p_plug_grid_column_css_classes=>'no-title-pad'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: none">',
unistr('\05D9\05E9 \05DC\05D1\05D7\05D5\05E8 \05D1-6 \05D3\05E7'' \05E9\05DC \05D4\05E4\05E2\05DC\05D4 \05E7\05D1\05D5\05E6\05EA\05D9\05EA \05D1\05E2\05D1\05E8\05D9\05EA \05D1\05D4\05E0\05D7\05D9\05D9\05EA\05DA \05DE\05EA\05D5\05DA \05D4\05E4\05E2\05D9\05DC\05D5\05EA \05E9\05DB\05EA\05D1\05EA \05E9\05D9\05DE\05D5 \05DC\05D1 \05DC\05D0 \05DC\05D4\05D2\05D9\05E2 \05E2\05DD<br> \05D4\05E8\05E6\05D0\05D4 \05D0\05D5 \05DE\05E6\05D2\05EA \05D0\05DC\05D0 \05DE\05DE\05E9 \05DC\05D4\05DB\05D9\05DF \05E4\05E2\05D9\05DC\05D5\05EA '),
unistr('\05E9\05EA\05E4\05E2\05D9\05DC \05D0\05EA \05D4\05E7\05D1\05D5\05E6\05D4'),
'</div>',
unistr('\05D1\05DE\05D4\05DC\05DA \05D4\05D9\05D5\05DD \05D9\05D5\05D2\05E9 \05DB\05D9\05D1\05D5\05D3 \05E7\05DC \05D1\05DC\05D1\05D3, \05D9\05E9 \05DC\05D4\05E6\05D8\05D9\05D9\05D3 \05D1\05D0\05E8\05D5\05D7\05EA \05E6\05D4\05E8\05D9\05D9\05DD! (\05D0\05D9\05DF \05DE\05E7\05D5\05DD \05E7\05E8\05D5\05D1 \05D5\05D6\05DE\05D9\05DF \05DC\05E7\05E0\05D5\05EA \05D0\05D5\05DB\05DC).<br>'),
unistr('\05D9\05E9 \05DC\05D4\05D2\05D9\05E2 \05E2\05DD \05E9\05E0\05D9 \05E2\05D5\05EA\05E7\05D9\05DD \05E9\05DC \05DE\05E2\05E8\05DA \05D4\05E4\05E2\05D9\05DC\05D5\05EA, \05D0\05D7\05D3 \05DE\05D4\05DD \05D9\05D5\05D2\05E9 \05DC\05E6\05D5\05D5\05EA \05D4\05DE\05DE\05D9\05D9\05DF.<br>'),
unistr('\05D1\05DB\05D9\05EA\05D4 \05D9\05E2\05DE\05D3\05D5 \05DC\05E8\05E9\05D5\05EA\05DA \05DC\05D5\05D7 \05DE\05D7\05D9\05E7, \05D8\05D5\05E9\05D9\05DD \05D5\05DB\05DC\05D9 \05DB\05EA\05D9\05D1\05D4 \05D1\05DC\05D1\05D3, \05D1\05D0\05E4\05E9\05E8\05D5\05EA\05DA \05DC\05D4\05D1\05D9\05D0 \05E2\05D6\05E8\05D9\05DD \05E0\05D5\05E1\05E4\05D9\05DD.<br>'),
unistr('\05D0\05D9\05DF \05DE\05E7\05E8\05DF, \05D5\05DC\05D0 \05E0\05D9\05EA\05DF \05D9\05D4\05D9\05D4 \05DC\05D4\05E6\05D9\05D2 \05DE\05E6\05D2\05EA.'),
''))
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
 p_id=>wwv_flow_api.id(712839747182621408)
,p_plug_name=>unistr(' \05DE\05EA\05D9?')
,p_parent_plug_id=>wwv_flow_api.id(2831252591982725967)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-sm:margin-bottom-none:margin-right-sm'
,p_plug_template=>wwv_flow_api.id(3202293099369440283)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'no-title-pad'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p> 09:00-17:00 <br />',
unistr('(\05E0\05E9\05DE\05D7 \05DC\05D4\05EA\05D7\05D9\05DC \05D1\05D3\05D9\05D5\05E7 \05D1\05E9\05E2\05D4 9:00. \05D0\05E0\05D0 \05D4\05E7\05D3\05D9\05DE\05D5 \05D0\05EA \05D4\05D4\05D2\05E2\05D4 \05DC\05E9\05E2\05D4 8:50).'),
'</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(634300190616720608)
,p_plug_name=>unistr('\05DE\05D9\05D3\05E2 \05D7\05E9\05D5\05D1')
,p_parent_plug_id=>wwv_flow_api.id(2831252591982725967)
,p_region_css_classes=>'fix-right-margin'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-sm:margin-bottom-sm'
,p_plug_template=>wwv_flow_api.id(3202293099369440283)
,p_plug_display_sequence=>50
,p_plug_grid_column_css_classes=>'no-title-pad'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\05D4\05E9\05DC\05D9\05D7\05D5\05EA \05D0\05D5\05E8\05DB\05EA \05DB\05E9\05E0\05EA\05D9\05D9\05DD \05DC\05E4\05D7\05D5\05EA, \05D5\05D4\05D9\05E0\05D4 \05E2\05D1\05D5\05D3\05D4 \05D1\05DE\05E9\05E8\05D4 \05DE\05DC\05D0\05D4, \05DB\05DA \05E9\05DC\05D0 \05E0\05D9\05EA\05DF \05DC\05E9\05DC\05D1 \05E2\05D1\05D5\05D3\05D4 \05E0\05D5\05E1\05E4\05EA \05D0\05D5 \05DC\05D9\05DE\05D5\05D3\05D9\05DD \05D1\05DE\05D4\05DC\05DB\05D4.<br />'),
unistr('\05D4\05E9\05DC\05D9\05D7\05D9\05DD \05D6\05DB\05D0\05D9\05DD \05D1\05DE\05E1\05D2\05E8\05EA \05E9\05DC\05D9\05D7\05D5\05EA\05DD \05DC\05E9\05DB\05E8, \05E9\05DB"\05D3, \05D1\05D9\05D8\05D5\05D7 \05E8\05E4\05D5\05D0\05D9 \05D5\05D4\05D5\05E6\05D0\05D5\05EA \05DE\05E2\05D1\05E8.<br />'),
'<br />',
'<br />',
unistr('\05E0\05EA\05E8\05D0\05D4 \05D1\05E7\05E8\05D5\05D1! \D83D\DE0A'),
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2831252207149725963)
,p_plug_name=>'Btn'
,p_parent_plug_id=>wwv_flow_api.id(2848045310542740867)
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(3275883590596542936)
,p_plug_display_sequence=>100
,p_plug_grid_column_css_classes=>'container-inner-btn'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2812928626909964974)
,p_plug_name=>'INTERVIEW'
,p_parent_plug_id=>wwv_flow_api.id(2848045310542740867)
,p_region_css_classes=>'custom-title'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P0_EVENT_FLAG = 2'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2812928473593964973)
,p_plug_name=>unistr('\05D0\05D9\05E4\05D4 \05D6\05D4 \05E7\05D5\05E8\05D4?')
,p_parent_plug_id=>wwv_flow_api.id(2812928626909964974)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-sm:margin-bottom-sm'
,p_plug_template=>wwv_flow_api.id(3202293099369440283)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_grid_column_css_classes=>'no-title-pad'
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('\05D1\05D1\05D9\05EA \05D0\05D5 \05D1\05DB\05DC \05DE\05E7\05D5\05DD \05D0\05D7\05E8 \05E9\05DE\05EA\05D0\05D9\05DD \05DC\05E4\05D2\05D9\05E9\05EA \05D6\05D5\05DD. <br>\05D3\05E8\05DA \05D4\05DE\05D7\05E9\05D1 \05D1\05DC\05D1\05D3 \05D5\05DC\05D0 \05D1\05D8\05DC\05E4\05D5\05DF \05D4\05E0\05D9\05D9\05D3.')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2812928363664964972)
,p_plug_name=>unistr('\05D9\05E9 \05D3\05D2\05E9\05D9\05DD?')
,p_parent_plug_id=>wwv_flow_api.id(2812928626909964974)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-sm:margin-bottom-sm'
,p_plug_template=>wwv_flow_api.id(3202293099369440283)
,p_plug_display_sequence=>20
,p_plug_grid_column_css_classes=>'no-title-pad'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\05DE\05D9\05E7\05D5\05DD \05DE\05D5\05D0\05E8, \05E1\05D1\05D9\05D1\05D4 \05E9\05E7\05D8\05D4 \05D5\05D0\05D9\05E0\05D8\05E8\05E0\05D8 \05D9\05E6\05D9\05D1.<br>'),
'',
unistr('\05DB\05D3\05D9 \05E9\05E6\05D5\05D5\05EA \05D4\05DE\05D9\05D5\05DF \05D9\05D5\05DB\05DC \05DC\05D4\05EA\05E8\05E9\05DD \05DE\05E9\05E4\05EA \05D4\05D2\05D5\05E3 \05E9\05DC\05DA \05D7\05E9\05D5\05D1 \05DC\05D5\05D5\05D3\05D0 \05E9\05D4\05DE\05E6\05DC\05DE\05D4 \05EA\05D5\05E4\05E1\05EA \05D0\05EA<br> \05DB\05DC \05E4\05DC\05D2 \05D4\05D2\05D5\05E3 \05D4\05E2\05DC\05D9\05D5\05DF \05D1\05DE\05E8\05D7\05E7 \05E9\05DE\05D0\05E4\05E9\05E8 \05DC\05DA \05D8\05D5\05D5\05D7 \05EA\05E0\05D5\05E2\05D4.<br>'),
unistr('<br><span style="font-weight:600;">\05DE\05EA\05D9 \05DE\05E7\05D1\05DC\05D9\05DD \05EA\05E9\05D5\05D1\05D5\05EA?</span><br>'),
unistr('\05DC\05DB\05DC \05D4\05DE\05D0\05D5\05D7\05E8 \05EA\05D5\05DA 14 \05D9\05DE\05D9 \05E2\05D1\05D5\05D3\05D4.'),
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2812928282619964971)
,p_plug_name=>unistr('\05DB\05D9\05E6\05D3 \05DC\05D4\05EA\05DB\05D5\05E0\05DF?')
,p_parent_plug_id=>wwv_flow_api.id(2812928626909964974)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-sm:margin-bottom-sm'
,p_plug_template=>wwv_flow_api.id(3202293099369440283)
,p_plug_display_sequence=>30
,p_plug_grid_column_css_classes=>'no-title-pad'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p class="answer-title">\05D4\05E8\05D0\05D9\05D5\05DF \05D9\05DB\05DC\05D5\05DC \05D1\05E2\05D9\05E7\05E8 \05E9\05D0\05DC\05D5\05EA \05D0\05D9\05E9\05D9\05D5\05EA \05D5\05DE\05E7\05E6\05D5\05E2\05D9\05D5\05EA, \05DC\05E4\05E2\05DE\05D9\05DD \05D2\05DD \05D1\05E9\05E4\05D5\05EA \05E0\05D5\05E1\05E4\05D5\05EA \05D1\05D4\05EA\05D0\05DD <br> \05DC\05E9\05E4\05D4 \05D4\05E8\05DC\05D5\05D5\05E0\05D8\05D9\05EA \05DC\05E9\05DC\05D9\05D7\05D5\05EA.</>'),
'<br><br>',
unistr('\05D0\05D9\05DF \05E6\05D5\05E8\05DA \05DC\05D4\05D9\05DC\05D7\05E5, \05D9\05E9 \05DC\05DA \05D0\05EA \05D6\05D4.</p>'),
'',
unistr('<p class="answer-title">\05E0\05EA\05E8\05D0\05D4 \05D1\05E7\05E8\05D5\05D1 \D83D\DE0A</p>'),
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2123636837870352447)
,p_plug_name=>'<span></span>'
,p_parent_plug_id=>wwv_flow_api.id(2848045310542740867)
,p_region_css_classes=>'container-inner main'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>130
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p class="question-title" style="font-weight:700;">\05E9\05D9\05E0\05D5\05D9 \05D4\05E8\05E9\05DE\05D4 \05EA\05D0\05E8\05D9\05DB\05D9\05DD \05E4\05E0\05D5\05D9\05D9\05DD:</p>'),
'<br>',
unistr('<p class="answer-title">\05D9\05E9 \05DC\05D1\05D8\05DC \05D4\05E8\05E9\05DE\05D4 \05E0\05D5\05DB\05D7\05D9\05EA \05DC\05E4\05E0\05D9 \05E9\05D9\05E0\05D5\05D9 \05DC\05DE\05D5\05E2\05D3 \05D7\05D3\05E9</p>'),
'<br>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'(NVL(:P0_BOOKED_TO_EVENT,0) <> 0 and :P0_EVENT_NO_FULL > 0  or   :P0_BOOKED_FINAL = 1 ) and  :P0_EVENT_FLAG = 1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2088986043937551309)
,p_plug_name=>'<span></span>'
,p_parent_plug_id=>wwv_flow_api.id(2848045310542740867)
,p_region_css_classes=>'container-inner main'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-top-none:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>120
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p class="question-title" style="font-weight:700;">\05E0\05E8\05E9\05DE\05EA \05D1\05D4\05E6\05DC\05D7\05D4 \05DC\05DE\05E8\05DB\05D6 \05D4\05E2\05E8\05DB\05D4!</p>'),
'<br>',
unistr('<p class="answer-title">\05E0\05E9\05DE\05D7 \05DC\05E4\05D2\05D5\05E9 \05D0\05D5\05EA\05DA \05D1\05DE\05E8\05DB\05D6 \05D4\05E2\05E8\05DB\05D4 \05E9\05D9\05D7\05DC \05D1-&PO_START_DAY_WEEK. \05D1\05E9\05E2\05D4 &P0_PERSON_ETIME.</p>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'NVl(:P0_BOOKED_TO_EVENT,0) <> 0  or  :P0_BOOKED_FINAL =1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2088915569783817345)
,p_plug_name=>'events_no_action'
,p_parent_plug_id=>wwv_flow_api.id(2848045310542740867)
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
,p_plug_display_when_condition=>'( NVL(:P0_BOOKED_TO_EVENT,0)  <> 0 and :P0_EVENT_NO_FULL > 0 ) or :P0_BOOKED_FINAL = 1'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2062608829459552567)
,p_plug_name=>'<span></span>'
,p_parent_plug_id=>wwv_flow_api.id(2848045310542740867)
,p_region_css_classes=>' custom'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody:margin-top-none:margin-bottom-md:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>80
,p_plug_grid_column_css_classes=>'subscribe'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p class="question-title" style="font-weight:700;">\05DE\05D4 \05E6\05E4\05D5\05D9 \05D1\05E4\05D2\05D9\05E9\05EA \05D4\05D4\05DB\05E8\05D5\05EA?</p>'),
unistr('<br><p class="answer-title">40-60 \05D3\05E7'' \05E9\05D9\05D7\05D4 \05D1\05D6\05D5\05DD \05DC\05D4\05D9\05DB\05E8\05D5\05EA \05E2\05DD \05E6\05D5\05D5\05EA \05D4\05DE\05E1\05DC\05D5\05DC \05D1\05E6\05E4\05D5\05DF \05D0\05DE\05E8\05D9\05E7\05D4.<br> \05D4\05E9\05D9\05D7\05D4 \05EA\05EA\05E7\05D9\05D9\05DD \05D1\05E2\05D1\05E8\05D9\05EA \05D5\05D1\05D0\05E0\05D2\05DC\05D9\05EA, \05D5\05D1\05E1\05D5\05E4\05D4 \05D9\05D4\05D9\05D4 \05D6\05DE\05DF \05DC\05E9\05D0\05DC\05D5\05EA. </p>'),
'',
unistr('<br><p class="question-title" style="font-weight:700;margin-top:12px">\05D4\05E0\05D7\05D9\05D5\05EA \05DE\05D9\05D5\05D7\05D3\05D5\05EA?</p>'),
'<br>',
'<p class="answer-title">',
unistr(' \05DC\05D1\05D5\05E9 \05D4\05D5\05DC\05DD<br>\05E1\05D1\05D9\05D1\05D4 \05E9\05E7\05D8\05D4 <br>\05D7\05D9\05D1\05D5\05E8 \05D0\05D9\05E0\05D8\05E8\05E0\05D8 \05D9\05E6\05D9\05D1 <br>\05DE\05E6\05DC\05DE\05D4 \05D5\05DE\05D7\05E9\05D1 \05EA\05E7\05D9\05E0\05D9\05DD <br>\05D4\05E8\05D1\05D4 \05DE\05E6\05D1 \05E8\05D5\05D7 \05D8\05D5\05D1! \D83D\DE0A'),
'',
'</p>',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P0_EVENT_FLAG'
,p_plug_display_when_cond2=>'8'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>unistr('\05E8\05D9\05E9\05D5\05DD \05DC\05DE\05E4\05D2\05E9 \05D4\05DB\05E8\05D5\05EA ')
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1267179494521880566)
,p_plug_name=>'<span></span>'
,p_parent_plug_id=>wwv_flow_api.id(2848045310542740867)
,p_region_css_classes=>' custom'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody:margin-top-none:margin-bottom-md:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(3254432030120955062)
,p_plug_display_sequence=>90
,p_plug_grid_column_css_classes=>'subscribe'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p class="question-title" style="font-weight:700;">\05DE\05D4 \05E6\05E4\05D5\05D9 \05D1\05E4\05D2\05D9\05E9\05EA \05D4\05D4\05DB\05E8\05D5\05EA?</p>'),
'<br>',
unistr('<p class="answer-title">\05DE\05E4\05D2\05E9 \05E9\05DC 3 \05E9\05E2\05D5\05EA \05D1\05DE\05E9\05E8\05D3\05D9 \05D4\05D9\05D7\05D9\05D3\05D4 \05DC\05E9\05DC\05D9\05D7\05D5\05EA \05D1\05D9\05E8\05D5\05E9\05DC\05D9\05DD (16:00-19:00)'),
unistr('<br>\05D1\05DE\05D4\05DC\05DA \05D4\05E2\05E8\05D1 \05D9\05D5\05D2\05E9 \05DB\05D9\05D1\05D5\05D3 \05E7\05DC</p>'),
'<br>',
unistr('<p class="question-title" style="font-weight:700;margin-top:12px">\05D4\05E0\05D7\05D9\05D5\05EA \05DE\05D9\05D5\05D7\05D3\05D5\05EA?</p>'),
unistr('<br><p class="answer-title">\05D4\05E8\05D1\05D4 \05DE\05E6\05D1 \05E8\05D5\05D7 \05D8\05D5\05D1! \D83D\DE0A<br>'),
unistr('\05DE\05E6\05E4\05D9\05DD \05DC\05E8\05D0\05D5\05EA\05DB\05DD.'),
'<br><br>',
unistr('\05E4\05E8\05D8\05D9\05DD \05E0\05D5\05E1\05E4\05D9\05DD \05D9\05D9\05E9\05DC\05D7\05D5 \05D1\05DE\05D9\05D9\05DC \05DC\05D0\05D7\05E8 \05D4\05D4\05E8\05E9\05DE\05D4'),
'<br><br>',
unistr('\05DC\05E9\05D0\05DC\05D5\05EA \05D0\05D5 \05DE\05D9\05D3\05E2 \05E0\05D5\05E1\05E3 \05E0\05D9\05EA\05DF \05DC\05E4\05E0\05D5\05EA \05DC\05DC\05D9\05D2\05DC \05E8\05DB\05D6\05EA \05D4\05DE\05E1\05DC\05D5\05DC:'),
'<br><br>',
unistr('\05DE\05D9\05D9\05DC: ligalp@jafi.org'),
'<br><br>',
unistr('\05D8\05DC\05E4\05D5\05DF: 02-6216439'),
'</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P0_EVENT_FLAG'
,p_plug_display_when_cond2=>'9'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>unistr('\05E8\05D9\05E9\05D5\05DD \05DC\05DE\05E4\05D2\05E9 \05D4\05DB\05E8\05D5\05EA ')
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2848041728339740831)
,p_plug_name=>'Params'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2831251371502725955)
,p_plug_name=>'<span></span>'
,p_region_name=>'OK'
,p_region_css_classes=>'js-dialog-size343x250'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_api.id(3275862362266542912)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P5_OK'
,p_plug_display_when_cond2=>'OK'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2831251291614725954)
,p_plug_name=>unistr('<span style="direction:rtl;font-size:28px;">\05D4\05E8\05E9\05DE\05EA\05DA \05E0\05E7\05DC\05D8\05D4 \05D1\05D4\05E6\05DC\05D7\05D4!</span>')
,p_parent_plug_id=>wwv_flow_api.id(2831251371502725955)
,p_region_template_options=>'#DEFAULT#:i-h320:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(3202293099369440283)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('\05D4\05E9\05DC\05DE\05EA \05E2\05D5\05D3 \05E9\05DC\05D1 \05D1\05EA\05D4\05DC\05D9\05DA! \05DB\05DC \05D4\05E4\05E8\05D8\05D9\05DD \05DB\05D1\05E8 \05D0\05E6\05DC\05DA \05D1\05DE\05D9\05D9\05DC.')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2831250947039725951)
,p_plug_name=>'BTN'
,p_parent_plug_id=>wwv_flow_api.id(2831251371502725955)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>50
,p_plug_grid_column_span=>9
,p_plug_display_column=>2
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2517092702343345875)
,p_plug_name=>'Custom Footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>90
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
 p_id=>wwv_flow_api.id(2453416103916707097)
,p_plug_name=>'MainContainer'
,p_region_css_classes=>'topslider-rs'
,p_region_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(3275884580557542937)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2088913551216792030)
,p_plug_name=>'BITUL'
,p_region_name=>'BITUL'
,p_region_css_classes=>'js-dialog-size410X100'
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-size480x320:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(3052159502813868459)
,p_plug_display_sequence=>150
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2490468674288452843)
,p_plug_name=>unistr('<span style="text-align:right;color:#3A8B94;font-size:32px;line-height:33px;font-weight:700;">\05D1\05D9\05D8\05D5\05DC \05D4\05E9\05EA\05EA\05E4\05D5\05EA\05DA \05D1\05D9\05D5\05DD \05D4\05E2\05E8\05DB\05D4</span>')
,p_region_name=>'MyAlertR'
,p_parent_plug_id=>wwv_flow_api.id(2088913551216792030)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_region_attributes=>'style="width:600px;hight:220px;padding:20px;"'
,p_plug_template=>wwv_flow_api.id(3202293099369440283)
,p_plug_display_sequence=>20
,p_plug_display_column=>2
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p style="font-size:16px;line-height:17px;">',
unistr('\05E2\05DC \05DE\05E0\05EA \05DC\05D1\05D8\05DC \05D1\05DB\05DC \05D6\05D0\05EA, \05D9\05E9 \05DC\05D9\05E6\05D5\05E8 \05D0\05D9\05EA\05E0\05D5 \05E7\05E9\05E8 \05D1\05D5\05D5\05D8\05E1\05D0\05E4 0522450151.'),
unistr('\05D7\05E9\05D5\05D1 \05DC\05E6\05D9\05D9\05DF, \05DB\05D9 \05D1\05D9\05D8\05D5\05DC\05D9 \05D4\05D2\05E2\05D4 \05DE\05E8\05D5\05D1\05D9\05DD \05E2\05DC\05D5\05DC\05D9\05DD \05DC\05D2\05E8\05D5\05E8 \05D4\05E1\05E8\05EA \05DE\05D5\05E2\05DE\05D3\05D5\05EA!'),
'',
' ',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P0_BOOKED_FINAL = 1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2265269576876455499)
,p_plug_name=>unistr('<span style="text-align:right;color:#3A8B94;font-size:32px;font-height:33px;font-weight:700;">\05D1\05D9\05D8\05D5\05DC \05D4\05E9\05EA\05EA\05E4\05D5\05EA\05DA \05D1\05DE\05E8\05DB\05D6 \05D4\05E2\05E8\05DB\05D4</span>')
,p_parent_plug_id=>wwv_flow_api.id(2088913551216792030)
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
 p_id=>wwv_flow_api.id(2265268949741455493)
,p_plug_name=>unistr('\05E9\05D9\05E0\05D5\05D9 \05DE\05D5\05E2\05D3 \05D4\05E2\05E8\05DB\05D4')
,p_parent_plug_id=>wwv_flow_api.id(2088913551216792030)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3243863062036111686)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(2831250947039725951)
,p_button_name=>'BackToPersonalArea'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch:t-Button--gapTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_api.id(3275795122090542834)
,p_button_image_alt=>unistr('\05D7\05D6\05E8\05D4 \05DC\05D0\05D6\05D5\05E8 \05D4\05D0\05D9\05E9\05D9')
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:&P5_BACKPAGE.:&SESSION.::&DEBUG.:::'
,p_button_cattributes=>'style="font-size:20px;background-color:#3A8B94;color:white;"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(722442266943597192)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(2265269576876455499)
,p_button_name=>'BITUL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(3275795122090542834)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\05DB\05DF \05D0\05E0\05D9 \05E8\05D5\05E6\05D4 \05DC\05D1\05D8\05DC')
,p_button_position=>'BELOW_BOX'
,p_button_execute_validations=>'N'
,p_button_css_classes=>'popup-button'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3243856666726111673)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(2831252207149725963)
,p_button_name=>'CONTINUE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3275795122090542834)
,p_button_image_alt=>unistr('\05E7\05E8\05D0\05EA\05D9 \05D5\05D0\05E0\05D9 \05E8\05D5\05E6\05D4 \05DC\05D4\05D9\05E8\05E9\05DD')
,p_button_position=>'BODY'
,p_button_condition=>'P5_BTN'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_css_classes=>'main-popup'
,p_button_cattributes=>'style="width:325px;height:48px;font-size:20px;color:white;background-color:#D02C68;"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(722371409906837994)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(2088986043937551309)
,p_button_name=>'BITUL_SADNA'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--gapLeft:t-Button--gapRight:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_api.id(3275795122090542834)
,p_button_image_alt=>unistr('\05DC\05D1\05D9\05D8\05D5\05DC \05D4\05E8\05E9\05DE\05D4')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.theme.openRegion(''BITUL'');'
,p_button_condition=>':P0_BOOKED_TO_EVENT <> 0 AND :P0_EVENT_FLAG =1'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_button_css_classes=>'main-popup'
,p_button_cattributes=>' 	style="color:#3A8B94;border:solid 1px #3A8B94;top:40px;width:350px;height:48px; font-size:24px; line-height:30px;"'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3243865243974111713)
,p_branch_name=>'BackTo2'
,p_branch_action=>'f?p=&APP_ID.:&P5_BACKPAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'BACK'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3243865665065111714)
,p_branch_name=>'DisplayMsgSuccess'
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:Y,::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(3243856666726111673)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(722443617029609495)
,p_branch_name=>'AfterLoadReload'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3243861759010111684)
,p_name=>'P5_BTN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(2848041728339740831)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3243861348649111683)
,p_name=>'P5_TITLE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(2848041728339740831)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3243860955830111683)
,p_name=>'P5_OK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(2848041728339740831)
,p_item_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3243860515325111683)
,p_name=>'P5_VACANCY_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(2848041728339740831)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3243860110868111682)
,p_name=>'P5_COURSE_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(2848041728339740831)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3243859766320111679)
,p_name=>'P5_EVENT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(2848041728339740831)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1905973956331038901)
,p_name=>'P5_BACKPAGE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(2848041728339740831)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1905973708106038899)
,p_name=>'P5_PAGE_TITLE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(2848041728339740831)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3243864257837111710)
,p_name=>'OnClickBack'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#back'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3243864794335111712)
,p_event_id=>wwv_flow_api.id(3243864257837111710)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'BACK'
,p_attribute_02=>'Y'
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
 p_id=>wwv_flow_api.id(3243863427815111708)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'RISHUM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_ok varchar2(200):=''OK'';',
'begin',
':P5_OK :='''';',
'',
'',
'  v_ok := JAFI_IRC_SC_WORKSHOP_ENROL_PKG.cre_upd_enrollment(:P0_PERSON_ID,',
'                                                            :P5_EVENT_ID,',
'															''P'',',
'															:P5_COURSE_DATE,',
'															:P5_VACANCY_ID);',
':P5_OK :=  v_ok;',
'',
'if v_ok <> ''OK''  then',
'   apex_error.add_error (',
unistr('    p_message          => ''\05EA\05E7\05DC\05D4 \05D9\05E9 \05DC\05E4\05E0\05D5\05EA \05DC\05D2\05D5\05E8\05DD \05D4\05DE\05D8\05E4\05DC''||'' ''||v_ok,'),
'    p_display_location => apex_error.c_inline_in_notification );',
'else',
'  :P5_OK := v_ok;',
'end if;',
'',
'/*',
'if 1=1 then',
'    apex_error.add_error (',
'    p_message          => ''Params''||'' person ''||:P0_PERSON_ID||'' event ''||:P5_EVENT_ID||'' course date ''||:P5_COURSE_DATE||'' vacancy''||:P5_VACANCY_ID,',
'    p_display_location => apex_error.c_inline_in_notification );',
'    end if;',
'    */',
'end; '))
,p_process_error_message=>unistr('\05EA\05E7\05DC\05D4 \05D9\05E9 \05DC\05E4\05E0\05D5\05EA \05DC\05D2\05D5\05E8\05DD \05D4\05DE\05D8\05E4\05DC')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(3243856666726111673)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(722443330800607534)
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
 p_id=>wwv_flow_api.id(3243863809993111709)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SetTitle'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P5_BACKPAGE :=2;',
'    if :P0_EVENT_FLAG = 1 then',
unistr('        :P5_PAGE_TITLE :=''\05E8\05D9\05E9\05D5\05DD-\05DC\05E1\05D3\05E0\05D0\05D5\05EA'' ;'),
unistr('        :P5_TITLE := ''\05DE\05E8\05DB\05D6 \05D4\05E2\05E8\05DB\05D4 - \05D4\05E4\05E8\05D8\05D9\05DD \05D4\05D7\05E9\05D5\05D1\05D9\05DD'';'),
'    elsif :P0_EVENT_FLAG = 2 then',
unistr('        :P5_PAGE_TITLE :=''\05E8\05D9\05E9\05D5\05DD-\05DC\05E1\05D3\05E0\05D0\05D5\05EA'' ;'),
unistr('        :P5_TITLE := ''\05D4\05E8\05E9\05DE\05D4 \05D5\05D4\05DB\05E0\05D4 \05DC\05E8\05D0\05D9\05D5\05DF \05D0\05D9\05E9\05D9'';'),
'    elsif   :P0_EVENT_FLAG =8  then   ',
unistr('      :P5_PAGE_TITLE :=''\05E8\05D9\05E9\05D5\05DD-\05DE\05E4\05D2\05E9 \05D4\05DB\05E8\05D5\05EA'' ;'),
unistr('      :P5_TITLE := ''\05D4\05E8\05E9\05DE\05D4 \05DC\05DE\05E4\05D2\05E9 \05D4\05DB\05E8\05D5\05EA'';'),
'      :P5_BACKPAGE :=20;',
'   elsif   :P0_EVENT_FLAG = 9 then   ',
unistr('      :P5_PAGE_TITLE :=''\05E8\05D9\05E9\05D5\05DD-\05DE\05E4\05D2\05E9 \05D4\05DB\05E8\05D5\05EA'' ;'),
unistr('      :P5_TITLE := ''\05D4\05E8\05E9\05DE\05D4 \05DC\05DE\05E4\05D2\05E9 \05D4\05DB\05E8\05D5\05EA'';'),
'      :P5_BACKPAGE :=21;',
'      ',
'    else',
unistr('        :P5_PAGE_TITLE :=''\05E8\05D9\05E9\05D5\05DD'' ;'),
unistr('        :P5_TITLE := ''\05D0\05D9\05D5 \05D0\05D9\05E8\05D5\05E2\05D9\05DD'';'),
'    end if;',
'end;    '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
