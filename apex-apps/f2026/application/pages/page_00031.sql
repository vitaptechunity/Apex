prompt --application/pages/page_00031
begin
--   Manifest
--     PAGE: 00031
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
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'Amitey Israel Information General'
,p_alias=>'AMITEY-ISRAEL-INFORMATION-GENERAL'
,p_step_title=>'Amitey Israel Information General'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_IMAGES#select2-extension.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function displayCommunalOrgTags() {',
'    $(''#P31_COMMUNAL_ORGS_CONTAINER .info-tags-container'').html($v(''P31_COMMUNAL_ORGS_TAGS''));',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    //$("#P31_MAIN_AIRPORT").select2();',
'    //$("#P31_COMMUNAL_ORGS_UPD").select2();',
'',
'    $("#P31_COMMUNAL_ORGS_UPD").select2({',
'        templateResult: formatState_P31_COMMUNAL_ORGS_UPD,',
'        templateSelection: formatSelected_P31_COMMUNAL_ORGS_UPD,',
'        placeholder: "Search",',
'        maximumSelectionLength: 100,',
'        closeOnSelect: false',
'    });',
'',
'    function formatSelected_P31_COMMUNAL_ORGS_UPD(data) {',
'        if (!data.id) {',
'            return data.text;',
'        }',
'        ',
'        var selectedValues = $("#P31_COMMUNAL_ORGS_UPD").val() || [];',
'        const selectedCount = selectedValues.length;',
'',
'        const options = $("#P31_COMMUNAL_ORGS_UPD option").map(function () {',
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
'    function formatState_P31_COMMUNAL_ORGS_UPD(state) {',
'        if (!state.id) {',
'            return state.text;',
'        }',
'',
'        var $state = $(''<div class="rf-input-checkbox-wrap"><span class="rf-checkbox-mark"></span> '' + state.text + "</div>");',
'        return $state;',
'    }',
'',
'    $("#P31_COMMUNAL_ORGS_UPD").on("change", function () {',
'        $("#P31_COMMUNAL_ORGS_UPD option").each(function () {',
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
'#P31_BACKGROUND_INFO_UPD_LABEL{',
'    color: #172B54 !important;',
'    font-weight: 500 !important;',
'    font-size: 16px !important;',
'    line-height: 24px;',
'}',
'',
'.apex-item-checkbox input+label:after {',
'    content: ''\e007'';',
'    color: white;',
'}',
'',
'.t-standard-optional-itemWrapper .checkbox_group input:checked+label:before, .t-standard-optional-itemWrapper .radio_group input:checked+label:before, .t-standard-optional-itemWrapper .apex-item-group input:focus+label:before, .t-standard-optional-it'
||'emWrapper .checkbox_group input:focus:checked+label:before, .t-standard-optional-itemWrapper .radio_group input:focus:checked+label:before {',
'    box-shadow: none;',
'}',
'',
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
'div .select2-container {',
'    /*max-width: 249px !important;*/',
'    width: 100% !important;',
'}',
'',
'.select2-search__field {',
'    margin-top: 0 !important;',
'    width: stretch !important;',
'    margin-left: 6px;',
'    margin-right: 6px;',
'}',
'',
'#P31_OTHER_DESC_LABEL {',
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
'#P31_OTHER_DESC_CONTAINER .required-content {',
'    vertical-align: top;   ',
'}',
'',
'.t-Form-fieldContainer.is-required .t-Form-label::after {',
'    content: none;',
'}',
'',
'#P31_ISRAEL_ENGAGE_LABEL,',
'#P31_SHALIACH_ENGAGE_LABEL,',
'#P31_COMMUNAL_ORGS_LABEL {',
'    line-height: 22px;',
'}',
'    ',
'#P31_ISRAEL_ENGAGE_UPD_LABEL,',
'#P31_SHALIACH_ENGAGE_UPD_LABEL,',
'#P31_COMMUNAL_ORGS_UPD_LABEL {',
'    line-height: 22px;    ',
'    font-weight: 500 !important;',
'    color: #172B54 !important;',
'    text-wrap: balance;',
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
'#P31_COMMUNAL_ORGS_UPD_CONTAINER .select2 {',
'    width: 100% !important;',
'    max-width: 100% !important;',
'}',
'',
'#P31_COMMUNAL_ORGS_UPD_CONTAINER .select2-selection__choice {',
'    margin-top: 8px !important;',
'}',
'',
'#P31_COMMUNAL_ORGS_CONTAINER .t-Form-itemText--pre {',
'    width: 100%;',
'}',
'',
'#P31_COMMUNAL_ORGS {',
'    display: none;',
'}',
'',
'.info-tags-container {',
'    display: flex;',
'    flex-wrap: wrap;',
'}',
'',
'',
'@media (max-width: 575px),@media (max-width: 640px) {    ',
'    /*.country-col {',
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
'    }*/',
'    ',
'    #P31_OTHER_DESC_LABEL {',
'        width: 200px;',
'        line-height: 20px;',
'    }',
'    ',
'    .apex-item-option {',
'        width: 100% !important;',
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
,p_last_upd_yyyymmddhh24miss=>'20261014124613'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1140670180569661556)
,p_name=>'<!-- Organization Type View --><div class="t-rounded-div-title"> <img  src="#APP_IMAGES#ic_loyalty_48px.svg" ><span>Organization Type</span></div>'
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
'with data as',
'(',
'    select  hoi.ORG_INFORMATION2 code,',
'            hoi.ORG_INFORMATION3 other',
'    from    hr_organization_information hoi',
'    where   hoi.org_information_context = ''JAFI_HR_SHLICHUT_CAMPUS_INFO''',
'            AND hoi.org_information2 is not null',
'            and hoi.organization_id = :P0_ORG_ID',
')',
'select * from (',
'select distinct',
'    --trim(regexp_substr(d.code, ''[^:]+'', 1, levels.column_value)) as code,',
'    case when trim(regexp_substr(d.code, ''[^:]+'', 1, levels.column_value)) != ''8'' then',
'              jafi_hr_utils.US_Decode_Lookup(''JAFI_HR_AMITY_ISRAEL_ORG_TYPE'', trim(regexp_substr(d.code, ''[^:]+'', 1, levels.column_value)))',
'         else (select  dst1.short_text',
'               from  fnd_documents_short_text dst1',
'               where dst1.media_id(+) = to_number(d.other))',
'         end CARD_TEXT',
'from ',
'  data d,',
'  table(cast(multiset(select level from dual connect by  level <= length (regexp_replace(d.code, ''[^:]+''))  + 1) as sys.OdciNumberList)) levels',
'order by code',
')',
'',
'UNION',
'',
'SELECT ''<span style="font-size:18px; font-weight: 500; color:#E84C26 ;  line-height: 24px;">Please Update</span>'' CARD_TEXT  ',
'FROM dual',
'',
'WHERE NOT EXISTS (',
'    SELECT 1 ',
'    FROM hr_organization_information hoi',
'    WHERE hoi.org_information_context = ''JAFI_HR_SHLICHUT_CAMPUS_INFO''',
'      AND hoi.organization_id = :P0_ORG_ID',
'      AND hoi.org_information2 IS NOT NULL)',
'      ',
''))
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
 p_id=>wwv_flow_api.id(646223989023363279)
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
 p_id=>wwv_flow_api.id(1143442837307568986)
,p_plug_name=>'<!-- Organization Type Edit--><div class="t-rounded-div-title"> <img  src="#APP_IMAGES#ic_loyalty_48px.svg" ><span>Organization Type</span></div>'
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
 p_id=>wwv_flow_api.id(1144711035497455049)
,p_plug_name=>'<!-- Organization Background View--><div class="t-rounded-div-title"> <img  src="#APP_IMAGES#ic_chrome_reader_mode_48px.svg" ><span>Organization Background</span></div>'
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
 p_id=>wwv_flow_api.id(1144711181547455051)
,p_plug_name=>'<!-- Organization Background Edit--><div class="t-rounded-div-title"> <img  src="#APP_IMAGES#ic_chrome_reader_mode_48px.svg" ><span>Organization Background</span></div>'
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
 p_id=>wwv_flow_api.id(1180989944797756259)
,p_plug_name=>'PrograssBar'
,p_region_name=>'progressBar'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall:t-Form--noPadding:margin-top-md:margin-bottom-lg'
,p_component_template_options=>'#DEFAULT#:t-Tabs--simple'
,p_plug_template=>wwv_flow_api.id(1572085619207170)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(646723375322392460)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(2125342479223692)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1180989974632756260)
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
 p_id=>wwv_flow_api.id(1180990704128756267)
,p_plug_name=>'<!-- General Information View --><div class="t-rounded-div-title"> <img  src="#APP_IMAGES#ic-place.svg" ><span>General Information</span></div>'
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
 p_id=>wwv_flow_api.id(1247573567532525383)
,p_plug_name=>'<!-- General Information Edit--><div class="t-rounded-div-title"><img  src="#APP_IMAGES#ic-place.svg" ><span>General Information</span></div>'
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
 p_id=>wwv_flow_api.id(1740492648288281886)
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
 p_id=>wwv_flow_api.id(1799022894540516146)
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
 p_id=>wwv_flow_api.id(1799025428802517221)
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
 p_id=>wwv_flow_api.id(6350708432660224248)
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
 p_id=>wwv_flow_api.id(668831570135045311)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1799025428802517221)
,p_button_name=>'save_israel_engagement'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(5843813714039240)
,p_button_image_alt=>'Save Changes'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(646225468568363290)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1143442837307568986)
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
 p_id=>wwv_flow_api.id(646238085009363299)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1247573567532525383)
,p_button_name=>'save_community_location'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(5843813714039240)
,p_button_image_alt=>'Save Changes'
,p_button_position=>'BOTTOM'
,p_button_css_classes=>'dror'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(646231290848363293)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1144711181547455051)
,p_button_name=>'save_community_background'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(5843813714039240)
,p_button_image_alt=>'Save Changes'
,p_button_position=>'BOTTOM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(646233127193363295)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1180989974632756260)
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
 p_id=>wwv_flow_api.id(646233501154363296)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1180989974632756260)
,p_button_name=>'PrevStep'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'<img src="#APP_IMAGES#ic-back.svg"/>Back'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'prev-btn'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(646224393082363280)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1140670180569661556)
,p_button_name=>'CommunityTypeOpenEditRG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2910527574307047)
,p_button_image_alt=>'#APP_IMAGES#ic-edit.png'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(646228289668363291)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1143442837307568986)
,p_button_name=>'CommunityTypeCloseEditRG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2910527574307047)
,p_button_image_alt=>'#APP_IMAGES#ic-x-close.png'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(646231701173363293)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1144711181547455051)
,p_button_name=>'CommunityBackgroundCloseEditRG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2910527574307047)
,p_button_image_alt=>'#APP_IMAGES#ic-x-close.png'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(646234151187363297)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1180990704128756267)
,p_button_name=>'CommunityLocationOpenEditRG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2910527574307047)
,p_button_image_alt=>'#APP_IMAGES#ic-edit.png'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(646238536562363299)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1247573567532525383)
,p_button_name=>'CommunityLocationCloseEditRG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2910527574307047)
,p_button_image_alt=>'#APP_IMAGES#ic-x-close.png'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(668829262579044244)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1799022894540516146)
,p_button_name=>'IsraelEngagementOpenEditRG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2910527574307047)
,p_button_image_alt=>'#APP_IMAGES#ic-edit.png'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(646230229110363293)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1144711035497455049)
,p_button_name=>'CommunityBackgroundOpenEditRG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2910527574307047)
,p_button_image_alt=>'#APP_IMAGES#ic-edit.png'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(668832023042045311)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1799025428802517221)
,p_button_name=>'IsraelEngagementCloseEditRG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2910527574307047)
,p_button_image_alt=>'#APP_IMAGES#ic-x-close.png'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(638823713033557448)
,p_name=>'P31_UNIVERSITY_NAME_V'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1180990704128756267)
,p_prompt=>'University Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'community-name-col'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(638823803848557449)
,p_name=>'P31_UNIVERSITY_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1247573567532525383)
,p_prompt=>'University Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(646224783154363285)
,p_name=>'P31_COMM_TYPE_DESC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1140670180569661556)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(646229067408363291)
,p_name=>'P31_ORGANIZATION_TYPE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(1143442837307568986)
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOV_AMI_ORG_TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select flv.lookup_code r, flv.meaning d',
'from fnd_lookup_values flv',
'where flv.lookup_type = ''JAFI_HR_AMITY_ISRAEL_ORG_TYPE'' and flv.language = ''US''',
'order by r'))
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(646229517065363292)
,p_name=>'P31_OTHER_DESC'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(1143442837307568986)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
' Select  dst1.short_text',
'           From hr_organization_information t1,',
'                 fnd_documents_short_text dst1',
'            Where t1.org_information_context = ''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'            And dst1.media_id(+) = to_number(t1.ORG_INFORMATION19 )',
'            And t1.organization_id = :P0_ORG_ID',
'            '))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Please specify your other Organization Type'
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
 p_id=>wwv_flow_api.id(646230543096363293)
,p_name=>'P31_BACKGROUND_INFO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1144711035497455049)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(18523912527015802)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(646232093170363294)
,p_name=>'P31_BACKGROUND_INFO_UPD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1144711181547455051)
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
 p_id=>wwv_flow_api.id(646234614269363297)
,p_name=>'P31_ORGANIZATION_NAME_V'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1180990704128756267)
,p_prompt=>'Organization Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column_css_classes=>'community-name-col'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(646235037983363297)
,p_name=>'P31_COUNTRY_V'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1180990704128756267)
,p_prompt=>'Country'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column_css_classes=>'country-col'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(646235349565363297)
,p_name=>'P31_STATE_PROVINCE_V'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1180990704128756267)
,p_prompt=>'State/Province'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column_css_classes=>'state-province-col'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(646235753068363297)
,p_name=>'P31_CITY_V'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1180990704128756267)
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
 p_id=>wwv_flow_api.id(646236149665363298)
,p_name=>'P31_ADDRESS_V'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(1180990704128756267)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(646236543813363298)
,p_name=>'P31_ZIP_CODE_V'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(1180990704128756267)
,p_prompt=>'Zip Code'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>6
,p_grid_column_css_classes=>'zip-code-col'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(646237009761363298)
,p_name=>'P31_MAIN_AIRPORT_V'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(1180990704128756267)
,p_prompt=>'Main Airport'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
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
 p_id=>wwv_flow_api.id(646237375891363299)
,p_name=>'P31_SEC_AIRPORT_V'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(1180990704128756267)
,p_prompt=>'Secondary Airport'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(646238895454363300)
,p_name=>'P31_ORGANIZATION_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1247573567532525383)
,p_prompt=>'Organization Name'
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
 p_id=>wwv_flow_api.id(646239244746363300)
,p_name=>'P31_COUNTRY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1247573567532525383)
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
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(646239642918363301)
,p_name=>'P31_STATE_PROVINCE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1247573567532525383)
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
,p_lov_cascade_parent_items=>'P31_COUNTRY'
,p_ajax_items_to_submit=>'P31_COUNTRY'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'state-province-upd-col'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(646240044668363301)
,p_name=>'P31_CITY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(1247573567532525383)
,p_prompt=>'City'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CITIES_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  flv.meaning, flv.LOOKUP_CODE         ',
'from FND_LOOKUP_VALUES_VL flv',
'where flv.LOOKUP_TYPE = ''JAFI_HR_CITIES''',
'and (flv.ATTRIBUTE1 = :P2_COUNTRY_UPD or flv.ATTRIBUTE1 = :P31_COUNTRY);'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P31_COUNTRY'
,p_ajax_items_to_submit=>'P31_COUNTRY'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(646240468105363301)
,p_name=>'P31_ADDRESS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(1247573567532525383)
,p_prompt=>'Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(646240856770363302)
,p_name=>'P31_ZIP_CODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(1247573567532525383)
,p_prompt=>'Zip Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_grid_column_css_classes=>'zip-code-upd-col'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(646241273888363302)
,p_name=>'P31_MAIN_AIRPORT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(1247573567532525383)
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
 p_id=>wwv_flow_api.id(646241666875363302)
,p_name=>'P31_SECONDARY_AIRPORT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(1247573567532525383)
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
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(668829687472044247)
,p_name=>'P31_ISRAEL_ENGAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1799022894540516146)
,p_prompt=>'What is impactful Israel engagement in your view?'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(668830096521044250)
,p_name=>'P31_COMMUNAL_ORGS_TAGS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1799022894540516146)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(668830460202044250)
,p_name=>'P31_COMMUNAL_ORGS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1799022894540516146)
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
 p_id=>wwv_flow_api.id(668830853240044251)
,p_name=>'P31_SHALIACH_ENGAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1799022894540516146)
,p_prompt=>'Please highlight up to 3 initiatives, projects, or areas of practice you hope the Shaliach will lead to significantly advance Israel Engagement in your community?'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(668832386084045312)
,p_name=>'P31_ISRAEL_ENGAGE_UPD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1799025428802517221)
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
 p_id=>wwv_flow_api.id(668832830435045314)
,p_name=>'P31_COMMUNAL_ORGS_UPD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1799025428802517221)
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
 p_id=>wwv_flow_api.id(668833166837045315)
,p_name=>'P31_SHALIACH_ENGAGE_UPD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1799025428802517221)
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(646242778871363323)
,p_validation_name=>'Organization Name is not null'
,p_validation_sequence=>10
,p_validation=>'P31_ORGANIZATION_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Required field'
,p_when_button_pressed=>wwv_flow_api.id(646238085009363299)
,p_associated_item=>wwv_flow_api.id(646238895454363300)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(646245586837363336)
,p_validation_name=>'Organization Name English Validation'
,p_validation_sequence=>20
,p_validation=>'P31_ORGANIZATION_NAME'
,p_validation2=>'^[a-zA-Z0-9.,"''-:; ]*$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Please use English'
,p_when_button_pressed=>wwv_flow_api.id(646238085009363299)
,p_associated_item=>wwv_flow_api.id(646238895454363300)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(638823881556557450)
,p_validation_name=>'University Name is not null'
,p_validation_sequence=>40
,p_validation=>'P31_UNIVERSITY_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Required field'
,p_when_button_pressed=>wwv_flow_api.id(646238085009363299)
,p_associated_item=>wwv_flow_api.id(638823803848557449)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(638824031678557451)
,p_validation_name=>'University Name English Validation'
,p_validation_sequence=>50
,p_validation=>'P31_UNIVERSITY_NAME'
,p_validation2=>'^[a-zA-Z0-9.,"''-:; ]*$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Please use English'
,p_when_button_pressed=>wwv_flow_api.id(646238085009363299)
,p_associated_item=>wwv_flow_api.id(638823803848557449)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(646243149767363335)
,p_validation_name=>'Country is not null'
,p_validation_sequence=>60
,p_validation=>'P31_COUNTRY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Required field'
,p_when_button_pressed=>wwv_flow_api.id(646238085009363299)
,p_associated_item=>wwv_flow_api.id(646239244746363300)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(646245181835363336)
,p_validation_name=>'State\Province is not null'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P31_STATE_PROVINCE IS NULL and :P31_COUNTRY in (''US'', ''CA'') then ',
'    return false; ',
'end if;',
'return true;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Required field'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_api.id(646238085009363299)
,p_associated_item=>wwv_flow_api.id(646239642918363301)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(646243595642363335)
,p_validation_name=>'City is no null'
,p_validation_sequence=>80
,p_validation=>'P31_CITY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Required field'
,p_when_button_pressed=>wwv_flow_api.id(646238085009363299)
,p_associated_item=>wwv_flow_api.id(646240044668363301)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(646243980465363335)
,p_validation_name=>'Address is not null'
,p_validation_sequence=>90
,p_validation=>'P31_ADDRESS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Required field'
,p_when_button_pressed=>wwv_flow_api.id(646238085009363299)
,p_associated_item=>wwv_flow_api.id(646240468105363301)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(646245944403363336)
,p_validation_name=>'Address English Validation'
,p_validation_sequence=>100
,p_validation=>'P31_ADDRESS'
,p_validation2=>unistr('^[^\05D0-\05EA]*$')
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Please use English'
,p_when_button_pressed=>wwv_flow_api.id(646238085009363299)
,p_associated_item=>wwv_flow_api.id(646240468105363301)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(646244437942363335)
,p_validation_name=>'ZIP Code is not null'
,p_validation_sequence=>110
,p_validation=>'P31_ZIP_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Required field'
,p_when_button_pressed=>wwv_flow_api.id(646238085009363299)
,p_associated_item=>wwv_flow_api.id(646240856770363302)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(646246413941363336)
,p_validation_name=>'ZIP Code English Validation'
,p_validation_sequence=>120
,p_validation=>'P31_ZIP_CODE'
,p_validation2=>unistr('^[^\05D0-\05EA]*$')
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Please use English and Numbers'
,p_when_button_pressed=>wwv_flow_api.id(646238085009363299)
,p_associated_item=>wwv_flow_api.id(646240856770363302)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(646247595492363337)
,p_validation_name=>'Main Airport Required'
,p_validation_sequence=>130
,p_validation=>'P31_MAIN_AIRPORT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Required field'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_api.id(646238085009363299)
,p_associated_item=>wwv_flow_api.id(646241273888363302)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(638824120962557452)
,p_validation_name=>'Secondary Airport Required'
,p_validation_sequence=>140
,p_validation=>'P31_SECONDARY_AIRPORT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Required field'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_api.id(646238085009363299)
,p_associated_item=>wwv_flow_api.id(646241666875363302)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(646244775846363335)
,p_validation_name=>'VaComTypeOtherDesc'
,p_validation_sequence=>150
,p_validation=>'P31_OTHER_DESC'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required.'
,p_validation_condition=>'instr(:P31_ORGANIZATION_TYPE, ''8'') > 0'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_when_button_pressed=>wwv_flow_api.id(646225468568363290)
,p_associated_item=>wwv_flow_api.id(646229517065363292)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(646246838205363336)
,p_validation_name=>'Other English Validation'
,p_validation_sequence=>160
,p_validation=>'P31_OTHER_DESC'
,p_validation2=>'^[a-zA-Z0-9.,"''-:; ]*$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Please use English'
,p_validation_condition=>'instr(:P31_ORGANIZATION_TYPE, ''8'') > 0'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_when_button_pressed=>wwv_flow_api.id(646225468568363290)
,p_associated_item=>wwv_flow_api.id(646229517065363292)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(646247204178363336)
,p_validation_name=>'Background English Validation'
,p_validation_sequence=>170
,p_validation=>'P31_BACKGROUND_INFO_UPD'
,p_validation2=>unistr('[^\05D0-\05EA\005Cu0590-\005Cu05FF]+$')
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Please use English'
,p_when_button_pressed=>wwv_flow_api.id(646231290848363293)
,p_associated_item=>wwv_flow_api.id(646232093170363294)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(668928620981052540)
,p_validation_name=>'Israel Engagement is not null'
,p_validation_sequence=>180
,p_validation=>'P31_ISRAEL_ENGAGE_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required.'
,p_when_button_pressed=>wwv_flow_api.id(668831570135045311)
,p_associated_item=>wwv_flow_api.id(668832386084045312)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(668928871627053615)
,p_validation_name=>'Communal Organizations is not null'
,p_validation_sequence=>190
,p_validation=>'P31_COMMUNAL_ORGS_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required.'
,p_when_button_pressed=>wwv_flow_api.id(668831570135045311)
,p_associated_item=>wwv_flow_api.id(668832830435045314)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(668929146562054486)
,p_validation_name=>'Shaliach Engagement is not null'
,p_validation_sequence=>200
,p_validation=>'P31_SHALIACH_ENGAGE_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required.'
,p_when_button_pressed=>wwv_flow_api.id(668831570135045311)
,p_associated_item=>wwv_flow_api.id(668833166837045315)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(646250297333363340)
,p_name=>'open community location edit rg'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(646234151187363297)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646250832436363341)
,p_event_id=>wwv_flow_api.id(646250297333363340)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1247573567532525383)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646251286494363342)
,p_event_id=>wwv_flow_api.id(646250297333363340)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1180990704128756267)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(646251721648363342)
,p_name=>'close community location edit rg'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(646238536562363299)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646252190149363342)
,p_event_id=>wwv_flow_api.id(646251721648363342)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1180990704128756267)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646252718803363343)
,p_event_id=>wwv_flow_api.id(646251721648363342)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1247573567532525383)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(646253112688363343)
,p_name=>'open community type edit rg'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(646224393082363280)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646254568354363344)
,p_event_id=>wwv_flow_api.id(646253112688363343)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1143442837307568986)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646255097704363344)
,p_event_id=>wwv_flow_api.id(646253112688363343)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1140670180569661556)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646255563043363344)
,p_event_id=>wwv_flow_api.id(646253112688363343)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_VALID_MSG'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(646255986616363344)
,p_name=>'close community type edit rg'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(646228289668363291)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646256446723363344)
,p_event_id=>wwv_flow_api.id(646255986616363344)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1143442837307568986)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646257022141363345)
,p_event_id=>wwv_flow_api.id(646255986616363344)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1140670180569661556)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(646257440118363345)
,p_name=>'hide edit regions'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646257934544363345)
,p_event_id=>wwv_flow_api.id(646257440118363345)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1247573567532525383)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646258432633363345)
,p_event_id=>wwv_flow_api.id(646257440118363345)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1143442837307568986)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646258915172363345)
,p_event_id=>wwv_flow_api.id(646257440118363345)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1144711181547455051)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(666162049727744366)
,p_event_id=>wwv_flow_api.id(646257440118363345)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1799025428802517221)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(646259282206363346)
,p_name=>'open community background edit rg'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(646230229110363293)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646259748239363346)
,p_event_id=>wwv_flow_api.id(646259282206363346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P31_BACKGROUND_INFO_UPD := :P31_BACKGROUND_INFO;'
,p_attribute_02=>'P31_BACKGROUND_INFO'
,p_attribute_03=>'P31_BACKGROUND_INFO_UPD'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646260331687363346)
,p_event_id=>wwv_flow_api.id(646259282206363346)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1144711181547455051)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646260768445363346)
,p_event_id=>wwv_flow_api.id(646259282206363346)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1144711035497455049)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(646261221707363347)
,p_name=>'close community background edit rg'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(646231701173363293)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646261722934363347)
,p_event_id=>wwv_flow_api.id(646261221707363347)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1144711035497455049)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646262217212363347)
,p_event_id=>wwv_flow_api.id(646261221707363347)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1144711181547455051)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(646271082805363351)
,p_name=>'hide desc other'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31_ORGANIZATION_TYPE'
,p_condition_element=>'P31_ORGANIZATION_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'8'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646271560775363351)
,p_event_id=>wwv_flow_api.id(646271082805363351)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_OTHER_DESC'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646272070639363352)
,p_event_id=>wwv_flow_api.id(646271082805363351)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_OTHER_DESC'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(646281351001363356)
,p_name=>'OnChangeCountry'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31_COUNTRY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646281844134363356)
,p_event_id=>wwv_flow_api.id(646281351001363356)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_STATE_PROVINCE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646282400756363356)
,p_event_id=>wwv_flow_api.id(646281351001363356)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_CITY'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(646282757597363356)
,p_name=>'open community location edit rg hide '
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(646234151187363297)
,p_condition_element=>'P31_COUNTRY_V'
,p_triggering_condition_type=>'NOT_IN_LIST'
,p_triggering_expression=>'United States, Canada'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646283292315363356)
,p_event_id=>wwv_flow_api.id(646282757597363356)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_STATE_PROVINCE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(646283704013363356)
,p_name=>'OnChangeCountryHideState'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31_COUNTRY'
,p_condition_element=>'P31_COUNTRY'
,p_triggering_condition_type=>'NOT_IN_LIST'
,p_triggering_expression=>'US,CA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646284168699363357)
,p_event_id=>wwv_flow_api.id(646283704013363356)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_STATE_PROVINCE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646284703596363357)
,p_event_id=>wwv_flow_api.id(646283704013363356)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_STATE_PROVINCE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(646285127773363357)
,p_name=>'hide state '
,p_event_sequence=>280
,p_condition_element=>'P31_COUNTRY_V'
,p_triggering_condition_type=>'NOT_IN_LIST'
,p_triggering_expression=>'United States, Canada'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646285584108363357)
,p_event_id=>wwv_flow_api.id(646285127773363357)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_STATE_PROVINCE_V'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(646285971935363357)
,p_name=>'CliclOnNextStep'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(646233127193363295)
,p_condition_element=>'P31_COMM_TYPE_DESC'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646286511018363357)
,p_event_id=>wwv_flow_api.id(646285971935363357)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect(''f?p=&APP_ID.:32:&SESSION.'');'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646286993329363358)
,p_event_id=>wwv_flow_api.id(646285971935363357)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Please Update Organization Type'
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(646287379841363358)
,p_name=>'disable progress bar tabs'
,p_event_sequence=>300
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(646287879547363358)
,p_event_id=>wwv_flow_api.id(646287379841363358)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
' //   alert($(''.community-type-value'').text());',
'    if (($(''.community-type-value'').text() == ''Please Update'' || $(''.community-type-value'').text() == '''') && $v(''P31_ORGANIZATION_TYPE'') == '''' && $v(''P31_OTHER_DESC'') == '''') {',
'        $(''#progressBar li:not(.is-active)'').each(function() {',
'            $(this).find(''a'').attr(''href'',''#'')',
'                   .css({"cursor":"default","background-color":"transparent !important","border":"none !important"});',
'            $(this).find(''a span'').css({"color":"gray"});',
'        });',
'    }',
'});',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(669529800369622450)
,p_name=>'open Israel engagement edit rg'
,p_event_sequence=>330
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(668829262579044244)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(669530167834622451)
,p_event_id=>wwv_flow_api.id(669529800369622450)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1799025428802517221)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(669530649220622451)
,p_event_id=>wwv_flow_api.id(669529800369622450)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1799022894540516146)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(669531069168623765)
,p_name=>'close Israel engagement edit rg'
,p_event_sequence=>340
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(668832023042045311)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(669531498013623765)
,p_event_id=>wwv_flow_api.id(669531069168623765)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1799022894540516146)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(669531985755623765)
,p_event_id=>wwv_flow_api.id(669531069168623765)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1799025428802517221)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(646247942537363337)
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
'											   ,p_org_information9 => :P31_ORGANIZATION_NAME',
'                                               ,p_org_information14 => :P31_MAIN_AIRPORT',
'                                               ,p_org_information15 => :P31_SECONDARY_AIRPORT);',
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
'',
'	      ',
'            ',
'   hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                               ,p_object_version_number => l_ovn',
'                                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_ADDR''',
'                                               ,p_org_information_id => l_org_information_id',
'											   ,p_org_information1 => :P31_COUNTRY',
'											   ,p_org_information2 => :P31_CITY   -- city',
'                                               ,p_org_information3 => :P31_ADDRESS -- Address_line',
'                                               ,p_org_information4 => :P31_STATE_PROVINCE --state',
'                                               ,p_org_information5 => :P31_ZIP_CODE);  --zip_code ',
'                                               ',
'     EXCEPTION when no_data_found then ',
'                                            ',
'      XX_MY_UTILS.add_msg(''ERROR 220 Page 31 Community Location Update ''||SQLERRM);  ',
'		    ',
'		       hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                          ,p_object_version_number => l_ovn',
'                          ,p_org_info_type_code =>  ''JAFI_HR_SHLICHUT_CUSTOMER_ADDR''',
'                          ,p_org_information_id => l_org_information_id',
'						  ,p_org_information1  => :P31_COUNTRY',
'                          ,p_org_information2  => :P31_CITY',
'                          ,p_org_information3  => :P31_ADDRESS',
'                          ,p_org_information4    => :P31_STATE_PROVINCE',
'                          ,p_org_information5    => :P31_ZIP_CODE ',
'                          ,p_organization_id   => :P0_ORG_ID );                          ',
'                                                                          ',
'     End ; ',
'     ',
'     ',
'    Begin    ',
'  ',
'    Select t.object_version_number, org_information_id',
'      Into l_ovn, l_org_information_id ',
'      From Hr_Organization_Information t',
'     Where t.org_information_context = ''JAFI_HR_SHLICHUT_CAMPUS_INFO''',
'       and t.ORGANIZATION_ID = :P0_ORG_ID;',
'            ',
'    hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                               ,p_object_version_number => l_ovn',
'                                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CAMPUS_INFO''',
'                                               ,p_org_information_id => l_org_information_id',
'											   ,p_org_information1 => :P31_UNIVERSITY_NAME);',
'                                               ',
'     EXCEPTION when no_data_found then ',
'		       hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                          ,p_object_version_number => l_ovn',
'                          ,p_org_info_type_code =>  ''JAFI_HR_SHLICHUT_CAMPUS_INFO''',
'                          ,p_org_information_id => l_org_information_id',
'						  ,p_org_information1  => :P31_UNIVERSITY_NAME',
'                          ,p_organization_id   => :P0_ORG_ID);                          ',
'     End ; ',
'',
'commit;',
'',
'exception  when others then',
'     XX_MY_UTILS.add_msg(''Main ERROR 220 Page 31 Community Location''||SQLERRM); ',
'     apex_error.add_error (p_message => ''Failed to update =>''||SQLERRM,   p_display_location => apex_error.c_inline_in_notification );',
'end;',
' ',
'                 ',
'                 '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(646238085009363299)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(646248710128363338)
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
'begin',
'',
'  fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800); ',
'',
'  Begin ',
'',
'    Select t.object_version_number, org_information_id',
'      Into l_ovn, l_org_information_id ',
'      From Hr_Organization_Information t',
'     Where t.org_information_context = ''JAFI_HR_SHLICHUT_CAMPUS_INFO''',
'       and t.ORGANIZATION_ID = :P0_ORG_ID;',
'       ',
'       if :P31_OTHER_DESC is not null and instr(:P31_ORGANIZATION_TYPE, ''8'') > 0 THEN ',
'         l_media_id:= JAFI_IRC_EIT_UTILS.create_short_text(:P31_OTHER_DESC);',
'       else',
'         l_media_id:=Null;',
'       end if;',
'       ',
'        hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                               ,p_object_version_number => l_ovn',
'                                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CAMPUS_INFO''',
'                                               ,p_org_information_id => l_org_information_id',
'											   ,p_org_information2 => :P31_ORGANIZATION_TYPE',
'                                               ,p_org_information3 => l_media_id);',
'                                               ',
'       EXCEPTION when no_data_found then ',
'                                            ',
'		       hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                          ,p_object_version_number => l_ovn',
'                          ,p_org_info_type_code =>  ''JAFI_HR_SHLICHUT_CAMPUS_INFO''',
'                          ,p_org_information_id => l_org_information_id',
'						  ,p_org_information2 => :P31_ORGANIZATION_TYPE',
'                          ,p_org_information3 => l_media_id    ',
'                          ,p_organization_id   => :P0_ORG_ID );  ',
'  end;',
'',
'commit;',
'  ',
'exception  when others then',
'    apex_error.add_error(p_message => ''Failed to update =>''||SQLERRM, p_display_location => apex_error.c_inline_in_notification);',
'end;',
' ',
' ',
' '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(646225468568363290)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(646249088248363339)
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
'               if (:P31_BACKGROUND_INFO_UPD is not null ) THEN ',
'               ',
'                  l_media_id:= JAFI_IRC_EIT_UTILS.create_short_text(:P31_BACKGROUND_INFO_UPD);',
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
,p_process_when_button_id=>wwv_flow_api.id(646231290848363293)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(668929362987055640)
,p_process_sequence=>50
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
'    if :P31_ISRAEL_ENGAGE_UPD is not null THEN l_israel_engage_media_id:= JAFI_IRC_EIT_UTILS.create_short_text(:P31_ISRAEL_ENGAGE_UPD);',
'    else l_israel_engage_media_id := null;',
'    end if;',
'    ',
'    if :P31_SHALIACH_ENGAGE_UPD is not null THEN l_shaliach_engage_media_id:= JAFI_IRC_EIT_UTILS.create_short_text(:P31_SHALIACH_ENGAGE_UPD);',
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
'											   ,p_org_information2 => :P31_COMMUNAL_ORGS_UPD',
'                                               ,p_org_information3 => l_shaliach_engage_media_id);',
'                                               ',
'    EXCEPTION when no_data_found then ',
'        hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                          ,p_object_version_number => l_ovn',
'                          ,p_org_info_type_code =>  ''JAFI_HR_SHLICHUT_ORG_DETAILS2''',
'                          ,p_org_information_id => l_org_information_id',
'                          ,p_org_information1 => l_israel_engage_media_id',
'                          ,p_org_information2 => :P31_COMMUNAL_ORGS_UPD',
'                          ,p_org_information3 => l_shaliach_engage_media_id',
'                          ,p_organization_id   => :P0_ORG_ID);                          ',
'                                                                          ',
'    commit;',
'end;',
' ',
' ',
' '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(668831570135045311)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(646248253544363338)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Session Sate'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(646249893369363339)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set items'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'----',
'',
'begin',
'--community_type_desc',
'  Select  count(1)',
'  Into :P31_COMM_TYPE_DESC ',
'   From hr_organization_information ',
'  Where org_information_context = ''JAFI_HR_SHLICHUT_CAMPUS_INFO''',
'    and ORG_INFORMATION2 is not null And organization_id =	:P0_ORG_ID;',
'    exception when no_data_found then null;',
'end;',
'',
'begin',
'--community background',
'  Select  dst1.short_text',
'   into :P31_BACKGROUND_INFO',
'           From hr_organization_information t1,',
'                 fnd_documents_short_text dst1',
'            Where t1.org_information_context = ''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'            And dst1.media_id(+) = to_number(t1.ORG_INFORMATION7)',
'            And t1.organization_id = :P0_ORG_ID;',
'            ',
'exception when no_data_found then null;',
'end;           ',
'            ',
'            ',
' end ;',
' '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(690098636026958543)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Organization Type'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_ovn pls_integer;',
'    l_org_information_id pls_integer;',
'begin',
'    Select t.object_version_number, org_information_id, org_information2, ',
'           case when instr(org_information2, ''8'') > 0 then (',
'                     select dst1.short_text',
'                     from   fnd_documents_short_text dst1',
'                     where  dst1.media_id(+) = to_number(org_information3)) end other_desc  ',
'      Into l_ovn, l_org_information_id, :P31_ORGANIZATION_TYPE, :P31_OTHER_DESC',
'      From Hr_Organization_Information t',
'     Where t.org_information_context = ''JAFI_HR_SHLICHUT_CAMPUS_INFO''',
'       and t.ORGANIZATION_ID = :P0_ORG_ID;',
'       ',
'    exception when no_data_found then null;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(646249511863363339)
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
'       decode(hoi2.org_information9,',
'              NULL,',
'              haou.name,',
'              hoi2.org_information9) Name_upd,',
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
'       hoi1.ORG_INFORMATION3 address_upd,',
'       decode(hoi1.ORG_INFORMATION5,',
'              NULL,',
'              ''Please update'',',
'              hoi1.ORG_INFORMATION5) zip_code,',
'       hoi1.ORG_INFORMATION5 zip_upd,',
'       hoi2.ORG_INFORMATION14,',
'       hoi2.ORG_INFORMATION15,',
'       decode(hoi2.ORG_INFORMATION14, NULL, ''Please update'', jafi_hr_utils.US_Decode_Lookup(''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'', hoi2.ORG_INFORMATION14)) main_airport,',
'       decode(hoi2.ORG_INFORMATION15, NULL, ''Please update'', jafi_hr_utils.US_Decode_Lookup(''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'', hoi2.ORG_INFORMATION15)) sec_airport',
'  into :P31_ORGANIZATION_NAME,',
'       :P31_ORGANIZATION_NAME_V,',
'       :P31_COUNTRY_V,',
'       :P31_COUNTRY,',
'       :P31_STATE_PROVINCE_V,',
'       :P31_STATE_PROVINCE,',
'       :P31_CITY_V,',
'       :P31_CITY,',
'       :P31_ADDRESS_V,',
'       :P31_ADDRESS,',
'       :P31_ZIP_CODE_V,',
'       :P31_ZIP_CODE,',
'       :P31_MAIN_AIRPORT,',
'       :P31_SECONDARY_AIRPORT,',
'       :P31_MAIN_AIRPORT_V,',
'       :P31_SEC_AIRPORT_V',
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
'--community location',
'begin',
'select hoi3.ORG_INFORMATION1 university_name,',
'       hoi3.ORG_INFORMATION1 university_name_upd',
'  into :P31_UNIVERSITY_NAME_V,',
'       :P31_UNIVERSITY_NAME',
'  from hr_all_organization_units   haou,',
'       hr_organization_information hoi3 ',
' where haou.organization_id = :P0_ORG_ID',
'   and haou.organization_id = hoi3.organization_id',
'   and hoi3.org_information_context = ''JAFI_HR_SHLICHUT_CAMPUS_INFO''',
'   and haou.business_group_id = 4088;',
'  ',
'exception',
'when no_data_found then',
'    NULL;',
'end;',
'',
'',
'',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(669627725904687291)
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
'    Into l_israel_engage_media_id, :P31_COMMUNAL_ORGS_UPD, :P31_COMMUNAL_ORGS, l_shaliach_engage_media_id',
'    From Hr_Organization_Information t',
'    Where t.org_information_context = ''JAFI_HR_SHLICHUT_ORG_DETAILS2''',
'          and t.ORGANIZATION_ID = :P0_ORG_ID;',
'          ',
'    if l_israel_engage_media_id > 0 then',
'    begin',
'        Select  dst1.short_text a, dst1.short_text b',
'        into :P31_ISRAEL_ENGAGE, :P31_ISRAEL_ENGAGE_UPD',
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
'        into :P31_SHALIACH_ENGAGE, :P31_SHALIACH_ENGAGE_UPD',
'        from fnd_documents_short_text dst1',
'        where dst1.media_id = l_shaliach_engage_media_id;',
'        ',
'        exception when no_data_found then null;',
'    end;',
'    end if;',
'    ',
'    FOR lookup_code IN',
'    (',
'        SELECT trim(regexp_substr(:P31_COMMUNAL_ORGS, ''[^:]+'', 1, LEVEL)) val',
'        FROM dual',
'        CONNECT BY LEVEL <= regexp_count(:P31_COMMUNAL_ORGS, '':'') + 1',
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
'    :P31_COMMUNAL_ORGS_TAGS := l_communal_orgs_tags;',
'    ',
'    exception when no_data_found then null;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
