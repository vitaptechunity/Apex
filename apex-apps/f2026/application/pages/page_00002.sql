prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'Community Information General'
,p_alias=>'COMMUNITY-INFORMATION'
,p_step_title=>'Community Information'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_IMAGES#select2-extension.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function displayCommunalOrgTags() {',
'    $(''#P2_COMMUNAL_ORGS_CONTAINER .info-tags-container'').html($v(''P2_COMMUNAL_ORGS_TAGS''));',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    $("#P2_COMMUNAL_ORGS_UPD").select2({',
'        templateResult: formatState_P2_COMMUNAL_ORGS_UPD,',
'        templateSelection: formatSelected_P2_COMMUNAL_ORGS_UPD,',
'        placeholder: "Search",',
'        maximumSelectionLength: 100,',
'        closeOnSelect: false',
'    });',
'',
'    function formatSelected_P2_COMMUNAL_ORGS_UPD(data) {',
'        if (!data.id) {',
'            return data.text;',
'        }',
'        ',
'        var selectedValues = $("#P2_COMMUNAL_ORGS_UPD").val() || [];',
'        const selectedCount = selectedValues.length;',
'',
'        const options = $("#P2_COMMUNAL_ORGS_UPD option").map(function () {',
'            return { value: $(this).val(), text: $(this).text() };',
'        }).get();',
'',
'        const selectedTexts = selectedValues.map((value) => {',
'            const match = options.find((option) => option.value === value);',
'            return match ? match.text : value;',
'        });',
'        ',
'        if (selectedCount === 0) {',
'            return "Types: None";',
'        } ',
'        else if (selectedCount === 1) {',
'            return `${selectedTexts[0]}`;',
'        } ',
'        else {',
'            return `${selectedTexts[0]} +${selectedCount - 1}`;',
'        }',
'    }',
'',
'    function formatState_P2_COMMUNAL_ORGS_UPD(state) {',
'        if (!state.id) {',
'            return state.text;',
'        }',
'',
'        var $state = $(''<div class="rf-input-checkbox-wrap"><span class="rf-checkbox-mark"></span> '' + state.text + "</div>");',
'        return $state;',
'    }',
'',
'    $("#P2_COMMUNAL_ORGS_UPD").on("change", function () {',
'        $("#P2_COMMUNAL_ORGS_UPD option").each(function () {',
'            if ($(this).prop("selected")) {',
'                $(this).siblings(''input[type="checkbox"]'').prop("checked", true);',
'            }',
'        });',
'        ',
'        //var ele = $(this);',
'        //if(ele.val().length==3) {',
'        //  ele.select2(''close'');',
'        //}',
'    });',
'    ',
'    document.querySelectorAll(''.display_only, .apex-item-display-only'').forEach(element => {',
'        if (element.textContent.trim() === ''Please update'') {',
'            element.classList.add(''please-update-orange'');',
'            // Also apply inline style as backup',
'            element.style.color = ''#E84C26'';',
'',
'        }',
'    });',
'    ',
'    displayCommunalOrgTags();',
'});',
''))
,p_css_file_urls=>'#APP_IMAGES#select2-extension.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#P2_BACKGROUND_INFO_UPD_LABEL{',
'    color: #172B54 !important;',
'    font-weight: 500 !important;',
'    font-size: 16px !important;',
'    line-height: 24px;',
'}',
'.width-100 textarea{',
'    width:100%;',
'}',
'',
'.cp-please {',
'    font-weight: 500;',
'    font-size: 18px;',
'    text-align: center;',
'    color:#E84C26',
'}',
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
'.select2-container--default .select2-selection--single .select2-selection__rendered {',
'    color: #172B54 !important;',
'}',
'',
'.select2-selection__arrow {',
'    top: 5px !important;',
'}',
'',
'.select2-selection__rendered {',
'    top: 2px !important;',
'    position: relative !important;',
'}',
'',
'.select2-container {',
'    max-width: 249px !important;',
'}',
'',
'',
'#P2_OTHER_DESC_LABEL {',
'    width: 100%;    ',
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
'#P2_OTHER_DESC_CONTAINER .required-content {',
'    vertical-align: top;   ',
'}',
'',
'.t-Form-fieldContainer.is-required .t-Form-label::after {',
'    content: none;',
'}',
'',
'#P2_ISRAEL_ENGAGE_LABEL,',
'#P2_SHALIACH_ENGAGE_LABEL,',
'#P2_COMMUNAL_ORGS_LABEL {',
'    line-height: 22px;',
'}',
'    ',
'#P2_ISRAEL_ENGAGE_UPD_LABEL,',
'#P2_SHALIACH_ENGAGE_UPD_LABEL,',
'#P2_COMMUNAL_ORGS_UPD_LABEL {',
'    line-height: 22px;    ',
'    font-weight: 500 !important;',
'    color: #172B54 !important;',
'}',
'',
'.pre-text-paragraph {',
'    background-color: #F9F7F4;',
'    border-radius: 10px;',
'    padding: 20px 30px;',
'    color: #4F596D;',
'    font-size: 16px;',
'    margin: 20px 0;',
'}',
'',
'#P2_COMMUNAL_ORGS_UPD_CONTAINER .select2 {',
'    width: 100% !important;',
'    max-width: 100% !important;',
'}',
'',
'#P2_COMMUNAL_ORGS_UPD_CONTAINER .select2-selection__choice {',
'    margin-top: 8px !important;',
'}',
'',
'#P2_COMMUNAL_ORGS_CONTAINER .t-Form-itemText--pre {',
'    width: 100%;',
'}',
'',
'#P2_COMMUNAL_ORGS {',
'    display: none;',
'}',
'',
'.info-tags-container {',
'    display: flex;',
'    flex-wrap: wrap;',
'}',
'',
'',
'@media (max-width: 575px),@media (max-width: 640px) {',
'    .community-name-col {',
'        width: 50%;',
'    }',
'    ',
'    .country-col {',
'        position: absolute;',
'        top: 16px;',
'        left: 50%;',
'        width: 50%;',
'    }',
'    ',
'    .state-province-col {',
'        position: absolute;',
'        top: 89px;',
'        left: 50%;',
'        width: 50%;',
'    }',
'    ',
'    .city-col {',
'         width: 50%;',
'    }',
'    ',
'    .address-col {',
'         width: 50%;',
'    }',
'    ',
'    .zip-code-col {',
'        position: absolute;',
'        top: 162px;',
'        left: 50%;',
'        width: 50%;',
'    }',
'    ',
'    .zip-code-upd-col {',
'        width: 40%;',
'    }',
'    ',
'    #P2_OTHER_DESC_LABEL {',
'        width: 200px;',
'        line-height: 20px;',
'    }',
'    ',
'    ',
'}',
'',
'@media (max-width: 400px) {',
'    #communityTypeEditRegion .t-Region-body {',
'        padding-left: 15px !important;',
'        padding-right: 15px !important;',
'        overflow: hidden;',
'    }',
'    ',
'    #communityTypeEditRegion .hub-btn, ',
'    #communityTypeEditRegion .synagogue-btn,',
'    #communityTypeEditRegion .youth-move-btn {',
'        left: 177px !important;',
'    }',
'}',
'',
'',
'',
'',
'    '))
,p_step_template=>wwv_flow_api.id(29244342218644)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DRORA'
,p_last_upd_yyyymmddhh24miss=>'20261018123627'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(3078777628383856)
,p_name=>'<!-- Community Type View --><div class="t-rounded-div-title"> <img  src="#APP_IMAGES#ic_loyalty_48px.svg" ><span>Community Type</span></div>'
,p_template=>wwv_flow_api.id(2889647945233431)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'standard-rounded-rg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-top-md'
,p_component_template_options=>'#DEFAULT#:t-Cards--animColorFill:t-Cards--3cols:t-Report--hideNoPagination:t-Cards--basic'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
' select  CASE ',
'  When hoi.ORG_INFORMATION12 = 7 then',
'      (         Select  dst1.short_text',
'                 From  fnd_documents_short_text dst1',
'                  Where dst1.media_id(+) = to_number(hoi.ORG_INFORMATION19 )',
'                   )',
'       else',
'        jafi_hr_utils.US_Decode_Lookup(''JAFI_HR_KEHILATI_COM_TYPE'',',
'                                      hoi.ORG_INFORMATION12)',
'                                      ',
'       end CARD_TEXT',
'                                      ',
'  from hr_organization_information hoi',
' where hoi.org_information_context = ''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'   AND hoi.org_information12 is not null',
'   and hoi.organization_id =	:P0_ORG_ID',
'   ',
'  ',
'   UNION',
'',
'SELECT ''<span style="font-size:18px; font-weight: 500; color:#E84C26 ;  line-height: 24px;">Please Update</span>'' CARD_TEXT  ',
'FROM dual',
'',
'WHERE NOT EXISTS (',
'    SELECT 1 ',
'    FROM hr_organization_information hoi',
'    WHERE hoi.org_information_context = ''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'      AND hoi.organization_id = :P0_ORG_ID',
'      AND hoi.org_information12 IS NOT NULL)',
'   '))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(3019079697215365)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8034466571947972)
,p_query_column_id=>1
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>1
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span class="community-type-value">#CARD_TEXT#</span>'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5851434366291286)
,p_plug_name=>'<!-- Community Type Edit--><div class="t-rounded-div-title"> <img  src="#APP_IMAGES#ic_loyalty_48px.svg" ><span>Community Type</span></div>'
,p_region_name=>'communityTypeEditRegion'
,p_region_css_classes=>'standard-rounded-rg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-top-md'
,p_plug_template=>wwv_flow_api.id(2889647945233431)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7119632556177349)
,p_plug_name=>'<!-- Community Background View--><div class="t-rounded-div-title"> <img  src="#APP_IMAGES#ic_chrome_reader_mode_48px.svg" ><span>Community Background</span></div>'
,p_region_css_classes=>'standard-rounded-rg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-top-md'
,p_plug_template=>wwv_flow_api.id(2889647945233431)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7119778606177351)
,p_plug_name=>'<!-- Community Background Edit--><div class="t-rounded-div-title"> <img  src="#APP_IMAGES#ic_chrome_reader_mode_48px.svg" ><span>Community Background</span></div>'
,p_region_css_classes=>'standard-rounded-rg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-top-md'
,p_plug_template=>wwv_flow_api.id(2889647945233431)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43398541856478559)
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
 p_id=>wwv_flow_api.id(43398571691478560)
,p_plug_name=>'ButtonRegion'
,p_region_css_classes=>'cp-bottons-container-2'
,p_region_template_options=>'#DEFAULT#:margin-top-lg'
,p_plug_template=>wwv_flow_api.id(2942455427172219)
,p_plug_display_sequence=>140
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43399301187478567)
,p_plug_name=>'<!-- Community Location View --><div class="t-rounded-div-title"> <img  src="#APP_IMAGES#ic-place.svg" ><span>Community Location</span></div>'
,p_region_css_classes=>'standard-rounded-rg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-top-md'
,p_plug_template=>wwv_flow_api.id(2889647945233431)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(109982164591247683)
,p_plug_name=>'<!-- Community Location Edit--><div class="t-rounded-div-title"><img  src="#APP_IMAGES#ic-place.svg" ><span>Community Location</span></div>'
,p_region_css_classes=>'standard-rounded-rg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-top-md:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(2889647945233431)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(602901245347004186)
,p_plug_name=>'Sub Page Info'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'In this section, we ask that you provide as much information as possible about your community.',
'',
'<br><br>',
'',
unistr('It is important to include all relevant institutions \2014 both Jewish and'),
unistr('non-Jewish \2014 that are connected to the Shaliach\2019s work.'),
'',
'<br><br>',
'',
'Additionally, the general community description you provide here will be shared with potential candidates. Therefore, please be as detailed as possible so that candidates can get to know the community they are applying to from your perspective.',
'<br><br>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(638825906261557470)
,p_plug_name=>'<!-- Israel Engagement View--><div class="t-rounded-div-title"> <img  src="#APP_IMAGES#ic_chrome_reader_mode_48px.svg" ><span>Israel Engagement</span></div>'
,p_region_css_classes=>'standard-rounded-rg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-top-md'
,p_plug_template=>wwv_flow_api.id(2889647945233431)
,p_plug_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(638826164441557473)
,p_plug_name=>'<!-- Israel Engagement Edit--><div class="t-rounded-div-title"> <img  src="#APP_IMAGES#ic_chrome_reader_mode_48px.svg" ><span>Israel Engagement</span></div>'
,p_region_css_classes=>'standard-rounded-rg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-top-md'
,p_plug_template=>wwv_flow_api.id(2889647945233431)
,p_plug_display_sequence=>130
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="pre-text-paragraph">',
unistr('    As part of the Jewish Agency\2019s operating framework for Israel '),
'    Engagement, we would value your perspective on how these ',
'    three pathways exist in your community. Your input below will ',
'    help us learn from practice and create a framework for ',
'    measuring the impact of Shlichut.',
'</div>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5213117029718946548)
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
 p_id=>wwv_flow_api.id(638826430345557475)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(638826164441557473)
,p_button_name=>'save_israel_engagement'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(5843813714039240)
,p_button_image_alt=>'Save Changes'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8036988964953256)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(5851434366291286)
,p_button_name=>'save_community_type'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(5843813714039240)
,p_button_image_alt=>'Save Changes'
,p_button_position=>'BELOW_BOX'
,p_button_execute_validations=>'N'
,p_button_css_classes=>'rf-card-save-btn'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10092228277645954)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(5851434366291286)
,p_button_name=>'Federation_IMG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_api.id(10113380236895156)
,p_button_image_alt=>'<img src="#APP_IMAGES#federation.svg" width="34px" /> <span>Federation</span>'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'button-col'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10092339620645955)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(5851434366291286)
,p_button_name=>'Hub_IMG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_api.id(10113380236895156)
,p_button_image_alt=>'<img src="#APP_IMAGES#hub.svg" width="39px" /> <span>Hub</span>'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'button-col hub-btn'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10092377945645956)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(5851434366291286)
,p_button_name=>'School_IMG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_api.id(10113380236895156)
,p_button_image_alt=>'<img src="#APP_IMAGES#school.svg" width="46px" /> <span>School</span>'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'button-col'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10092738295645959)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(5851434366291286)
,p_button_name=>'Synagogue_IMG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(10113380236895156)
,p_button_image_alt=>'<img src="#APP_IMAGES#synagogue.svg" width="36px" /> <span>Synagogue</span>'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'button-col synagogue-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10092774799645960)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(5851434366291286)
,p_button_name=>'Jcc_IMG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(10113380236895156)
,p_button_image_alt=>'<img src="#APP_IMAGES#jcc.svg" width="40px" /> <span>JCC</span>'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'button-col'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10092901152645961)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(5851434366291286)
,p_button_name=>'Youth_Move_IMG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(10113380236895156)
,p_button_image_alt=>'<img src="#APP_IMAGES#ym.svg" width="44px" /> <span>Youth Movement</span>'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'button-col youth-move-btn'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5851244540291285)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(109982164591247683)
,p_button_name=>'save_community_location'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(5843813714039240)
,p_button_image_alt=>'Save Changes'
,p_button_position=>'BOTTOM'
,p_button_css_classes=>'dror'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7121138307177364)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(7119778606177351)
,p_button_name=>'save_community_background'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(5843813714039240)
,p_button_image_alt=>'Save Changes'
,p_button_position=>'BOTTOM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2923000685439754)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(43398571691478560)
,p_button_name=>'nextStep'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2938281857134305)
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'next-btn'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43399061539478565)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(43398571691478560)
,p_button_name=>'PrevStep'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'<img src="#APP_IMAGES#ic-back.svg"/>Back'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'prev-btn'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3079467359383863)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3078777628383856)
,p_button_name=>'CommunityTypeOpenEditRG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2910527574307047)
,p_button_image_alt=>'#APP_IMAGES#ic-edit.png'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5851668838291289)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(5851434366291286)
,p_button_name=>'CommunityTypeCloseEditRG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2910527574307047)
,p_button_image_alt=>'#APP_IMAGES#ic-x-close.png'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7119929080177352)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(7119778606177351)
,p_button_name=>'CommunityBackgroundCloseEditRG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2910527574307047)
,p_button_image_alt=>'#APP_IMAGES#ic-x-close.png'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(109982124441247682)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(43399301187478567)
,p_button_name=>'CommunityLocationOpenEditRG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2910527574307047)
,p_button_image_alt=>'#APP_IMAGES#ic-edit.png'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(109982913819247690)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(109982164591247683)
,p_button_name=>'CommunityLocationCloseEditRG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2910527574307047)
,p_button_image_alt=>'#APP_IMAGES#ic-x-close.png'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(638826071320557472)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(638825906261557470)
,p_button_name=>'IsraelEngagementOpenEditRG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2910527574307047)
,p_button_image_alt=>'#APP_IMAGES#ic-edit.png'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7120023389177353)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(7119632556177349)
,p_button_name=>'CommunityBackgroundOpenEditRG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2910527574307047)
,p_button_image_alt=>'#APP_IMAGES#ic-edit.png'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(638826486362557476)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(638826164441557473)
,p_button_name=>'IsraelEngagementCloseEditRG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2910527574307047)
,p_button_image_alt=>'#APP_IMAGES#ic-x-close.png'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7120781417177361)
,p_name=>'P2_BACKGROUND_INFO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7119632556177349)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(18523912527015802)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7120964604177363)
,p_name=>'P2_BACKGROUND_INFO_UPD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7119778606177351)
,p_prompt=>'<b>Please provide a general description of the community.</b><br/>Help potential shlichim get to know your community!<br/> This summary is displayed to candidates when presented with the role.'
,p_placeholder=>'Describe your community''s character, Jewish life, lifestyle, and what makes it a unique place for a Shaliach.'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>8
,p_grid_column_css_classes=>'width-100'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8034892825947976)
,p_name=>'P2_SELECTED_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(5851434366291286)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8035206758947979)
,p_name=>'P2_OTHER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(5851434366291286)
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Other;Other'
,p_grid_column_css_classes=>'rounded-checkbox'
,p_field_template=>wwv_flow_api.id(491308284349075283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8035316304947980)
,p_name=>'P2_OTHER_DESC'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(5851434366291286)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
' Select  dst1.short_text',
'           From hr_organization_information t1,',
'                 fnd_documents_short_text dst1',
'            Where t1.org_information_context = ''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'            And dst1.media_id(+) = to_number(t1.ORG_INFORMATION19 )',
'            And t1.organization_id = :P0_ORG_ID',
'            '))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Please specify your other Community Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>150
,p_cMaxlength=>150
,p_colspan=>8
,p_grid_column_css_classes=>'black-label'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8035879921947986)
,p_name=>'P2_COMM_TYPE_DESC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3078777628383856)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43399344719478568)
,p_name=>'P2_COMMUNITY_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(43399301187478567)
,p_prompt=>'Community Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column_css_classes=>'community-name-col'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43399513923478569)
,p_name=>'P2_COUNTRY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(43399301187478567)
,p_prompt=>'Country'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'country-col'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43399569515478570)
,p_name=>'P2_STATE_PROVINCE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(43399301187478567)
,p_prompt=>'State/Province'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'state-province-col'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43399666598478571)
,p_name=>'P2_CITY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(43399301187478567)
,p_prompt=>'City'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column_css_classes=>'city-col'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43399825369478572)
,p_name=>'P2_ADDRESS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(43399301187478567)
,p_prompt=>'Address'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'address-col'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43399858767478573)
,p_name=>'P2_ZIP_CODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(43399301187478567)
,p_prompt=>'Zip Code'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'zip-code-col'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(109982251430247684)
,p_name=>'P2_COMMUNITY_NAME_UPD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(109982164591247683)
,p_prompt=>'Community Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(109982393479247685)
,p_name=>'P2_COUNTRY_UPD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(109982164591247683)
,p_prompt=>'Country'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COUNTRIES_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  flv.meaning, flv.LOOKUP_CODE         ',
'from FND_LOOKUP_VALUES_VL flv',
'where flv.LOOKUP_TYPE = ''JAFI_HR_COUNTRIES''',
'order by  flv.meaning; ',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(109982483750247686)
,p_name=>'P2_STATE_PROVINCE_UPD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(109982164591247683)
,p_prompt=>'State/Province'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATE_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  flv.meaning, flv.LOOKUP_CODE         ',
'from FND_LOOKUP_VALUES_VL flv',
'where flv.LOOKUP_TYPE = ''JAFI_HR_GLOBAL_STATES''',
'and  (flv.ATTRIBUTE2   = :P2_COUNTRY_UPD or',
'      flv.ATTRIBUTE2   = :P31_COUNTRY)',
'order by  flv.meaning; ',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P2_COUNTRY_UPD'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(109982582372247687)
,p_name=>'P2_CITY_UPD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(109982164591247683)
,p_prompt=>'City'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CITIES_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  flv.meaning, flv.LOOKUP_CODE         ',
'from FND_LOOKUP_VALUES_VL flv',
'where flv.LOOKUP_TYPE = ''JAFI_HR_CITIES''',
'and (flv.ATTRIBUTE1 = :P2_COUNTRY_UPD or flv.ATTRIBUTE1 = :P31_COUNTRY);'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(109982657929247688)
,p_name=>'P2_ADDRESS_UPD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(109982164591247683)
,p_prompt=>'Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(109982775605247689)
,p_name=>'P2_ZIP_CODE_UPD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(109982164591247683)
,p_prompt=>'Zip Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column_css_classes=>'zip-code-upd-col'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185728035126859854)
,p_name=>'P2_MAIN_AIRPORT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(43399301187478567)
,p_prompt=>'Main Airport'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185728115807859855)
,p_name=>'P2_SEC_AIRPORT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(43399301187478567)
,p_prompt=>'Secondary Airport'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185728172915859856)
,p_name=>'P2_MAIN_AIRPORT_UPD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(109982164591247683)
,p_prompt=>'Main Airport'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRPORT_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code ||''-''|| meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_tag_css_classes=>'select2-do-not-process'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185728312874859857)
,p_name=>'P2_SECONDARY_AIRPORT_UPD'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(109982164591247683)
,p_prompt=>'Secondary Airport'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRPORT_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code ||''-''|| meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_tag_css_classes=>'select2-do-not-process'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(638826034431557471)
,p_name=>'P2_ISRAEL_ENGAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(638825906261557470)
,p_prompt=>'What is impactful Israel engagement in your view?'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(638826301329557474)
,p_name=>'P2_ISRAEL_ENGAGE_UPD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(638826164441557473)
,p_prompt=>'What is impactful Israel engagement in your view?'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>8
,p_grid_column_css_classes=>'width-100'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(638826583710557477)
,p_name=>'P2_SHALIACH_ENGAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(638825906261557470)
,p_prompt=>'Please highlight up to 3 initiatives, projects, or areas of practice you hope the Shaliach will lead to significantly advance Israel Engagement in your community?'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(638826695055557478)
,p_name=>'P2_SHALIACH_ENGAGE_UPD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(638826164441557473)
,p_prompt=>'Please highlight up to 3 initiatives, projects, or areas of practice you hope the Shaliach will lead to significantly advance Israel Engagement in your community.'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>8
,p_grid_column_css_classes=>'width-100'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(638826808927557479)
,p_name=>'P2_COMMUNAL_ORGS_UPD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(638826164441557473)
,p_prompt=>'To the best of your knowledge, please select all types of communal organizations that do Israel engagement work in your community.'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_ISRAEL_ENGAGE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select	flv.Meaning ||'' ''|| FLV.DESCRIPTION Meaning, flv.lookup_code, FLV.TAG',
'From 	FND_LOOKUP_VALUES flv',
'Where 	flv.Lookup_Type = ''JAFI_HR_KEHILATI_ISRAEL_ENGAGE''',
'		and flv.enabled_flag = ''Y''',
'		AND flv.LANGUAGE=''US''',
'order by flv.Meaning',
'   '))
,p_grid_column_css_classes=>'black-label rf-select2-filter'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'MULTI'
,p_attribute_03=>'1'
,p_attribute_04=>'100'
,p_attribute_08=>'CIC'
,p_attribute_10=>'100%'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(638826993239557481)
,p_name=>'P2_COMMUNAL_ORGS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(638825906261557470)
,p_prompt=>'To the best of your knowledge, please select all types of communal organizations that do Israel engagement work in your community.'
,p_pre_element_text=>'<div id="communalOrgsTags" class="info-tags-container"></div>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(661615275246156547)
,p_name=>'P2_COMMUNAL_ORGS_TAGS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(638825906261557470)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(10081588019282663)
,p_validation_name=>'ValCommName'
,p_validation_sequence=>10
,p_validation=>'P2_COMMUNITY_NAME_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('\2800This field is required.')
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(5851244540291285)
,p_associated_item=>wwv_flow_api.id(109982251430247684)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(185728389920859858)
,p_validation_name=>'Main Airport Required'
,p_validation_sequence=>20
,p_validation=>'P2_MAIN_AIRPORT_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required.'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_api.id(5851244540291285)
,p_associated_item=>wwv_flow_api.id(185728172915859856)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13934765484796063)
,p_validation_name=>'Com Name English Validation'
,p_validation_sequence=>40
,p_validation=>'P2_COMMUNITY_NAME_UPD'
,p_validation2=>'^[a-zA-Z0-9.,"''-:; ]*$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Please use English'
,p_when_button_pressed=>wwv_flow_api.id(5851244540291285)
,p_associated_item=>wwv_flow_api.id(109982251430247684)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(10083879952282686)
,p_validation_name=>'ValCountry'
,p_validation_sequence=>50
,p_validation=>'P2_COUNTRY_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required.'
,p_when_button_pressed=>wwv_flow_api.id(5851244540291285)
,p_associated_item=>wwv_flow_api.id(109982393479247685)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(10084120609282688)
,p_validation_name=>'ValCity'
,p_validation_sequence=>60
,p_validation=>'P2_CITY_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required.'
,p_when_button_pressed=>wwv_flow_api.id(5851244540291285)
,p_associated_item=>wwv_flow_api.id(109982582372247687)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(10084238166282689)
,p_validation_name=>'ValAddress'
,p_validation_sequence=>70
,p_validation=>'P2_ADDRESS_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required.'
,p_when_button_pressed=>wwv_flow_api.id(5851244540291285)
,p_associated_item=>wwv_flow_api.id(109982657929247688)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13934940631796064)
,p_validation_name=>'Address English Validation'
,p_validation_sequence=>80
,p_validation=>'P2_ADDRESS_UPD'
,p_validation2=>unistr('^[^\05D0-\05EA]*$')
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Please use English'
,p_when_button_pressed=>wwv_flow_api.id(5851244540291285)
,p_associated_item=>wwv_flow_api.id(109982657929247688)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(10084291000282690)
,p_validation_name=>'ValZio'
,p_validation_sequence=>90
,p_validation=>'P2_ZIP_CODE_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required.'
,p_when_button_pressed=>wwv_flow_api.id(5851244540291285)
,p_associated_item=>wwv_flow_api.id(109982775605247689)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13935002969796065)
,p_validation_name=>'Zip English Validation'
,p_validation_sequence=>100
,p_validation=>'P2_ZIP_CODE_UPD'
,p_validation2=>unistr('^[^\05D0-\05EA]*$')
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Please use English and Numbers'
,p_when_button_pressed=>wwv_flow_api.id(5851244540291285)
,p_associated_item=>wwv_flow_api.id(109982775605247689)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(10084398199282691)
,p_validation_name=>'VaComTypeOtherDesc'
,p_validation_sequence=>110
,p_validation=>'P2_OTHER_DESC'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required.'
,p_validation_condition=>'P2_OTHER'
,p_validation_condition2=>'Other'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(8036988964953256)
,p_associated_item=>wwv_flow_api.id(8035316304947980)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13935061685796066)
,p_validation_name=>'Other English Validation'
,p_validation_sequence=>120
,p_validation=>'P2_OTHER_DESC'
,p_validation2=>'^[a-zA-Z0-9.,"''-:; ]*$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Please use English'
,p_when_button_pressed=>wwv_flow_api.id(8036988964953256)
,p_associated_item=>wwv_flow_api.id(8035316304947980)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13934461479796060)
,p_validation_name=>'Val_State_UPD'
,p_validation_sequence=>130
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if(:P2_STATE_PROVINCE_UPD IS NULL and (:P2_COUNTRY_UPD = ''US'' or :P2_COUNTRY_UPD = ''CA'')) then ',
'return false ; ',
'end if;',
'',
'end;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'This field is required.'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_api.id(5851244540291285)
,p_associated_item=>wwv_flow_api.id(109982483750247686)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13935242347796067)
,p_validation_name=>'Background English Validation'
,p_validation_sequence=>140
,p_validation=>'P2_BACKGROUND_INFO_UPD'
,p_validation2=>unistr('[^\05D0-\05EA\005Cu0590-\005Cu05FF]+$')
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Please use English'
,p_when_button_pressed=>wwv_flow_api.id(7121138307177364)
,p_associated_item=>wwv_flow_api.id(7120964604177363)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(638827952788557491)
,p_validation_name=>'Israel Engagement is not null'
,p_validation_sequence=>150
,p_validation=>'P2_ISRAEL_ENGAGE_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required.'
,p_when_button_pressed=>wwv_flow_api.id(638826430345557475)
,p_associated_item=>wwv_flow_api.id(638826301329557474)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(638828117034557492)
,p_validation_name=>'Communal Organizations is not null'
,p_validation_sequence=>160
,p_validation=>'P2_COMMUNAL_ORGS_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required.'
,p_when_button_pressed=>wwv_flow_api.id(638826430345557475)
,p_associated_item=>wwv_flow_api.id(638826808927557479)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(661614856781156543)
,p_validation_name=>'Shaliach Engagement is not null'
,p_validation_sequence=>170
,p_validation=>'P2_SHALIACH_ENGAGE_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required.'
,p_when_button_pressed=>wwv_flow_api.id(638826430345557475)
,p_associated_item=>wwv_flow_api.id(638826695055557478)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(109982994979247691)
,p_name=>'open community location edit rg'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(109982124441247682)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(109983118731247692)
,p_event_id=>wwv_flow_api.id(109982994979247691)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(109982164591247683)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2921859873439743)
,p_event_id=>wwv_flow_api.id(109982994979247691)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(43399301187478567)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5850963371291282)
,p_name=>'close community location edit rg'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(109982913819247690)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5851098802291283)
,p_event_id=>wwv_flow_api.id(5850963371291282)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(43399301187478567)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5851177787291284)
,p_event_id=>wwv_flow_api.id(5850963371291282)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(109982164591247683)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3079677615383865)
,p_name=>'open community type edit rg'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(3079467359383863)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10094466617645977)
,p_event_id=>wwv_flow_api.id(3079677615383865)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_SELECTED_TYPE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select hoi.ORG_INFORMATION12 CARD_TEXT',
'  from hr_organization_information hoi',
' where hoi.org_information_context = ''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'   AND hoi.org_information12 is not null',
'   and hoi.organization_id = :P0_ORG_ID'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10081183218282659)
,p_event_id=>wwv_flow_api.id(3079677615383865)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_OTHER'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Other'' CARD_TEXT',
'  from hr_organization_information hoi',
' where hoi.org_information_context = ''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'   AND hoi.org_information12 = 7',
'   and hoi.organization_id = :P0_ORG_ID'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3079792898383866)
,p_event_id=>wwv_flow_api.id(3079677615383865)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(5851434366291286)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3079909781383867)
,p_event_id=>wwv_flow_api.id(3079677615383865)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3078777628383856)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8032986551947957)
,p_event_id=>wwv_flow_api.id(3079677615383865)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_VALID_MSG'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5851778084291290)
,p_name=>'close community type edit rg'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(5851668838291289)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5851926204291291)
,p_event_id=>wwv_flow_api.id(5851778084291290)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(5851434366291286)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5851978377291292)
,p_event_id=>wwv_flow_api.id(5851778084291290)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3078777628383856)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2921946182439744)
,p_name=>'hide edit regions'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2922114358439745)
,p_event_id=>wwv_flow_api.id(2921946182439744)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(109982164591247683)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7119497776177348)
,p_event_id=>wwv_flow_api.id(2921946182439744)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(5851434366291286)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7120730790177360)
,p_event_id=>wwv_flow_api.id(2921946182439744)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7119778606177351)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(638827817466557489)
,p_event_id=>wwv_flow_api.id(2921946182439744)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(638826164441557473)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7120059913177354)
,p_name=>'open community background edit rg'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7120023389177353)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7121191719177365)
,p_event_id=>wwv_flow_api.id(7120059913177354)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P2_BACKGROUND_INFO_UPD := :P2_BACKGROUND_INFO;'
,p_attribute_02=>'P2_BACKGROUND_INFO'
,p_attribute_03=>'P2_BACKGROUND_INFO_UPD'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7120222485177355)
,p_event_id=>wwv_flow_api.id(7120059913177354)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7119778606177351)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7120306544177356)
,p_event_id=>wwv_flow_api.id(7120059913177354)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7119632556177349)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7120430952177357)
,p_name=>'close community background edit rg'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7119929080177352)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7120523277177358)
,p_event_id=>wwv_flow_api.id(7120430952177357)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7119632556177349)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7120614823177359)
,p_event_id=>wwv_flow_api.id(7120430952177357)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7119778606177351)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(638827064014557482)
,p_name=>'open Israel engagement edit rg'
,p_event_sequence=>81
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(638826071320557472)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(638827340155557484)
,p_event_id=>wwv_flow_api.id(638827064014557482)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(638826164441557473)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(638827393253557485)
,p_event_id=>wwv_flow_api.id(638827064014557482)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(638825906261557470)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(638827515746557486)
,p_name=>'close Israel engagement edit rg'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(638826486362557476)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(638827559517557487)
,p_event_id=>wwv_flow_api.id(638827515746557486)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(638825906261557470)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(638827662622557488)
,p_event_id=>wwv_flow_api.id(638827515746557486)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(638826164441557473)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8034703946947974)
,p_name=>'OnClickType1'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(10092228277645954)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8034824158947975)
,p_event_id=>wwv_flow_api.id(8034703946947974)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_SELECTED_TYPE, P2_OTHER,P2_OTHER_DESC'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P2_SELECTED_TYPE").setValue(1);',
'apex.item("P2_OTHER").setValue(null);',
'apex.item("P2_OTHER_DESC").setValue(null);'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10080263876282650)
,p_event_id=>wwv_flow_api.id(8034703946947974)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_OTHER_DESC'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8034945373947977)
,p_name=>'OnClickType2'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(10092339620645955)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8035106126947978)
,p_event_id=>wwv_flow_api.id(8034945373947977)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_SELECTED_TYPE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Set new value',
'apex.item("P2_SELECTED_TYPE").setValue(2);',
'apex.item("P2_OTHER").setValue(null);',
'apex.item("P2_OTHER_DESC").setValue(null);'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10080375208282651)
,p_event_id=>wwv_flow_api.id(8034945373947977)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_OTHER_DESC'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10092532804645957)
,p_name=>'OnClickType3'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(10092377945645956)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10092597973645958)
,p_event_id=>wwv_flow_api.id(10092532804645957)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_SELECTED_TYPE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P2_SELECTED_TYPE").setValue(3);',
'apex.item("P2_OTHER").setValue(null);',
'apex.item("P2_OTHER_DESC").setValue(null);'))
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
 p_id=>wwv_flow_api.id(10080498606282652)
,p_event_id=>wwv_flow_api.id(10092532804645957)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_OTHER_DESC'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10092988571645962)
,p_name=>'OnClickType4'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(10092738295645959)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10093060729645963)
,p_event_id=>wwv_flow_api.id(10092988571645962)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_SELECTED_TYPE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P2_SELECTED_TYPE").setValue(4);',
'apex.item("P2_OTHER").setValue(null);',
'apex.item("P2_OTHER_DESC").setValue(null);'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10080635584282653)
,p_event_id=>wwv_flow_api.id(10092988571645962)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_OTHER_DESC'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10093219573645964)
,p_name=>'OnClickType5'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(10092774799645960)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10093244915645965)
,p_event_id=>wwv_flow_api.id(10093219573645964)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_SELECTED_TYPE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P2_SELECTED_TYPE").setValue(5);',
'apex.item("P2_OTHER").setValue(null);',
'apex.item("P2_OTHER_DESC").setValue(null);'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10080666618282654)
,p_event_id=>wwv_flow_api.id(10093219573645964)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_OTHER_DESC'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10093383977645966)
,p_name=>'OnClickType6'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(10092901152645961)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10093442983645967)
,p_event_id=>wwv_flow_api.id(10093383977645966)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_SELECTED_TYPE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P2_SELECTED_TYPE").setValue(6);',
'apex.item("P2_OTHER").setValue(null);',
'apex.item("P2_OTHER_DESC").setValue(null);'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10080750448282655)
,p_event_id=>wwv_flow_api.id(10093383977645966)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_OTHER_DESC'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13437561967403377)
,p_name=>'hide desc other'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_OTHER'
,p_condition_element=>'P2_OTHER'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Other'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13437698192403378)
,p_event_id=>wwv_flow_api.id(13437561967403377)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_OTHER_DESC'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13437905285403380)
,p_event_id=>wwv_flow_api.id(13437561967403377)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_OTHER_DESC'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13437770250403379)
,p_event_id=>wwv_flow_api.id(13437561967403377)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_SELECTED_TYPE'
,p_attribute_01=>'apex.item("P2_SELECTED_TYPE").setValue(null);'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7895341075679691)
,p_name=>'active federation'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_SELECTED_TYPE'
,p_condition_element=>'P2_SELECTED_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7895405394679692)
,p_event_id=>wwv_flow_api.id(7895341075679691)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(10092228277645954)
,p_attribute_01=>'active-btn'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10091049096645943)
,p_event_id=>wwv_flow_api.id(7895341075679691)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(10092228277645954)
,p_attribute_01=>'active-btn'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10091233694645944)
,p_name=>'active hub'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_SELECTED_TYPE'
,p_condition_element=>'P2_SELECTED_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10091245887645945)
,p_event_id=>wwv_flow_api.id(10091233694645944)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(10092339620645955)
,p_attribute_01=>'active-btn'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10091415504645946)
,p_event_id=>wwv_flow_api.id(10091233694645944)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(10092339620645955)
,p_attribute_01=>'active-btn'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10091849456645951)
,p_name=>'active school'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_SELECTED_TYPE'
,p_condition_element=>'P2_SELECTED_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'3'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10092038040645952)
,p_event_id=>wwv_flow_api.id(10091849456645951)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(10092377945645956)
,p_attribute_01=>'active-btn'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10092093684645953)
,p_event_id=>wwv_flow_api.id(10091849456645951)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(10092377945645956)
,p_attribute_01=>'active-btn'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10093567152645968)
,p_name=>'active Synagogue'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_SELECTED_TYPE'
,p_condition_element=>'P2_SELECTED_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'4'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10093661089645969)
,p_event_id=>wwv_flow_api.id(10093567152645968)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(10092738295645959)
,p_attribute_01=>'active-btn'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10093832807645970)
,p_event_id=>wwv_flow_api.id(10093567152645968)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(10092738295645959)
,p_attribute_01=>'active-btn'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10093938189645971)
,p_name=>'active jcc'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_SELECTED_TYPE'
,p_condition_element=>'P2_SELECTED_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'5'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10094028610645972)
,p_event_id=>wwv_flow_api.id(10093938189645971)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(10092774799645960)
,p_attribute_01=>'active-btn'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10094142186645973)
,p_event_id=>wwv_flow_api.id(10093938189645971)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(10092774799645960)
,p_attribute_01=>'active-btn'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10094181716645974)
,p_name=>'active youth move'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_SELECTED_TYPE'
,p_condition_element=>'P2_SELECTED_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'6'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10094280194645975)
,p_event_id=>wwv_flow_api.id(10094181716645974)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(10092901152645961)
,p_attribute_01=>'active-btn'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10094375569645976)
,p_event_id=>wwv_flow_api.id(10094181716645974)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(10092901152645961)
,p_attribute_01=>'active-btn'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10083341498282680)
,p_name=>'OnChangeCountry'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_COUNTRY_UPD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10083751208282685)
,p_event_id=>wwv_flow_api.id(10083341498282680)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_STATE_PROVINCE_UPD'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10083421031282681)
,p_event_id=>wwv_flow_api.id(10083341498282680)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_CITY_UPD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13935553037796071)
,p_name=>'open community location edit rg hide '
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(109982124441247682)
,p_condition_element=>'P2_COUNTRY'
,p_triggering_condition_type=>'NOT_IN_LIST'
,p_triggering_expression=>'United States, Canada'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13935644319796072)
,p_event_id=>wwv_flow_api.id(13935553037796071)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_STATE_PROVINCE_UPD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13936022026796075)
,p_name=>'OnChangeCountryHideState'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_COUNTRY_UPD'
,p_condition_element=>'P2_COUNTRY_UPD'
,p_triggering_condition_type=>'NOT_IN_LIST'
,p_triggering_expression=>'US, CA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13936045343796076)
,p_event_id=>wwv_flow_api.id(13936022026796075)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_STATE_PROVINCE_UPD'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13936220203796077)
,p_event_id=>wwv_flow_api.id(13936022026796075)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_STATE_PROVINCE_UPD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13936271347796078)
,p_name=>'hide state '
,p_event_sequence=>260
,p_condition_element=>'P2_COUNTRY'
,p_triggering_condition_type=>'NOT_IN_LIST'
,p_triggering_expression=>'United States, Canada'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13936389177796079)
,p_event_id=>wwv_flow_api.id(13936271347796078)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_STATE_PROVINCE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(29126594849102966)
,p_name=>'CliclOnNextStep'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(2923000685439754)
,p_condition_element=>'P2_COMM_TYPE_DESC'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29126715222102967)
,p_event_id=>wwv_flow_api.id(29126594849102966)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect(''f?p=&APP_ID.:3:&SESSION.'');'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29126811721102968)
,p_event_id=>wwv_flow_api.id(29126594849102966)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Please Update Comunity Type'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(21932911478071576)
,p_name=>'disable progress bar tabs'
,p_event_sequence=>280
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21932955084071577)
,p_event_id=>wwv_flow_api.id(21932911478071576)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
' //   alert($(''.community-type-value'').text());',
'    if (($(''.community-type-value'').text() == ''Please Update'' || $(''.community-type-value'').text() == '''') && $v(''P2_OTHER'') == '''' && $v(''P2_OTHER_DESC'') == '''') {',
'        $(''#progressBar li:not(.is-active)'').each(function() {',
'            $(this).find(''a'').attr(''href'',''#'')',
'                   .css({"cursor":"default","background-color":"transparent !important","border":"none !important"});',
'            $(this).find(''a span'').css({"color":"gray"});',
'        });',
'    }',
'});',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3081255439383881)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'save_community_location'
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
'											   ,p_org_information9 => :P2_COMMUNITY_NAME_UPD',
'                                               ,p_org_information14 => :P2_MAIN_AIRPORT_UPD',
'                                               ,p_org_information15 => :P2_SECONDARY_AIRPORT_UPD);',
'  ',
'  end;',
'     ',
'  ',
' Begin    ',
'  ',
'    Select t.object_version_number, org_information_id',
'      Into l_ovn, l_org_information_id ',
'      From Hr_Organization_Information t',
'     Where t.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOMER_ADDR''',
'       and t.ORGANIZATION_ID = :P0_ORG_ID;',
'   ',
'   --XX_MY_UTILS.add_msg('' 220 Page 2 Community Location P2_CITY_UPD ''||:P2_CITY_UPD);  ',
'   --XX_MY_UTILS.add_msg('' 220 Page 2 Community Location P2_COUNTRY_UPD ''||:P2_COUNTRY_UPD);  ',
'   --XX_MY_UTILS.add_msg('' 220 Page 2 Community Location P2_STATE_PROVINCE_UPD ''||:P2_STATE_PROVINCE_UPD);  ',
'',
'	      ',
'            ',
'   hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                               ,p_object_version_number => l_ovn',
'                                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_ADDR''',
'                                               ,p_org_information_id => l_org_information_id',
'											   ,p_org_information1 => :P2_COUNTRY_UPD',
'											   ,p_org_information2 => :P2_CITY_UPD   -- city',
'                                               ,p_org_information3 => :P2_ADDRESS_UPD -- Address_line',
'                                               ,p_org_information4 => :P2_STATE_PROVINCE_UPD --state',
'                                               ,p_org_information5 => :P2_ZIP_CODE_UPD);  --zip_code ',
'                                               ',
'     EXCEPTION when no_data_found then ',
'                                            ',
'      XX_MY_UTILS.add_msg(''ERROR 220 Page 2 Community Location Update ''||SQLERRM);  ',
'		    ',
'		       hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                          ,p_object_version_number => l_ovn',
'                          ,p_org_info_type_code =>  ''JAFI_HR_SHLICHUT_CUSTOMER_ADDR''',
'                          ,p_org_information_id => l_org_information_id',
'						  ,p_org_information1  => :P2_COUNTRY_UPD',
'                          ,p_org_information2  => :P2_CITY_UPD',
'                          ,p_org_information3  => :P2_ADDRESS_UPD ',
'                          ,p_org_information4    => :P2_STATE_PROVINCE_UPD',
'                          ,p_org_information5    => :P2_ZIP_CODE_UPD  ',
'                          ,p_organization_id   => :P0_ORG_ID );                          ',
'                                                                          ',
'     End ;                                          ',
'',
'',
'commit;',
'',
'exception  when others then',
'    XX_MY_UTILS.add_msg(''Main ERROR 220 Page 2 Community Location ''||SQLERRM); ',
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
,p_process_when_button_id=>wwv_flow_api.id(5851244540291285)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8034296327947970)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'save_community_type'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'p_status varchar2(200):='''';',
'l_ovn pls_integer;',
'l_org_information_id Pls_Integer;',
'',
'v_comm_type varchar2(1000);',
'l_media_id  Pls_Integer;',
'',
'',
'begin',
'',
'',
'fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800); ',
'',
'',
'  Begin ',
'  ',
'  ',
'    Select t.object_version_number, org_information_id',
'      Into l_ovn, l_org_information_id ',
'      From Hr_Organization_Information t',
'     Where t.org_information_context = ''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'       and t.ORGANIZATION_ID = :P0_ORG_ID;',
'       ',
'       if (:P2_OTHER_DESC is not null or :P2_OTHER is not null) THEN ',
'         :P2_SELECTED_TYPE := 7;',
'         l_media_id:= JAFI_IRC_EIT_UTILS.create_short_text(:P2_OTHER_DESC);',
'         XX_MY_UTILS.add_msg('' 220 Page 2 Community Type l_media_id  ''||l_media_id  );  ',
' ',
'       else',
'         l_media_id:=Null;',
'       end if;',
'       ',
'       ',
'        hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                               ,p_object_version_number => l_ovn',
'                                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'                                               ,p_org_information_id => l_org_information_id',
'											   ,p_org_information12 => :P2_SELECTED_TYPE ',
'                                               ,p_org_information19 => l_media_id  );',
'  ',
'  end;',
' ',
' commit;',
'  ',
'  ',
'exception  when others then',
'    XX_MY_UTILS.add_msg(''Main ERROR 220 Page 2 Community Type ''||SQLERRM); ',
'',
'     apex_error.add_error (',
'              p_message          => ''Failed to update =>''||SQLERRM,   p_display_location => apex_error.c_inline_in_notification );',
'    ',
'    ',
'end;',
' ',
' ',
' '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(8036988964953256)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10081481020282662)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'save_community_background'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'p_status varchar2(200):='''';',
'l_ovn pls_integer;',
'l_org_information_id Pls_Integer;',
'',
'v_comm_type varchar2(1000);',
'l_media_id  Pls_Integer;',
'',
'',
'begin',
'',
'',
'fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800);  ',
'',
'  ',
'    Select t.object_version_number, org_information_id',
'      Into l_ovn, l_org_information_id ',
'      From Hr_Organization_Information t',
'     Where t.org_information_context = ''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'       and t.ORGANIZATION_ID = :P0_ORG_ID;',
'       ',
'               if (:P2_BACKGROUND_INFO_UPD is not null ) THEN ',
'               ',
'                  l_media_id:= JAFI_IRC_EIT_UTILS.create_short_text(:P2_BACKGROUND_INFO_UPD);',
'               else',
'               l_media_id := null;',
'               ',
'               end if;',
'     ',
'                hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                                       ,p_object_version_number => l_ovn',
'                                                       ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'                                                       ,p_org_information_id => l_org_information_id',
'                                                       ,p_org_information7 => l_media_id  );',
'             ',
' commit;',
'    ',
'exception  when others then',
'    XX_MY_UTILS.add_msg(''Main ERROR 220 Page 2 Community BackGround ''||SQLERRM); ',
'',
'     apex_error.add_error (',
'              p_message          => ''Failed to update =>''||SQLERRM,   p_display_location => apex_error.c_inline_in_notification );',
'    ',
'    ',
'end;',
' ',
' ',
' '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(7121138307177364)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(638827867107557490)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'save_Israel_engagement'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_ovn pls_integer;',
'    l_org_information_id pls_integer;',
'    l_israel_engage_media_id  pls_integer;',
'    l_shaliach_engage_media_id  pls_integer;',
'begin',
'    fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800);  ',
'    ',
'    if :P2_ISRAEL_ENGAGE_UPD is not null THEN l_israel_engage_media_id:= JAFI_IRC_EIT_UTILS.create_short_text(:P2_ISRAEL_ENGAGE_UPD);',
'    else l_israel_engage_media_id := null;',
'    end if;',
'    ',
'    if :P2_SHALIACH_ENGAGE_UPD is not null THEN l_shaliach_engage_media_id:= JAFI_IRC_EIT_UTILS.create_short_text(:P2_SHALIACH_ENGAGE_UPD);',
'    else l_shaliach_engage_media_id := null;',
'    end if;',
'  ',
'    Select t.object_version_number, org_information_id',
'    Into l_ovn, l_org_information_id ',
'    From Hr_Organization_Information t',
'    Where t.org_information_context = ''JAFI_HR_SHLICHUT_ORG_DETAILS2''',
'          and t.ORGANIZATION_ID = :P0_ORG_ID;',
'    ',
'    hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                               ,p_object_version_number => l_ovn',
'                                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_ORG_DETAILS2''',
'                                               ,p_org_information_id => l_org_information_id',
'											   ,p_org_information1 => l_israel_engage_media_id',
'											   ,p_org_information2 => :P2_COMMUNAL_ORGS_UPD',
'                                               ,p_org_information3 => l_shaliach_engage_media_id);',
'                                               ',
'    EXCEPTION when no_data_found then ',
'        hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                          ,p_object_version_number => l_ovn',
'                          ,p_org_info_type_code =>  ''JAFI_HR_SHLICHUT_ORG_DETAILS2''',
'                          ,p_org_information_id => l_org_information_id',
'                          ,p_org_information1 => l_israel_engage_media_id',
'                          ,p_org_information2 => :P2_COMMUNAL_ORGS_UPD',
'                          ,p_org_information3 => l_shaliach_engage_media_id',
'                          ,p_organization_id   => :P0_ORG_ID);                          ',
'                                                                          ',
'    commit;',
'end;',
' ',
' ',
' '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(638826430345557475)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3081531173383883)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Session Sate'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(109981896676247680)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set items'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'----',
'',
'--community_type_desc',
'  Select  count(1)',
'  Into :P2_COMM_TYPE_DESC ',
'   From hr_organization_information ',
'  Where org_information_context = ''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'    and ORG_INFORMATION12 is not null    ',
'            And organization_id =	:P0_ORG_ID;',
'           ',
'--community background',
'  Select  dst1.short_text',
'   into :P2_BACKGROUND_INFO',
'           From hr_organization_information t1,',
'                 fnd_documents_short_text dst1',
'            Where t1.org_information_context = ''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'            And dst1.media_id(+) = to_number(t1.ORG_INFORMATION7 )',
'            And t1.organization_id = :P0_ORG_ID;',
'            ',
'            ',
' end ;',
' '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10083573517282683)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>' Set Community Location'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--community location',
'begin',
'select decode(hoi2.org_information9,',
'              NULL,',
'              haou.name,',
'              hoi2.org_information9) Name,',
'       decode(hoi1.org_information1,',
'              NULL,',
'              ''Please update'',',
'              jafi_hr_utils.US_Decode_Lookup(''JAFI_HR_COUNTRIES'',',
'                                             hoi1.org_information1)) country,',
'       hoi1.org_information1 country_upd,',
'  ------     ',
'       decode(hoi1.ORG_INFORMATION4,',
'              NULL,',
'              ''Please update'',',
'              jafi_hr_utils.US_Decode_Lookup(''JAFI_HR_GLOBAL_STATES'',',
'                                             hoi1.ORG_INFORMATION4)) state,',
'       hoi1.ORG_INFORMATION4 state_upd,',
'       ',
'       decode(hoi1.ORG_INFORMATION2,',
'              NULL,',
'              ''Please update'',',
'              jafi_hr_utils.US_Decode_Lookup(''JAFI_HR_CITIES'',',
'                                             hoi1.ORG_INFORMATION2)) city,',
'       hoi1.ORG_INFORMATION2 city_upd,',
'       ',
'       decode(hoi1.ORG_INFORMATION3,',
'              NULL,',
'              ''Please update'',',
'              hoi1.ORG_INFORMATION3) Address_line,',
'       decode(hoi1.ORG_INFORMATION5,',
'              NULL,',
'              ''Please update'',',
'              hoi1.ORG_INFORMATION5) zip_code,',
'       hoi1.org_information1,',
'       hoi1.ORG_INFORMATION2,',
'       hoi2.ORG_INFORMATION14,',
'       hoi2.ORG_INFORMATION15,',
'       decode(hoi2.ORG_INFORMATION14, NULL, ''Please update'', jafi_hr_utils.US_Decode_Lookup(''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'', hoi2.ORG_INFORMATION14)) main_airport,',
'       decode(hoi2.ORG_INFORMATION15, NULL, ''Please update'', jafi_hr_utils.US_Decode_Lookup(''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'', hoi2.ORG_INFORMATION15)) sec_airport',
'  into :P2_COMMUNITY_NAME,',
'       :P2_COUNTRY,',
'       :P2_COUNTRY_UPD,',
'       ',
'       :P2_STATE_PROVINCE,',
'       :P2_STATE_PROVINCE_UPD,',
'      ',
'       :P2_CITY,',
'       :P2_CITY_UPD,',
'       :P2_ADDRESS,',
'       :P2_ZIP_CODE,',
'       :P2_COUNTRY_UPD,',
'       :P2_CITY_UPD,',
'       :P2_MAIN_AIRPORT_UPD,',
'       :P2_SECONDARY_AIRPORT_UPD,',
'       :P2_MAIN_AIRPORT,',
'       :P2_SEC_AIRPORT',
'  from hr_all_organization_units   haou,',
'       hr_organization_information hoi1,',
'       hr_organization_information hoi2',
' where haou.organization_id = :P0_ORG_ID',
'   and haou.organization_id = hoi1.organization_id',
'   and hoi1.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOMER_ADDR''',
'   and haou.organization_id = hoi2.organization_id',
'   and hoi2.org_information_context = ''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'   AND HOI2.ORG_INFORMATION1 IN (''SSH'',''COMM'',''AMI'')',
'   and haou.business_group_id = 4088;',
'  ',
'exception',
'when no_data_found then',
'    NULL;',
'end;',
'',
'',
'',
'IF :P2_COMMUNITY_NAME like ''%update%'' then',
'   :P2_COMMUNITY_NAME_UPD := null;',
'ELSE',
'    :P2_COMMUNITY_NAME_UPD := :P2_COMMUNITY_NAME;',
'END IF;',
'----',
'',
'IF :P2_ADDRESS like ''%update%'' then',
'   :P2_ADDRESS_UPD := null;',
'ELSE',
':P2_ADDRESS_UPD := :P2_ADDRESS;',
'END IF;',
'----',
'IF :P2_ZIP_CODE like ''%update%'' then',
'   :P2_ZIP_CODE_UPD := null;',
'ELSE',
':P2_ZIP_CODE_UPD := :P2_ZIP_CODE;',
'END IF;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(661614943997156544)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Israel Engagement'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_israel_engage_media_id  pls_integer;',
'    l_shaliach_engage_media_id  pls_integer;',
'    l_communal_orgs_tag varchar2(250);',
'    l_communal_orgs_tags varchar2(4000);',
'begin',
'    Select org_information1, org_information2 a, org_information2 b, org_information3',
'    Into l_israel_engage_media_id, :P2_COMMUNAL_ORGS_UPD, :P2_COMMUNAL_ORGS, l_shaliach_engage_media_id',
'    From Hr_Organization_Information t',
'    Where t.org_information_context = ''JAFI_HR_SHLICHUT_ORG_DETAILS2''',
'          and t.ORGANIZATION_ID = :P0_ORG_ID;',
'          ',
'    if l_israel_engage_media_id > 0 then',
'    begin',
'        Select  dst1.short_text a, dst1.short_text b',
'        into :P2_ISRAEL_ENGAGE, :P2_ISRAEL_ENGAGE_UPD',
'        from fnd_documents_short_text dst1',
'',
'        where dst1.media_id = l_israel_engage_media_id;',
'        ',
'        exception when no_data_found then null;',
'    end;',
'    end if;',
'    ',
'    if l_shaliach_engage_media_id > 0 then',
'    begin',
'        Select  dst1.short_text a, dst1.short_text b',
'        into :P2_SHALIACH_ENGAGE, :P2_SHALIACH_ENGAGE_UPD',
'        from fnd_documents_short_text dst1',
'        where dst1.media_id = l_shaliach_engage_media_id;',
'        ',
'        exception when no_data_found then null;',
'    end;',
'    end if;',
'    ',
'    FOR lookup_code IN',
'    (',
'        SELECT trim(regexp_substr(:P2_COMMUNAL_ORGS, ''[^:]+'', 1, LEVEL)) val',
'        FROM dual',
'        CONNECT BY LEVEL <= regexp_count(:P2_COMMUNAL_ORGS, '':'') + 1',
'    )',
'    LOOP',
'    begin',
'        Select	trim(flv.Meaning ||'' ''|| FLV.DESCRIPTION)',
'        into    l_communal_orgs_tag',
'        From 	FND_LOOKUP_VALUES flv',
'        Where 	flv.Lookup_Type = ''JAFI_HR_KEHILATI_ISRAEL_ENGAGE''',
'                and flv.lookup_code = lookup_code.val and flv.enabled_flag = ''Y'' AND flv.LANGUAGE=''US'';',
'        ',
'        l_communal_orgs_tags := l_communal_orgs_tags || ',
'            ''<div style="color: #172B54; background: #F9F7F4; font-size: 16px; font-weight: 500; line-height: 35px; height: 31px; width: auto; padding-left: 15px; padding-right: 15px; margin: 8px 16px 8px 0;" class="t-Card">'' ||',
'	            ''<span>'' || l_communal_orgs_tag || ''</span></div>'';',
'        ',
'        exception when no_data_found then null;',
'    end;',
'    END LOOP;',
'    ',
'    :P2_COMMUNAL_ORGS_TAGS := l_communal_orgs_tags;',
'    ',
'    exception when no_data_found then null;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
null;
wwv_flow_api.component_end;
end;
/
