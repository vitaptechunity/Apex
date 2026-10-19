prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
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
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'Community Shlichut - General Pricing'
,p_alias=>'COMMUNITY-SHLICHUT-GENERAL-PRICING'
,p_step_title=>'Community Shlichut - General Pricing'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>' '
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.mobile-br {',
'    display: none;',
'}',
'',
'.t-Body {',
'    padding-right: 25px;    ',
'    padding-left: 25px;',
'}',
'',
'.home-link {',
'    display: block !important;',
'}',
'',
'#pricingContainer {',
'    width: 482px !important;',
'    /*height: 339px !important;*/',
'    display: flex;',
'    justify-content: center;',
'}',
'',
'/*#mouContainer .t-Region-body {',
'    height: 339px !important;',
'}',
'',
'#mouContainer .container {',
'    height: 300px !important;',
'}*/',
'',
'#downloadPricingBtn {',
'    box-shadow: none;',
'    background: transparent;',
'    /*margin-top: 70px;*/',
'}',
'',
'#P21_USER_READ_AGREEMENT {',
'    margin-top: 5px;',
'}',
'',
'label[for="P21_USER_READ_AGREEMENT_0"]::before {',
'    box-shadow: inset #E84C26 0 0 0 1px !important;',
'}',
'',
'label[for="P21_USER_READ_AGREEMENT_0"]::after {',
'    content: ''\e007'' !important;',
'}',
'',
'#confirmPricingBtn {',
'    width: 274px;',
'    height: 50px;',
'    margin-top: 20px;',
'}',
'',
'#confirmPricingBtn.disabled-btn {',
'    background-color: #8a94a8 !important;',
'}',
'',
'#pricingConfirmedBtn {',
'    display: none;',
'    width: 274px;',
'    height: 50px;',
'    margin-top: 20px;',
'    background-color: #E8F7FF !important;',
'    cursor: default;',
'    box-shadow: none !important;',
'}',
'',
'#pricingContainer div.row:last-child {',
'    bottom: 0;',
'}',
'',
'#P21_USER_READ_AGREEMENT_CONTAINER {',
'    height: 58px;',
'}',
'',
'#P21_USER_READ_AGREEMENT_CONTAINER .t-Form-labelContainer {',
'    display: none;',
'}',
'',
'#P21_USER_READ_AGREEMENT_CONTAINER .t-Form-itemWrapper {',
'    height: 30px;',
'}',
'',
'#P21_USER_READ_AGREEMENT_error:before {',
'    content: "\eb07";',
'    margin-right: 5px;',
'}',
'',
'#P21_USER_READ_AGREEMENT_error_placeholder .t-Form-error {',
'    padding-left: 24px;',
'}',
'',
'',
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
'    ',
'    label[for="P21_USER_READ_AGREEMENT_0"] {',
'        line-height: 20px !important;',
'    }',
'    ',
'    /*#confirmPricingBtn {',
'        margin-top: 75px;',
'    }',
'    ',
'    #downloadPricingBtn {',
'        margin-top: 30px;',
'        margin-bottom: 30px;',
'    }*/',
'    ',
'    #P21_USER_READ_AGREEMENT_CONTAINER {',
'        width: 274px;',
'    }',
'    ',
'    #P21_USER_READ_AGREEMENT_CONTAINER .t-Form-itemWrapper {',
'        height: 40px;',
'    }',
'    ',
'    #P21_USER_READ_AGREEMENT_error_placeholder .t-Form-error {',
'        padding-left: 0;',
'        margin-top: 10px;',
'    }',
'    ',
'    #P21_USER_READ_AGREEMENT_CONTAINER .t-Form-inputContainer {',
'        padding-left: 0;',
'        padding-right: 0;',
'    }',
'}',
'',
'@media (max-width: 400px) {',
'    .t-Body-contentInner {',
'        padding: 0;',
'    }',
'}',
'',
'@media (max-width: 370px) {',
'    .t-Body {',
'        padding-left: 10px;',
'        padding-right: 10px;',
'    }',
'}'))
,p_step_template=>wwv_flow_api.id(29244342218644)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DRORA'
,p_last_upd_yyyymmddhh24miss=>'20251201150658'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(121141551119222375)
,p_plug_name=>'Pricing Agreement Is Null'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>60
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P21_PRICING_AGREEMENT_URL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(121142596460222385)
,p_plug_name=>'Sub Page Info'
,p_parent_plug_id=>wwv_flow_api.id(121141551119222375)
,p_region_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img src="#APP_IMAGES#pricing-agreement-not-found.svg" />',
'<br/><br/>',
unistr('<div style="font-weight: 400;"><div style="font-weight: 500;">We\2019re sorry, but the pricing information<br/>for this Shlichut is currently unavailable.</div>'),
'Our team has been notified and is working<br/>',
'to update it as soon as possible.<br/>',
'<br/>',
'For further assistance,<br/>',
'please contact your program coordinator<br/>',
'or our support team - Dolev - <a href="mailto:dolevs@jafi.org" style="font-weight: 500">dolevs@jafi.org</a>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(121142505931222384)
,p_plug_name=>'Pricing Agreement Is Not Null'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>30
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P21_PRICING_AGREEMENT_URL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(713437981164108144)
,p_plug_name=>'Pricing Container'
,p_region_name=>'pricingContainer'
,p_parent_plug_id=>wwv_flow_api.id(121142505931222384)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:margin-top-md'
,p_plug_template=>wwv_flow_api.id(2889647945233431)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2327308516481363137)
,p_plug_name=>'Sub Page Info'
,p_parent_plug_id=>wwv_flow_api.id(121142505931222384)
,p_region_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-weight: 700;">Welcome to the General Pricing section.</div>',
'Here you can review the standard pricing <br class="mobile-br" />document<br class="desktop-br" />',
'for your community.<br />',
'<br />',
'Please note that this document provides <br class="mobile-br" />general pricing<br class="desktop-br" />',
'guidelines only, it is not specific <br class="mobile-br" />to any individual shaliach, <br class="desktop-br" />',
unistr('and\00A0details may be <br class="mobile-br" />subject to change.<br />'),
'<br />',
'Take a moment to go through the information <br class="mobile-br" />and <br class="desktop-br" />',
'confirm your approval before proceeding.<br />',
'<br />',
'If you have any questions regarding the pricing, <br class="mobile-br" />feel free to <br class="desktop-br" />',
'reach out to our team in Israel for <br class="mobile-br" />assistance.'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1283921411633119783)
,p_plug_name=>'Back To Home Container'
,p_region_name=>'backToHomeContainer'
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8173262895762139722)
,p_plug_name=>'Title'
,p_region_css_classes=>'bigger-title-page1'
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(1491988443724117)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Community Shlichut - <br class="mobile-br"/>General Pricing',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(136426142568559500)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1283921411633119783)
,p_button_name=>'BACK_TO_MENU'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back to Menu'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RR,::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(136423347720559487)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(713437981164108144)
,p_button_name=>'DownloadPricing'
,p_button_static_id=>'downloadPricingBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_api.id(491309386210075286)
,p_button_image_alt=>'<img src="#APP_IMAGES#download-pricing-info.svg" />'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'center-region'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(136423763638559489)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(713437981164108144)
,p_button_name=>'ConfirmPricing'
,p_button_static_id=>'confirmPricingBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2938281857134305)
,p_button_image_alt=>'Confirm'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'center-region'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(136424177927559489)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(713437981164108144)
,p_button_name=>'PricingConfirmed'
,p_button_static_id=>'pricingConfirmedBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2938281857134305)
,p_button_image_alt=>'<img src="#APP_IMAGES#confirmed.svg" />'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'center-region'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(136436757678559573)
,p_branch_name=>'Redirect to Menu'
,p_branch_action=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121141319473222372)
,p_name=>'P21_PRICING_AGREEMENT_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(713437981164108144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(136424638919559491)
,p_name=>'P21_IS_PRICING_CONFIRMED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(713437981164108144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(136424983914559497)
,p_name=>'P21_DOWNLOAD_CLICKED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(713437981164108144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(136425400928559497)
,p_name=>'P21_USER_READ_AGREEMENT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(713437981164108144)
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:I have read and Agree to all information above;Y'
,p_grid_column_css_classes=>'center-region'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(136427223314559564)
,p_computation_sequence=>10
,p_computation_item=>'P21_IS_PRICING_CONFIRMED'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Y''',
'from hr_organization_information hoi',
'where hoi.organization_id = :P0_ORG_ID and hoi.org_information_context =''JAFI_HR_SHLICHUT_ORG_DETAILS'' and hoi.org_information16 is not null',
'AND (',
'	(EXTRACT(month FROM sysdate) <= 10 and',
'	trunc(to_date(hoi.org_information16, ''DD/MM/YYYY'')) >= to_date(''01/10/'' || to_char(EXTRACT(year FROM sysdate) - 1),''DD/MM/YYYY'') and',
'	trunc(to_date(hoi.org_information16, ''DD/MM/YYYY'')) < to_date(''31/10/'' || to_char(EXTRACT(year FROM sysdate)),''DD/MM/YYYY'')) or',
'	(EXTRACT(month FROM sysdate) >= 11 and',
'	trunc(to_date(hoi.org_information16, ''DD/MM/YYYY'')) >= to_date(''01/11/'' || to_char(EXTRACT(year FROM sysdate)),''DD/MM/YYYY''))',
')'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(136427612502559565)
,p_computation_sequence=>20
,p_computation_item=>'P21_USER_READ_AGREEMENT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Y''',
'from hr_organization_information hoi',
'where hoi.organization_id = :P0_ORG_ID and hoi.org_information_context =''JAFI_HR_SHLICHUT_ORG_DETAILS'' and hoi.org_information17 is not null',
'AND (',
'	(EXTRACT(month FROM sysdate) <= 10 and',
'	trunc(to_date(hoi.org_information17, ''DD/MM/YYYY'')) >= to_date(''01/10/'' || to_char(EXTRACT(year FROM sysdate) - 1),''DD/MM/YYYY'') and',
'	trunc(to_date(hoi.org_information17, ''DD/MM/YYYY'')) < to_date(''31/10/'' || to_char(EXTRACT(year FROM sysdate)),''DD/MM/YYYY'')) or',
'	(EXTRACT(month FROM sysdate) >= 11 and',
'	trunc(to_date(hoi.org_information17, ''DD/MM/YYYY'')) >= to_date(''01/11/'' || to_char(EXTRACT(year FROM sysdate)),''DD/MM/YYYY'')) --or',
'	--(EXTRACT(month FROM sysdate) = 10 and',
'	--trunc(to_date(hoi.org_information17, ''DD/MM/YYYY'')) >= to_date(''01/11/'' || to_char(EXTRACT(year FROM sysdate) - 1),''DD/MM/YYYY''))',
')'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(121141394232222373)
,p_computation_sequence=>30
,p_computation_item=>'P21_PRICING_AGREEMENT_URL'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT case when fl.FILE_ID is null then null',
'            else apex_page.get_url(p_page => ''12'', ',
'                                   p_request => ''APPLICATION_PROCESS=GetDocument'', ',
'                                   p_items => ''DOCUMENT_ID'', ',
'                                   p_values => fl.FILE_ID) end DOC',
'FROM   hr_organization_information hoi,',
'       fnd_attached_docs_form_vl   f,',
'       fnd_lobs                    fl',
'WHERE f.pk1_value = hoi.organization_id',
'   AND f.entity_name = ''HR_ORGANIZATION_UNITS''     ',
'   and hoi.org_information1 = ''HR_ORG''',
'      ',
'       AND ((EXTRACT(month FROM sysdate) <= 9 and',
'            trunc(f.creation_date) >= to_date(''01/11/'' || to_char(EXTRACT(year FROM sysdate) - 1),''DD/MM/YYYY'') and',
'            trunc(f.creation_date) < to_date(''30/09/'' || to_char(EXTRACT(year FROM sysdate)),''DD/MM/YYYY'')) or',
'            (EXTRACT(month FROM sysdate) >= 10 and',
'            trunc(f.creation_date) >= to_date(''01/10/'' || to_char(EXTRACT(year FROM sysdate)),''DD/MM/YYYY'')))',
'   AND HOI.organization_id = :P0_ORG_ID',
'   AND f.function_name = ''PERWSHRG''',
'   AND f.media_id = fl.file_id',
'   AND f.creation_date =',
'       (select max(fl.creation_date)',
'          from fnd_attached_docs_form_vl fl',
'         where fl.pk1_value = hoi.organization_id',
'           and fl.entity_name = ''HR_ORGANIZATION_UNITS'')',
'   --and 1=2'))
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(136428035595559565)
,p_validation_name=>'USER_READ_AGREEMENT'
,p_validation_sequence=>10
,p_validation=>'P21_USER_READ_AGREEMENT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please Agree Before Confirmation'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_api.id(136423763638559489)
,p_associated_item=>wwv_flow_api.id(136425400928559497)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(136428727790559567)
,p_name=>'Download Pricing Click'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(136423347720559487)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(136429159969559568)
,p_event_id=>wwv_flow_api.id(136428727790559567)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_DOWNLOAD_CLICKED'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(136430157501559569)
,p_event_id=>wwv_flow_api.id(136428727790559567)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P21_USER_READ_AGREEMENT_error_placeholder'').removeClass(''u-visible'');',
'$(''#P21_USER_READ_AGREEMENT_error_placeholder'').html('''');',
'',
'window.open($v(''P21_PRICING_AGREEMENT_URL''), ''_blank'');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(136430581735559569)
,p_name=>'Confirm MOU Click'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(136423763638559489)
,p_condition_element=>'P21_USER_READ_AGREEMENT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(136431606878559569)
,p_event_id=>wwv_flow_api.id(136430581735559569)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!$(''#P21_USER_READ_AGREEMENT_error_placeholder'').hasClass(''u-visible'')) {',
'    $(''#P21_USER_READ_AGREEMENT_error_placeholder'').html(',
'        ''<span class="t-Form-error">'' +',
'        ''    <span style="font-weight: 400;font-size: 15px;color:#E84C26">'' +',
'        ''        <div id="P21_USER_READ_AGREEMENT_error" class="fa">Please Agree Before Confirmation</div>'' +',
'        ''	 </span>'' +',
'        ''</span>'');',
'',
'    $(''#P21_USER_READ_AGREEMENT_error_placeholder'').addClass(''u-visible'');',
'}',
'else {',
'    $(''#P21_USER_READ_AGREEMENT_error'').text(''Please Agree Before Confirmation'');',
'}'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(136431127594559569)
,p_event_id=>wwv_flow_api.id(136430581735559569)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ConfirmMOU'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(136431948856559569)
,p_name=>'Show Pricing Confirmed'
,p_event_sequence=>70
,p_condition_element=>'P21_IS_PRICING_CONFIRMED'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(136432516360559570)
,p_event_id=>wwv_flow_api.id(136431948856559569)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_USER_READ_AGREEMENT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(136433005201559570)
,p_event_id=>wwv_flow_api.id(136431948856559569)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(136423763638559489)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(136433482312559571)
,p_event_id=>wwv_flow_api.id(136431948856559569)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(136424177927559489)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(136434802245559571)
,p_name=>'P21_USER_READ_AGREEMENT'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_USER_READ_AGREEMENT'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$v(''P21_DOWNLOAD_CLICKED'') == '''' && $v(''P21_USER_READ_AGREEMENT'') == ''Y'' &&',
'$v(''P21_IS_PRICING_CONFIRMED'') != ''Y''',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(136435770488559572)
,p_event_id=>wwv_flow_api.id(136434802245559571)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P21_USER_READ_AGREEMENT'') == ''Y'' && $(''#confirmPricingBtn'').hasClass(''disabled-btn'')) {',
'    $(''#confirmPricingBtn'').removeClass(''disabled-btn'');',
'    $(''#P21_USER_READ_AGREEMENT_error_placeholder'').removeClass(''u-visible'');',
'    $(''#P21_USER_READ_AGREEMENT_error_placeholder'').html('''');',
'}',
'else if ($v(''P21_USER_READ_AGREEMENT'') == '''' && !$(''#confirmPricingBtn'').hasClass(''disabled-btn'')) {',
'    $(''#confirmPricingBtn'').addClass(''disabled-btn'');',
'}'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(136436282816559572)
,p_event_id=>wwv_flow_api.id(136434802245559571)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!$(''#P21_USER_READ_AGREEMENT_error_placeholder'').hasClass(''u-visible'')) {',
'    $(''#P21_USER_READ_AGREEMENT_error_placeholder'').html(',
'        ''<span class="t-Form-error">'' +',
'        ''    <span style="font-weight: 400;font-size: 15px;color:#E84C26">'' +',
'        ''        <div id="P21_USER_READ_AGREEMENT_error" class="fa">Please read the pricing agreement</div>'' +',
'        ''	 </span>'' +',
'        ''</span>'');',
'',
'    $(''#P21_USER_READ_AGREEMENT_error_placeholder'').addClass(''u-visible'');',
'}',
'else {',
'    $(''#P21_USER_READ_AGREEMENT_error'').text(''Please read the pricing agreement'');',
'}',
'',
'if ($v(''P21_USER_READ_AGREEMENT'') == '''' && !$(''#confirmPricingBtn'').hasClass(''disabled-btn'')) {',
'    $(''#confirmPricingBtn'').addClass(''disabled-btn'');',
'}'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(136435253037559572)
,p_event_id=>wwv_flow_api.id(136434802245559571)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_USER_READ_AGREEMENT'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(136433894080559571)
,p_name=>'Disable If Agreement Not Read By User'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(136434390102559571)
,p_event_id=>wwv_flow_api.id(136433894080559571)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    if ($v(''P21_USER_READ_AGREEMENT'') == '''' && !$(''#confirmPricingBtn'').hasClass(''disabled-btn'')) {',
'        $(''#confirmPricingBtn'').addClass(''disabled-btn'');',
'    }',
'});',
'',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(136428255862559566)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SaveConfirmMOU'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'l_ovn pls_integer;',
'l_org_information_id Pls_Integer;',
' ',
'  ',
'begin',
'',
'fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800);  ',
'  ',
'  Begin ',
'  ',
'    Select t.object_version_number, org_information_id',
'      Into l_ovn, l_org_information_id ',
'      From Hr_Organization_Information t',
'     Where t.org_information_context = ''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'       and t.ORGANIZATION_ID = :P0_ORG_ID;',
'       ',
'        hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                               ,p_object_version_number => l_ovn',
'                                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'                                               ,p_org_information_id => l_org_information_id',
'											   ,p_org_information16 => to_char(trunc(sysdate), ''DD/MM/YYYY''));',
'  ',
'  end;',
'     ',
'  ',
'commit;',
'',
'exception  when others then',
'    XX_MY_UTILS.add_msg(''Main ERROR 220 Page 11 ''||SQLERRM); ',
'',
'     apex_error.add_error (',
'              p_message          => ''Failed to update =>''||SQLERRM,   p_display_location => apex_error.c_inline_in_notification );',
'    ',
'    ',
'end;',
' ',
'                 ',
'                 '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ConfirmMOU'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.component_end;
end;
/
