prompt --application/pages/page_00039
begin
--   Manifest
--     PAGE: 00039
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
 p_id=>39
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'Amitey Israel - New Shaliach'
,p_alias=>'AMITEY-ISRAEL-NEW-SHALIACH'
,p_step_title=>'Amitey Israel - New Shaliach'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_IMAGES#select2-extension.js'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function () {',
'    $("#P9_AREAS_OF_RESPONSIBILITY").select2({',
'        templateResult: formatState_P9_AREAS_OF_RESPONSIBILITY,',
'        templateSelection: formatSelected_P9_AREAS_OF_RESPONSIBILITY,',
'        placeholder: "Search",',
'        maximumSelectionLength: 5,',
'        closeOnSelect: false',
'    });',
'',
'    function formatSelected_P9_AREAS_OF_RESPONSIBILITY(data) {',
'        if (!data.id) {',
'            return data.text;',
'        }',
'',
'        const selectedValues = $("#P9_AREAS_OF_RESPONSIBILITY").val() || [];',
'        const selectedCount = selectedValues.length;',
'',
'        const options = $("#P9_AREAS_OF_RESPONSIBILITY option").map(function () {',
'            return { value: $(this).val(), text: $(this).text() };',
'        }).get();',
'',
'        const selectedTexts = selectedValues.map((value) => {',
'            const match = options.find((option) => option.value === value);',
'            return match ? match.text : value;',
'        });',
'',
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
'    function formatState_P9_AREAS_OF_RESPONSIBILITY(state) {',
'        if (!state.id) {',
'            return state.text;',
'        }',
'',
'        var $state = $(''<div class="rf-input-checkbox-wrap"><span class="rf-checkbox-mark"></span> '' + state.text + "</div>");',
'        return $state;',
'    }',
'',
'    $("#P9_AREAS_OF_RESPONSIBILITY").on("change", function () {',
'        $("#P9_AREAS_OF_RESPONSIBILITY option").each(function () {',
'            if ($(this).prop("selected")) {',
'                $(this).siblings(''input[type="checkbox"]'').prop("checked", true);',
'            }',
'        });',
'        ',
'        var ele = $(this);',
'        if(ele.val().length==5) {',
'          ele.select2(''close'');',
'        }',
'    });',
'    ',
'    $("#P9_TARGET_DEMOGRAPHICS").select2({',
'        templateResult: formatState_P9_TARGET_DEMOGRAPHICS,',
'        templateSelection: formatSelected_P9_TARGET_DEMOGRAPHICS,',
'        placeholder: "Search",',
'        maximumSelectionLength: 5,',
'        closeOnSelect: false',
'    });',
'',
'    function formatSelected_P9_TARGET_DEMOGRAPHICS(data) {',
'        if (!data.id) {',
'            return data.text;',
'        }',
'',
'        const selectedValues = $("#P9_TARGET_DEMOGRAPHICS").val() || [];',
'        const selectedCount = selectedValues.length;',
'',
'        const options = $("#P9_TARGET_DEMOGRAPHICS option").map(function () {',
'            return { value: $(this).val(), text: $(this).text() };',
'        }).get();',
'',
'        const selectedTexts = selectedValues.map((value) => {',
'            const match = options.find((option) => option.value === value);',
'            return match ? match.text : value;',
'        });',
'',
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
'    function formatState_P9_TARGET_DEMOGRAPHICS(state) {',
'        if (!state.id) {',
'            return state.text;',
'        }',
'',
'        var $state = $(''<div class="rf-input-checkbox-wrap"><span class="rf-checkbox-mark"></span> '' + state.text + "</div>");',
'        return $state;',
'    }',
'',
'    $("#P9_TARGET_DEMOGRAPHICS").on("change", function () {',
'        $("#P9_TARGET_DEMOGRAPHICS option").each(function () {',
'            if ($(this).prop("selected")) {',
'                $(this).siblings(''input[type="checkbox"]'').prop("checked", true);',
'            }',
'        });',
'        ',
'        var ele = $(this);',
'        if(ele.val().length==7) {',
'          ele.select2(''close'');',
'        }',
'    });',
'    ',
'    $("#P9_REQUIRED_SKILLS").select2({',
'        templateResult: formatState_P9_REQUIRED_SKILLS,',
'        templateSelection: formatSelected_P9_REQUIRED_SKILLS,',
'        placeholder: "Search",',
'        maximumSelectionLength: 7,',
'        closeOnSelect: false',
'    });',
'',
'    function formatSelected_P9_REQUIRED_SKILLS(data) {',
'        if (!data.id) {',
'            return data.text;',
'        }',
'',
'        const selectedValues = $("#P9_REQUIRED_SKILLS").val() || [];',
'        const selectedCount = selectedValues.length;',
'',
'        const options = $("#P9_REQUIRED_SKILLS option").map(function () {',
'            return { value: $(this).val(), text: $(this).text() };',
'        }).get();',
'',
'        const selectedTexts = selectedValues.map((value) => {',
'            const match = options.find((option) => option.value === value);',
'            return match ? match.text : value;',
'        });',
'',
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
'    function formatState_P9_REQUIRED_SKILLS(state) {',
'        if (!state.id) {',
'            return state.text;',
'        }',
'',
'        var $state = $(''<div class="rf-input-checkbox-wrap"><span class="rf-checkbox-mark"></span> '' + state.text + "</div>");',
'        return $state;',
'    }',
'',
'    $("#P9_REQUIRED_SKILLS").on("change", function () {',
'        $("#P9_REQUIRED_SKILLS option").each(function () {',
'            if ($(this).prop("selected")) {',
'                $(this).siblings(''input[type="checkbox"]'').prop("checked", true);',
'            }',
'        });',
'        ',
'        var ele = $(this);',
'        if(ele.val().length==7) {',
'          ele.select2(''close'');',
'        }',
'    });',
'    ',
'    ',
'    $("#P9_PREFERRED_SKILLS").select2({',
'        templateResult: formatState_P9_PREFERRED_SKILLS,',
'        templateSelection: formatSelected_P9_PREFERRED_SKILLS,',
'        placeholder: "Search",',
'        maximumSelectionLength: 3,',
'        closeOnSelect: false',
'    });',
'',
'    function formatSelected_P9_PREFERRED_SKILLS(data) {',
'        if (!data.id) {',
'            return data.text;',
'        }',
'',
'        const selectedValues = $("#P9_PREFERRED_SKILLS").val() || [];',
'        const selectedCount = selectedValues.length;',
'',
'        const options = $("#P9_PREFERRED_SKILLS option").map(function () {',
'            return { value: $(this).val(), text: $(this).text() };',
'        }).get();',
'',
'        const selectedTexts = selectedValues.map((value) => {',
'            const match = options.find((option) => option.value === value);',
'            return match ? match.text : value;',
'        });',
'',
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
'    function formatState_P9_PREFERRED_SKILLS(state) {',
'        if (!state.id) {',
'            return state.text;',
'        }',
'',
'        var $state = $(''<div class="rf-input-checkbox-wrap"><span class="rf-checkbox-mark"></span> '' + state.text + "</div>");',
'        return $state;',
'    }',
'',
'    $("#P9_PREFERRED_SKILLS").on("change", function () {',
'        $("#P9_PREFERRED_SKILLS option").each(function () {',
'            if ($(this).prop("selected")) {',
'                $(this).siblings(''input[type="checkbox"]'').prop("checked", true);',
'            }',
'        });',
'        ',
'        var ele = $(this);',
'        if(ele.val().length==3) {',
'          ele.select2(''close'');',
'        }',
'    });',
'});'))
,p_css_file_urls=>'#APP_IMAGES#select2-extension.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.home-link {',
'    display: block !important;',
'}',
'',
'.remove-pointer {',
'    cursor: default !important;',
'}',
'',
'.info-text {',
'    text-align: center;',
'    font-weight: 500;',
'    font-size: 16px;',
'    line-height: 22px;',
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
'.form-step {',
'    min-width: 710px;',
'    border-radius: 10px;',
'}',
'',
'.form-step .t-Region-header {',
'    border-radius: 10px;',
'}',
'',
'.text-as-label label {',
'    padding-bottom: 0 !important;',
'}',
'',
'.text-as-label input {',
'    padding-left: 0;',
'    padding-top: 0;',
'    border: none;',
'}',
'',
'.apex-item-wrapper--date-picker {',
'    width: 100%;',
'}',
'',
'.apex-item-wrapper--date-picker .t-Form-itemWrapper {',
'    width: 244px;',
'}',
'',
'.apex-item-wrapper--date-picker input {',
'    border-radius: 10px 0 0 10px !important;',
'}',
'',
'.apex-item-wrapper--date-picker button {',
'    height: 40.5px;',
'    border-radius: 0 10px 10px 0  !important;',
'    width: 53px !important;',
'    background-color: white;',
'}',
'',
'.apex-item-wrapper--date-picker .t-Form-error {',
'    padding-left: 0;',
'}',
'',
'.long-label label {',
'    line-height: 23px;',
'}',
'',
'.long-label .required-content {',
'    padding-top: 3px;',
'}',
'',
'.apex-item-group--textarea,',
'.apex-item-group--textarea textarea {',
'    width: 100%;',
'}',
'',
'#submitFormBtn {',
'    width: 274px;',
'    padding-top: 10px;',
'    margin-top: 40px;',
'    margin-bottom: 10px;',
'}',
'',
'.other-checkbox {',
'    padding-top: 7px;',
'    /*max-height: 30px;*/',
'}',
'',
'/*.other-checkbox .t-Form-itemWrapper {',
'    height: 25px;',
'}*/',
'',
'.checkbox-group .apex-item-checkbox input+label:after {',
'    content: ''\e007'' !important;',
'}',
'',
'.other-checkbox .apex-item-checkbox input+label:after {',
'    content: ''\e007'' !important;',
'}',
'',
'.other-checkbox .t-Form-labelContainer {',
'    display: none;',
'}',
'',
'.other-checkbox .t-Form-inputContainer {',
'    padding-bottom: 0;',
'}',
'/*',
'#P9_AREAS_OF_RESP_OTHER_DESC {',
'    width: 423px !important;',
'}',
'*/',
'.label-only {',
'    margin-top: 10px;',
'    padding-left: 0;',
'}',
'',
'.label-only .a-Icon.icon-asterisk {',
'    padding-top: 10px;',
'}',
'',
'.label-only .a-Icon.icon-asterisk:before {',
'    right: -3px;',
'    position: relative;',
'}',
'',
'.label-only .t-Form-labelContainer label {',
'    line-height: 23px;',
'}',
'',
'.other-checkbox-desc input {',
'    width: 280px;',
'}',
'',
'.skills-select2 .select2 {',
'    width: 100% !important;',
'}',
'',
'#newShaliachRequestsRegion {',
'    display: none;',
'}',
'',
'/* Thank you */',
'#thankYouContainer {',
'    display: none;',
'}',
'',
'#thankYouContainer .t-Body-contentInner {',
'    padding-top: 0;',
'}',
'',
'#thankYouContainer .t-Region-bodyWrap {',
'    height: 500px;',
'}',
'',
'#thankYouContainer .t-Region-body {',
'    min-height: 500px !important;',
'}',
'',
'#thankYouContainer .rf-thank-image {',
'    display: flex;',
'    justify-content: center;',
'    margin-block: 50px 60px;',
'}',
'',
'#thankYouContainer .rf-thank-message {',
'    font-family: ''Roboto'';',
'    font-size: 20px;',
'    font-weight: 500;',
'    line-height: 25px;',
'    text-align: center;',
'    color:   #172B54;',
'}',
'',
'#thankYouContainer .rf-thank-info {',
'    font-family: ''Roboto'';',
'    font-size: 16px;',
'    font-weight: 400;',
'    line-height: 20px;',
'    text-align: center;',
'    color:   #172B54;',
'}',
'',
'#thankYouContainer table[role="presentation"] {',
'    position: absolute;',
'    bottom: 20px;',
'    left: 0;',
'}',
'',
'#thankYouContainer table[role="presentation"] tr {',
'    display: flex;',
'    justify-content: center;',
'}',
'',
'#thankYouContainer #addAnotherRequestBtn {',
'    min-width: 274px !important;',
'}',
'',
'#thankYouContainer #addAnotherRequestBtn .t-Button-label {',
'    display: flex;',
'    justify-content: center;',
'    align-items: center;',
'}',
'',
'#thankYouContainer #addAnotherRequestBtn .t-Button-label span {',
'    margin-right: 5px;',
'    font-size: 23px;',
'    font-weight: 100;',
'}',
'',
'.mobile-br {',
'    display: none;',
'}',
'',
'#buttonsRegion {',
'    width: 847px;',
'    position: absolute;',
'    top: 0;',
'    margin-top: 16px;',
'}',
'',
'/* --------------------------------------- */',
'',
'.hidden {',
'    display: none;',
'}',
'',
'.html-group .apex-item-option label {',
'    line-height: 23px;',
'}',
'',
'.html-group {',
'    max-width: 530px;',
'}',
'',
'',
'.full-width,',
'.t-Region-headerItems,',
'#newShaliachStep1_heading,',
'#newShaliachStep2_heading,',
'#newShaliachStep3_heading {',
'    width: 100%;',
'}',
'',
'.form-step .t-Region-body {',
'    padding: 0;',
'}',
'',
'.sub-form-step {',
'    border: none;',
'    border-bottom: 1px solid rgba(0, 0, 0, .1);',
'}',
'',
'.sub-form-step .t-Region-body {',
'    padding: 10px 40px;',
'}',
'',
'.sub-form-step .t-Region-title {',
'    padding-left: 8px;',
'}',
'',
'.rf-select2-filter label,',
'.apex-item-wrapper--checkbox label {',
'    line-height: 23px;',
'}',
'',
'#P9_CORE_EXPERTISE_CONTAINER {',
'    margin-bottom: 20px;',
'}',
'',
'.form-buttons-container {',
'    display: flex;',
'    justify-content: space-between;',
'    align-items: center;',
'    height: 50px;',
'    padding: 0 20px;',
'    font-weight: 500;',
'    font-size: 18px;',
'    color: #172B54;',
'}',
'',
'.form-back-button-disabled {',
'    pointer-events: none;',
'    color: #A3A3A3;',
'					 ',
'}',
'',
'.form-back-button:hover,',
'.form-next-button:hover {',
'    cursor: pointer;',
'}',
'',
'.remove-bottom-border {',
'    border-bottom: none;',
'    box-shadow: none;',
'}',
'',
'.apex-item-group--rc input+label:before {',
'    top: 3px;',
'}',
'',
'.apex-item-checkbox input+label:after {',
'    top: 3px;',
'}',
'',
'.file-upload-btn {',
'    width: 100%;',
'    height: 103px;',
'    border-radius: 10px;',
'    border: 1px dashed #D9D9D9;',
'    cursor: pointer;',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    font-weight: 400;',
'    font-size: 16px;',
'    letter-spacing: 0%;',
'    text-align: center;',
'    flex-flow: column;',
'    gap: 10px;',
'}',
'',
'.file-upload-btn .file-upload-btn-text {',
'    color: #E84C26;',
'}',
'',
'',
'#buttonsRegion {',
'    width: 847px;',
'    position: absolute;',
'    top: 0;',
'    margin-top: 16px;',
'}',
'',
'#newShaliachBtn {',
'    position: relative;',
'    top: -1px;',
'}',
'',
'#P9_MASLUL .apex-item-option label {',
'    padding-top: 3px !important;',
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
'    #progressBar ul {',
'        width: 90vw;',
'    }',
'    ',
'    #progressBar li {',
'        width: 50% !important;',
'    }',
'    ',
'    #progressBar li a {',
'        padding-top: 0 !important;',
'        border-radius: 10px;',
'        height: 57px;',
'        justify-content: center;',
'        align-items: center;',
'        padding-bottom: 0;',
'        display: flex;',
'    }',
'    ',
'    #progressBar li a .t-Tabs-labell {',
'        font-size: 16px !important;',
'        font-weight: 600 !important;',
'    }',
'    ',
'    #newShaliachRequestsRegion {',
'        width: 90vw !important;',
'    }',
'    ',
'    #newShaliachRequestsRegion ul {',
'        justify-content: center !important;',
'						   ',
'    }',
'    ',
'    #newShaliachRequestsRegion ul li {',
'        min-width: auto !important;',
'        width: 100% !important;',
'        margin-bottom: 20px;',
'    }',
'    ',
'    .add-another-request-icon {',
'        width: auto !important;',
'    }',
'    ',
'    #newShaliachRequestsRegion ul li a,',
'    #newShaliachRequestsRegion ul li a > div:not(.add-another-request-container),',
'    #newShaliachRequestsRegion ul li span:not(.add-another-request-icon),',
'    #newShaliachRequestsRegion ul li span > div{',
'        width: 100% !important;',
'    }',
'    ',
'    #newShaliachContainer {',
'        width: 95vw !important;',
'        min-width: 95vw !important;',
'        border-radius: 20px !important;',
'    }',
'    ',
'    #newShaliachContainer .t-Region-header {',
'        border-radius: 20px !important;',
'    }',
'    ',
'    #newShaliachContainer .t-Region-body {',
'        padding-left: 30px;',
'        padding-right: 30px;',
'    }',
'    ',
'    #P9_AREAS_OF_RESPONSIBILITY_LABEL {',
'        line-height: 22px;',
'    }',
'    ',
'    .item-container {',
'        font-size: 16px !important;',
'					  ',
'    }',
'    ',
'    .request-sent-container {',
'        font-size: 14px !important;',
'        display: flex;',
'        justify-content: center;',
'        align-items: center;',
'    }',
'    ',
'    .add-another-request-container {',
'        	width: 246px !important;',
'        max-height: 46px !important;',
'        border-radius: 23px !important;',
'        color: white !important;',
'        background-color: #E84C26 !important;',
'        margin: auto;',
'    }',
'    ',
'    .add-another-request-container span {',
'        color: white !important;',
'    }',
'    ',
'    #P9_MASLUL .apex-item-option {',
'        width: 100% !important;',
'    }',
'    ',
'    #buttonsRegion {',
'        position: relative;',
'        margin-top: 0;',
'    }',
'    ',
'    #buttonsRegion table td {',
'        display: flex;',
'        justify-content: center;',
'        align-items: center;',
'    }',
'    ',
'    #backToHomeContainer {',
'        margin-top: 0 !important;',
'    }',
'    ',
'    .new-request-blank {',
'        max-height: 46px;									 ',
'    }',
'	',
'    	.form-step {',
'        width: 95vw !important;',
'        min-width: 95vw !important;',
'        border-radius: 20px !important;',
'    }',
'    ',
'    #P9_AREAS_OF_RESPONSIBILITY_LABEL {',
'        line-height: 22px;',
'    }',
'    ',
'    #buttonsRegion {',
'        position: relative;',
'        margin-top: 0;',
'    }',
'    ',
'    #buttonsRegion table td {',
'								   ',
'        display: flex;',
'        justify-content: center;',
'        align-items: center;',
'    }',
'    ',
'    #backToHomeContainer {',
'        margin-top: 0 !important;',
'    }',
'    ',
'    /* -------------------------- */',
'    ',
'    form > .t-Body {',
'        padding-bottom: 10px !important;',
'    }',
'    ',
'    .t-Body-title {',
'        border-bottom: none;',
'					  ',
'    }',
'    ',
'    .horizontal-radio-group .apex-item-grid-row {',
'        display: flex !important;',
'    }',
'    ',
'    .horizontal-radio-group .apex-item-option {',
'        width: auto !important;',
'    }',
'    ',
'    .apex-item-group--rc:not(.horizontal-radio-group) .apex-item-grid-row {',
'        display: flex !important;',
'        flex-flow: column !important;',
'    }',
'    ',
'    .apex-item-group--rc:not(.horizontal-radio-group) .apex-item-option {',
'        width: 100% !important;',
'    }',
'    ',
'    .checkbox_group .apex-item-grid-row {',
'        display: flex !important;',
'        flex-flow: column !important;',
'    }',
'    ',
'    .checkbox_group .apex-item-option {',
'        width: 100% !important;',
'    }',
'    ',
'    .checkbox_group .apex-item-option label {',
'        display: flex !important;',
'        flex-flow: column !important;',
'    }',
'    ',
'    .sub-form-step .t-Region-title {',
'        padding-left: 0;',
'    }',
'    ',
'    .sub-form-step .t-Region-body {',
'        padding: 10px 12px;',
'    }',
'}',
'',
'@media (max-width: 400px) {',
'    #newShaliachContainer .t-Region-body {',
'        padding-left: 20px !important;',
'        padding-right: 20px !important;',
'    }',
'}'))
,p_step_template=>wwv_flow_api.id(29244342218644)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DRORA'
,p_last_upd_yyyymmddhh24miss=>'20261018162334'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1237716002020770470)
,p_plug_name=>'Title'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(1491988443724117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Request Form'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1237716118985770471)
,p_plug_name=>'Progress Bar'
,p_region_name=>'progressBar'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall:t-Form--noPadding:margin-top-md:margin-bottom-lg'
,p_component_template_options=>'#DEFAULT#:t-Tabs--simple'
,p_plug_template=>wwv_flow_api.id(1572085619207170)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(59023134321743701)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(2125342479223692)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1257649735551636360)
,p_name=>'NewShaliachRequests'
,p_region_name=>'newShaliachRequestsRegion'
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_grid_column_css_classes=>'center-region'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from ',
'(',
'    select ''NEW_REQUEST_MAIN'' type,',
unistr('    nvl(hoi.ORG_INFORMATION4, ''\200E '') MASLUL, '),
unistr('    nvl(hoi.ORG_INFORMATION5, ''\200E '') START_DATE, '),
unistr('    nvl(to_char(TO_DATE(hoi.ORG_INFORMATION5, ''DD/MM/YYYY''), ''Month dd, yyyy''), ''\200E '') ESTIMATED_START_DATE'),
'    ',
'    from hr_organization_information hoi',
'    where hoi.org_information11 = :P0_CURRENT_YEAR and hoi.ORGANIZATION_ID = :P0_ORG_ID ',
'      and hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOM_LTS_RF''',
'    and hoi.org_information2 is null',
'    union all',
'    select ''NEW_REQUEST_BLANK'' type, ',
'           null, ',
'           null,',
'           null ',
'     ',
'    from dual',
'    where to_date(fnd_profile.VALUE(''JAFI_COMMUNITY_RF_EDIT_END_DATE''), ''dd/mm/yyyy'') >= sysdate',
')',
'',
'order by MASLUL, START_DATE'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_ORG_ID'
,p_query_row_template=>wwv_flow_api.id(65380667123865858)
,p_query_num_rows=>1000000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(700944063520560579)
,p_query_column_id=>1
,p_column_alias=>'TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(700944513415560579)
,p_query_column_id=>2
,p_column_alias=>'MASLUL'
,p_column_display_sequence=>1
,p_column_heading=>'Maslul'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(700943705369560579)
,p_query_column_id=>3
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(700944872275560580)
,p_query_column_id=>4
,p_column_alias=>'ESTIMATED_START_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'Estimated Start Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1879057003412591838)
,p_plug_name=>'No Data Info'
,p_parent_plug_id=>wwv_flow_api.id(1257649735551636360)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('The deadline to complete this form was October 31. <br> The form is now closed, but we\2019ll be in touch with you regarding <br> the next steps.')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P39_ROWS_COUNT'
,p_plug_display_when_cond2=>'0'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1257653031908636393)
,p_plug_name=>'Buttons Container'
,p_region_name=>'buttonsRegion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1813062899115592803)
,p_plug_name=>'Thank You Container'
,p_region_name=>'thankYouContainer'
,p_region_css_classes=>'standard-rounded-rg'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:margin-top-md'
,p_plug_template=>wwv_flow_api.id(2889647945233431)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div> ',
'',
'<div class="rf-thank-image"><img src="#APP_IMAGES#FinishPage.svg"></div>',
'<p class="rf-thank-message">',
'  Thank you! <br>',
'   Your form has been <br class="mobile-br">successfully submitted.',
'   <br><br>',
'</p>',
'',
'<p class="rf-thank-info">',
'',
'During November, we will be in <br class="mobile-br">touch with you ',
'<br class="desktop-br">',
'regarding <br class="mobile-br">the next steps.',
'',
'</p>',
'</div> ',
'',
'',
'',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1813063461935594150)
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
 p_id=>wwv_flow_api.id(2843992878584667845)
,p_plug_name=>'Form'
,p_region_name=>'formRegion'
,p_region_css_classes=>'hidden'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2843992708702667844)
,p_plug_name=>'New Shaliach - Step 1'
,p_region_name=>'newShaliachStep1'
,p_parent_plug_id=>wwv_flow_api.id(2843992878584667845)
,p_region_css_classes=>'form-step'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(491247236618075195)
,p_plug_display_sequence=>60
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(690101661028958574)
,p_plug_name=>'Form Controls'
,p_parent_plug_id=>wwv_flow_api.id(2843992708702667844)
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2843993116478667848)
,p_plug_name=>'Position Overview & Administrative Data'
,p_parent_plug_id=>wwv_flow_api.id(2843992708702667844)
,p_region_css_classes=>'sub-form-step'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(491247236618075195)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2843993320495667850)
,p_plug_name=>'Professional Realms & Responsibilities'
,p_parent_plug_id=>wwv_flow_api.id(2843992708702667844)
,p_region_css_classes=>'sub-form-step'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(491247236618075195)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2843993403250667851)
,p_plug_name=>'Targeted Demographics'
,p_parent_plug_id=>wwv_flow_api.id(2843992708702667844)
,p_region_css_classes=>'sub-form-step'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(491247236618075195)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2884139451088325103)
,p_plug_name=>'Professional Profile & Organizational Fit'
,p_parent_plug_id=>wwv_flow_api.id(2843992708702667844)
,p_region_css_classes=>'sub-form-step remove-bottom-border'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(491247236618075195)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2884140461055325113)
,p_plug_name=>'Navigation Buttons'
,p_parent_plug_id=>wwv_flow_api.id(2843992708702667844)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="form-buttons-container">',
'    <div class="form-back-button-disabled">Back</div>',
'    <div class="form-next-button" data-step="1">Next</div>',
'</div>'))
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
,p_default_application_id=>220
,p_default_id_offset=>1696803741697335224
,p_default_owner=>'APPS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2843993027543667847)
,p_plug_name=>'Info'
,p_parent_plug_id=>wwv_flow_api.id(2843992878584667845)
,p_region_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p class="info-text">',
'This document defines the professional<br class="mobile-br"/> requirements and<br class="desktop-br"/>',
'community context for<br class="mobile-br"/> the Community Shlichut placement.<br class="desktop-br"/>',
'The<br class="mobile-br"/> information provided will serve as the basis<br class="mobile-br"/> for the<br class="desktop-br"/>',
'professional matching process.',
'</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2884142622361325135)
,p_plug_name=>'New Shaliach - Step 2'
,p_region_name=>'newShaliachStep2'
,p_parent_plug_id=>wwv_flow_api.id(2843992878584667845)
,p_region_css_classes=>'form-step hidden'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(491247236618075195)
,p_plug_display_sequence=>70
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2890010195986954804)
,p_plug_name=>'Core Competencies'
,p_parent_plug_id=>wwv_flow_api.id(2884142622361325135)
,p_region_css_classes=>'sub-form-step'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(491247236618075195)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2890011266652954815)
,p_plug_name=>'Logistics___ Observance & Support'
,p_parent_plug_id=>wwv_flow_api.id(2884142622361325135)
,p_region_css_classes=>'sub-form-step remove-bottom-border'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(491247236618075195)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2890011637749954819)
,p_plug_name=>'Navigation Buttons'
,p_parent_plug_id=>wwv_flow_api.id(2884142622361325135)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="form-buttons-container">',
'    <div class="form-back-button" data-step="2">Back</div>',
'    <div class="form-next-button" data-step="2">Next</div>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2884144011960325149)
,p_plug_name=>'New Shaliach - Step 3'
,p_region_name=>'newShaliachStep3'
,p_parent_plug_id=>wwv_flow_api.id(2843992878584667845)
,p_region_css_classes=>'form-step hidden'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(491247236618075195)
,p_plug_display_sequence=>80
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2890014655300954849)
,p_plug_name=>'Summer Activity (Camps)'
,p_parent_plug_id=>wwv_flow_api.id(2884144011960325149)
,p_region_css_classes=>'sub-form-step'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(491247236618075195)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2891829938108977013)
,p_plug_name=>'Other Information'
,p_parent_plug_id=>wwv_flow_api.id(2884144011960325149)
,p_region_css_classes=>'sub-form-step remove-bottom-border'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(491247236618075195)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2891831802030977032)
,p_plug_name=>'File Upload'
,p_region_name=>'jobDescriptionFileUploadContainer'
,p_parent_plug_id=>wwv_flow_api.id(2891829938108977013)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="jd-file-upload-btn" class="file-upload-btn">',
'    <div id="jd-file-upload-btn-text" class="file-upload-btn-text">Upload File</div>',
'    <div id="jd-file-upload-btn-filename" class="file-upload-btn-filename"></div>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2891830918635977023)
,p_plug_name=>'Navigation Buttons'
,p_parent_plug_id=>wwv_flow_api.id(2884144011960325149)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="form-buttons-container">',
'    <div class="form-back-button" data-step="3">Back</div>',
'    <div class="form-next-button" data-step="3">Submit Form</div>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(700946269350560581)
,p_button_sequence=>310
,p_button_plug_id=>wwv_flow_api.id(1257653031908636393)
,p_button_name=>'PrevStep'
,p_button_static_id=>'prevStepBtn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'<img src="#APP_IMAGES#ic-back.svg"/>Back'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'prev-btn'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(700947667339560582)
,p_button_sequence=>290
,p_button_plug_id=>wwv_flow_api.id(1813063461935594150)
,p_button_name=>'BACK_TO_MENU'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back to Menu'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RR,9,8::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(700946996554560582)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1813062899115592803)
,p_button_name=>'AddAnotherRequest'
,p_button_static_id=>'addAnotherRequestBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2938281857134305)
,p_button_image_alt=>'<span class="fa fa-plus"></span>Add a Request'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(690100840339958565)
,p_name=>'P39_S1_ASSIGNMENTS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(690101661028958574)
,p_prompt=>unistr('<b>Every Israel fellow does Israel Engagement, Education and <br/> Experiences. Those titles mean different things at different places. <br/> Which of the assignments below are core to the fellows\2019 work on <br/> your campus?</b> <i>Choose 2 that are ')
||'the most relevant.</i>'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOV_ASSIGNMENTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select	flv.Description d, flv.lookup_code r',
'From 	FND_LOOKUP_VALUES flv',
'Where 	flv.Lookup_Type = ''JAFI_HR_AMITY_ISRAEL_ASS_CORE''',
'		and flv.enabled_flag = ''Y''',
'		AND flv.LANGUAGE=''US''',
'order by flv.lookup_code'))
,p_grid_column_css_classes=>'html-group checkbox-group'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_css_classes=>'black-label'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(690101815626958575)
,p_name=>'P39_S1_OTHER_ASSIGNMENTS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(690101661028958574)
,p_prompt=>'Please specify your other Core Assignments:'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cHeight=>3
,p_grid_column_css_classes=>'black-label long-label'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700917731743560558)
,p_name=>'P39_FORM_SUBMITTED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2843992878584667845)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700918133418560558)
,p_name=>'P39_STEP_1_COMPLETE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(2843992878584667845)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700918535934560558)
,p_name=>'P39_STEP_2_COMPLETE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(2843992878584667845)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700918883382560559)
,p_name=>'P39_STEP_3_COMPLETE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(2843992878584667845)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700919274161560559)
,p_name=>'P39_PERSON_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(2843992878584667845)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700919656464560559)
,p_name=>'P39_PERSON_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(2843992878584667845)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700920091758560559)
,p_name=>'P39_DISABLE_EDIT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(2843992878584667845)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700920483850560560)
,p_name=>'P39_MIN_START_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(2843992878584667845)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700920864776560560)
,p_name=>'P39_MAX_START_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(2843992878584667845)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700921603122560561)
,p_name=>'P39_ESTIMATED_START_DATE_DAYS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(2843992708702667844)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700922273537560562)
,p_name=>'P39_CORE_EXPERTISE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2884139451088325103)
,p_prompt=>'<b>Core Expertise Areas (Choose 1-2)</b> - Which professional orientation <br class="desktop-br"/>best serves the community''s current needs?'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOV_CORE_EXPERTISE_HTML'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''<b>''||flv.meaning ||'':</b> <i>''||flv.description||''</i>''  d, flv.lookup_code r',
'from fnd_lookup_values flv',
'where flv.lookup_type=''JAFI_HR_KEHILATI_CORE_EXPERTIS''',
'and flv.language=''IW''',
'order by flv.lookup_code'))
,p_cattributes_element=>'data-min-items="1" data-max-items="2"'
,p_grid_column_css_classes=>'other-checkbox html-group'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_css_classes=>'black-label'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700922648193560562)
,p_name=>'P39_WORK_MODE_PREFERENCE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(2884139451088325103)
,p_prompt=>'<b>Work Mode Preference:</b> Does the role lean more towards:'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_WORK_MODE_PREFERENCE_HTML'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''<b>''||flv.meaning ||'':</b> <i>''||flv.description||''</i>''  d, flv.lookup_code r',
'from fnd_lookup_values flv',
'where flv.lookup_type=''JAFI_HR_KEHILATI_WORK_MODE''',
'and flv.language=''IW''',
'order by flv.lookup_code'))
,p_grid_column_css_classes=>'html-group'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_css_classes=>'black-label'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700923100439560562)
,p_name=>'P39_SUPERVISION_OP_AUTONOMY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(2884139451088325103)
,p_prompt=>'<b>Supervision & Operational Autonomy -</b> Define the required level of professional independence'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOV_SUPERVISION_OP_AUTONOMY_HTML'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''<b>''||flv.meaning ||'':</b> <i>''||flv.description||''</i>''  d, flv.lookup_code r',
'from fnd_lookup_values flv',
'where flv.lookup_type = ''JAFI_HR_KEHILATI_SUPERVISION''',
'and flv.language = ''IW'' --and flv.attribute2 = ''Y''',
'order by flv.lookup_code'))
,p_grid_column_css_classes=>'other-checkbox html-group'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_css_classes=>'black-label'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700923756609560563)
,p_name=>'P39_AREAS_OF_RESPONSIBILITY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(2843993320495667850)
,p_prompt=>unistr('Please review the areas below and identify the 3\20135 core areas <br class="desktop-br"/>that are most essential for your community. Think about where <br class="desktop-br"/>your Shaliach is expected to have the greatest impact and <br class="desktop-b')
||'r"/>what outcomes you hope to achieve in each area.'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'KEHILATI_RES_KEY_AREAS_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'Select Hl.Meaning , hl.lookup_code',
'  From Hr_Lookups Hl',
' Where Hl.Lookup_Type = ''JAFI_HR_KEHILATI_RES_KEY_AREAS''',
' and Hl.enabled_flag = ''Y''',
' order by Hl.Meaning    ;',
'   '))
,p_grid_column_css_classes=>'black-label rf-select2-filter'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'MULTI'
,p_attribute_04=>'5'
,p_attribute_05=>'5'
,p_attribute_08=>'CIC'
,p_attribute_10=>'247px'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700924192158560563)
,p_name=>'P39_AREAS_OF_RESP_OTHER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(2843993320495667850)
,p_prompt=>'Areas Of Resp Other'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Other;Other'
,p_grid_column_css_classes=>'other-checkbox html-group'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700924544261560563)
,p_name=>'P39_AREAS_OF_RESP_OTHER_DESC'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(2843993320495667850)
,p_prompt=>'Please specify your other Key Areas of Responsibility'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cHeight=>3
,p_grid_column_css_classes=>'black-label long-label'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700925632427560564)
,p_name=>'P39_TARGET_DEMOGRAPHICS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2843993403250667851)
,p_prompt=>'Please indicate which age groups or community segments the <br class="desktop-br"/>shaliach/shlichah will be serving'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>'STATIC2:Preschool;Preschool,Elementary;Elementary,Teenagers;Teenagers,College;College,Parents;Parents,Adults;Adults,Seniors;Seniors'
,p_grid_column_css_classes=>'black-label rf-select2-filter'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'MULTI'
,p_attribute_04=>'7'
,p_attribute_05=>'7'
,p_attribute_08=>'CIC'
,p_attribute_10=>'247px'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700926313365560565)
,p_name=>'P39_MASLUL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(2843993116478667848)
,p_prompt=>'Maslul'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Young Shlichut (Ofek);Young Shlichut (Ofek),Senior Shlichut (Shahar/Bina/Yovel);Senior Shlichut (Shahar/Bina/Yovel)'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700926700515560565)
,p_name=>'P39_ESTIMATED_START_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(2843993116478667848)
,p_prompt=>'Estimated Start Date'
,p_format_mask=>'Month DD, YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_02=>'&P39_MIN_START_DATE.'
,p_attribute_03=>'&P39_MAX_START_DATE.'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'1900:3000'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700927085494560565)
,p_name=>'P39_HOST_ORGANIZATION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(2843993116478667848)
,p_prompt=>'Host Organization'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'full-width'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700927446602560566)
,p_name=>'P39_PRIORITIES'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(2843993116478667848)
,p_prompt=>'<b>Community priorities <br class="mobile-br"/>(Please provide a clear and short <br class="mobile-br"/>response):</b><br/> What do you see as the primary goal of the shlichut from the<br class="desktop-br"/> community''s perspective? Please provide a'
||' clear and short<br class="desktop-br"/> response that reflects the community''s vision and priorities.'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cHeight=>3
,p_grid_column_css_classes=>'black-label long-label'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700928839198560568)
,p_name=>'P39_CORE_COMP_HEADER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2890010195986954804)
,p_prompt=>'Rate the following based on their <br class="mobile-br"/>necessity for the role <br />(1 = Low, 5 = Critical):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'hidden'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_css_classes=>'black-label label-only'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700929214536560568)
,p_name=>'P39_PUBLIC_SPEAKING_FACILITATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(2890010195986954804)
,p_prompt=>'Public Speaking & facilitation:'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:1;1,2;2,3;3,4;4,5;5'
,p_tag_css_classes=>'horizontal-radio-group'
,p_grid_column_css_classes=>'html-group'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_css_classes=>'black-label'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'5'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700929601868560568)
,p_name=>'P39_PLANING_IMPLEMENTATION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(2890010195986954804)
,p_prompt=>'Planning & Implementation:'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:1;1,2;2,3;3,4;4,5;5'
,p_tag_css_classes=>'horizontal-radio-group'
,p_grid_column_css_classes=>'html-group'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_css_classes=>'black-label'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'5'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700929981225560568)
,p_name=>'P39_CROSS_CULTURE_COMM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(2890010195986954804)
,p_prompt=>'Cross-Cultural Communication:'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:1;1,2;2,3;3,4;4,5;5'
,p_tag_css_classes=>'horizontal-radio-group'
,p_grid_column_css_classes=>'html-group'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_css_classes=>'black-label'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'5'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700930415129560568)
,p_name=>'P39_TIME_MANAGEMENT_PROD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(2890010195986954804)
,p_prompt=>'Time Management & Productivity:'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:1;1,2;2,3;3,4;4,5;5'
,p_tag_css_classes=>'horizontal-radio-group'
,p_grid_column_css_classes=>'html-group'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_css_classes=>'black-label'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'5'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700930794421560569)
,p_name=>'P39_PROFESSIONAL_ENGLISH_PROF'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(2890010195986954804)
,p_prompt=>'Professional English Proficiency:'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:1;1,2;2,3;3,4;4,5;5'
,p_tag_css_classes=>'horizontal-radio-group'
,p_grid_column_css_classes=>'html-group'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_css_classes=>'black-label'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'5'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700931238462560569)
,p_name=>'P39_REQUIRED_SKILLS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(2890010195986954804)
,p_prompt=>'<b>Required Skills and Qualities:</b> <br class="mobile-br"/>Please list any specific traits, <br class="desktop-br"/>abilities, <br class="mobile-br"/>knowledge, or qualifications that are <br class="mobile-br"/>essential for a <br class="desktop-br'
||'"/>shaliach to succeed in <br class="mobile-br"/>your community. (e.g., language <br class="mobile-br"/>proficiency, <br class="desktop-br"/>educational background, <br class="mobile-br"/>interpersonal skills, etc.)<br/>Please select up to 7.'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'KEHILLATI_LTS_SKILLS_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select	flv.Meaning ||'' ''|| FLV.DESCRIPTION Meaning, flv.lookup_code, FLV.TAG',
'From 	FND_LOOKUP_VALUES flv',
'Where 	flv.Lookup_Type = ''JAFI_HR_KEHILLATI_LTS_SKILLS''',
'		and flv.enabled_flag = ''Y''',
'		AND flv.LANGUAGE=''US''',
'		and (V(''P'' || V(''APP_PAGE_ID'') || ''_MASLUL'') != ''Young Shlichut (Ofek)'' or flv.tag is null)',
'order by flv.Meaning',
'   '))
,p_lov_cascade_parent_items=>'P39_MASLUL'
,p_ajax_items_to_submit=>'P39_MASLUL'
,p_ajax_optimize_refresh=>'N'
,p_grid_column_css_classes=>'black-label rf-select2-filter long-label skills-select2'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'MULTI'
,p_attribute_04=>'7'
,p_attribute_05=>'7'
,p_attribute_08=>'CIC'
,p_attribute_10=>'400px'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700931551996560569)
,p_name=>'P39_PREFERRED_SKILLS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(2890010195986954804)
,p_prompt=>'<b>Preferred Skills and Qualities (Advantages):</b> <br class="mobile-br"/>Please share any <br class="desktop-br"/>additional qualities or <br class="mobile-br"/>skills that would be a strong advantage for <br class="mobile-br"/>a <br class="desktop'
||'-br"/>shaliach in your community, but are not <br class="mobile-br"/>mandatory.<br/>Please select up to 3.'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'KEHILLATI_LTS_SKILLS_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select	flv.Meaning ||'' ''|| FLV.DESCRIPTION Meaning, flv.lookup_code, FLV.TAG',
'From 	FND_LOOKUP_VALUES flv',
'Where 	flv.Lookup_Type = ''JAFI_HR_KEHILLATI_LTS_SKILLS''',
'		and flv.enabled_flag = ''Y''',
'		AND flv.LANGUAGE=''US''',
'		and (V(''P'' || V(''APP_PAGE_ID'') || ''_MASLUL'') != ''Young Shlichut (Ofek)'' or flv.tag is null)',
'order by flv.Meaning',
'   '))
,p_lov_cascade_parent_items=>'P39_MASLUL'
,p_ajax_items_to_submit=>'P39_MASLUL'
,p_ajax_optimize_refresh=>'N'
,p_grid_column_css_classes=>'black-label rf-select2-filter long-label skills-select2'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'MULTI'
,p_attribute_05=>'3'
,p_attribute_08=>'CIC'
,p_attribute_10=>'400px'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700932291569560570)
,p_name=>'P39_DRIVERS_LICENSE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(2890011266652954815)
,p_prompt=>unistr('<b>Driver\2019s License:</b> Is a valid driver''s license mandatory for this position?')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;Y,No;N'
,p_tag_css_classes=>'horizontal-radio-group'
,p_grid_column_css_classes=>'html-group'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_css_classes=>'black-label long-label'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700932675246560570)
,p_name=>'P39_RELIGIOUS_ENVIRONMENT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(2890011266652954815)
,p_prompt=>'<b>Primary Religious Environment:</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_RELIGIOUS_ENVIRONMENT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select flv.meaning d, flv.lookup_code r',
'from fnd_lookup_values flv ',
'where flv.lookup_type=''JAFI_HR_KEHILATI_AFFILIATION'' ',
'and flv.language=''IW'' --and flv.attribute2=''Y''',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_css_classes=>'black-label'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700933117480560570)
,p_name=>'P39_SHABBAT_ACCOMMODATION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(2890011266652954815)
,p_prompt=>'<b>Shabbat Accommodations:</b> Can the role accommodate strict Shabbat <br class="desktop-br"/>observance (no work/travel from Friday sunset to Saturday night)?'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;Y,No;N'
,p_tag_css_classes=>'horizontal-radio-group'
,p_grid_column_css_classes=>'html-group'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_css_classes=>'black-label long-label'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700933472388560570)
,p_name=>'P39_DIETARY_STANDARDS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(2890011266652954815)
,p_prompt=>'<b>Dietary Standards (Kashrut):</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_DIETARY_STANDARDS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select flv.meaning d, flv.lookup_code r',
'from fnd_lookup_values flv ',
'where flv.lookup_type=''JAFI_HR_KEHILATI_DIETARY_STAND'' ',
'and flv.language=''IW''',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_css_classes=>'black-label'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700933859314560571)
,p_name=>'P39_SOCIAL_ECOSYSTEM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(2890011266652954815)
,p_prompt=>'<b>Social Ecosystem:</b> Are there other Israeli Shlichim or a local Jewish <br class="desktop-br"/>young adult peer group (ages 22-26 for Ofek, 30-45 for SHABY) in the <br class="desktop-br"/>immediate vicinity?'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;Y,No;N'
,p_tag_css_classes=>'horizontal-radio-group'
,p_grid_column_css_classes=>'html-group'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_css_classes=>'black-label long-label'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700934261465560571)
,p_name=>'P39_SOCIAL_ECOSYSTEM_AMOUNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(2890011266652954815)
,p_prompt=>'How Many?'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:1-2;1-2,3-4;3-4,5+;5+'
,p_tag_css_classes=>'horizontal-radio-group'
,p_grid_column_css_classes=>'html-group'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_css_classes=>'black-label long-label hidden'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700934664227560571)
,p_name=>'P39_HOLISTIC_SUPPORT_SYSTEM'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(2890011266652954815)
,p_prompt=>'<b>Holistic Support System:</b> Beyond the <br class="mobile-br" />formal supervisor, what <br class="desktop-br"/>support <br class="mobile-br" />mechanisms will be available?'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOV_HOLISTIC_SUPPORT_SYSTEM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select flv.meaning d, flv.lookup_code r',
'from fnd_lookup_values flv ',
'where flv.lookup_type=''JAFI_HR_KEHILATI_HOLISTIC_SUPP'' ',
'and flv.language=''IW''',
'order by flv.lookup_code'))
,p_grid_column_css_classes=>'other-checkbox html-group'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_css_classes=>'black-label'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
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
 p_id=>wwv_flow_api.id(700935081978560572)
,p_name=>'P39_HOLISTIC_SUPPORT_SYS_OTHER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(2890011266652954815)
,p_prompt=>'Please specify:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'full-width'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_css_classes=>'hidden'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700935490246560572)
,p_name=>'P39_PARTNERSHIP_2_GATHER_PREF'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(2890011266652954815)
,p_prompt=>unistr('If your community belong to a <b>Partnership2Gather</b> \2013 please <br class="desktop-br"/>indicate how important it is for you to receive a shaliach from <br class="desktop-br"/>this partnership.<br/>(1 = Does not matter,\00A05 = Essential)')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:1;1,2;2,3;3,4;4,5;5'
,p_tag_css_classes=>'horizontal-radio-group'
,p_grid_column_css_classes=>'html-group'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_css_classes=>'black-label long-label'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'5'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700936742497560573)
,p_name=>'P39_SUMMER_CAMP_REQUIREMENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2890014655300954849)
,p_prompt=>'<b>Summer Camp Requirement:</b> Is the Shaliach expected to work in a <br class="desktop-br" />Jewish summer camp as part of their role?'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;Y,No;N'
,p_tag_css_classes=>'horizontal-radio-group'
,p_grid_column_css_classes=>'html-group'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_css_classes=>'black-label long-label'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700937140303560573)
,p_name=>'P39_CAMP_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(2890014655300954849)
,p_prompt=>'<b>Camp Type:</b>'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_CAMP_TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select decode (flv.Lookup_Code, ''D'', flv.meaning ||'' ''|| ''(Local)'' , flv.meaning ||'' ''||''(Residential)'') d, flv.Lookup_Code r',
'from fnd_lookup_values flv ',
'where flv.lookup_type=''JAFI_SC_CAMP_TYPE'' ',
'and flv.language=''US''',
''))
,p_grid_column_css_classes=>'html-group'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_css_classes=>'black-label'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700937534835560574)
,p_name=>'P39_ROLE_IN_CAMP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(2890014655300954849)
,p_prompt=>'<b>Role in Camp:</b> (e.g., Specialist, Counselor, Unit Head, Educational Director)'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'full-width'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_css_classes=>'black-label long-label'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700937855431560574)
,p_name=>'P39_DURATION_AND_LOCATION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(2890014655300954849)
,p_prompt=>'<b>Duration & Location:</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'full-width'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_css_classes=>'black-label'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700938264608560574)
,p_name=>'P39_ASSIGN_ON_BEHALF_OF'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(2890014655300954849)
,p_prompt=>'Assuming the Shaliach is available over the summer, would it be <br class="desktop-br" />possible for the Jewish Agency to assign them to a <br class="mobile-br" />summer <br class="desktop-br" />camp on its behalf?'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;Y,No;N'
,p_tag_css_classes=>'horizontal-radio-group'
,p_grid_column_css_classes=>'html-group'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_css_classes=>'black-label long-label'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700938991496560575)
,p_name=>'P39_MEASURABLE_OUTCOMES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2891829938108977013)
,p_prompt=>'Define three measurable outcomes for the conclusion of the <br class="desktop-br"/>first year of Shlichut:'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cHeight=>3
,p_grid_column_css_classes=>'black-label long-label'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700939403300560575)
,p_name=>'P39_SHLICHUT_TERMS_HEADER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(2891829938108977013)
,p_prompt=>'<b>Shlichut Terms</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'hidden'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_css_classes=>'black-label label-only'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700939771834560575)
,p_name=>'P39_ST_HOUSING'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(2891829938108977013)
,p_prompt=>'Housing'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Rented/owned by the community;COMMUNITY,Rented directly by the Shaliach;SHALIACH'
,p_grid_column_css_classes=>'html-group'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_css_classes=>'black-label'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700940240910560575)
,p_name=>'P39_ST_TRANSPORTATION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(2891829938108977013)
,p_prompt=>'Transportation'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Leased/owned by the community;COMMUNITY,Rented/owned directly by the Shaliach;SHALIACH'
,p_grid_column_css_classes=>'html-group'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_css_classes=>'black-label'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700940628621560575)
,p_name=>'P39_ST_CHILDRENS_EDUCATION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(2891829938108977013)
,p_prompt=>'Children''s education'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Provided by the community;COMMUNITY,The Shaliach gets the fees through the paycheck;SHALIACH'
,p_grid_column_css_classes=>'html-group'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_css_classes=>'black-label'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700940975478560576)
,p_name=>'P39_FURTHER_INFORMATION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(2891829938108977013)
,p_prompt=>'<b>Is there any further information that is important for us to know?</b>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cHeight=>3
,p_grid_column_css_classes=>'black-label long-label'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700941379513560576)
,p_name=>'P39_JOB_DESCRIPTION_HEADER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(2891829938108977013)
,p_prompt=>'<b>Job description</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'hidden'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_css_classes=>'black-label label-only'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700942118960560576)
,p_name=>'P39_JOB_DESCRIPTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2891831802030977032)
,p_prompt=>'Job description'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_grid_column_css_classes=>'black-label long-label'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_css_classes=>'hidden'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_11=>'.doc,.docx,.pdf,.jpg,.jpeg'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700945268807560580)
,p_name=>'P39_ROWS_COUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1257649735551636360)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(700948149194560583)
,p_computation_sequence=>40
,p_computation_item=>'P39_ROWS_COUNT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*) from ',
'(',
'    select 1',
'    from hr_organization_information hoi',
'    where hoi.org_information11 = :P0_CURRENT_YEAR and hoi.ORGANIZATION_ID = :P0_ORG_ID and hoi.org_information_context like ''%LTS%RF%'' and hoi.org_information2 is null',
'    union all',
'    select 1 from dual',
'    where to_date (fnd_profile.VALUE(''JAFI_COMMUNITY_RF_EDIT_END_DATE'')  , ''dd/mm/yyyy'') >= sysdate',
')'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(700948577639560583)
,p_computation_sequence=>50
,p_computation_item=>'P39_ESTIMATED_START_DATE_DAYS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'case when sysdate < to_date(''01/08/'' || extract(year from sysdate), ''DD/MM/YYYY'') then 0 else 365 end'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(700949012320560583)
,p_computation_sequence=>60
,p_computation_item=>'P39_MIN_START_DATE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'''August 1, '' || to_char(sysdate + :P39_ESTIMATED_START_DATE_DAYS, ''YYYY'')'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(700949350667560583)
,p_computation_sequence=>70
,p_computation_item=>'P39_MAX_START_DATE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'''December 31, '' || to_char(sysdate + :P39_ESTIMATED_START_DATE_DAYS, ''YYYY'')'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700949757781560583)
,p_validation_name=>'Estimated Start Date is valid'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    parsedDate date;',
'begin',
'    select to_date(:P39_ESTIMATED_START_DATE, ''Month DD, YYYY'') into parsedDate from dual;',
'',
'    exception when others then return false;',
'    ',
'    return true;',
'end;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Invalid date'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep1Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700926700515560565)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700950210004560583)
,p_validation_name=>'Estimated Start Date Max Value'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'to_date(:P39_MIN_START_DATE, ''Month DD, YYYY'') <= to_date(:P39_ESTIMATED_START_DATE, ''Month DD, YYYY'') and ',
'to_date(:P39_ESTIMATED_START_DATE, ''Month DD, YYYY'') <= to_date(:P39_MAX_START_DATE, ''Month DD, YYYY'')'))
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Please pick a date between &P39_MIN_START_DATE. and &P39_MAX_START_DATE.'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep1Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700926700515560565)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700950602352560584)
,p_validation_name=>'Host Organization is not null'
,p_validation_sequence=>30
,p_validation=>'P39_HOST_ORGANIZATION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep1Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700927085494560565)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700950983217560584)
,p_validation_name=>'Priorities is not null'
,p_validation_sequence=>40
,p_validation=>'P39_PRIORITIES'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep1Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700927446602560566)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700951399159560584)
,p_validation_name=>'Areas Of Responsibility is not null'
,p_validation_sequence=>50
,p_validation=>'P39_AREAS_OF_RESPONSIBILITY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please select between 3 to 5 options'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep1Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700923756609560563)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700951754414560584)
,p_validation_name=>'Areas Of Responsibility is between 3 and 5'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_length number;',
'    v_lengthAfterReplace number;',
'    v_selectedCount number;',
'begin',
'    v_length := length(:P39_AREAS_OF_RESPONSIBILITY);    ',
'    v_lengthAfterReplace := length(replace(:P39_AREAS_OF_RESPONSIBILITY,'':'',null));',
'    v_selectedCount := v_length - v_lengthAfterReplace + 1;',
' ',
'    return  3 <= v_selectedCount and v_selectedCount <= 5;',
'end;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please select between 3 to 5 options'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep1Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700923756609560563)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700952150256560584)
,p_validation_name=>'Areas Of Responsibility Other Desc is not null'
,p_validation_sequence=>70
,p_validation=>':P39_AREAS_OF_RESP_OTHER is null or :P39_AREAS_OF_RESP_OTHER_DESC is not null'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep1Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700924544261560563)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700952547624560584)
,p_validation_name=>'Target Demographics is not null'
,p_validation_sequence=>80
,p_validation=>'P39_TARGET_DEMOGRAPHICS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please select at least one option'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep1Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700925632427560564)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700953011705560585)
,p_validation_name=>'Core Expertise is not null'
,p_validation_sequence=>90
,p_validation=>'P39_CORE_EXPERTISE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please select up to 2 options'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep1Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700922273537560562)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700953417559560585)
,p_validation_name=>'Work Mode Preference is not null'
,p_validation_sequence=>100
,p_validation=>'P39_WORK_MODE_PREFERENCE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep1Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700922648193560562)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700953789305560585)
,p_validation_name=>'Supervision & Operational Autonomy is not null'
,p_validation_sequence=>110
,p_validation=>'P39_SUPERVISION_OP_AUTONOMY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep1Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700923100439560562)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700954148093560585)
,p_validation_name=>'Public Speaking & Facilitation is not null'
,p_validation_sequence=>120
,p_validation=>'P39_PUBLIC_SPEAKING_FACILITATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep2Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700929214536560568)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700954602134560585)
,p_validation_name=>'Planning & Implementation is not null'
,p_validation_sequence=>130
,p_validation=>'P39_PLANING_IMPLEMENTATION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep2Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700929601868560568)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700954956982560585)
,p_validation_name=>'Cross-Cultural Communication is not null'
,p_validation_sequence=>140
,p_validation=>'P39_CROSS_CULTURE_COMM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep2Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700929981225560568)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700955372093560586)
,p_validation_name=>'Time Management & Productivity is not null'
,p_validation_sequence=>150
,p_validation=>'P39_TIME_MANAGEMENT_PROD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep2Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700930415129560568)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700955750407560586)
,p_validation_name=>'Professional English Proficiency is not null'
,p_validation_sequence=>160
,p_validation=>'P39_PROFESSIONAL_ENGLISH_PROF'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep2Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700930794421560569)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700956153788560586)
,p_validation_name=>'Required Skills & Qualities is not null'
,p_validation_sequence=>170
,p_validation=>'P39_REQUIRED_SKILLS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep2Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700931238462560569)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700956594538560586)
,p_validation_name=>'Drivers License is not null'
,p_validation_sequence=>180
,p_validation=>'P39_DRIVERS_LICENSE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep2Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700932291569560570)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700956976737560586)
,p_validation_name=>'Primary Religious Environment is not null'
,p_validation_sequence=>190
,p_validation=>'P39_RELIGIOUS_ENVIRONMENT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep2Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700932675246560570)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700957383491560586)
,p_validation_name=>'Shabbat Accommodations is not null'
,p_validation_sequence=>200
,p_validation=>'P39_SHABBAT_ACCOMMODATION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep2Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700933117480560570)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700957748147560587)
,p_validation_name=>'Dietary Standards (Kashrut) is not null'
,p_validation_sequence=>210
,p_validation=>'P39_DIETARY_STANDARDS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep2Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700933472388560570)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700958178614560587)
,p_validation_name=>'Social Ecosystem is not null'
,p_validation_sequence=>220
,p_validation=>'P39_SOCIAL_ECOSYSTEM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep2Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700933859314560571)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700958626750560587)
,p_validation_name=>'Social Ecosystem Amount is not null'
,p_validation_sequence=>230
,p_validation=>'P39_SOCIAL_ECOSYSTEM_AMOUNT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>':REQUEST = ''FormStep2Submit'' and :P39_SOCIAL_ECOSYSTEM = ''Y'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(700934261465560571)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700959037534560587)
,p_validation_name=>'Holistic Support System is not null'
,p_validation_sequence=>240
,p_validation=>'P39_HOLISTIC_SUPPORT_SYSTEM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep2Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700934664227560571)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700959434812560587)
,p_validation_name=>'Holistic Support System Other is not null'
,p_validation_sequence=>250
,p_validation=>'P39_HOLISTIC_SUPPORT_SYS_OTHER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>':REQUEST = ''FormStep2Submit'' and :P39_HOLISTIC_SUPPORT_SYSTEM = ''Y'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(700935081978560572)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700959809745560587)
,p_validation_name=>'Summer Camp Requirements is not null'
,p_validation_sequence=>260
,p_validation=>'P39_SUMMER_CAMP_REQUIREMENT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep3Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700936742497560573)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700960175433560588)
,p_validation_name=>'Camp Type is not null'
,p_validation_sequence=>270
,p_validation=>'P39_CAMP_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>':REQUEST = ''FormStep3Submit'' and :P39_SUMMER_CAMP_REQUIREMENT = ''Y'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(700937140303560573)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700960605753560588)
,p_validation_name=>'Role in Camp is not null'
,p_validation_sequence=>280
,p_validation=>'P39_ROLE_IN_CAMP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>':REQUEST = ''FormStep3Submit'' and :P39_SUMMER_CAMP_REQUIREMENT = ''Y'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(700937534835560574)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700961026562560588)
,p_validation_name=>'Duration & Location is not null'
,p_validation_sequence=>290
,p_validation=>'P39_DURATION_AND_LOCATION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>':REQUEST = ''FormStep3Submit'' and :P39_SUMMER_CAMP_REQUIREMENT = ''Y'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(700937855431560574)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700961416241560588)
,p_validation_name=>'Assign on Behalf of is not null'
,p_validation_sequence=>300
,p_validation=>'P39_ASSIGN_ON_BEHALF_OF'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>':REQUEST = ''FormStep3Submit'' and :P39_SUMMER_CAMP_REQUIREMENT = ''Y'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(700938264608560574)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700961831272560588)
,p_validation_name=>'Measurable Outcomes is not null'
,p_validation_sequence=>310
,p_validation=>'P39_MEASURABLE_OUTCOMES'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep3Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700938991496560575)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700962241248560588)
,p_validation_name=>'Shlichut Terms - Housing is not null'
,p_validation_sequence=>320
,p_validation=>'P39_ST_HOUSING'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep3Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700939771834560575)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700962589847560588)
,p_validation_name=>'Shlichut Terms - Transportation is not null'
,p_validation_sequence=>330
,p_validation=>'P39_ST_TRANSPORTATION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep3Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700940240910560575)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700962952782560589)
,p_validation_name=>'Shlichut Terms - Children''s Education is not null'
,p_validation_sequence=>340
,p_validation=>'P39_ST_CHILDRENS_EDUCATION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep3Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700940628621560575)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700963379041560589)
,p_validation_name=>'Job Description is not null'
,p_validation_sequence=>350
,p_validation=>'P39_JOB_DESCRIPTION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep3Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700941379513560576)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700972080500560594)
,p_name=>'New Shaliach Click'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#newShaliachRequestsRegion li a'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700972602756560594)
,p_event_id=>wwv_flow_api.id(700972080500560594)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P39_FORM_SUBMITTED,P39_STEP_1_COMPLETE,P39_STEP_2_COMPLETE,P39_STEP_3_COMPLETE,P39_PERSON_ID,P39_PERSON_NAME,P39_MASLUL,P39_ESTIMATED_START_DATE,P39_HOST_ORGANIZATION,P39_PRIORITIES,P39_AREAS_OF_RESPONSIBILITY,P39_AREAS_OF_RESP_OTHER,P39_AREAS_OF_RES'
||'P_OTHER_DESC,P39_TARGET_DEMOGRAPHICS,P39_CORE_EXPERTISE,P39_WORK_MODE_PREFERENCE,P39_SUPERVISION_OP_AUTONOMY,P39_CORE_COMP_HEADER,P39_PUBLIC_SPEAKING_FACILITATE,P39_PLANING_IMPLEMENTATION,P39_CROSS_CULTURE_COMM,P39_TIME_MANAGEMENT_PROD,P39_PROFESSION'
||'AL_ENGLISH_PROF,P39_REQUIRED_SKILLS,P39_PREFERRED_SKILLS,P39_DRIVERS_LICENSE,P39_RELIGIOUS_ENVIRONMENT,P39_SHABBAT_ACCOMMODATION,P39_DIETARY_STANDARDS,P39_SOCIAL_ECOSYSTEM,P39_SOCIAL_ECOSYSTEM_AMOUNT,P39_HOLISTIC_SUPPORT_SYSTEM,P39_HOLISTIC_SUPPORT_S'
||'YS_OTHER,P39_PARTNERSHIP_2_GATHER_PREF,P39_SUMMER_CAMP_REQUIREMENT,P39_CAMP_TYPE,P39_ROLE_IN_CAMP,P39_DURATION_AND_LOCATION,P39_ASSIGN_ON_BEHALF_OF,P39_MEASURABLE_OUTCOMES,P39_SHLICHUT_TERMS_HEADER,P39_ST_HOUSING,P39_ST_TRANSPORTATION,P39_ST_CHILDREN'
||'S_EDUCATION,P39_FURTHER_INFORMATION,P39_JOB_DESCRIPTION'
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
 p_id=>wwv_flow_api.id(700973078004560595)
,p_event_id=>wwv_flow_api.id(700972080500560594)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P39_ESTIMATED_START_DATE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'''August 1, '' || to_char(sysdate + :P39_ESTIMATED_START_DATE_DAYS, ''YYYY'')'
,p_attribute_07=>'P39_ESTIMATED_START_DATE_DAYS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700974555630560595)
,p_event_id=>wwv_flow_api.id(700972080500560594)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P39_FORM_SUBMITTED,P39_STEP_1_COMPLETE,P39_STEP_2_COMPLETE,P39_STEP_3_COMPLETE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700973559573560595)
,p_event_id=>wwv_flow_api.id(700972080500560594)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var headerTemplate = ',
'''<div style="display: flex; gap: 5px; align-items: center;">'' +',
'    ''<img id="newShaliachBtn" src="#APP_IMAGES#favorite.svg"/>'' +',
'    ''<span style="font-weight: normal; flex-grow: 1;">New Shaliach (#STEP#)</span>'' +',
'    ''<img id="closeNewShaliachBtn" style="float: right; margin-right: 5px;" width="16" height="16" src="#APP_IMAGES#ic-x-close.png"/>'' +',
'''</div>'';',
'',
'$(''#newShaliachStep1_heading'').html(headerTemplate.replace(''#STEP#'', ''1/3''));',
'$(''#newShaliachStep2_heading'').html(headerTemplate.replace(''#STEP#'', ''2/3''));',
'$(''#newShaliachStep3_heading'').html(headerTemplate.replace(''#STEP#'', ''3/3''));',
'',
'$s(''P39_MASLUL'', ''Young Shlichut (Ofek)'');',
'',
'window.scrollTo(0, 0);'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700974131800560595)
,p_event_id=>wwv_flow_api.id(700972080500560594)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1257649735551636360)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700975061085560595)
,p_event_id=>wwv_flow_api.id(700972080500560594)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(2884142622361325135)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700975590663560596)
,p_event_id=>wwv_flow_api.id(700972080500560594)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(2884144011960325149)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700976046074560596)
,p_event_id=>wwv_flow_api.id(700972080500560594)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(2843992708702667844)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700976576319560596)
,p_event_id=>wwv_flow_api.id(700972080500560594)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(2843992878584667845)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700976950738560596)
,p_name=>'Close New Shaliach Click'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#closeNewShaliachBtn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700978038987560597)
,p_event_id=>wwv_flow_api.id(700976950738560596)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(2843992878584667845)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700979042535560597)
,p_event_id=>wwv_flow_api.id(700976950738560596)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P39_FORM_SUBMITTED,P39_STEP_1_COMPLETE,P39_STEP_2_COMPLETE,P39_STEP_3_COMPLETE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700978508901560597)
,p_event_id=>wwv_flow_api.id(700976950738560596)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P39_FORM_SUBMITTED,P39_STEP_1_COMPLETE,P39_STEP_2_COMPLETE,P39_STEP_3_COMPLETE,P39_PERSON_ID,P39_PERSON_NAME,P39_MASLUL,P39_ESTIMATED_START_DATE,P39_HOST_ORGANIZATION,P39_PRIORITIES,P39_AREAS_OF_RESPONSIBILITY,P39_AREAS_OF_RESP_OTHER,P39_AREAS_OF_RES'
||'P_OTHER_DESC,P39_TARGET_DEMOGRAPHICS,P39_CORE_EXPERTISE,P39_WORK_MODE_PREFERENCE,P39_SUPERVISION_OP_AUTONOMY,P39_CORE_COMP_HEADER,P39_PUBLIC_SPEAKING_FACILITATE,P39_PLANING_IMPLEMENTATION,P39_CROSS_CULTURE_COMM,P39_TIME_MANAGEMENT_PROD,P39_PROFESSION'
||'AL_ENGLISH_PROF,P39_REQUIRED_SKILLS,P39_PREFERRED_SKILLS,P39_DRIVERS_LICENSE,P39_RELIGIOUS_ENVIRONMENT,P39_SHABBAT_ACCOMMODATION,P39_DIETARY_STANDARDS,P39_SOCIAL_ECOSYSTEM,P39_SOCIAL_ECOSYSTEM_AMOUNT,P39_HOLISTIC_SUPPORT_SYSTEM,P39_HOLISTIC_SUPPORT_S'
||'YS_OTHER,P39_PARTNERSHIP_2_GATHER_PREF,P39_SUMMER_CAMP_REQUIREMENT,P39_CAMP_TYPE,P39_ROLE_IN_CAMP,P39_DURATION_AND_LOCATION,P39_ASSIGN_ON_BEHALF_OF,P39_MEASURABLE_OUTCOMES,P39_SHLICHUT_TERMS_HEADER,P39_ST_HOUSING,P39_ST_TRANSPORTATION,P39_ST_CHILDREN'
||'S_EDUCATION,P39_FURTHER_INFORMATION,P39_JOB_DESCRIPTION'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700977498145560596)
,p_event_id=>wwv_flow_api.id(700976950738560596)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1257649735551636360)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700982065311560599)
,p_name=>'Display Current Region'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700982629985560599)
,p_event_id=>wwv_flow_api.id(700982065311560599)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P39_STEP_1_COMPLETE'') == ''Y'' && $v(''P39_STEP_2_COMPLETE'') == ''N'') {',
'    $(''#newShaliachStep1'').hide();',
'    $(''#newShaliachStep2'').show();',
'    $(''#formRegion'').show();',
'}',
'else if ($v(''P39_STEP_2_COMPLETE'') == ''Y'' && $v(''P39_STEP_3_COMPLETE'') == ''N'') {',
'    $(''#newShaliachStep1'').hide();',
'    $(''#newShaliachStep2'').hide();',
'    $(''#newShaliachStep3'').show();',
'    $(''#formRegion'').show();',
'}',
'else if ($v(''P39_STEP_3_COMPLETE'') == ''Y'' && $v(''P39_FORM_SUBMITTED'') == ''Y'') {',
'    $(''#formRegion'').hide();',
'    $(''#thankYouContainer'').show();',
'}',
'else if ($(''.t-Form-error'').length == 0) {',
'    $(''#newShaliachRequestsRegion'').show();',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700982957961560599)
,p_name=>'Progress Bar Click'
,p_event_sequence=>130
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#progressBar'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700983471822560599)
,p_event_id=>wwv_flow_api.id(700982957961560599)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P39_FORM_SUBMITTED'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700983975699560600)
,p_event_id=>wwv_flow_api.id(700982957961560599)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P39_FORM_SUBMITTED := NULL;'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700984431356560600)
,p_name=>'Add Another Request Click'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(700946996554560582)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700984884289560600)
,p_event_id=>wwv_flow_api.id(700984431356560600)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'9_SENIORS_DESC'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700985415725560600)
,p_event_id=>wwv_flow_api.id(700984431356560600)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P39_ESTIMATED_START_DATE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'''August 1, '' || to_char(sysdate + :P39_ESTIMATED_START_DATE_DAYS, ''YYYY'')'
,p_attribute_07=>'P39_ESTIMATED_START_DATE_DAYS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700985848951560600)
,p_event_id=>wwv_flow_api.id(700984431356560600)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P39_FORM_SUBMITTED := NULL;'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700986390047560601)
,p_event_id=>wwv_flow_api.id(700984431356560600)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var newShaliachTitleHtml = ''<div style="display: flex; gap: 5px; align-items: center;">'' +',
'                                   ''<img id="newShaliachBtn" src="#APP_IMAGES#favorite.svg"/>'' +',
'                                   ''<span style="font-weight: normal; flex-grow: 1;">New Shaliach</span>'' +',
'                                   ''<img id="closeNewShaliachBtn" style="float: right; margin-right: 5px;" width="16" height="16" src="#APP_IMAGES#ic-x-close.png"/>'' +',
'                               ''</div>'';',
'',
'$(''#newShaliachContainer_heading'').html(newShaliachTitleHtml);',
'$s(''P39_MASLUL'', ''Young Shlichut (Ofek)'');'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700986854471560601)
,p_event_id=>wwv_flow_api.id(700984431356560600)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1257649735551636360)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700987441406560601)
,p_event_id=>wwv_flow_api.id(700984431356560600)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1813062899115592803)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700987828177560601)
,p_name=>'Header Links Click'
,p_event_sequence=>150
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.t-Header-logo-link'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700988261982560601)
,p_event_id=>wwv_flow_api.id(700987828177560601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P39_FORM_SUBMITTED'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700988759758560602)
,p_event_id=>wwv_flow_api.id(700987828177560601)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P39_FORM_SUBMITTED := NULL;'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700989234600560602)
,p_name=>'Header Home Link Click'
,p_event_sequence=>160
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.home-link'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700989738940560602)
,p_event_id=>wwv_flow_api.id(700989234600560602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P39_FORM_SUBMITTED'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700990193521560602)
,p_event_id=>wwv_flow_api.id(700989234600560602)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P39_FORM_SUBMITTED := NULL;'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700971153512560594)
,p_name=>'Core Expertise Change'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P39_CORE_EXPERTISE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700971706909560594)
,p_event_id=>wwv_flow_api.id(700971153512560594)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var topParentElement = $(this.triggeringElement).parents(''[data-min-items][data-max-items]'');',
'var minItems = $(topParentElement).data(''min-items'');',
'var maxItems = $(topParentElement).data(''max-items'');',
'let checkedCount = $(''input[name="'' + $(this.triggeringElement).attr(''id'') + ''"]:checked'').length;',
'if (minItems > checkedCount || checkedCount > maxItems) {',
'    $(event.target).prop(''checked'', false);',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700965306604560591)
,p_name=>'Area of Responsibilities Other Change'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P39_AREAS_OF_RESP_OTHER'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700965809255560591)
,p_event_id=>wwv_flow_api.id(700965306604560591)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(event.target).is('':checked'') === true ?',
'    $(''#P39_AREAS_OF_RESP_OTHER_DESC_CONTAINER'').show() :',
'    $(''#P39_AREAS_OF_RESP_OTHER_DESC_CONTAINER'').hide();'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700966230209560591)
,p_name=>'Social Ecosystem Change'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P39_SOCIAL_ECOSYSTEM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700966662105560592)
,p_event_id=>wwv_flow_api.id(700966230209560591)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$v(''P39_SOCIAL_ECOSYSTEM'') === ''Y'' ?',
'    $(''#P39_SOCIAL_ECOSYSTEM_AMOUNT_CONTAINER'').show() :',
'    $(''#P39_SOCIAL_ECOSYSTEM_AMOUNT_CONTAINER'').hide();'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700967073519560592)
,p_name=>'Holistic Support System Change'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P39_HOLISTIC_SUPPORT_SYSTEM'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P39_HOLISTIC_SUPPORT_SYSTEM'').includes(''5'') === false'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700967593433560592)
,p_event_id=>wwv_flow_api.id(700967073519560592)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P39_HOLISTIC_SUPPORT_SYS_OTHER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700968111898560592)
,p_event_id=>wwv_flow_api.id(700967073519560592)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P39_HOLISTIC_SUPPORT_SYS_OTHER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700968465083560592)
,p_name=>'Job Description Change'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P39_JOB_DESCRIPTION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700969010358560593)
,p_event_id=>wwv_flow_api.id(700968465083560592)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var filename = $(''#P39_JOB_DESCRIPTION'').val().replace(''C:\\fakepath\\'', '''');',
'if (filename && filename.length > 0) {',
'    const fileExtension = filename.split(''.'').pop().toLowerCase();',
'    if (![''doc'',''docx'',''pdf'',''jpg'',''jpeg''].includes(fileExtension)) {',
'        alert(''Invalid file type!\nPlease upload a file of these formates:\ndoc, docx, pdf, jpg, jpeg.'');',
'',
'        $(''#jd-file-upload-btn-filename'').text('''');',
'        $(''#jd-file-upload-btn-text'').text(''File Upload'');',
'        $(''#P39_JOB_DESCRIPTION'').val('''');',
'        return;',
'    }',
'',
'    $(''#jd-file-upload-btn-filename'').text(filename);',
'    $(''#jd-file-upload-btn-text'').text(''Change File'');',
'}',
'else {',
'    $(''#jd-file-upload-btn-filename'').text('''');',
'    $(''#jd-file-upload-btn-text'').text(''File Upload'');',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700969411912560593)
,p_name=>'Initialize HTML Checkbox Group'
,p_event_sequence=>220
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700969940241560593)
,p_event_id=>wwv_flow_api.id(700969411912560593)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    $(''.html-group .apex-item-option label'').each(function(idx, element) {',
'        var text = $(element).text();',
'        $(element).text('''');',
'        $(element).html(text); ',
'    });',
'});'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700970250495560593)
,p_name=>'Initialize File Upload Controls'
,p_event_sequence=>230
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700970835632560593)
,p_event_id=>wwv_flow_api.id(700970250495560593)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    $(''#P39_JOB_DESCRIPTION'').on(''cancel'', function() {',
'        $(''#jd-file-upload-btn-filename'').text('''');',
'        $(''#jd-file-upload-btn-text'').text(''Upload File'');',
'    });',
'});'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700979392390560597)
,p_name=>'Form Next Click'
,p_event_sequence=>240
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.form-next-button'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700979925640560597)
,p_event_id=>wwv_flow_api.id(700979392390560597)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.page.submit(''FormStep'' + $(this.triggeringElement).data(''step'') + ''Submit'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700980341795560598)
,p_name=>'Form Back Click'
,p_event_sequence=>250
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.form-back-button'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700980747626560598)
,p_event_id=>wwv_flow_api.id(700980341795560598)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var currentStep = $(this.triggeringElement).data(''step'');',
'if (currentStep == 3) {',
'    $(''#replaceShaliachStep3'').hide();',
'    $(''#replaceShaliachStep2'').show();',
'}',
'else if (currentStep == 2) {',
'    $(''#replaceShaliachStep2'').hide();',
'    $(''#replaceShaliachStep1'').show();',
'}',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700981220320560598)
,p_name=>'Job Description Upload File Click'
,p_event_sequence=>260
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#jd-file-upload-btn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700981709558560598)
,p_event_id=>wwv_flow_api.id(700981220320560598)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P39_JOB_DESCRIPTION'').click();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700990561382560602)
,p_name=>'Summer Camps Requirement Change'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P39_SUMMER_CAMP_REQUIREMENT'
,p_condition_element=>'P39_SUMMER_CAMP_REQUIREMENT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700991062864560603)
,p_event_id=>wwv_flow_api.id(700990561382560602)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P39_CAMP_TYPE,P39_ROLE_IN_CAMP,P39_DURATION_AND_LOCATION,P39_ASSIGN_ON_BEHALF_OF'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700991610336560603)
,p_event_id=>wwv_flow_api.id(700990561382560602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P39_CAMP_TYPE,P39_ROLE_IN_CAMP,P39_DURATION_AND_LOCATION,P39_ASSIGN_ON_BEHALF_OF'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(700963713161560589)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'p_status varchar2(200):='''';',
'l_ovn pls_integer;',
'l_job_id number;',
'l_name  varchar2(200);',
'l_org_information_id number;',
'l_media_id           number;',
'l_full_name varchar2(500);',
'l_media_id_area number;',
'BEGIN',
'  ',
'fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800);  ',
'  ',
' XX_MY_UTILS.add_msg(''Start Submit PAge9 ''); ',
'    ',
'    /* Vita, please do not remove the next line: */',
'    :P39_FORM_SUBMITTED := ''Y'';',
unistr('    /* Thank you! :) \2665 */'),
'    ',
'    fnd_global.APPS_INITIALIZE(:PO_USER_ID,:PO_RESP_ID,800);  ',
'    ',
'        if (:P39_PRIORITIES is not null ) THEN ',
'         l_media_id:= JAFI_IRC_EIT_UTILS.create_short_text(:P39_PRIORITIES);',
'       else',
'         l_media_id:=Null;',
'       end if;',
'     ',
'     ',
'',
'    if (:P39_AREAS_OF_RESP_OTHER_DESC is not null ) THEN ',
'         l_media_id_area:= JAFI_IRC_EIT_UTILS.create_short_text(:P39_AREAS_OF_RESP_OTHER_DESC);',
'       else',
'         l_media_id_area:=Null;',
'       end if;',
'       ',
'   --   XX_MY_UTILS.add_msg(''Start Submit PAge9 ''|| :P39_AREAS_OF_RESP_OTHER_DESC); ',
'      ',
'      ',
'         -- For Replace Shaliah ',
'            hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                                                  ,p_object_version_number => l_ovn',
'                                                  ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOM_LTS_RF'' ',
'                                                  ,p_org_information_id => l_org_information_id',
'                                                  ,p_org_information4 => :P39_MASLUL ',
'                                                                        /*',
'                                                                          case                                                    ',
'                                                                              when l_name = ''Senior'' then',
'                                                                                            ''Senior Shlichut (Shachar/Bina)''',
'                                                                                   else ''Young Shlichut (Ofek)''',
'                                                                           end',
'                                                                        */',
'                                                  ,p_org_information5 => TO_CHAR(TO_DATE( :P39_ESTIMATED_START_DATE, ''Month DD, YYYY''), ''DD/MM/YYYY'') ',
'                                                  ,p_org_information6 => l_media_id',
'                                                  ,p_org_information7 => :P39_AREAS_OF_RESPONSIBILITY',
'                                                  ,p_org_information8 => l_media_id_area',
'                                                  ',
'                                                  ,p_org_information9 => :P39_REQUIRED_SKILLS ',
'                                                  ,p_org_information10 => :P39_PREFERRED_SKILLS  ',
'                                                  ,p_org_information11 => :P0_CURRENT_YEAR',
'                                                  ,p_org_information12 => case ',
'                                                                              when :P39_PRESCHOOL is null or :P39_PRESCHOOL = '''' then ''N''',
'                                                                              else ''Y''',
'                                                                           end',
'                                                  ,p_org_information13 => case ',
'                                                                              when :P39_ELEMENTARY is null or :P39_ELEMENTARY = '''' then ''N''',
'                                                                              else ''Y''',
'                                                                           end',
'                                                  ,p_org_information14 =>  case ',
'                                                                              when :P39_TEENAGERS is null or :P39_TEENAGERS = '''' then ''N''',
'                                                                              else ''Y''',
'                                                                           end',
'                                                      ',
'                                                  ,p_org_information15 =>  case ',
'                                                                              when :P39_COLLEGE is null or :P39_COLLEGE = '''' then ''N''',
'                                                                              else ''Y''',
'                                                                           end     ',
'                                                  ,p_org_information16 =>  case ',
'                                                                              when :P39_PARENTS is null or :P39_PARENTS = '''' then ''N''',
'                                                                              else ''Y''',
'                                                                           end         ',
'                                                  ,p_org_information17 =>  case ',
'                                                                              when :P39_ADULTS is null or :P39_ADULTS = '''' then ''N''',
'                                                                              else ''Y''',
'                                                                           end       ',
'                                                  ,p_org_information18 =>  case ',
'                                                                              when :P39_SENIORS is null or :P39_SENIORS = '''' then ''N''',
'                                                                              else ''Y''',
'                                                                           end         ',
'                                                  ,p_org_information19 =>   case ',
'                                                                              when :P39_TARGET_AUDIENCES_OTHER is null or :P39_TARGET_AUDIENCES_OTHER = '''' then ''N''',
'                                                                              else ''Y''',
'                                                                           end    ',
'                                                 ,p_attribute_category  => ''JAFI_HR_SHLICHUT_CUSTOM_LTS_RF''',
'                                                 ,p_attribute1  =>  SUBSTR(:P39_PRESCHOOL_DESC,1,149)',
'                                                  ,p_attribute2  => SUBSTR(:P39_ELEMENTARY_DESC,1,149)',
'                                                  ,p_attribute3  => SUBSTR(:P39_TEENAGERS_DESC,1,149)',
'                                                  ,p_attribute4  => SUBSTR(:P39_COLLEGE_DESC,1,149)',
'                                                  ,p_attribute5  => SUBSTR(:P39_PARENTS_DESC,1,149)',
'                                                  ,p_attribute6  => SUBSTR(:P39_ADULTS_DESC,1,149)',
'                                                  ,p_attribute7  =>  SUBSTR(:P39_SENIORS_DESC , 1, 149)  -- :P39_SENIORS_DESC  ',
'                                                  ,p_attribute8  => SUBSTR(:P39_TARGET_AUDIENCES_OTHER_DESC, 1, 149)  --   :P39_TARGET_AUDIENCES_OTHER_DESC',
'                                                 ',
'                                                  ,p_organization_id  => :P0_ORG_ID);    ',
'                            ',
'                  ',
'                  ',
'exception when others then',
' :P39_FORM_SUBMITTED := null;',
' XX_MY_UTILS.add_msg(''Failed to update  '' ||sqlerrm); ',
' ',
' apex_error.add_error (',
'              p_message          => ''Failed to update =>''||sqlerrm,',
'                     ',
'    p_display_location => apex_error.c_inline_in_notification );',
'',
'end;',
'       ',
'       '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(700964125695560590)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FormStep1Submit'
,p_process_sql_clob=>':P39_STEP_1_COMPLETE := ''Y'';'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'FormStep1Submit'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
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
 p_id=>wwv_flow_api.id(700964523112560590)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FormStep2Submit'
,p_process_sql_clob=>':P39_STEP_2_COMPLETE := ''Y'';'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'FormStep2Submit'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(700964930027560590)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FormStep3Submit'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'declare',
'  p_status                varchar2(200) := '''';',
'  l_ovn                   pls_integer;',
'  l_job_id                number;',
'  l_name                  varchar2(200);',
'  l_org_information_id    number;',
'  l_media_id              number;',
'  l_media_id_area         number;',
'  l_full_name             varchar2(500);',
'  v_tr_org_information_id number;',
'  l_save_out              boolean;',
'  l_message_out           varchar2(500);',
'',
'BEGIN',
'  fnd_global.APPS_INITIALIZE(:P0_USER_ID, :P0_RESP_ID, 800);',
'',
'  XX_MY_UTILS.add_msg(''Start Submit PAge9 '');',
' ',
'  /* Vita, please do not remove the next line: */',
'  :P39_FORM_SUBMITTED := ''Y'';',
unistr('  /* Thank you! :) \2665 */'),
'',
'',
'  if (:P39_PRIORITIES is not null) THEN',
'    l_media_id := JAFI_IRC_EIT_UTILS.create_short_text(:P39_PRIORITIES);',
'  else',
'    l_media_id := Null;',
'  end if;',
'',
'  if (:P39_AREAS_OF_RESP_OTHER_DESC is not null) THEN',
'    l_media_id_area := JAFI_IRC_EIT_UTILS.create_short_text(:P39_AREAS_OF_RESP_OTHER_DESC);',
'  else',
'    l_media_id_area := Null;',
'  end if;',
'',
'  -- For Replace Shaliah ',
'',
'  ----------------------------JAFI_HR_SHLICHUT_CUSTOM_LTS_RF',
'',
'  hr_organization_api.create_org_information(p_effective_date        => Sysdate,',
'                                             p_object_version_number => l_ovn,',
'                                             p_org_info_type_code    => ''JAFI_HR_SHLICHUT_CUSTOM_LTS_RF'',',
'                                             p_org_information_id    => l_org_information_id,',
'                                             p_org_information4      => :P39_MASLUL,',
'                                             p_org_information5      => TO_CHAR(TO_DATE(:P39_ESTIMATED_START_DATE,     ''Month DD, YYYY''),',
'                                                                                ''DD/MM/YYYY'')',
'                                             ',
'                                            ,',
'                                             p_org_information6 => l_media_id',
'                                             ',
'                                            ,',
'                                             p_org_information7 => :P39_AREAS_OF_RESPONSIBILITY,',
'                                             p_org_information8 => l_media_id_area',
'                                             ',
'                                            ,',
'                                             p_org_information9  => :P39_REQUIRED_SKILLS,',
'                                             p_org_information10 => :P39_PREFERRED_SKILLS,',
'                                             p_org_information11 => :P0_CURRENT_YEAR,',
'                                             p_org_information17 => case',
'                                                                      when INSTR(:P39_TARGET_DEMOGRAPHICS,',
'                                                                                 ''Adults'') > 0 then',
'                                                                       ''Y''',
'                                                                      else',
'                                                                       ''N''',
'                                                                    end',
'                                             --------',
'                                            ,',
'                                             p_org_information12 => case',
'                                                                      when INSTR(:P39_TARGET_DEMOGRAPHICS,',
'                                                                                 ''Preschool'') > 0 then',
'                                                                       ''Y''',
'                                                                      else',
'                                                                       ''N''',
'                                                                    end,',
'                                             p_org_information13 => case',
'                                                                      when INSTR(:P39_TARGET_DEMOGRAPHICS,',
'                                                                                 ''Elementary'') > 0 then',
'                                                                       ''Y''',
'                                                                      else',
'                                                                       ''N''',
'                                                                    end',
'                                             ',
'                                            ,',
'                                             p_org_information14 => case',
'                                                                      when INSTR(:P39_TARGET_DEMOGRAPHICS,',
'                                                                                 ''Teenagers'') > 0 then',
'                                                                       ''Y''',
'                                                                      else',
'                                                                       ''N''',
'                                                                    end,',
'                                             p_org_information15 => case',
'                                                                      when INSTR(:P39_TARGET_DEMOGRAPHICS,',
'                                                                                 ''College'') > 0 then',
'                                                                       ''Y''',
'                                                                      else',
'                                                                       ''N''',
'                                                                    end,',
'                                             p_org_information16 => case',
'                                                                      when INSTR(:P39_TARGET_DEMOGRAPHICS,',
'                                                                                 ''Parents'') > 0 then',
'                                                                       ''Y''',
'                                                                      else',
'                                                                       ''N''',
'                                                                    end,',
'                                             p_org_information18 => case',
'                                                                      when INSTR(:P39_TARGET_DEMOGRAPHICS,',
'                                                                                 ''Seniors'') > 0 then',
'                                                                       ''Y''',
'                                                                      else',
'                                                                       ''N''',
'                                                                    end',
'                                             ',
'                                             ----------------------',
'                                            ,',
'                                             p_org_information20 => :P39_CORE_EXPERTISE,',
'                                             p_org_information3  => :P39_HOST_ORGANIZATION',
'                                             ',
'                                            ,',
'                                             p_organization_id => :P0_ORG_ID);',
'',
'  v_tr_org_information_id := l_org_information_id;',
'',
'  ----------------------------JAFI_HR_SHLICHUT_CUST_LTS_RF_2',
'  hr_organization_api.create_org_information(p_effective_date        => Sysdate,',
'                                             p_object_version_number => l_ovn,',
'                                             p_org_info_type_code    => ''JAFI_HR_SHLICHUT_CUST_LTS_RF_2'',',
'                                             p_org_information_id    => l_org_information_id,',
'                                            -- p_org_information1      => l_full_name,',
'                                            -- p_org_information2      => :P39_PERSON_ID,',
'                                             p_org_information3      => v_tr_org_information_id,',
'                                             p_org_information4      => :P39_WORK_MODE_PREFERENCE,',
'                                             p_org_information5      => :P39_SUPERVISION_OP_AUTONOMY,',
'                                             p_org_information6      => :P39_PUBLIC_SPEAKING_FACILITATE,',
'                                             p_org_information7      => :P39_PLANING_IMPLEMENTATION,',
'                                             p_org_information8      => :P39_CROSS_CULTURE_COMM,',
'                                             p_org_information9      => :P39_TIME_MANAGEMENT_PROD,',
'                                             p_org_information10     => :P39_PROFESSIONAL_ENGLISH_PROF,',
'                                             p_org_information11     => :P0_CURRENT_YEAR,',
'                                             p_org_information12     => :P39_DRIVERS_LICENSE,',
'                                             p_org_information13     => :P39_RELIGIOUS_ENVIRONMENT,',
'                                             p_org_information14     => :P39_SHABBAT_ACCOMMODATION,',
'                                             p_org_information15     => :P39_DIETARY_STANDARDS,',
'                                             p_org_information16     => :P39_SOCIAL_ECOSYSTEM,',
'                                             p_org_information17     => :P39_SOCIAL_ECOSYSTEM_AMOUNT,',
'                                             p_org_information18     => :P39_HOLISTIC_SUPPORT_SYSTEM,',
'                                             p_org_information19     => :P39_HOLISTIC_SUPPORT_SYS_OTHER,',
'                                             p_org_information20     => :P39_PARTNERSHIP_2_GATHER_PREF,',
'                                             p_organization_id       => :P0_ORG_ID);',
'',
'  ----------------------------------------  JAFI_HR_SHLICHUT_CUST_LTS_RF_3',
'',
'                                                ',
'                          hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                                                   ,p_object_version_number => l_ovn',
'                                                   ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUST_LTS_RF_3'' ',
'                                                   ,p_org_information_id => l_org_information_id',
'                                                --     ,p_org_information1 =>  l_full_name',
'                                                --   ,p_org_information2 => :P39_PERSON_ID ',
'                                                   ,p_org_information3 => v_tr_org_information_id',
'                                                    ,p_org_information4 =>  :P39_SUMMER_CAMP_REQUIREMENT',
'                                                   ,p_org_information5 => :P39_CAMP_TYPE',
'                                                   ,p_org_information6 => :P39_ROLE_IN_CAMP',
'                                                   ,p_org_information7 => :P39_DURATION_AND_LOCATION',
'                                                      ,p_org_information8 => :P39_ASSIGN_ON_BEHALF_OF',
'                                                   ,p_org_information9 => :P39_MEASURABLE_OUTCOMES',
'                                                   ,p_org_information10 => :P39_ST_HOUSING',
'                                                    ,p_org_information11 =>:P0_CURRENT_YEAR ',
'                                                     ,p_org_information12 => :P39_ST_TRANSPORTATION',
'                                                   ,p_org_information13 => :P39_ST_CHILDRENS_EDUCATION',
'                                                   ,p_org_information14 => :P39_FURTHER_INFORMATION     ',
'                                                   ,p_organization_id  => :P0_ORG_ID);    ',
'                  ',
'                        JAFI_COMMUNITY_APEX_UTILS.jafi_update_dor_attachment(p_temp_name=>v(''P39_JOB_DESCRIPTION''),',
'                                                                      p_camp_name => :P0_USER_NAME,',
'                                                                      p_camp_id   => :P0_ORG_ID ,',
'                                                                      p_description => l_org_information_id, ',
'                                                                      p_saved    => l_save_out ,',
'                                                                      p_message => l_message_out)  ;   -- Output message',
'           ',
'           :P39_STEP_3_COMPLETE := ''Y'';       ',
' ',
'exception',
'  when others then',
'    :P39_FORM_SUBMITTED := null;',
'    :P39_STEP_3_COMPLETE := ''N'';',
'    XX_MY_UTILS.add_msg(''Failed to update  '' || sqlerrm);',
'    apex_error.add_error(p_message          => ''Failed to update =>'' ||',
'                                               sqlerrm,',
'                         p_display_location => apex_error.c_inline_in_notification);',
'end;',
'',
'',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'FormStep3Submit'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.component_end;
end;
/
