prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'Community Information Contacts'
,p_alias=>'COMMUNITY-INFORMATION-CONTACTS'
,p_step_title=>'Community Information Contacts'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function openEditRg(job_title,first_name,last_name,phone, email){',
'',
'    $(''#P3_JOB_TITLE_DISPLAY'').text(job_title);',
'    apex.item("P3_JOB_TITLE").setValue(job_title);',
'    $(''#P3_JOB_TITLE_DO_DISPLAY'').text(job_title);',
'',
'    apex.item("P3_FIRST_NAME_UPD").setValue(first_name);',
'    apex.item("P3_LAST_NAME_UPD").setValue(last_name);',
'    apex.item("P3_EMAIL_UPD").setValue(email);',
'    ',
'    var prefix = '''', number = '''';',
'    var phoneParts = phone.split(''-'');',
'    if (phoneParts.length > 1) {',
'        prefix = phoneParts[0];',
'        for (var i = 1; i < phoneParts.length; i++)',
'            number += phoneParts[i];',
'    }',
'    else number = phone;',
'',
'    /*',
'    let cleanPhone = phone.replace(/\D/g, ''''); // clean phone from -',
'    let phone1 = cleanPhone.substring(0, 3);',
'    let phone2 = cleanPhone.substring(3, 6);',
'    let phone3 = cleanPhone.substring(6, 10);',
'    */  ',
'',
'    $(''#P3_PHONE1_UPD'').val(prefix);',
'    $(''#P3_PHONE2_UPD'').val(number);',
'    //$(''#P3_PHONE3_UPD'').val(phone3);',
'',
'',
'    apex.item("P3_FIRST_NAME_ORG").setValue(first_name);',
'    apex.item("P3_LAST_NAME_ORG").setValue(last_name);',
'    apex.item("P3_EMAIL_ORG").setValue(email);',
'    apex.item("P3_PHONE1_ORG").setValue(prefix);',
'    apex.item("P3_PHONE2_ORG").setValue(number);',
'    //apex.item("P3_PHONE3_ORG").setValue(phone3);',
'',
'    apex.region("contacts-container").refresh();',
'    $(''#edit-contact-rg'').show(); ',
'}',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#P3_PHONE1_UPD_error{    ',
'    width: max-content;',
'}',
'',
'#P3_PHONE1_UPD_CONTAINER .t-input-standard-optional{',
'    overflow: visible; /*for error mes*/',
'}',
'',
'.full-width{',
'    width: -webkit-fill-available;',
'}',
'',
'.t-contacts-cards.one-col-grid ul.t-Cards{',
'    grid-template-columns: repeat(1, auto) !important;',
'}',
'',
'.fit-content-width.t-contacts-cards, .fit-content-width.edit-contact-region{',
'    width: fit-content;',
'}',
'',
'.cancel-events li a{',
'    pointer-events: none;',
'}',
'',
'.cancel-events.t-contacts-cards .t-Cards-item:hover .t-skill-edit{',
'    opacity:0 !important;',
'}',
'',
'.width-720{',
'    width: 720px !important;',
'}',
'',
'.t-Form-error {',
'    background-image: url(#APP_IMAGES#ic-info-orange.png);',
'}',
'',
'.home-link {',
'    display: block !important;',
'}',
'',
'',
'',
'',
'',
'',
'',
'',
'.t-standard-optional-itemWrapper input {',
'    width: 100%;   ',
'}',
'',
'.phone-label {',
'    padding-bottom: 5px;',
'}',
'',
'.phone-label .icon-asterisk {',
'    margin-left: -7px;',
'}',
'',
'.buttons-container {',
'    width: 716px !important;',
'}',
'',
'.buttons-container button:first-child {',
'    padding-left: 0;',
'}',
'',
'.t-Form-fieldContainer.is-required .required-content::after {',
'    content: ''\e058'';',
'    font-family: apex-5-icon-font !important;',
'    font-size: 1.6rem;',
'    line-height: 1.2rem;',
'    vertical-align: bottom;',
'    color: red;',
'}',
'',
'.t-Form-fieldContainer.is-required .t-Form-label::after {',
'    content: none;',
'}',
'',
'.phone-label .icon-asterisk {',
'    margin-left: 0;',
'    margin-right: -4px;',
'    margin-top: 5px;',
'}',
'',
'@media (max-width: 575px), @media (max-width: 640px) {',
'    .edit-contact-region {',
'        width: 100% !important;',
'    }',
'    ',
'    #edit-contact-rg {',
'        width: 90vw !important;',
'        min-height: 0 !important;',
'    }',
'    ',
'    #edit-contact-rg .container {',
'        width: 90%;',
'    }',
'    ',
'    .phone-number-row {',
'        display: grid;',
'    }',
'    ',
'    .phone-number-row .p1 {',
'        grid-column-start: 1;',
'    }',
'    ',
'    .phone-number-row .p2 {',
'        grid-column-start: 2;',
'    }',
'    ',
'    .phone-number-row .p3 {',
'        grid-column-start: 3;',
'    }',
'    ',
'    .buttons-container {',
'        width: 90vw !important;',
'    }',
'}',
'',
'',
'',
'',
''))
,p_step_template=>wwv_flow_api.id(29244342218644)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MEITAVC'
,p_last_upd_yyyymmddhh24miss=>'20260722125125'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5850061888291273)
,p_plug_name=>'center container'
,p_region_template_options=>'#DEFAULT#:margin-top-lg'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3048411003294168)
,p_plug_name=>'edit contact details'
,p_region_name=>'edit-contact-rg'
,p_parent_plug_id=>wwv_flow_api.id(5850061888291273)
,p_region_template_options=>'#DEFAULT#:margin-bottom-md:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(5834441631978554)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'center-region edit-contact-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(4753802063350689)
,p_name=>'contacts container'
,p_region_name=>'contacts-container'
,p_parent_plug_id=>wwv_flow_api.id(5850061888291273)
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:margin-left-none:margin-right-none'
,p_component_template_options=>'#DEFAULT#:t-Cards--animColorFill:t-Cards--cols:t-Cards--basic'
,p_new_grid_row=>false
,p_grid_column_css_classes=>'t-contacts-cards'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Contact.contact_type job_title,',
'      ''openEditRg('''''' || Contact.contact_type ||''''''''||'','' ||''''''''|| Contact.contact_first_name ||'''''''' ||'',''||''''''''|| ',
'       Contact.contact_last_name ||'''''''' ||'',''||''''''''|| contact.Contact_Phone ||''''''''',
'    ||'',''||''''''''||  Contact.Contact_email  ||''''''''||'');'' as CARD_LINK,',
'       case when Contact.contact_first_name is not null then',
'       Contact.contact_first_name || '' ''||Contact.contact_last_name',
'       else ''<img src="#APP_IMAGES#ic-chat-conversation.svg" width="69px"/>'' end full_name,',
'       case when contact.Contact_Phone is not null then',
'       ''<img src="#APP_IMAGES#ic-phone.svg" height="11px"/>'' || contact.Contact_Phone else null end phone,',
'       case when contact.Contact_email is not null then',
'       ''<img src="#APP_IMAGES#ic-email.svg" height="11px"/>'' || Contact.Contact_email else',
'           ''<span style="font-weight: 500;font-size: 18px;text-align: center;color:#E84C26">Please update</span>'' end mail',
'',
'  from hr_all_organization_units   haou,',
'  /* hr_organization_information hoi1,*/',
'       hr_organization_information hoi2,',
'       ',
'       (select jafi_hr_utils.US_Decode_Lookup(''JAFI_HR_LTS_CONTACT_TYPE'',',
'                                              flv.lookup_code) contact_type,',
'               hoi3.org_information2 contact_first_name,',
'               hoi3.org_information9 contact_last_name,',
'               hoi3.org_information4 Contact_Phone,',
'               hoi3.org_information6 Contact_email',
'          from hr_organization_information hoi3, fnd_lookup_values flv',
'         where hoi3.org_information_context (+) =',
'               ''JAFI_HR_SHLICHUT_CUSTOMER_CONT''  ',
'           and hoi3.organization_id (+) = :P0_ORG_ID  ',
'           and hoi3.org_information1(+) = flv.lookup_code',
'           and flv.lookup_type = ''JAFI_HR_LTS_CONTACT_TYPE''',
'           and flv.language = ''US''',
'           AND FLV.LOOKUP_CODE IN (''5'', ''6'', ''7'', ''8'')) Contact',
'',
' where haou.business_group_id = 4088',
'   and haou.organization_id = hoi2.organization_id',
'  /* and haou.organization_id = hoi1.organization_id',
'   and hoi1.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOMER_ADDR''*/',
'   and hoi2.org_information_context = ''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'   AND HOI2.ORG_INFORMATION1 in (''SSH'',''COMM'',''AMI'')',
'   and haou.organization_id = :P0_ORG_ID',
'   and (Contact.contact_type <> :P3_JOB_TITLE or :P3_JOB_TITLE is null)',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P3_JOB_TITLE'
,p_query_row_template=>wwv_flow_api.id(2977818927966857)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7119138169177344)
,p_query_column_id=>1
,p_column_alias=>'JOB_TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Job Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(5847318423291245)
,p_query_column_id=>2
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>2
,p_column_heading=>'Card Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4754128894350692)
,p_query_column_id=>3
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Full Name'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7119146163177345)
,p_query_column_id=>4
,p_column_alias=>'PHONE'
,p_column_display_sequence=>4
,p_column_heading=>'Phone'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7119341483177346)
,p_query_column_id=>5
,p_column_alias=>'MAIL'
,p_column_display_sequence=>5
,p_column_heading=>'Mail'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7121436348177367)
,p_plug_name=>'Modal Exit Confirmation'
,p_region_name=>'ExitConfirmation'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_api.id(7169934722329292)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'no-title-bar'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>'js-dialog-size410x320'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7121726256177370)
,p_plug_name=>'text'
,p_parent_plug_id=>wwv_flow_api.id(7121436348177367)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color:#E84C26">You have unsaved changes.</span>',
'<br><br>',
'',
'Are you sure you want to leave this page?<br>',
unistr('Your changes won\2019t be saved.'),
'<br><br><br>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7122013888177373)
,p_plug_name=>'Leave Page'
,p_parent_plug_id=>wwv_flow_api.id(7121436348177367)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>30
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<span style="cursor:pointer;font-weight: 500;font-style: Medium;font-size: 16px;text-align: center;color:#172B54">Leave Page</span>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7122229249177375)
,p_plug_name=>'keep Editing'
,p_parent_plug_id=>wwv_flow_api.id(7121436348177367)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>20
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13438136765403382)
,p_plug_name=>'button container'
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>70
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(537723340778279316)
,p_plug_name=>'PrograssBar'
,p_region_name=>'progressBar'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall:t-Form--noPadding:margin-top-md:margin-bottom-lg'
,p_component_template_options=>'#DEFAULT#:t-Tabs--simple'
,p_plug_template=>wwv_flow_api.id(1572085619207170)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(1542529475718063)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(2125342479223692)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(537723370613279317)
,p_plug_name=>'ButtonRegion'
,p_region_css_classes=>'buttons-container'
,p_region_template_options=>'#DEFAULT#:margin-top-lg'
,p_plug_template=>wwv_flow_api.id(2942455427172219)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5707441828640747305)
,p_plug_name=>'Title'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(1491988443724117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Community Information'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7121841732177371)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(7122229249177375)
,p_button_name=>'KEEP_EDITING'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(7178587321411621)
,p_button_image_alt=>'Keep Editing'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'center-region'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13438204995403383)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(13438136765403382)
,p_button_name=>'BACK_TO_HOME'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back to homepage'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4752373952350675)
,p_button_sequence=>250
,p_button_plug_id=>wwv_flow_api.id(3048411003294168)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(5843813714039240)
,p_button_image_alt=>'Save Contact Info'
,p_button_position=>'BODY'
,p_button_css_classes=>'center-region'
,p_grid_column_css_classes=>'center-region'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2964501752886342)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(537723370613279317)
,p_button_name=>'nextStep'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2938281857134305)
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'next-btn'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2964901987886342)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(537723370613279317)
,p_button_name=>'PrevStep'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'<img src="#APP_IMAGES#ic-back.svg"/>Back'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'prev-btn'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4763532750368861)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(3048411003294168)
,p_button_name=>'CloseEditRG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2910527574307047)
,p_button_image_alt=>'#APP_IMAGES#ic-x-close.png'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3048448363294169)
,p_name=>'P3_FIRST_NAME_UPD'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(3048411003294168)
,p_prompt=>'First Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3048598176294170)
,p_name=>'P3_PHONE1_UPD'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(3048411003294168)
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  d, r from (',
'select flv.attribute15 d,',
'       flv.attribute15 r',
'from hr_organization_information hoi,',
'	 hr_all_organization_units haou,',
'	 fnd_lookup_values flv',
'where  hoi.org_information_context (+) like ''%SHLICH%ADD%''',
'		and hoi.organization_id=haou.organization_id',
'		and flv.lookup_type=''JAFI_HR_COUNTRIES''',
'		and hoi.ORG_INFORMATION1 = flv.lookup_code',
'		and flv.language=''US''',
'		and exists (select 1',
'					from hr_organization_information hoi2',
'					where hoi2.organization_id=haou.organization_id',
'					and hoi2.org_information_context = ''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'					AND HOI2.ORG_INFORMATION1 in (''SSH'',''COMM'',''AMI''))',
'union select ''+972'',''+972'' from dual',
'union select ''+41'',''+41'' from dual',
'union select ''+32'',''+32'' from dual',
'',
')',
'order by d'))
,p_cHeight=>1
,p_colspan=>4
,p_grid_column_css_classes=>'disable-phone-label p1'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#:margin-top-none'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3048858256294173)
,p_name=>'P3_EMAIL_UPD'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(3048411003294168)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3049041109294174)
,p_name=>'P3_JOB_TITLE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(3048411003294168)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4753377537350685)
,p_name=>'P3_LAST_NAME_UPD'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(3048411003294168)
,p_prompt=>'Last Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5847703063291249)
,p_name=>'P3_PROFILE_PIC'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(3048411003294168)
,p_source=>'#APP_IMAGES#empty-profile-picture.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_attributes=>'style="width:35px;height:35px"'
,p_grid_column_css_classes=>'center-region'
,p_field_template=>wwv_flow_api.id(491308284349075283)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5847753144291250)
,p_name=>'P3_PHONE2_UPD'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(3048411003294168)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'disable-phone-label disable-error-label p2'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#:margin-top-none'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5847878660291251)
,p_name=>'P3_PHONE3_UPD'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(3048411003294168)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'disable-phone-label disable-error-label p3'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#:margin-top-none'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5848007701291252)
,p_name=>'P3_PHONE_LABEL'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(3048411003294168)
,p_prompt=>'Phone Number'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(5871941200456443)
,p_item_css_classes=>'phone-label'
,p_item_template_options=>'#DEFAULT#:margin-bottom-none'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5850262484291275)
,p_name=>'P3_JOB_TITLE_DO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(3048411003294168)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column_css_classes=>'center-region'
,p_field_template=>wwv_flow_api.id(5877964165971902)
,p_item_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7892314586679661)
,p_name=>'P3_FIRST_NAME_ORG'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(3048411003294168)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7892400843679662)
,p_name=>'P3_LAST_NAME_ORG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(3048411003294168)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7892492510679663)
,p_name=>'P3_PHONE1_ORG'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(3048411003294168)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7892619785679664)
,p_name=>'P3_PHONE2_ORG'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(3048411003294168)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7892724246679665)
,p_name=>'P3_PHONE3_ORG'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(3048411003294168)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7892780075679666)
,p_name=>'P3_EMAIL_ORG'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(3048411003294168)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5850203641291274)
,p_validation_name=>'first name not null'
,p_validation_sequence=>10
,p_validation=>'P3_FIRST_NAME_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required.'
,p_when_button_pressed=>wwv_flow_api.id(4752373952350675)
,p_associated_item=>wwv_flow_api.id(3048448363294169)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13935424757796069)
,p_validation_name=>'first name English Validation'
,p_validation_sequence=>20
,p_validation=>'P3_FIRST_NAME_UPD'
,p_validation2=>'^[a-zA-Z0-9.,"''-:; ]*$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Please use English'
,p_when_button_pressed=>wwv_flow_api.id(4752373952350675)
,p_associated_item=>wwv_flow_api.id(3048448363294169)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5850517242291277)
,p_validation_name=>'phone1 not null'
,p_validation_sequence=>30
,p_validation=>'(:P3_PHONE1_UPD is not null and :P3_PHONE2_UPD is not null)-- and :P3_PHONE3_UPD is not null)'
,p_validation_type=>'SQL_EXPRESSION'
,p_error_message=>'This field is required.'
,p_when_button_pressed=>wwv_flow_api.id(4752373952350675)
,p_associated_item=>wwv_flow_api.id(3048598176294170)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7892095192679659)
,p_validation_name=>'phone1 not is valid'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'regexp_like(:P3_PHONE1_UPD, ''^[+]\d{0,3}$'') ',
'and regexp_like(:P3_PHONE2_UPD, ''^\d{0,10}$'') ',
'--and regexp_like(:P3_PHONE2_UPD, ''^\d{3}$'') ',
'--and regexp_like(:P3_PHONE3_UPD, ''^\d{4}$'')'))
,p_validation_type=>'SQL_EXPRESSION'
,p_error_message=>'Please enter a valid phone number.'
,p_when_button_pressed=>wwv_flow_api.id(4752373952350675)
,p_associated_item=>wwv_flow_api.id(3048598176294170)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5850565205291278)
,p_validation_name=>'phone2 not null'
,p_validation_sequence=>50
,p_validation=>'(:P3_PHONE1_UPD is not null and :P3_PHONE2_UPD is not null)-- and :P3_PHONE3_UPD is not null)'
,p_validation_type=>'SQL_EXPRESSION'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\2800'),
''))
,p_when_button_pressed=>wwv_flow_api.id(4752373952350675)
,p_associated_item=>wwv_flow_api.id(5847753144291250)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7891970692679658)
,p_validation_name=>'phone2 is valid'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'regexp_like(:P3_PHONE1_UPD, ''^[+]\d{0,3}$'') ',
'and regexp_like(:P3_PHONE2_UPD, ''^\d{0,10}$'') ',
'',
'--and regexp_like(:P3_PHONE2_UPD, ''^\d{3}$'') ',
'--and regexp_like(:P3_PHONE3_UPD, ''^\d{4}$'')'))
,p_validation_type=>'SQL_EXPRESSION'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\2800'),
''))
,p_when_button_pressed=>wwv_flow_api.id(4752373952350675)
,p_associated_item=>wwv_flow_api.id(5847753144291250)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5850811768291280)
,p_validation_name=>'email not null'
,p_validation_sequence=>70
,p_validation=>'P3_EMAIL_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\2800This field is required.'),
''))
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_api.id(4752373952350675)
,p_associated_item=>wwv_flow_api.id(3048858256294173)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5850686188291279)
,p_validation_name=>'phone3 not null'
,p_validation_sequence=>80
,p_validation=>'(:P3_PHONE1_UPD is not null and :P3_PHONE2_UPD is not null)-- and :P3_PHONE3_UPD is not null)'
,p_validation_type=>'SQL_EXPRESSION'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\2800'),
''))
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(4752373952350675)
,p_associated_item=>wwv_flow_api.id(5847878660291251)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7891882013679657)
,p_validation_name=>'phone3 is valid'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'regexp_like(:P3_PHONE1_UPD, ''^\d{3}$'') ',
'and regexp_like(:P3_PHONE2_UPD, ''^\d{7}$'') ',
'--and regexp_like(:P3_PHONE2_UPD, ''^\d{3}$'') ',
'--and regexp_like(:P3_PHONE3_UPD, ''^\d{4}$'')'))
,p_validation_type=>'SQL_EXPRESSION'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\2800'),
''))
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(4752373952350675)
,p_associated_item=>wwv_flow_api.id(5847878660291251)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5850363982291276)
,p_validation_name=>'last name not null'
,p_validation_sequence=>100
,p_validation=>'P3_LAST_NAME_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required.'
,p_when_button_pressed=>wwv_flow_api.id(4752373952350675)
,p_associated_item=>wwv_flow_api.id(4753377537350685)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13935462024796070)
,p_validation_name=>'last name English Validation'
,p_validation_sequence=>110
,p_validation=>'P3_LAST_NAME_UPD'
,p_validation2=>'^[a-zA-Z0-9.,"''-:; ]*$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Please use English'
,p_when_button_pressed=>wwv_flow_api.id(4752373952350675)
,p_associated_item=>wwv_flow_api.id(4753377537350685)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7891834731679656)
,p_validation_name=>'email is valid'
,p_validation_sequence=>120
,p_validation=>'P3_EMAIL_UPD'
,p_validation2=>'^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Please enter a valid email address.'
,p_when_button_pressed=>wwv_flow_api.id(4752373952350675)
,p_associated_item=>wwv_flow_api.id(3048858256294173)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3048708013294171)
,p_name=>'hide region'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3048789716294172)
,p_event_id=>wwv_flow_api.id(3048708013294171)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3048411003294168)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4749608507350647)
,p_name=>'close edit region'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(4763532750368861)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>220
,p_default_id_offset=>1696803741697335224
,p_default_owner=>'APPS'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5848890113291261)
,p_event_id=>wwv_flow_api.id(4749608507350647)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_JOB_TITLE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5850904295291281)
,p_event_id=>wwv_flow_api.id(4749608507350647)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5848993483291262)
,p_event_id=>wwv_flow_api.id(4749608507350647)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(4753802063350689)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4749680752350648)
,p_event_id=>wwv_flow_api.id(4749608507350647)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' $(''#contacts-container'').show(); ',
' $(''#edit-contact-rg'').hide(); '))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5848108868291253)
,p_name=>'change page design if edit rg open'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_JOB_TITLE'
,p_condition_element=>'P3_JOB_TITLE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5849406553291266)
,p_event_id=>wwv_flow_api.id(5848108868291253)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.t-contacts-cards'
,p_attribute_01=>'one-col-grid'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5849208128291264)
,p_event_id=>wwv_flow_api.id(5848108868291253)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.t-contacts-cards'
,p_attribute_01=>'full-width'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5848356784291256)
,p_event_id=>wwv_flow_api.id(5848108868291253)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.t-contacts-cards'
,p_attribute_01=>'full-width'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5849599911291268)
,p_event_id=>wwv_flow_api.id(5848108868291253)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.t-contacts-cards'
,p_attribute_01=>'one-col-grid'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5849702423291269)
,p_event_id=>wwv_flow_api.id(5848108868291253)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.t-contacts-cards'
,p_attribute_01=>'fit-content-width'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5849926225291271)
,p_event_id=>wwv_flow_api.id(5848108868291253)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.t-contacts-cards'
,p_attribute_01=>'fit-content-width'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7122120139177374)
,p_event_id=>wwv_flow_api.id(5848108868291253)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.t-contacts-cards'
,p_attribute_01=>'cancel-events'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5849812004291270)
,p_event_id=>wwv_flow_api.id(5848108868291253)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.edit-contact-region'
,p_attribute_01=>'fit-content-width'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7121243105177366)
,p_event_id=>wwv_flow_api.id(5848108868291253)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.t-contacts-cards'
,p_attribute_01=>'cancel-events'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7121467680177368)
,p_name=>'show warning window'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(4763532750368861)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$v(''P3_FIRST_NAME_UPD'') !== $v(''P3_FIRST_NAME_ORG'') ||',
'$v(''P3_LAST_NAME_UPD'') !== $v(''P3_LAST_NAME_ORG'') ||',
'$v(''P3_PHONE1_UPD'') !== $v(''P3_PHONE1_ORG'') ||',
'$v(''P3_PHONE2_UPD'') !== $v(''P3_PHONE2_ORG'') ||',
'/*$v(''P3_PHONE3_UPD'') !== $v(''P3_PHONE3_ORG'') ||*/',
'$v(''P3_EMAIL_UPD'') !== $v(''P3_EMAIL_ORG'')',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7121556032177369)
,p_event_id=>wwv_flow_api.id(7121467680177368)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7121436348177367)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7893018317679668)
,p_event_id=>wwv_flow_api.id(7121467680177368)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_JOB_TITLE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7893044998679669)
,p_event_id=>wwv_flow_api.id(7121467680177368)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7893152731679670)
,p_event_id=>wwv_flow_api.id(7121467680177368)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(4753802063350689)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7893303007679671)
,p_event_id=>wwv_flow_api.id(7121467680177368)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' $(''#contacts-container'').show(); ',
' $(''#edit-contact-rg'').hide(); '))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7122269582177376)
,p_name=>'leave page'
,p_event_sequence=>300
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(7122013888177373)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29129138786102991)
,p_event_id=>wwv_flow_api.id(7122269582177376)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_JOB_TITLE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7122604410177379)
,p_event_id=>wwv_flow_api.id(7122269582177376)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29129210897102992)
,p_event_id=>wwv_flow_api.id(7122269582177376)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(4753802063350689)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33027943890138043)
,p_event_id=>wwv_flow_api.id(7122269582177376)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' $(''#contacts-container'').show(); ',
' $(''#edit-contact-rg'').hide(); '))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7122875324177382)
,p_event_id=>wwv_flow_api.id(7122269582177376)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7121436348177367)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7122955592177383)
,p_name=>'keep editing dailog'
,p_event_sequence=>310
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7121841732177371)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7123059905177384)
,p_event_id=>wwv_flow_api.id(7122955592177383)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7121436348177367)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(21929619802071543)
,p_name=>'set phone number row class'
,p_event_sequence=>320
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21929656623071544)
,p_event_id=>wwv_flow_api.id(21929619802071543)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''.disable-phone-label'').parent(''div.row'').addClass(''phone-number-row'');'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10079821565282645)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'save contact'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'l_ovn pls_integer;',
'l_org_information_id Pls_Integer;',
'l_Contact_Type Pls_Integer;',
'Begin    ',
'  ',
'  --XX_MY_UTILS.add_msg('' 220 Page 3 Community Contact P3_JOB_TITLE ''|| :P3_JOB_TITLE);  ',
' ',
'fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800); ',
'',
'   select case :P3_JOB_TITLE',
'             when ''SSH Supervisor'' then 5 ',
'             when ''CEO'' then 6 ',
'             when ''CFO'' then 7 ',
'             when ''Community Supervisor'' then 8',
'          end ',
'      into l_Contact_Type',
' from dual ;',
' ',
' Begin ',
' ',
'   -- XX_MY_UTILS.add_msg('' 220 Page 3 Community Contact ''||l_Contact_Type);  ',
'   ',
'  ',
'        Select t.object_version_number, org_information_id',
'          Into l_ovn, l_org_information_id ',
'          From Hr_Organization_Information t',
'         Where t.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOMER_CONT''',
'           and t.ORGANIZATION_ID = :P0_ORG_ID',
'           and t.org_information1  = l_Contact_Type; ',
'',
'           --XX_MY_UTILS.add_msg('' 220 Page 2 Community Location P2_CITY_UPD ''||:P2_CITY_UPD);  ',
' ',
'           hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                                       ,p_object_version_number => l_ovn',
'                                                       ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_CONT''',
'                                                       ,p_org_information_id => l_org_information_id',
'                                                     --,p_org_information1 => l_Contact_Type',
'                                                       ,p_org_information2 => :P3_FIRST_NAME_UPD--contact_first_name',
'                                                       ,p_org_information9 => :P3_LAST_NAME_UPD --contact_last_name',
'                                                       ,p_org_information4 => :P3_PHONE1_UPD || ''-'' || :P3_PHONE2_UPD -- ||:P3_PHONE3_UPD  --Contact_Phone ',
'                                                       ,p_org_information6 => :P3_EMAIL_UPD );--Contact_email );',
'                                               ',
'     EXCEPTION when no_data_found then ',
'                                            ',
'     --XX_MY_UTILS.add_msg(''ERROR 220 Page 3 Community Contact''||SQLERRM);  ',
'		    ',
'		       hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                          ,p_object_version_number => l_ovn',
'                          ,p_org_info_type_code =>  ''JAFI_HR_SHLICHUT_CUSTOMER_CONT''',
'                          ,p_org_information_id => l_org_information_id',
'						  ,p_org_information1 => l_Contact_Type',
'                          ,p_org_information2 => :P3_FIRST_NAME_UPD--contact_first_name',
'                          ,p_org_information9 => :P3_LAST_NAME_UPD --contact_last_name',
'                          ,p_org_information4 =>  :P3_PHONE1_UPD || ''-'' || :P3_PHONE2_UPD -- ||:P3_PHONE3_UPD --Contact_Phone ',
'                          ,p_org_information6 => :P3_EMAIL_UPD --Contact_email ',
'                          ,p_organization_id   => :P0_ORG_ID );                          ',
'    End;',
'    ',
'    commit; ',
'        exception  when others then',
'            XX_MY_UTILS.add_msg(''Main ERROR 220 Page 3 Community Contact ''||SQLERRM); ',
'',
'             apex_error.add_error (',
'                      p_message          => ''Failed to update =>''||SQLERRM,   p_display_location => apex_error.c_inline_in_notification );',
'',
'    ',
'end;',
' ',
'                 ',
'                 '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(4752373952350675)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13932930831796044)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Session Sate'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2965329698886367)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set items'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P3_JOB_TITLE := null;',
':P3_JOB_TITLE_DO := null;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
