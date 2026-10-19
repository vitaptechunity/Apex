prompt --application/pages/page_00033
begin
--   Manifest
--     PAGE: 00033
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
 p_id=>33
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'Amitey Israel Information Programs'
,p_alias=>'AMITEY-ISRAEL-INFORMATION-PROGRAMS'
,p_step_title=>'Amitey Israel Information Programs'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#P4_SEARCH{',
'    border: 1px solid #EFE8E0;',
'    border-radius: 10px !important;',
'    font-size: 16px;',
'    width:270px;',
'    height: 40px;',
'    flex-grow: 0;',
'    background-color:white;',
'}',
'#P4_SEARCH:focus{',
'    border-color:#EFE8E0  !important;',
'    border-top-color: #EFE8E0 ;',
'    border-right-color: #EFE8E0 ;',
'    border-bottom-color: #EFE8E0 ;',
'    border-left-color: #EFE8E0 ;',
'}',
'#P4_SEARCH_CONTAINER .t-Form-inputContainer{ /*so the search input and the filter will be in the same row*/',
'    padding-top:0px;',
'}',
'#P4_FILTER_CONTAINER .t-Form-inputContainer{',
'    padding-top:0px;',
'}',
'.btn-filter{',
'    border-radius: 10px;',
'    height: 40px;',
'    background-color:white !important;',
'}',
'.t-org-info-cube-title{',
'    font-weight: 600;',
'    font-size: 16px;',
'    text-align: center;',
'    color:#172B54;',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    margin-bottom: 5px;',
'}',
'/*#organizations-container_cards:has(li:nth-child(3)) {',
unistr('    justify-content: flex-start !important; /* \05D9\05E9 \05DC\05E4\05D7\05D5\05EA 3 */'),
'}*/',
'',
'#P4_PHONE1_UPD_error{    ',
'    width: max-content;',
'}',
'#P4_PHONE1_UPD_CONTAINER .t-input-standard-optional{',
'    overflow: visible; /*for error mes*/',
'}',
'.t-filter-container-rg{',
'    width: 870px;',
'}',
'/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/',
'',
'.select2-container input::placeholder , #P4_SEARCH::placeholder{',
'    font-weight: 400;',
'    font-size: 16px;',
'    color:#172B54;',
'',
'}',
'',
'/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/',
'.cancel-right-margin{',
'    width: auto;',
'}',
'.t-delete-org span{',
'    font-size: 16px !important;',
'    font-weight:500 !important;',
'    color:#172B54;',
'    text-decoration: underline;',
'    ',
'}',
'.float-right{',
'        width: 50%;',
'    button{',
'        float:right;',
'    }',
'}',
'.width-900{',
'    width: 900px !important;',
'}',
'',
'',
'.t-Form-error {',
'    background-image: url(#APP_IMAGES#ic-info-orange.png);',
'}',
'.t-image-cube-btn img{',
'    filter: brightness(1.2) saturate(0.2);',
'    opacity: 0.4;',
'}',
'.active-btn img{',
'    filter: none;',
'    opacity:1;',
'}',
'',
'',
'.home-link {',
'    display: block !important;',
'}',
'',
'/*',
'.custom-dialog-titlebar {',
'  display:none;',
'}',
'*/',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
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
'#P4_FREQ_UPD_LABEL {',
'    line-height: 20px;',
'}',
'',
'.image-button .t-image-cube-container img {',
'    width: 35px;',
'    position: relative; ',
'    top: 5px;',
'}',
'',
'.image-button .t-image-cube-container span {',
'    font-size: 14px; ',
'    position: relative; ',
'    top: 8px;',
'}',
'',
'.select2 {',
'    font-family: Roboto;',
'}',
'',
'.open-select2 {',
'    right: 4px;',
'    color: #999;',
'    font-size: 14px;',
'}',
'',
'.open-select2-no-selection {',
'    color: #999;',
'    font-size: 14px;',
'    float: right;',
'    top: 13px;',
'    right: 21px;',
'}',
'',
'li.select2-search {',
'    width: 100%;',
'}',
'',
'.select2-selection__choice__remove {',
'    z-index: 9;',
'}',
'',
'#organizations-container_cards {',
'    max-width: 75vw !important;',
'}',
'',
'#organizations-container_cards li {',
'    min-width: 23vw !important;',
'}',
'',
'#organizations-container_cards li a[data-type="new"],',
'#organizations-container_cards li a[data-type="new"] div:first-child,',
'#organizations-container_cards li a[data-type="organization"],',
'#organizations-container_cards li a[data-type="organization"] div:first-child {',
'    width: 100% !important;',
'}',
'',
'.t-filter-container-rg {',
'    width: 75vw;',
'    padding-left: 25px;',
'    padding-right: 15px;',
'}',
'',
'.bottom-btn-container {',
'    width: 75vw !important;',
'    padding-left: 15px;',
'}',
'/*',
'.ui-dialog-titlebar {',
'    position: absolute !important;',
'    top: 0;',
'    right: 0;',
'    width: 20px;',
'    z-index: 9;',
'}*/',
'',
'#org-details-rg {',
'    height: auto !important;',
'}',
'',
'#org-details-rg .t-DialogRegion-wrap,',
'#org-details-rg .t-DialogRegion-bodyWrapperIn {',
'    position: relative !important;',
'}',
'',
'#org-details-rg .t-DialogRegion-body {',
'    padding-bottom: 0;',
'}',
'',
'#select2-P4_ORG_TYPE_UPD-results {',
'    font-family: Roboto;',
'}',
'',
'#select2-P4_ORG_TYPE_UPD-results .rf-input-checkbox-wrap {',
'    color: #172B54 !important;',
'}',
'',
'li.select2-selection__choice:first-child {',
'    padding-top: 5px !important;',
'}',
'',
'.select2-container--default .select2-selection--multiple {',
'    padding-top: 0;',
'}',
'',
'.opaque-gradient {',
'    -webkit-mask-image: -webkit-gradient(linear, left 60%, left bottom, from(rgba(0, 0, 0, 1)), to(rgba(0, 0, 0, 0)));',
'}',
'',
'/*.select2 .selection,',
'.select2 .select2-selection {',
'    background: transparent !important;',
'    background-color: transparent !important;',
'}*/',
'',
'.select2-search__field {',
'    margin-top: 0 !important;',
'    /*width: 100% !important;*/',
'}',
'',
'.select2-container--default .select2-results__option[aria-selected=true] {',
'    background-color: white !important;',
'}',
'',
'.select2-container--default .select2-results__option[aria-selected=true].select2-results__option--highlighted {',
'    background-color: #5897fb !important;',
'}',
'',
'.select2-divider {',
'    width: 95%;',
'}',
'',
'.mobile-br {',
'    display: none;',
'}',
'',
'.desktop-br {',
'    display: block;',
'}',
'',
'.see-all-col {',
'    float: right;',
'}',
'',
'#P4_PHONE1_UPD_error_placeholder {',
'    width: max-content;',
'}',
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
'    .t-Body-contentInner {',
'        width: 90vw;',
'        padding: 0;',
'    }',
'    ',
'    .progress-bar-col {',
'        padding: 0;',
'    }',
'    ',
'    #progressBar .t-Tabs {',
'        width: 100%;',
'    }',
'    ',
'    #add-org-id {',
'        width: 100%;',
'    }',
'    ',
'    #filterRegion {',
'        width: 100%;',
'        padding: 0;',
'        margin-bottom: 5px !important;',
'    }',
'    ',
'    #P4_SEARCH {',
'        width: 100%;',
'    }',
'    ',
'    .see-all-col {',
'        width: 100%;',
'    }',
'    ',
'    #organizations-container_cards {',
'        max-width: 100% !important;',
'    }',
'    ',
'    #organizations-container_cards li {',
'        min-width: 100% !important;',
'    }',
'    ',
'    #organizations-container_cards li a div {',
'        border-radius: 20px !important;',
'    }',
'    ',
'    .add-organization-container {',
'        	width: 225px !important;',
'        min-height: 46px !important;',
'        border-radius: 23px !important;',
'        color: white !important;',
'        background-color: #E84C26 !important;',
'        margin: auto;',
'    }',
'    ',
'    .add-organization-container span {',
'        color: white !important;',
'    }',
'    ',
'    .phone-number-row {',
'        display: grid;',
'        grid-template-columns: 30% 70%;',
'    }',
'    ',
'    .phone-number-row .p1 {',
'        grid-column: 1;',
'    }',
'    ',
'    .shsh-community-buttons-container {',
'        display: grid;',
'        grid-template-columns: 50% 50%;',
'    }',
'    ',
'    .shsh-community-buttons-container::before,',
'    .shsh-community-buttons-container::after {',
'        content: none;',
'    }',
'    ',
'    .shsh-community-buttons-container div {',
'        display: flex;',
'    }',
'    ',
'    .shsh-community-buttons-container div:first-child {',
'        justify-content: flex-start;',
'    }',
'    ',
'    .shsh-community-buttons-container div:last-child {',
'        justify-content: flex-end;',
'    }',
'    ',
'    .shsh-community-buttons-container .t-image-cube-btn {',
'        margin: 0;',
'    }',
'    ',
'    div .select2-container {',
'        width: 100% !important;',
'    }',
'    ',
'    #P4_ORG_TYPE_UPD_LABEL {',
'        line-height: 20px;',
'    }',
'    ',
'    .t-custom-sub-list-Tab {',
'        width: 100%;',
'    }',
'    ',
'    .t-custom-sub-list-Tab .t-Tabs-item {',
'        width: 30% !important;',
'    }',
'    ',
'    .t-custom-sub-list-Tab a {',
'        padding: 0 !important;',
'        height: 50px;',
'        display: flex;',
'        align-items: center;',
'        justify-content: center;',
'    }',
'    ',
'    #programCards_cards {',
'        width: 100% !important;',
'    }',
'}',
'',
'',
'',
'',
'',
'',
'',
'',
''))
,p_step_template=>wwv_flow_api.id(29244342218644)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DRORA'
,p_last_upd_yyyymmddhh24miss=>'20261014140129'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1642097648271545890)
,p_plug_name=>'center container'
,p_region_name=>'add-org-id'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(690098672919958544)
,p_name=>'Cards'
,p_region_name=>'programCards'
,p_parent_plug_id=>wwv_flow_api.id(1642097648271545890)
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Cards--animColorFill:t-Cards--cols:t-Cards--basic'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when exists(',
'                Select t.object_version_number',
'                From Hr_Organization_Information t',
'                Where t.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG'' and ',
'                      t.ORGANIZATION_ID = :P0_ORG_ID and ',
'                      t.org_information8 = flv.lookup_code and',
'                      t.org_information10 = ''Y'')',
'            then ''Y'' else ''N'' end APPROVED,',
'       flv.meaning PROGRAM_NAME, ',
'       flv.lookup_code PROGRAM_CODE, ',
'       flv.DESCRIPTION PROGRAM_DESC',
'from fnd_lookup_values flv ',
'where flv.lookup_type=''JAFI_HR_AMITY_ISTAEL_PROGRAMS'' and flv.language=''US''',
'order by to_number(flv.lookup_code)'))
,p_query_row_template=>wwv_flow_api.id(693398594405039159)
,p_query_num_rows=>100000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(690099731233958554)
,p_query_column_id=>1
,p_column_alias=>'APPROVED'
,p_column_display_sequence=>4
,p_column_heading=>'Approved'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(690099433210958551)
,p_query_column_id=>2
,p_column_alias=>'PROGRAM_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Program Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(690099519675958552)
,p_query_column_id=>3
,p_column_alias=>'PROGRAM_CODE'
,p_column_display_sequence=>2
,p_column_heading=>'Program Code'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(690099635605958553)
,p_query_column_id=>4
,p_column_alias=>'PROGRAM_DESC'
,p_column_display_sequence=>3
,p_column_heading=>'Program Desc'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1753266840264173884)
,p_plug_name=>'Info'
,p_parent_plug_id=>wwv_flow_api.id(1642097648271545890)
,p_region_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'Which of the following programs or activities is the Israel Fellow<br class="desktop-br"/>on your team expected to lead or participate in?',
'</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1657720265550617272)
,p_plug_name=>'button container'
,p_region_name=>'backToHomeContainer'
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>50
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2173970927161533933)
,p_plug_name=>'PrograssBar'
,p_region_name=>'progressBar'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall:t-Form--noPadding:margin-top-md:margin-bottom-lg'
,p_component_template_options=>'#DEFAULT#:t-Tabs--simple'
,p_plug_template=>wwv_flow_api.id(1572085619207170)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region progress-bar-col'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(646723375322392460)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(2125342479223692)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2173970956996533934)
,p_plug_name=>'ButtonRegion'
,p_region_name=>'buttonsRegion'
,p_region_css_classes=>'width-900 bottom-btn-container1'
,p_region_template_options=>'#DEFAULT#:margin-top-lg'
,p_plug_template=>wwv_flow_api.id(2942455427172219)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7343689415024001922)
,p_plug_name=>'Title'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(1491988443724117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Campus Information'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(646452117653375715)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1657720265550617272)
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
 p_id=>wwv_flow_api.id(646455121508375718)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(2173970956996533934)
,p_button_name=>'PrevStep'
,p_button_static_id=>'prevStepBtn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'<img src="#APP_IMAGES#ic-back.svg"/>Back'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'prev-btn'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(690099975398958557)
,p_name=>'P33_APPROVED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(690098672919958544)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(690100060189958558)
,p_name=>'P33_PROGRAM_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(690098672919958544)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(690100203165958559)
,p_name=>'P33_PROGRAM_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(690098672919958544)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(646468027525375755)
,p_name=>'refresh rg when change'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_SEARCH'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646469033721375755)
,p_event_id=>wwv_flow_api.id(646468027525375755)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COUNT(*)',
'INTO :P33_COUNT_ROWS',
'  from hr_organization_information hoi',
' where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG''',
'   and hoi.ORG_INFORMATION10 = ''Y''',
'AND (',
'    UPPER(hoi.ORG_INFORMATION1) LIKE ''%'' || UPPER(TRIM(:P33_SEARCH)) || ''%''',
'    OR :P33_SEARCH IS NULL',
')',
'   and hoi.organization_id =  :P0_ORG_ID;'))
,p_attribute_02=>'P33_SEARCH'
,p_attribute_03=>'P33_COUNT_ROWS'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646469457257375756)
,p_event_id=>wwv_flow_api.id(646468027525375755)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P33_COUNT_ROWS'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(646470430930375756)
,p_name=>'clear edit org data'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_ORG_INFO_ID'
,p_condition_element=>'P33_ORG_INFO_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646470901153375756)
,p_event_id=>wwv_flow_api.id(646470430930375756)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P33_ORG_NAME_UPD := null;',
':P33_FULL_NAME_UPD := null;',
':P33_EMAIL_UPD := null;',
':P33_PHONE1_UPD := null;',
':P33_PHONE2_UPD := null;',
'--:P33_PHONE3_UPD := null;',
':P33_SHSH_ACTIVE := null;',
':P33_LTS_ACTIVE := null;',
':P33_AFFLICATION_UPD := null;',
':P33_FREQ_UPD  := null;',
':P33_SELECTED_ORG_TYPES := null;',
':P33_ORG_TYPE_UPD := null;',
'',
''))
,p_attribute_03=>'P33_ORG_NAME_UPD,P33_FULL_NAME_UPD,P33_EMAIL_UPD,P33_PHONE1_UPD,P33_PHONE2_UPD,P33_PHONE3_UPD,P33_AFFLICATION_UPD,P33_FREQ_UPD,P33_SHSH_ACTIVE,P33_LTS_ACTIVE,P33_SELECTED_ORG_TYPES,P33_ORG_TYPE_UPD'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(646476052259375759)
,p_name=>'activate shsh image'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_SHSH_ACTIVE'
,p_condition_element=>'P33_SHSH_ACTIVE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(646477498328375759)
,p_name=>'activate lts imag'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_LTS_ACTIVE'
,p_condition_element=>'P33_LTS_ACTIVE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(646485433085375762)
,p_name=>'refresh region'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_END_ROW'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(646486283521375763)
,p_name=>'show hide show more btn'
,p_event_sequence=>410
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_COUNT_ROWS,P33_END_ROW'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Number($v("P33_END_ROW")) >= Number($v("P33_COUNT_ROWS"))',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646487777747375763)
,p_event_id=>wwv_flow_api.id(646486283521375763)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#buttonsRegion'').attr(''style'',''width: 588px;max-width: 100%;margin: 0 auto; bottom: -50px !important'');',
'$(''#backToHomeContainer'').parents(''div.row'').attr(''style'', ''margin-top: 40px;'');',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646488309629375764)
,p_event_id=>wwv_flow_api.id(646486283521375763)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#buttonsRegion'').attr(''style'',''width: 588px;max-width: 100%;margin: 0 auto; bottom: 0 !important'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(646488674027375764)
,p_name=>'set null org info id'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_ORG_INFO_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646489234913375764)
,p_event_id=>wwv_flow_api.id(646488674027375764)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P33_ORG_INFO_ID:= null;'
,p_attribute_03=>'P33_ORG_INFO_ID'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(646463030170375752)
,p_name=>'org type change delayed'
,p_event_sequence=>490
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_ORG_TYPE_UPD'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646463489291375752)
,p_event_id=>wwv_flow_api.id(646463030170375752)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selectedOptionIds = $(''#P33_ORG_TYPE_UPD'').val();',
'var selectedOptions = $(''#P33_ORG_TYPE_UPD option'').filter(function(index) {',
'    return $.inArray($(this).attr("value"), selectedOptionIds) !== -1;',
'}).sort(function(a, b) {',
'   return $(a).text().toUpperCase().localeCompare($(b).text().toUpperCase());',
'});',
'$(selectedOptions).remove();',
'var sortedOptions = $(''#P33_ORG_TYPE_UPD option'').sort(function(a, b) {',
'   return $(a).text().toUpperCase().localeCompare($(b).text().toUpperCase());',
'});',
'$(''#P33_ORG_TYPE_UPD option'').remove();',
'$(selectedOptions).attr(''data-is-selected'', ''true'');',
'$(''#P33_ORG_TYPE_UPD'').prepend(selectedOptions);',
'$(''#P33_ORG_TYPE_UPD'').append(sortedOptions);',
'',
'setTimeout(function(){',
'    const max_input_length = 4;',
'',
'    if ($(''li.select2-selection__choice'').length < max_input_length) {',
'        $(''span.open-select2-no-selection'').remove();',
'        if ($(''.select2-selection__choice__remove'').length > 0) {',
'            $(''.select2-selection__choice__remove'').addClass(''open-select2 fa fa-chevron-down'')',
'                                                   .removeClass(''select2-selection__choice__remove'')',
'                                                   .text('''');',
'        }',
'        else if ($(''#P33_ORG_TYPE_UPD_CONTAINER ul.select2-selection__rendered li.select2-selection__choice'').length == 0) {',
'            if ($(''li.select2-search--inline span.open-select2-no-selection'').length == 0) {',
'                $(''li.select2-search--inline'').append(''<span class="open-select2-no-selection fa fa-chevron-down"></span>'');',
'            }',
'        }',
'    }',
'    $(''.select2-search__field'').attr(''disabled'',''disabled'');',
'}, 10);',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(690099827335958555)
,p_name=>'Card Click'
,p_event_sequence=>500
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#programCards li'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(690099934735958556)
,p_event_id=>wwv_flow_api.id(690099827335958555)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var programCode = $(this.triggeringElement).data(''code'');',
'var programName = $(this.triggeringElement).data(''name''); ',
'var approved = $(this.triggeringElement).data(''approved'');',
'var request = ''SAVE'';',
'',
'$s(''P33_APPROVED'', approved);',
'$s(''P33_PROGRAM_CODE'', programCode);',
'$s(''P33_PROGRAM_NAME'', programName);',
'',
'if (approved == ''Y'') {',
'    request = ''DELETE'';',
'}',
'',
'apex.page.submit({',
'    request: request,',
'    set: { ',
'        "P33_APPROVED": approved, ',
'        "P33_PROGRAM_CODE": programCode, ',
'        "P33_PROGRAM_NAME": programName ',
'    },',
'    showWait: true',
'});'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(646462155905375751)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_ovn pls_integer;',
'    l_org_information_id pls_integer;',
'begin',
'    fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800); ',
'    ',
'    begin    ',
'        select t.object_version_number, t.org_information_id',
'        into l_ovn, l_org_information_id',
'        from Hr_Organization_Information t',
'        where t.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG'' and ',
'              t.ORGANIZATION_ID = :P0_ORG_ID and t.org_information8 = :P33_PROGRAM_CODE;',
'',
'        hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                                  ,p_object_version_number => l_ovn',
'                                                  ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTUMER_ORG''',
'                                                  ,p_org_information_id => l_org_information_id',
'                                                  ,p_org_information1 => :P33_PROGRAM_NAME',
'                                                  ,p_org_information8 => :P33_PROGRAM_CODE',
'                                                  ,p_org_information10 => ''Y'');  ',
'',
'        EXCEPTION when no_data_found then ',
'                 hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                                      ,p_object_version_number => l_ovn',
'                                      ,p_org_info_type_code =>  ''JAFI_HR_SHLICHUT_CUSTUMER_ORG''',
'                                      ,p_org_information_id => l_org_information_id',
'                                      ,p_org_information1 => :P33_PROGRAM_NAME',
'                                      ,p_org_information8 => :P33_PROGRAM_CODE     ',
'                                      ,p_org_information10 => ''Y''',
'                                      ,p_organization_id   => :P0_ORG_ID);',
'        commit;',
'    end;',
'',
'    exception when others then apex_error.add_error(p_message => ''Failed to update Program => '' || SQLERRM, ',
'                                                    p_display_location => apex_error.c_inline_in_notification);',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SAVE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(646462642020375751)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_ovn pls_integer;',
'    l_org_information_id pls_integer;',
'begin',
'    Select t.object_version_number, t.org_information_id',
'      Into l_ovn, l_org_information_id',
'      From Hr_Organization_Information t',
'     Where t.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG''',
'       and t.ORGANIZATION_ID = :P0_ORG_ID',
'       and t.org_information8 = :P33_PROGRAM_CODE;',
'   ',
'     hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                               ,p_object_version_number => l_ovn',
'                                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTUMER_ORG''',
'                                               ,p_org_information_id => l_org_information_id',
'                                               ,p_org_information10 => ''N'');  ',
'                                                           ',
'commit;',
'',
'exception  when others then',
'     apex_error.add_error(p_message => ''Failed to delete Program => '' || SQLERRM,   ',
'                          p_display_location => apex_error.c_inline_in_notification );',
'end;',
' ',
'                 '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.component_end;
end;
/
