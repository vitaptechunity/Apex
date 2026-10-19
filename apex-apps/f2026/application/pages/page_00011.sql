prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
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
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'SHSH MOU'
,p_alias=>'SHSH-MOU'
,p_step_title=>'SHSH Program - MOU'
,p_autocomplete_on_off=>'OFF'
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
'#mouContainer {',
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
'#downloadMOUBtn {',
'    box-shadow: none;',
'    background: transparent;',
'    /*margin-top: 70px;*/',
'}',
'',
'#P11_USER_READ_AGREEMENT {',
'    margin-top: 5px;',
'}',
'',
'label[for="P11_USER_READ_AGREEMENT_0"]::before {',
'    box-shadow: inset #E84C26 0 0 0 1px !important;',
'}',
'',
'label[for="P11_USER_READ_AGREEMENT_0"]::after {',
'    content: ''\e007'' !important;',
'}',
'',
'#confirmMOUBtn {',
'    width: 274px;',
'    height: 50px;',
'    margin-top: 20px;',
'}',
'',
'#confirmMOUBtn.disabled-btn {',
'    background-color: #8a94a8 !important;',
'}',
'',
'#mouConfirmedBtn {',
'    display: none;',
'    width: 274px;',
'    height: 50px;',
'    margin-top: 20px;',
'    background-color: #E8F7FF !important;',
'    cursor: default;',
'    box-shadow: none !important;',
'}',
'',
'#mouContainer div.row:last-child {',
'    bottom: 0;',
'}',
'',
'#P11_USER_READ_AGREEMENT_CONTAINER {',
'    height: 58px;',
'}',
'',
'#P11_USER_READ_AGREEMENT_CONTAINER .t-Form-labelContainer {',
'    display: none;',
'}',
'',
'#P11_USER_READ_AGREEMENT_CONTAINER .t-Form-itemWrapper {',
'    height: 30px;',
'}',
'',
'#P11_USER_READ_AGREEMENT_error:before {',
'    content: "\eb07";',
'    margin-right: 5px;',
'}',
'',
'#P11_USER_READ_AGREEMENT_error_placeholder .t-Form-error {',
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
'    label[for="P11_USER_READ_AGREEMENT_0"] {',
'        line-height: 20px !important;',
'    }',
'    ',
'    /*#confirmMOUBtn {',
'        margin-top: 75px;',
'    }',
'    ',
'    #downloadMOUBtn {',
'        margin-top: 30px;',
'        margin-bottom: 30px;',
'    }*/',
'    ',
'    #P11_USER_READ_AGREEMENT_CONTAINER {',
'        width: 274px;',
'    }',
'    ',
'    #P11_USER_READ_AGREEMENT_CONTAINER .t-Form-itemWrapper {',
'        height: 40px;',
'    }',
'    ',
'    #P11_USER_READ_AGREEMENT_error_placeholder .t-Form-error {',
'        padding-left: 0;',
'        margin-top: 10px;',
'    }',
'    ',
'    #P11_USER_READ_AGREEMENT_CONTAINER .t-Form-inputContainer {',
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
,p_last_updated_by=>'MORIYAD'
,p_last_upd_yyyymmddhh24miss=>'20261006110212'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(85647217908634248)
,p_plug_name=>'MOU Container'
,p_region_name=>'mouContainer'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:margin-top-md'
,p_plug_template=>wwv_flow_api.id(2889647945233431)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(656130648377645887)
,p_plug_name=>'Back To Home Container'
,p_region_name=>'backToHomeContainer'
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1699517753225889241)
,p_plug_name=>'Sub Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Dear Partners, we are thrilled to announce the <br class="mobile-br" />launch <br class="desktop-br" />',
'of this year''s ShSh Shlichut season!<br />',
'<br />',
'Attached, you will find the JAFI Agreement for <br class="mobile-br" />the &P11_YEAR_SPAN. period. <br class="desktop-br" />',
'This document contains <br class="mobile-br" />essential information about the program.<br />',
'We kindly ask that you review the agreement <br class="mobile-br" />carefully to ensure <br class="desktop-br" />',
'a complete understanding <br class="mobile-br" />of the shared commitments between <br class="desktop-br" />',
'the ShSh <br class="mobile-br" />Shlichut Program and your community, <br class="mobile-br" />including all <br class="desktop-br" />',
'obligations and operational terms.<br />',
'<br />',
'After reviewing and digitally signing the <br class="mobile-br" />agreement, we will provide a <br class="desktop-br" />',
'financial table <br class="mobile-br" />that will complete the contract. <br class="mobile-br" />Please note that the <br class="desktop-br" />',
'application process will <br class="mobile-br" />only be considered complete once we have <br />',
'received both the signed agreement and the <br class="mobile-br" />economic table.'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7545472132506665826)
,p_plug_name=>'Title'
,p_region_css_classes=>'bigger-title-page1'
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(1491988443724117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SHSH Program - MOU',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(100728403024977674)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(656130648377645887)
,p_button_name=>'BACK_TO_MENU'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back to Menu'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:RR,8,9::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(85647361664634250)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(85647217908634248)
,p_button_name=>'DownloadMOU'
,p_button_static_id=>'downloadMOUBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_api.id(491309386210075286)
,p_button_image_alt=>'<img src="#APP_IMAGES#download-mou-form.svg" />'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'center-region'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(85648431796634260)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(85647217908634248)
,p_button_name=>'ConfirmMOU'
,p_button_static_id=>'confirmMOUBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2938281857134305)
,p_button_image_alt=>'Confirm MOU'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'center-region'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(85649641348634272)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(85647217908634248)
,p_button_name=>'MOUConfirmed'
,p_button_static_id=>'mouConfirmedBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2938281857134305)
,p_button_image_alt=>'<img src="#APP_IMAGES#mou-confirmed.svg" />'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'center-region'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(85649276027634269)
,p_branch_name=>'Redirect to Menu'
,p_branch_action=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(85647782241634254)
,p_name=>'P11_DOWNLOAD_CLICKED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(85647217908634248)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(85647977792634256)
,p_name=>'P11_USER_READ_AGREEMENT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(85647217908634248)
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:I have read and Agree to all information above;Y'
,p_grid_column_css_classes=>'center-region'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#:t-Button--gapBottom'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(85649657069634273)
,p_name=>'P11_IS_MOU_CONFIRMED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(85647217908634248)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(615475176932883766)
,p_name=>'P11_YEAR_SPAN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1699517753225889241)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(103422840778006445)
,p_computation_sequence=>10
,p_computation_item=>'P11_IS_MOU_CONFIRMED'
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
 p_id=>wwv_flow_api.id(103423376206006451)
,p_computation_sequence=>20
,p_computation_item=>'P11_USER_READ_AGREEMENT'
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
 p_id=>wwv_flow_api.id(615475304667883767)
,p_computation_sequence=>30
,p_computation_item=>'P11_YEAR_SPAN'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'TO_CHAR(:P0_CURRENT_YEAR) || ''-'' || TO_CHAR(:P0_CURRENT_YEAR + 1)'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(103426266190006480)
,p_validation_name=>'USER_READ_AGREEMENT'
,p_validation_sequence=>10
,p_validation=>'P11_USER_READ_AGREEMENT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please Agree Before Confirmation'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_api.id(85648431796634260)
,p_associated_item=>wwv_flow_api.id(85647977792634256)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(85647524980634251)
,p_name=>'Download MOU Click'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(85647361664634250)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(85647903348634255)
,p_event_id=>wwv_flow_api.id(85647524980634251)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_DOWNLOAD_CLICKED'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(85651083380634287)
,p_event_id=>wwv_flow_api.id(85647524980634251)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P11_USER_READ_AGREEMENT_error_placeholder'').removeClass(''u-visible'');',
'$(''#P11_USER_READ_AGREEMENT_error_placeholder'').html('''');',
'',
'window.open(''#APP_IMAGES#MOU 27 28 basis.pdf'', ''_blank'');'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(85651255457634289)
,p_event_id=>wwv_flow_api.id(85647524980634251)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_blob  APEX_APPLICATION_STATIC_FILES.file_content%type;',
'  l_mime  APEX_APPLICATION_STATIC_FILES.mime_type%type;',
'  l_filename varchar2(100) := ''MOU 27 28 basis.pdf'';',
'begin  ',
'    return;',
'  select file_content, mime_type',
'  into   l_blob, l_mime ',
'  from APEX_APPLICATION_STATIC_FILES ',
'  where application_id = 220 and file_name = l_filename;',
'',
'  htp.init;',
'  owa_util.mime_header(l_mime, false);',
'  htp.p(''content-length: '' || dbms_lob.getlength(l_blob));',
'  htp.p(''content-disposition: filename="'' + l_filename + ''"'');',
'  owa_util.http_header_close;',
'',
'  wpg_docload.download_file(l_blob);',
'  apex_application.stop_apex_engine;',
'end;'))
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(85649773872634274)
,p_name=>'Confirm MOU Click'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(85648431796634260)
,p_condition_element=>'P11_USER_READ_AGREEMENT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(103426701292006484)
,p_event_id=>wwv_flow_api.id(85649773872634274)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!$(''#P11_USER_READ_AGREEMENT_error_placeholder'').hasClass(''u-visible'')) {',
'    $(''#P11_USER_READ_AGREEMENT_error_placeholder'').html(',
'        ''<span class="t-Form-error">'' +',
'        ''    <span style="font-weight: 400;font-size: 15px;color:#E84C26">'' +',
'        ''        <div id="P11_USER_READ_AGREEMENT_error" class="fa">Please Agree Before Confirmation</div>'' +',
'        ''	 </span>'' +',
'        ''</span>'');',
'',
'    $(''#P11_USER_READ_AGREEMENT_error_placeholder'').addClass(''u-visible'');',
'}',
'else {',
'    $(''#P11_USER_READ_AGREEMENT_error'').text(''Please Agree Before Confirmation'');',
'}'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(85650578632634282)
,p_event_id=>wwv_flow_api.id(85649773872634274)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ConfirmMOU'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(85650153153634278)
,p_name=>'Show MOU Confirmed'
,p_event_sequence=>70
,p_condition_element=>'P11_IS_MOU_CONFIRMED'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(85648684013634263)
,p_event_id=>wwv_flow_api.id(85650153153634278)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_USER_READ_AGREEMENT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(85650058889634277)
,p_event_id=>wwv_flow_api.id(85650153153634278)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(85648431796634260)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(85650340172634279)
,p_event_id=>wwv_flow_api.id(85650153153634278)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(85649641348634272)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(103426750177006485)
,p_name=>'P11_USER_READ_AGREEMENT'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P11_USER_READ_AGREEMENT'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$v(''P11_DOWNLOAD_CLICKED'') == '''' && $v(''P11_USER_READ_AGREEMENT'') == ''Y'' &&',
'$v(''P11_IS_MOU_CONFIRMED'') != ''Y''',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(115909534822098744)
,p_event_id=>wwv_flow_api.id(103426750177006485)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P11_USER_READ_AGREEMENT'') == ''Y'' && $(''#confirmMOUBtn'').hasClass(''disabled-btn'')) {',
'    $(''#confirmMOUBtn'').removeClass(''disabled-btn'');',
'    $(''#P11_USER_READ_AGREEMENT_error_placeholder'').removeClass(''u-visible'');',
'    $(''#P11_USER_READ_AGREEMENT_error_placeholder'').html('''');',
'}',
'else if ($v(''P11_USER_READ_AGREEMENT'') == '''' && !$(''#confirmMOUBtn'').hasClass(''disabled-btn'')) {',
'    $(''#confirmMOUBtn'').addClass(''disabled-btn'');',
'}'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(103427149180006489)
,p_event_id=>wwv_flow_api.id(103426750177006485)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!$(''#P11_USER_READ_AGREEMENT_error_placeholder'').hasClass(''u-visible'')) {',
'    $(''#P11_USER_READ_AGREEMENT_error_placeholder'').html(',
'        ''<span class="t-Form-error">'' +',
'        ''    <span style="font-weight: 400;font-size: 15px;color:#E84C26">'' +',
'        ''        <div id="P11_USER_READ_AGREEMENT_error" class="fa">Please read the MOU form</div>'' +',
'        ''	 </span>'' +',
'        ''</span>'');',
'',
'    $(''#P11_USER_READ_AGREEMENT_error_placeholder'').addClass(''u-visible'');',
'}',
'else {',
'    $(''#P11_USER_READ_AGREEMENT_error'').text(''Please read the MOU form'');',
'}',
'',
'if ($v(''P11_USER_READ_AGREEMENT'') == '''' && !$(''#confirmMOUBtn'').hasClass(''disabled-btn'')) {',
'    $(''#confirmMOUBtn'').addClass(''disabled-btn'');',
'}'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(103427001307006487)
,p_event_id=>wwv_flow_api.id(103426750177006485)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_USER_READ_AGREEMENT'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(103427368700006491)
,p_name=>'New'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(103427448687006492)
,p_event_id=>wwv_flow_api.id(103427368700006491)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    if ($v(''P11_USER_READ_AGREEMENT'') == '''' && !$(''#confirmMOUBtn'').hasClass(''disabled-btn'')) {',
'        $(''#confirmMOUBtn'').addClass(''disabled-btn'');',
'    }',
'});',
'',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(62527663295121668)
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
'											   ,p_org_information17 => to_char(trunc(sysdate), ''DD/MM/YYYY''));',
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
