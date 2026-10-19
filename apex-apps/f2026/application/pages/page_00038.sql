prompt --application/pages/page_00038
begin
--   Manifest
--     PAGE: 00038
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
 p_id=>38
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'Amitey Israel - Replace Shaliach'
,p_alias=>'AMITEY-ISRAEL-REPLACE-SHALIACH'
,p_step_title=>'Amitey Israel - Replace Shaliach'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_IMAGES#select2-extension.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var isMobile;',
'',
'window.mobileCheck = function() {',
'  let check = false;',
'  (function(a){if(/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|ps'
||'p|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows ce|xda|xiino/i.test(a)||/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|a'
||'van|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1'
||' u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\'
||'/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)'
||'|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s5'
||'5\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(7'
||'0|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(a.substr(0,4))) check = true;})(navigator.u'
||'serAgent||navigator.vendor||window.opera);',
'  return check;',
'};',
'',
'function setStepHeader(name) {',
'    $(''#info-shaliach-name'').text(name);',
'    name = isMobile === true ? '''' : name;',
'    ',
'    var headerTemplate = ''<div style="display: flex; gap: 5px; align-items: center;">'' +',
'                                   ''<img id="recycleReplaceShaliachBtn" src="#APP_IMAGES#recycle.svg"/>'' +',
'                                   ''<span style="font-weight: normal;">Replace Shaliach (#STEP#)</span>'' +',
'                                   ''<span style="flex-grow: 1;">'' + name + ''</span>'' +',
'                                   ''<img id="closeReplaceShaliachBtn" style="float: right; margin-right: 5px;" width="16" height="16" src="#APP_IMAGES#ic-x-close.png"/>'' +',
'                               ''</div>'';',
'',
'    $(''#replaceShaliachStep1_heading'').html(headerTemplate.replace(''#STEP#'', ''1/3''));',
'    $(''#replaceShaliachStep2_heading'').html(headerTemplate.replace(''#STEP#'', ''2/3''));',
'    $(''#replaceShaliachStep3_heading'').html(headerTemplate.replace(''#STEP#'', ''3/3''));',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function () {',
'    $("#P8_AREAS_OF_RESPONSIBILITY").select2({',
'        templateResult: formatState_P8_AREAS_OF_RESPONSIBILITY,',
'        templateSelection: formatSelected_P8_AREAS_OF_RESPONSIBILITY,',
'        placeholder: "Search",',
'        maximumSelectionLength: 5,',
'        closeOnSelect: false',
'    });',
'',
'    function formatSelected_P8_AREAS_OF_RESPONSIBILITY(data) {',
'        if (!data.id) {',
'            return data.text;',
'        }',
'',
'        const selectedValues = $("#P8_AREAS_OF_RESPONSIBILITY").val() || [];',
'        const selectedCount = selectedValues.length;',
'',
'        const options = $("#P8_AREAS_OF_RESPONSIBILITY option").map(function () {',
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
'    function formatState_P8_AREAS_OF_RESPONSIBILITY(state) {',
'        if (!state.id) {',
'            return state.text;',
'        }',
'',
'        var $state = $(''<div class="rf-input-checkbox-wrap"><span class="rf-checkbox-mark"></span> '' + state.text + "</div>");',
'        return $state;',
'    }',
'',
'    $("#P8_AREAS_OF_RESPONSIBILITY").on("change", function () {',
'        $("#P8_AREAS_OF_RESPONSIBILITY option").each(function () {',
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
'    $("#P8_TARGET_DEMOGRAPHICS").select2({',
'        templateResult: formatState_P8_TARGET_DEMOGRAPHICS,',
'        templateSelection: formatSelected_P8_TARGET_DEMOGRAPHICS,',
'        placeholder: "Search",',
'        maximumSelectionLength: 5,',
'        closeOnSelect: false',
'    });',
'',
'    function formatSelected_P8_TARGET_DEMOGRAPHICS(data) {',
'        if (!data.id) {',
'            return data.text;',
'        }',
'',
'        const selectedValues = $("#P8_TARGET_DEMOGRAPHICS").val() || [];',
'        const selectedCount = selectedValues.length;',
'',
'        const options = $("#P8_TARGET_DEMOGRAPHICS option").map(function () {',
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
'    function formatState_P8_TARGET_DEMOGRAPHICS(state) {',
'        if (!state.id) {',
'            return state.text;',
'        }',
'',
'        var $state = $(''<div class="rf-input-checkbox-wrap"><span class="rf-checkbox-mark"></span> '' + state.text + "</div>");',
'        return $state;',
'    }',
'',
'    $("#P8_TARGET_DEMOGRAPHICS").on("change", function () {',
'        $("#P8_TARGET_DEMOGRAPHICS option").each(function () {',
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
'    $("#P8_REQUIRED_SKILLS").select2({',
'        templateResult: formatState_P8_REQUIRED_SKILLS,',
'        templateSelection: formatSelected_P8_REQUIRED_SKILLS,',
'        placeholder: "Search",',
'        maximumSelectionLength: 7,',
'        closeOnSelect: false',
'    });',
'',
'    function formatSelected_P8_REQUIRED_SKILLS(data) {',
'        if (!data.id) {',
'            return data.text;',
'        }',
'',
'        const selectedValues = $("#P8_REQUIRED_SKILLS").val() || [];',
'        const selectedCount = selectedValues.length;',
'',
'        const options = $("#P8_REQUIRED_SKILLS option").map(function () {',
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
'    function formatState_P8_REQUIRED_SKILLS(state) {',
'        if (!state.id) {',
'            return state.text;',
'        }',
'',
'        var $state = $(''<div class="rf-input-checkbox-wrap"><span class="rf-checkbox-mark"></span> '' + state.text + "</div>");',
'        return $state;',
'    }',
'',
'    $("#P8_REQUIRED_SKILLS").on("change", function () {',
'        $("#P8_REQUIRED_SKILLS option").each(function () {',
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
'    $("#P8_PREFERRED_SKILLS").select2({',
'        templateResult: formatState_P8_PREFERRED_SKILLS,',
'        templateSelection: formatSelected_P8_PREFERRED_SKILLS,',
'        placeholder: "Search",',
'        maximumSelectionLength: 3,',
'        closeOnSelect: false',
'    });',
'',
'    function formatSelected_P8_PREFERRED_SKILLS(data) {',
'        if (!data.id) {',
'            return data.text;',
'        }',
'',
'        const selectedValues = $("#P8_PREFERRED_SKILLS").val() || [];',
'        const selectedCount = selectedValues.length;',
'',
'        const options = $("#P8_PREFERRED_SKILLS option").map(function () {',
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
'    function formatState_P8_PREFERRED_SKILLS(state) {',
'        if (!state.id) {',
'            return state.text;',
'        }',
'',
'        var $state = $(''<div class="rf-input-checkbox-wrap"><span class="rf-checkbox-mark"></span> '' + state.text + "</div>");',
'        return $state;',
'    }',
'',
'    $("#P8_PREFERRED_SKILLS").on("change", function () {',
'        $("#P8_PREFERRED_SKILLS option").each(function () {',
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
'    ',
'    ',
'    ',
'    ',
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
'#P8_AREAS_OF_RESP_OTHER_DESC {',
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
'#shlichimRegion {',
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
'    height: 549px;',
'}',
'',
'#thankYouContainer .t-Region-body {',
'    min-height: 560px !important;',
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
'#replaceShaliachStep1_heading,',
'#replaceShaliachStep2_heading,',
'#replaceShaliachStep3_heading {',
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
'#P8_CORE_EXPERTISE_CONTAINER {',
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
'.shaliach-name {',
'    margin-bottom: 25px;',
'    margin-top: 20px;',
'}',
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
'    #shlichimRegion {',
'        width: 90vw !important;',
'    }',
'    ',
'    #shlichimRegion ul {',
'        justify-content: start !important;',
'        gap: 6% !important;',
'    }',
'    ',
'    #shlichimRegion ul li {',
'        min-width: auto !important;',
'        width: 100% !important;',
'        margin-bottom: 20px;',
'    }',
'    ',
'    #shlichimRegion ul li a,',
'    #shlichimRegion ul li a > div,',
'    #shlichimRegion ul li span,',
'    #shlichimRegion ul li span > div{',
'        width: 100% !important;',
'    }',
'    ',
'    #shlichimRegion .dates-container {',
'        height: fit-content !important;',
'        padding: 10px !important;',
'        align-items: center !important;',
'    }',
'    ',
'    #shlichimRegion .start-date-container {',
'        margin-bottom: 0 !important;',
'    }',
'    ',
'    #shlichimRegion .start-date-value {',
'        margin-bottom: 10px;',
'    }',
'    ',
'    #shlichimRegion .start-date-value,',
'    #shlichimRegion .end-date-value {',
'        /*margin-left: 0 !important;',
'        width: 100% !important;*/',
'        text-align: start;',
'    }',
'    ',
'    .form-step {',
'        width: 95vw !important;',
'        min-width: 95vw !important;',
'        border-radius: 20px !important;',
'    }',
'    ',
'    #P8_AREAS_OF_RESPONSIBILITY_LABEL {',
'        line-height: 22px;',
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
'    /* -------------------------- */',
'    ',
'    form > .t-Body {',
'        padding-bottom: 10px !important;',
'    }',
'    ',
'    .t-Body-title {',
'        border-bottom: none;',
'    }',
'    ',
'    #info-shaliach-name {',
'        font-size: 20px;',
'        font-weight: 700;',
'        background-color: #FFFFFF59;',
'        height: 40px;',
'        display: flex;',
'        align-items: center;',
'        justify-content: center;',
'        border-radius: 5px;',
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
'    #P8_MASLUL .apex-item-option label {',
'        padding-top: 3px !important;',
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
'    .request-was-sent-container {',
'        font-size: 15px !important;',
'    }',
'    ',
'    /*.form-step .t-Region-body {',
'        padding-left: 20px !important;',
'        padding-right: 20px !important;',
'    }*/',
'}'))
,p_step_template=>wwv_flow_api.id(29244342218644)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DRORA'
,p_last_upd_yyyymmddhh24miss=>'20261015113346'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1237635467817767552)
,p_plug_name=>'Title'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(1491988443724117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Request form'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1237635576596767553)
,p_plug_name=>'Prograss Bar'
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
 p_id=>wwv_flow_api.id(1237635994977767557)
,p_name=>'Shlichim'
,p_region_name=>'shlichimRegion'
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:margin-left-none:margin-right-none'
,p_component_template_options=>'#DEFAULT#:t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_grid_column_css_classes=>'center-region'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with ',
'	pics as (',
'		select doc.binary_doc photo, dbms_lob.getlength(doc.binary_doc) photo_length, doc.person_id, doc.file_name',
'		from irc_documents doc',
'		where doc.file_format = ''BINARY''',
'			  and doc.type = ''PHOTO''',
'			  and doc.mime_type like ''image%''',
'			  and doc.end_date is null',
'			  and doc.document_id = (select max(doc1.document_id)',
'									 from irc_documents doc1',
'									 where doc1.file_format = ''BINARY''',
'										   and doc1.type = ''PHOTO''',
'										   and doc1.mime_type like ''image%''',
'										   and doc.person_id = doc1.person_id',
'										   and doc1.end_date is null)',
'			  and doc.person_id in',
'				 (select papf.person_id',
'				  from per_all_people_f       papf,',
'				  per_all_assignments_f  paaf,',
'				  per_periods_of_service ppos,',
'				  per_jobs               pj',
'				  where paaf.organization_id = :P0_ORG_ID AND',
'                        papf.person_id = paaf.person_id',
'						and paaf.person_id = ppos.person_id',
'						and paaf.period_of_service_id = ppos.period_of_service_id',
'						and paaf.job_id = pj.job_id',
'						and trunc(sysdate) between papf.effective_start_date and papf.effective_end_date',
'						and ppos.actual_termination_date between paaf.effective_start_date and paaf.effective_end_date',
'						and pj.job_id in (86464, 46472, 46478,57462,46476,46474)',
'						and ppos.actual_termination_date between trunc(sysdate) - 1200 and trunc(sysdate)',
'				 UNION',
'				 SELECT papf.person_id',
'				 FROM   per_all_people_f papf,',
'						per_all_assignments_f paaf,',
'						per_periods_of_service ppos,',
'						per_jobs pj',
'				 WHERE  paaf.organization_id = :P0_ORG_ID AND',
'						papf.person_id = paaf.person_id',
'						AND paaf.person_id = ppos.person_id',
'						AND paaf.period_of_service_id = ppos.period_of_service_id',
'						AND paaf.job_id = pj.job_id',
'						AND Trunc(sysdate) BETWEEN papf.effective_start_date AND papf.effective_end_date',
'						AND Trunc(sysdate) BETWEEN paaf.effective_start_date AND paaf.effective_end_date',
'						AND pj.job_id IN (86464, 46472, 46478,57462,46476,46474)',
'						AND ppos.actual_termination_date IS NULL',
'						AND To_date(paaf.ass_attribute5, ''YYYY/MM/DD HH24:MI:SS'') - Trunc(sysdate) < 365)),',
'	existingRequests as (',
'		select PERSON_ID',
'		from (',
'			SELECT papf.person_id,',
'				   papf.first_name,',
'				   papf.last_name,',
'				   pj.NAME,',
'				   '''' maslul,',
'				   ppos.date_start,',
'				   ppos.actual_termination_date,',
'				   jafi_hr_pkg.Get_org_name(paaf.organization_id) community_name,',
'				   paaf.organization_id',
'			FROM   per_all_people_f papf,',
'				   per_all_assignments_f paaf,',
'				   per_periods_of_service ppos,',
'				   per_jobs pj,',
'				   hr_organization_information hoi',
'			WHERE  paaf.organization_id = :P0_ORG_ID AND',
'				   papf.person_id = paaf.person_id',
'				   AND paaf.person_id = ppos.person_id',
'				   AND paaf.period_of_service_id = ppos.period_of_service_id',
'				   AND paaf.job_id = pj.job_id',
'				   AND paaf.organization_id = hoi.organization_id',
'				   AND hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOM_LTS_RF''',
'				   AND hoi.org_information2 = papf.person_id',
'				   AND Trunc(sysdate) BETWEEN papf.effective_start_date AND papf.effective_end_date',
'				   AND ppos.actual_termination_date BETWEEN paaf.effective_start_date AND paaf.effective_end_date',
'				   AND pj.job_id IN (86464, 46472, 46478,57462,46476,46474)',
'				   AND ppos.actual_termination_date BETWEEN Trunc(sysdate) - 1200 AND Trunc(sysdate)',
'			UNION',
'			SELECT papf.person_id,',
'				   papf.first_name,',
'				   papf.last_name,',
'				   pj.NAME,',
'				   '''' maslul,',
'				   ppos.date_start,',
'				   To_date(paaf.ass_attribute5, ''YYYY/MM/DD HH24:MI:SS''),',
'				   jafi_hr_pkg.Get_org_name(paaf.organization_id) community_name,',
'				   paaf.organization_id',
'			FROM   per_all_people_f papf,',
'				   per_all_assignments_f paaf,',
'				   per_periods_of_service ppos,',
'				   per_jobs pj,',
'				   hr_organization_information hoi',
'			WHERE  paaf.organization_id = :P0_ORG_ID AND',
'				   papf.person_id = paaf.person_id',
'				   AND paaf.person_id = ppos.person_id',
'				   AND paaf.period_of_service_id = ppos.period_of_service_id',
'				   AND paaf.job_id = pj.job_id',
'				   AND paaf.organization_id = hoi.organization_id',
'				   AND hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOM_LTS_RF''',
'				   AND hoi.org_information2 = papf.person_id',
'				   AND Trunc(sysdate) BETWEEN papf.effective_start_date AND papf.effective_end_date',
'				   AND Trunc(sysdate) BETWEEN paaf.effective_start_date AND paaf.effective_end_date',
'				   AND pj.job_id IN (86464, 46472, 46478,57462,46476,46474)',
'				   AND ppos.actual_termination_date IS NULL',
'				   AND To_date(paaf.ass_attribute5, ''YYYY/MM/DD HH24:MI:SS'') - Trunc(sysdate) < 365))',
'                     ',
'select case when not exists(select 1 from existingRequests r where r.person_id = d.person_id) and p.photo is null then ''MAIN-NO-IMAGE''',
'            when not exists(select 1 from existingRequests r where r.person_id = d.person_id) and p.photo is not null then ''MAIN''',
'            when exists(select 1 from existingRequests r where r.person_id = d.person_id) and p.photo is null then ''MAIN-NO-IMAGE-REQUEST-SENT''',
'            when exists(select 1 from existingRequests r where r.person_id = d.person_id) and p.photo is not null then ''MAIN-REQUEST-SENT''',
'       end TYPE, ',
'       d.*,',
'       case when length(d.FIRST_NAME || '' '' || d.LAST_NAME) > 22 then ''marquee'' else ''div'' end NAME_ELEMENT,',
'       to_char(d.DATE_START, ''Month dd, yyyy'') str_date_start,       ',
'       to_char(d.ACTUAL_TERMINATION_DATE, ''Month dd, yyyy'') str_actual_termination_date,',
'       p.photo, ',
'       p.photo_length, ',
'       p.file_name,',
'       case when p.photo_length is not null and p.file_name like ''%.%'' then',
'           apex_page.get_url(p_page => ''12'', ',
'                             p_request => ''APPLICATION_PROCESS=GetImage'', ',
'                             p_items => ''P12_PERSON_ID'', ',
'                             p_values => d.PERSON_ID )',
'            else ''#APP_IMAGES#anonymous-user.jpeg''',
'       end image_url',
'from (',
'    SELECT papf.person_id,',
'           papf.first_name,',
'           papf.last_name,',
'           pj.NAME,',
'           '''' maslul,',
'           ppos.date_start,',
'           ppos.actual_termination_date,',
'           jafi_hr_pkg.Get_org_name(paaf.organization_id) community_name,',
'           paaf.organization_id',
'    FROM   per_all_people_f papf,',
'           per_all_assignments_f paaf,',
'           per_periods_of_service ppos,',
'           per_jobs pj',
'    WHERE  paaf.organization_id = :P0_ORG_ID AND',
'           papf.person_id = paaf.person_id',
'           AND paaf.person_id = ppos.person_id',
'           AND paaf.period_of_service_id = ppos.period_of_service_id',
'           AND paaf.job_id = pj.job_id',
'           AND Trunc(sysdate) BETWEEN papf.effective_start_date AND papf.effective_end_date',
'           AND ppos.actual_termination_date BETWEEN paaf.effective_start_date AND paaf.effective_end_date',
'           AND pj.job_id IN (86464, 46472, 46478,57462,46476,46474)',
'           AND ppos.actual_termination_date BETWEEN Trunc(sysdate) - 1200 AND Trunc(sysdate)',
'    UNION',
'    SELECT papf.person_id,',
'           papf.first_name,',
'           papf.last_name,',
'           pj.NAME,',
'           '''' maslul,',
'           ppos.date_start,',
'           To_date(paaf.ass_attribute5, ''YYYY/MM/DD HH24:MI:SS''),',
'           jafi_hr_pkg.Get_org_name(paaf.organization_id) community_name,',
'           paaf.organization_id',
'    FROM   per_all_people_f papf,',
'           per_all_assignments_f paaf,',
'           per_periods_of_service ppos,',
'           per_jobs pj',
'    WHERE  paaf.organization_id = :P0_ORG_ID AND',
'           papf.person_id = paaf.person_id',
'           AND paaf.person_id = ppos.person_id',
'           AND paaf.period_of_service_id = ppos.period_of_service_id',
'           AND paaf.job_id = pj.job_id',
'           AND Trunc(sysdate) BETWEEN papf.effective_start_date AND papf.effective_end_date',
'           AND Trunc(sysdate) BETWEEN paaf.effective_start_date AND paaf.effective_end_date',
'           AND pj.job_id IN (86464, 46472, 46478,57462,46476,46474)',
'           AND ppos.actual_termination_date IS NULL',
'           AND To_date(paaf.ass_attribute5, ''YYYY/MM/DD HH24:MI:SS'') - Trunc(sysdate) < 365) d,',
'    pics p',
'where p.person_id(+) = d.person_id',
'order by ACTUAL_TERMINATION_DATE, FIRST_NAME, LAST_NAME'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_ORG_ID'
,p_query_row_template=>wwv_flow_api.id(59325175918710479)
,p_query_num_rows=>1000000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
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
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(700863468807557672)
,p_query_column_id=>1
,p_column_alias=>'TYPE'
,p_column_display_sequence=>1
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(700863753628557673)
,p_query_column_id=>2
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Person Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(700864157333557674)
,p_query_column_id=>3
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'First Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(700864621313557674)
,p_query_column_id=>4
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Last Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(700865004932557674)
,p_query_column_id=>5
,p_column_alias=>'NAME'
,p_column_display_sequence=>5
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(700865371120557675)
,p_query_column_id=>6
,p_column_alias=>'MASLUL'
,p_column_display_sequence=>6
,p_column_heading=>'Maslul'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(700865753686557675)
,p_query_column_id=>7
,p_column_alias=>'DATE_START'
,p_column_display_sequence=>7
,p_column_heading=>'Date Start'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(700866240150557676)
,p_query_column_id=>8
,p_column_alias=>'ACTUAL_TERMINATION_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Actual Termination Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(700866627517557676)
,p_query_column_id=>9
,p_column_alias=>'COMMUNITY_NAME'
,p_column_display_sequence=>9
,p_column_heading=>'Community Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(700866957784557677)
,p_query_column_id=>10
,p_column_alias=>'ORGANIZATION_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Organization Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(700867420739557677)
,p_query_column_id=>11
,p_column_alias=>'NAME_ELEMENT'
,p_column_display_sequence=>17
,p_column_heading=>'Name Element'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(700867837168557678)
,p_query_column_id=>12
,p_column_alias=>'STR_DATE_START'
,p_column_display_sequence=>15
,p_column_heading=>'Str Date Start'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(700868215189557678)
,p_query_column_id=>13
,p_column_alias=>'STR_ACTUAL_TERMINATION_DATE'
,p_column_display_sequence=>16
,p_column_heading=>'Str Actual Termination Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(700868548499557678)
,p_query_column_id=>14
,p_column_alias=>'PHOTO'
,p_column_display_sequence=>11
,p_column_heading=>'Photo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(700869015302557679)
,p_query_column_id=>15
,p_column_alias=>'PHOTO_LENGTH'
,p_column_display_sequence=>12
,p_column_heading=>'Photo Length'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(700869376365557679)
,p_query_column_id=>16
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>13
,p_column_heading=>'File Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(700869750419557679)
,p_query_column_id=>17
,p_column_alias=>'IMAGE_URL'
,p_column_display_sequence=>14
,p_column_heading=>'Image Url'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1237637932067767577)
,p_plug_name=>'Replace Shaliach Old'
,p_region_name=>'replaceShaliachContainer1'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(491247236618075195)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1256239354292225864)
,p_plug_name=>'Back To Home Container'
,p_region_name=>'backToHomeContainer'
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1256239471293225865)
,p_plug_name=>'Thank You Container'
,p_region_name=>'thankYouContainer'
,p_region_css_classes=>'standard-rounded-rg'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:margin-top-md'
,p_plug_template=>wwv_flow_api.id(2889647945233431)
,p_plug_display_sequence=>80
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
 p_id=>wwv_flow_api.id(1257572684505633476)
,p_plug_name=>'Buttons Container'
,p_region_name=>'buttonsRegion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1746764773008186583)
,p_plug_name=>'Form'
,p_region_name=>'formRegion'
,p_region_css_classes=>'hidden'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1746764603126186582)
,p_plug_name=>'Replace Shaliach - Step 1'
,p_region_name=>'replaceShaliachStep1'
,p_parent_plug_id=>wwv_flow_api.id(1746764773008186583)
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
 p_id=>wwv_flow_api.id(1746765010902186586)
,p_plug_name=>'Position Overview & Administrative Data'
,p_parent_plug_id=>wwv_flow_api.id(1746764603126186582)
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
 p_id=>wwv_flow_api.id(1746765214919186588)
,p_plug_name=>'Professional Realms & Responsibilities'
,p_parent_plug_id=>wwv_flow_api.id(1746764603126186582)
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
 p_id=>wwv_flow_api.id(1746765297674186589)
,p_plug_name=>'Targeted Demographics'
,p_parent_plug_id=>wwv_flow_api.id(1746764603126186582)
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
 p_id=>wwv_flow_api.id(1786911345511843841)
,p_plug_name=>'Professional Profile & Organizational Fit'
,p_parent_plug_id=>wwv_flow_api.id(1746764603126186582)
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
 p_id=>wwv_flow_api.id(1786912355478843851)
,p_plug_name=>'Navigation Buttons'
,p_parent_plug_id=>wwv_flow_api.id(1746764603126186582)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>70
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1746764921967186585)
,p_plug_name=>'Info'
,p_parent_plug_id=>wwv_flow_api.id(1746764773008186583)
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
'</p>',
'<br/>',
'<div id="info-shaliach-name" class="mobile-br info-text"></div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1786914516784843873)
,p_plug_name=>'Replace Shaliach - Step 2'
,p_region_name=>'replaceShaliachStep2'
,p_parent_plug_id=>wwv_flow_api.id(1746764773008186583)
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
 p_id=>wwv_flow_api.id(1792782090410473542)
,p_plug_name=>'Core Competencies'
,p_parent_plug_id=>wwv_flow_api.id(1786914516784843873)
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
 p_id=>wwv_flow_api.id(1792783161076473553)
,p_plug_name=>'Logistics___ Observance & Support'
,p_parent_plug_id=>wwv_flow_api.id(1786914516784843873)
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
 p_id=>wwv_flow_api.id(1792783532173473557)
,p_plug_name=>'Navigation Buttons'
,p_parent_plug_id=>wwv_flow_api.id(1786914516784843873)
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
 p_id=>wwv_flow_api.id(1786915906383843887)
,p_plug_name=>'Replace Shaliach - Step 3'
,p_region_name=>'replaceShaliachStep3'
,p_parent_plug_id=>wwv_flow_api.id(1746764773008186583)
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
 p_id=>wwv_flow_api.id(1792786549724473587)
,p_plug_name=>'Summer Activity (Camps)'
,p_parent_plug_id=>wwv_flow_api.id(1786915906383843887)
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
 p_id=>wwv_flow_api.id(1794601832532495751)
,p_plug_name=>'Other Information'
,p_parent_plug_id=>wwv_flow_api.id(1786915906383843887)
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
 p_id=>wwv_flow_api.id(1794603696454495770)
,p_plug_name=>'File Upload'
,p_region_name=>'jobDescriptionFileUploadContainer'
,p_parent_plug_id=>wwv_flow_api.id(1794601832532495751)
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
 p_id=>wwv_flow_api.id(1794602813059495761)
,p_plug_name=>'Navigation Buttons'
,p_parent_plug_id=>wwv_flow_api.id(1786915906383843887)
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
 p_id=>wwv_flow_api.id(700872605674557682)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1257572684505633476)
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
 p_id=>wwv_flow_api.id(700871217879557681)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1256239354292225864)
,p_button_name=>'BACK_TO_MENU'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back to Menu'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RR,8,9::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(700870478254557680)
,p_button_sequence=>340
,p_button_plug_id=>wwv_flow_api.id(1237637932067767577)
,p_button_name=>'SubmitForm'
,p_button_static_id=>'submitFormBtn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2938281857134305)
,p_button_image_alt=>'Submit Form'
,p_button_position=>'BODY'
,p_grid_column_css_classes=>'center-region'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(700871933755557682)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1256239471293225865)
,p_button_name=>'ReplaceAnotherShaliach'
,p_button_static_id=>'replaceAnotherShaliachBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2938281857134305)
,p_button_image_alt=>'Replace another Shaliach'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700837367288557642)
,p_name=>'P38_FORM_SUBMITTED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1746764773008186583)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700837840917557644)
,p_name=>'P38_STEP_1_COMPLETE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1746764773008186583)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700838199220557644)
,p_name=>'P38_STEP_2_COMPLETE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1746764773008186583)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700838633036557644)
,p_name=>'P38_STEP_3_COMPLETE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1746764773008186583)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700838963291557645)
,p_name=>'P38_PERSON_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1746764773008186583)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700839357904557645)
,p_name=>'P38_PERSON_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(1746764773008186583)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700839800619557646)
,p_name=>'P38_DISABLE_EDIT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(1746764773008186583)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700840154702557646)
,p_name=>'P38_MIN_START_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(1746764773008186583)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700840559491557646)
,p_name=>'P38_MAX_START_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(1746764773008186583)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700841257549557647)
,p_name=>'P38_ESTIMATED_START_DATE_DAYS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(1746764603126186582)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700842009791557648)
,p_name=>'P38_AREAS_OF_RESPONSIBILITY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(1746765214919186588)
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
 p_id=>wwv_flow_api.id(700842432544557649)
,p_name=>'P38_AREAS_OF_RESP_OTHER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(1746765214919186588)
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
 p_id=>wwv_flow_api.id(700842800981557650)
,p_name=>'P38_AREAS_OF_RESP_OTHER_DESC'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(1746765214919186588)
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
 p_id=>wwv_flow_api.id(700843453872557651)
,p_name=>'P38_CORE_EXPERTISE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1786911345511843841)
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
 p_id=>wwv_flow_api.id(700843863017557652)
,p_name=>'P38_WORK_MODE_PREFERENCE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1786911345511843841)
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
 p_id=>wwv_flow_api.id(700844290021557652)
,p_name=>'P38_SUPERVISION_OP_AUTONOMY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1786911345511843841)
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
 p_id=>wwv_flow_api.id(700845259142557653)
,p_name=>'P38_TARGET_DEMOGRAPHICS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1746765297674186589)
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
 p_id=>wwv_flow_api.id(700846021073557654)
,p_name=>'P38_MASLUL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1746765010902186586)
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
 p_id=>wwv_flow_api.id(700846375202557655)
,p_name=>'P38_ESTIMATED_START_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1746765010902186586)
,p_prompt=>'Estimated Start Date'
,p_format_mask=>'Month DD, YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_02=>'&P38_MIN_START_DATE.'
,p_attribute_03=>'&P38_MAX_START_DATE.'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'1900:3000'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700846747652557655)
,p_name=>'P38_HOST_ORGANIZATION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(1746765010902186586)
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
 p_id=>wwv_flow_api.id(700847183985557656)
,p_name=>'P38_PRIORITIES'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(1746765010902186586)
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
 p_id=>wwv_flow_api.id(700848468313557658)
,p_name=>'P38_CORE_COMP_HEADER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1792782090410473542)
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
 p_id=>wwv_flow_api.id(700848859098557658)
,p_name=>'P38_PUBLIC_SPEAKING_FACILITATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1792782090410473542)
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
 p_id=>wwv_flow_api.id(700849338211557658)
,p_name=>'P38_PLANING_IMPLEMENTATION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1792782090410473542)
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
 p_id=>wwv_flow_api.id(700849655190557659)
,p_name=>'P38_CROSS_CULTURE_COMM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1792782090410473542)
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
 p_id=>wwv_flow_api.id(700850067283557659)
,p_name=>'P38_TIME_MANAGEMENT_PROD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(1792782090410473542)
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
 p_id=>wwv_flow_api.id(700850504623557659)
,p_name=>'P38_PROFESSIONAL_ENGLISH_PROF'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(1792782090410473542)
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
 p_id=>wwv_flow_api.id(700850892992557660)
,p_name=>'P38_REQUIRED_SKILLS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(1792782090410473542)
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
,p_lov_cascade_parent_items=>'P38_MASLUL'
,p_ajax_items_to_submit=>'P38_MASLUL'
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
 p_id=>wwv_flow_api.id(700851276769557660)
,p_name=>'P38_PREFERRED_SKILLS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(1792782090410473542)
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
,p_lov_cascade_parent_items=>'P38_MASLUL'
,p_ajax_items_to_submit=>'P38_MASLUL'
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
 p_id=>wwv_flow_api.id(700851981069557661)
,p_name=>'P38_DRIVERS_LICENSE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1792783161076473553)
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
 p_id=>wwv_flow_api.id(700852372869557661)
,p_name=>'P38_RELIGIOUS_ENVIRONMENT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1792783161076473553)
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
 p_id=>wwv_flow_api.id(700852800127557662)
,p_name=>'P38_SHABBAT_ACCOMMODATION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1792783161076473553)
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
 p_id=>wwv_flow_api.id(700853181904557662)
,p_name=>'P38_DIETARY_STANDARDS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(1792783161076473553)
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
 p_id=>wwv_flow_api.id(700853548747557662)
,p_name=>'P38_SOCIAL_ECOSYSTEM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(1792783161076473553)
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
 p_id=>wwv_flow_api.id(700853974526557663)
,p_name=>'P38_SOCIAL_ECOSYSTEM_AMOUNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(1792783161076473553)
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
 p_id=>wwv_flow_api.id(700854442354557663)
,p_name=>'P38_HOLISTIC_SUPPORT_SYSTEM'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(1792783161076473553)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(700854779124557663)
,p_name=>'P38_HOLISTIC_SUPPORT_SYS_OTHER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(1792783161076473553)
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
 p_id=>wwv_flow_api.id(700855218784557663)
,p_name=>'P38_PARTNERSHIP_2_GATHER_PREF'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(1792783161076473553)
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
 p_id=>wwv_flow_api.id(700856526605557665)
,p_name=>'P38_SUMMER_CAMP_REQUIREMENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1792786549724473587)
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
 p_id=>wwv_flow_api.id(700856852799557665)
,p_name=>'P38_CAMP_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1792786549724473587)
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
 p_id=>wwv_flow_api.id(700857317878557665)
,p_name=>'P38_ROLE_IN_CAMP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1792786549724473587)
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
 p_id=>wwv_flow_api.id(700857666462557666)
,p_name=>'P38_DURATION_AND_LOCATION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1792786549724473587)
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
 p_id=>wwv_flow_api.id(700858140768557666)
,p_name=>'P38_ASSIGN_ON_BEHALF_OF'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(1792786549724473587)
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
 p_id=>wwv_flow_api.id(700858823104557666)
,p_name=>'P38_MEASURABLE_OUTCOMES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1794601832532495751)
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
 p_id=>wwv_flow_api.id(700859236724557667)
,p_name=>'P38_SHLICHUT_TERMS_HEADER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1794601832532495751)
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
 p_id=>wwv_flow_api.id(700859611098557667)
,p_name=>'P38_ST_HOUSING'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1794601832532495751)
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
 p_id=>wwv_flow_api.id(700860022833557667)
,p_name=>'P38_ST_TRANSPORTATION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1794601832532495751)
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
 p_id=>wwv_flow_api.id(700860374790557667)
,p_name=>'P38_ST_CHILDRENS_EDUCATION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(1794601832532495751)
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
 p_id=>wwv_flow_api.id(700860796750557668)
,p_name=>'P38_FURTHER_INFORMATION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(1794601832532495751)
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
 p_id=>wwv_flow_api.id(700861188014557668)
,p_name=>'P38_JOB_DESCRIPTION_HEADER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(1794601832532495751)
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
 p_id=>wwv_flow_api.id(700861905547557669)
,p_name=>'P38_JOB_DESCRIPTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1794603696454495770)
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
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(700873847174557684)
,p_computation_sequence=>10
,p_computation_item=>'P38_ESTIMATED_START_DATE_DAYS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'case when sysdate < to_date(''01/08/'' || extract(year from sysdate), ''DD/MM/YYYY'') then 0 else 365 end'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(700873105791557684)
,p_computation_sequence=>20
,p_computation_item=>'P38_MIN_START_DATE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'''August 1, '' || to_char(sysdate + :P38_ESTIMATED_START_DATE_DAYS, ''YYYY'')'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(700873513908557684)
,p_computation_sequence=>30
,p_computation_item=>'P38_MAX_START_DATE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'''December 31, '' || to_char(sysdate + :P38_ESTIMATED_START_DATE_DAYS, ''YYYY'')'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700875539440557686)
,p_validation_name=>'Estimated Start Date is valid'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    parsedDate date;',
'begin',
'    select to_date(:P38_ESTIMATED_START_DATE, ''Month DD, YYYY'') into parsedDate from dual;',
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
,p_associated_item=>wwv_flow_api.id(700846375202557655)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700876318216557686)
,p_validation_name=>'Estimated Start Date Max Value'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'to_date(:P38_MIN_START_DATE, ''Month DD, YYYY'') <= to_date(:P38_ESTIMATED_START_DATE, ''Month DD, YYYY'') and ',
'to_date(:P38_ESTIMATED_START_DATE, ''Month DD, YYYY'') <= to_date(:P38_MAX_START_DATE, ''Month DD, YYYY'')'))
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Please pick a date between &P38_MIN_START_DATE. and &P38_MAX_START_DATE.'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep1Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700846375202557655)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700876733975557687)
,p_validation_name=>'Host Organization is not null'
,p_validation_sequence=>100
,p_validation=>'P38_HOST_ORGANIZATION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep1Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700846747652557655)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700874268909557685)
,p_validation_name=>'Priorities is not null'
,p_validation_sequence=>110
,p_validation=>'P38_PRIORITIES'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep1Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700847183985557656)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700874652377557685)
,p_validation_name=>'Areas Of Responsibility is not null'
,p_validation_sequence=>130
,p_validation=>'P38_AREAS_OF_RESPONSIBILITY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please select between 3 to 5 options'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep1Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700842009791557648)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700875921009557686)
,p_validation_name=>'Areas Of Responsibility is between 3 and 5'
,p_validation_sequence=>140
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_length number;',
'    v_lengthAfterReplace number;',
'    v_selectedCount number;',
'begin',
'    v_length := length(:P38_AREAS_OF_RESPONSIBILITY);    ',
'    v_lengthAfterReplace := length(replace(:P38_AREAS_OF_RESPONSIBILITY,'':'',null));',
'    v_selectedCount := v_length - v_lengthAfterReplace + 1;',
' ',
'    return  3 <= v_selectedCount and v_selectedCount <= 5;',
'end;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please select between 3 to 5 options'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep1Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700842009791557648)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700875049230557686)
,p_validation_name=>'Areas Of Responsibility Other Desc is not null'
,p_validation_sequence=>160
,p_validation=>':P38_AREAS_OF_RESP_OTHER is null or :P38_AREAS_OF_RESP_OTHER_DESC is not null'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep1Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700842800981557650)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700877127927557687)
,p_validation_name=>'Target Demographics is not null'
,p_validation_sequence=>170
,p_validation=>'P38_TARGET_DEMOGRAPHICS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please select at least one option'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep1Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700845259142557653)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700877467860557687)
,p_validation_name=>'Core Expertise is not null'
,p_validation_sequence=>180
,p_validation=>'P38_CORE_EXPERTISE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please select up to 2 options'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep1Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700843453872557651)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700877941605557687)
,p_validation_name=>'Work Mode Preference is not null'
,p_validation_sequence=>190
,p_validation=>'P38_WORK_MODE_PREFERENCE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep1Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700843863017557652)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700878281608557687)
,p_validation_name=>'Supervision & Operational Autonomy is not null'
,p_validation_sequence=>200
,p_validation=>'P38_SUPERVISION_OP_AUTONOMY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep1Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700844290021557652)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700878667745557688)
,p_validation_name=>'Public Speaking & Facilitation is not null'
,p_validation_sequence=>210
,p_validation=>'P38_PUBLIC_SPEAKING_FACILITATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep2Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700848859098557658)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700879065979557688)
,p_validation_name=>'Planning & Implementation is not null'
,p_validation_sequence=>220
,p_validation=>'P38_PLANING_IMPLEMENTATION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep2Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700849338211557658)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700879518950557688)
,p_validation_name=>'Cross-Cultural Communication is not null'
,p_validation_sequence=>230
,p_validation=>'P38_CROSS_CULTURE_COMM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep2Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700849655190557659)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700879903178557688)
,p_validation_name=>'Time Management & Productivity is not null'
,p_validation_sequence=>240
,p_validation=>'P38_TIME_MANAGEMENT_PROD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep2Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700850067283557659)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700880312805557688)
,p_validation_name=>'Professional English Proficiency is not null'
,p_validation_sequence=>250
,p_validation=>'P38_PROFESSIONAL_ENGLISH_PROF'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep2Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700850504623557659)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700880678012557688)
,p_validation_name=>'Required Skills & Qualities is not null'
,p_validation_sequence=>260
,p_validation=>'P38_REQUIRED_SKILLS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep2Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700850892992557660)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700881084051557688)
,p_validation_name=>'Drivers License is not null'
,p_validation_sequence=>270
,p_validation=>'P38_DRIVERS_LICENSE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep2Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700851981069557661)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700881541903557689)
,p_validation_name=>'Primary Religious Environment is not null'
,p_validation_sequence=>280
,p_validation=>'P38_RELIGIOUS_ENVIRONMENT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep2Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700852372869557661)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700881848412557689)
,p_validation_name=>'Shabbat Accommodations is not null'
,p_validation_sequence=>290
,p_validation=>'P38_SHABBAT_ACCOMMODATION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep2Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700852800127557662)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700882298396557689)
,p_validation_name=>'Dietary Standards (Kashrut) is not null'
,p_validation_sequence=>300
,p_validation=>'P38_DIETARY_STANDARDS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep2Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700853181904557662)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700882736389557689)
,p_validation_name=>'Social Ecosystem is not null'
,p_validation_sequence=>310
,p_validation=>'P38_SOCIAL_ECOSYSTEM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep2Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700853548747557662)
,p_error_display_location=>'INLINE_WITH_FIELD'
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700883069685557689)
,p_validation_name=>'Social Ecosystem Amount is not null'
,p_validation_sequence=>330
,p_validation=>'P38_SOCIAL_ECOSYSTEM_AMOUNT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>':REQUEST = ''FormStep2Submit'' and :P38_SOCIAL_ECOSYSTEM = ''Y'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(700853974526557663)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700883490208557690)
,p_validation_name=>'Holistic Support System is not null'
,p_validation_sequence=>350
,p_validation=>'P38_HOLISTIC_SUPPORT_SYSTEM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep2Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700854442354557663)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700883920790557690)
,p_validation_name=>'Holistic Support System Other is not null'
,p_validation_sequence=>370
,p_validation=>'P38_HOLISTIC_SUPPORT_SYS_OTHER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>':REQUEST = ''FormStep2Submit'' and :P38_HOLISTIC_SUPPORT_SYSTEM = ''Y'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(700854779124557663)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700884287221557690)
,p_validation_name=>'Summer Camp Requirements is not null'
,p_validation_sequence=>380
,p_validation=>'P38_SUMMER_CAMP_REQUIREMENT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep3Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700856526605557665)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700884646157557690)
,p_validation_name=>'Camp Type is not null'
,p_validation_sequence=>390
,p_validation=>'P38_CAMP_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>':REQUEST = ''FormStep3Submit'' and :P38_SUMMER_CAMP_REQUIREMENT = ''Y'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(700856852799557665)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700885078217557690)
,p_validation_name=>'Role in Camp is not null'
,p_validation_sequence=>400
,p_validation=>'P38_ROLE_IN_CAMP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>':REQUEST = ''FormStep3Submit'' and :P38_SUMMER_CAMP_REQUIREMENT = ''Y'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(700857317878557665)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700885453004557690)
,p_validation_name=>'Duration & Location is not null'
,p_validation_sequence=>410
,p_validation=>'P38_DURATION_AND_LOCATION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>':REQUEST = ''FormStep3Submit'' and :P38_SUMMER_CAMP_REQUIREMENT = ''Y'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(700857666462557666)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700885855403557691)
,p_validation_name=>'Assign on Behalf of is not null'
,p_validation_sequence=>420
,p_validation=>'P38_ASSIGN_ON_BEHALF_OF'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>':REQUEST = ''FormStep3Submit'' and :P38_SUMMER_CAMP_REQUIREMENT = ''Y'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(700858140768557666)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700886267718557691)
,p_validation_name=>'Measurable Outcomes is not null'
,p_validation_sequence=>430
,p_validation=>'P38_MEASURABLE_OUTCOMES'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep3Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700858823104557666)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700886739279557691)
,p_validation_name=>'Shlichut Terms - Housing is not null'
,p_validation_sequence=>440
,p_validation=>'P38_ST_HOUSING'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep3Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700859611098557667)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700887094734557691)
,p_validation_name=>'Shlichut Terms - Transportation is not null'
,p_validation_sequence=>450
,p_validation=>'P38_ST_TRANSPORTATION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep3Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700860022833557667)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700887541311557691)
,p_validation_name=>'Shlichut Terms - Children''s Education is not null'
,p_validation_sequence=>460
,p_validation=>'P38_ST_CHILDRENS_EDUCATION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep3Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700860374790557667)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(700887862894557691)
,p_validation_name=>'Job Description is not null'
,p_validation_sequence=>470
,p_validation=>'P38_JOB_DESCRIPTION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>'FormStep3Submit'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_api.id(700861188014557668)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700889764981557694)
,p_name=>'Replace Shaliach Click'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.replace-shaliach-btn'
,p_condition_element=>'P38_DISABLE_EDIT'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700892340246557697)
,p_event_id=>wwv_flow_api.id(700889764981557694)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_FORM_SUBMITTED,P38_STEP_1_COMPLETE,P38_STEP_2_COMPLETE,P38_STEP_3_COMPLETE,P38_PERSON_ID,P38_PERSON_NAME,P38_MASLUL,P38_ESTIMATED_START_DATE,P38_HOST_ORGANIZATION,P38_PRIORITIES,P38_AREAS_OF_RESPONSIBILITY,P38_AREAS_OF_RESP_OTHER,P38_AREAS_OF_RES'
||'P_OTHER_DESC,P38_TARGET_DEMOGRAPHICS,P38_CORE_EXPERTISE,P38_WORK_MODE_PREFERENCE,P38_SUPERVISION_OP_AUTONOMY,P38_CORE_COMP_HEADER,P38_PUBLIC_SPEAKING_FACILITATE,P38_PLANING_IMPLEMENTATION,P38_CROSS_CULTURE_COMM,P38_TIME_MANAGEMENT_PROD,P38_PROFESSION'
||'AL_ENGLISH_PROF,P38_REQUIRED_SKILLS,P38_PREFERRED_SKILLS,P38_DRIVERS_LICENSE,P38_RELIGIOUS_ENVIRONMENT,P38_SHABBAT_ACCOMMODATION,P38_DIETARY_STANDARDS,P38_SOCIAL_ECOSYSTEM,P38_SOCIAL_ECOSYSTEM_AMOUNT,P38_HOLISTIC_SUPPORT_SYSTEM,P38_HOLISTIC_SUPPORT_S'
||'YS_OTHER,P38_PARTNERSHIP_2_GATHER_PREF,P38_SUMMER_CAMP_REQUIREMENT,P38_CAMP_TYPE,P38_ROLE_IN_CAMP,P38_DURATION_AND_LOCATION,P38_ASSIGN_ON_BEHALF_OF,P38_MEASURABLE_OUTCOMES,P38_SHLICHUT_TERMS_HEADER,P38_ST_HOUSING,P38_ST_TRANSPORTATION,P38_ST_CHILDREN'
||'S_EDUCATION,P38_FURTHER_INFORMATION,P38_JOB_DESCRIPTION'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700892748399557697)
,p_event_id=>wwv_flow_api.id(700889764981557694)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_ESTIMATED_START_DATE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'''August 1, '' || to_char(sysdate + :P38_ESTIMATED_START_DATE_DAYS, ''YYYY'')'
,p_attribute_07=>'P38_ESTIMATED_START_DATE_DAYS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700890297247557695)
,p_event_id=>wwv_flow_api.id(700889764981557694)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_FORM_SUBMITTED,P38_STEP_1_COMPLETE,P38_STEP_2_COMPLETE,P38_STEP_3_COMPLETE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700893297667557698)
,p_event_id=>wwv_flow_api.id(700889764981557694)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var personId = $(this.triggeringElement).data(''person-id'');',
'var name = $(this.triggeringElement).data(''name'');',
'var maslul = $(this.triggeringElement).data(''maslul'');',
'',
'$s(''P38_PERSON_ID'', personId);',
'$s(''P38_PERSON_NAME'', name);',
'$s(''P38_MASLUL'', maslul);',
'',
'setStepHeader(name);',
'window.scrollTo(0, 0);'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700893793210557698)
,p_event_id=>wwv_flow_api.id(700889764981557694)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1237635994977767557)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700891822203557697)
,p_event_id=>wwv_flow_api.id(700889764981557694)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1786914516784843873)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700890779414557696)
,p_event_id=>wwv_flow_api.id(700889764981557694)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1786915906383843887)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700894248677557698)
,p_event_id=>wwv_flow_api.id(700889764981557694)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1746764603126186582)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700891268645557696)
,p_event_id=>wwv_flow_api.id(700889764981557694)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1746764773008186583)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700894699520557698)
,p_name=>'Close Replace Shaliach Click'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#closeReplaceShaliachBtn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700896228479557699)
,p_event_id=>wwv_flow_api.id(700894699520557698)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1746764773008186583)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700895191353557699)
,p_event_id=>wwv_flow_api.id(700894699520557698)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_FORM_SUBMITTED,P38_STEP_1_COMPLETE,P38_STEP_2_COMPLETE,P38_STEP_3_COMPLETE,P38_PERSON_ID,P38_PERSON_NAME,P38_MASLUL,P38_ESTIMATED_START_DATE,P38_HOST_ORGANIZATION,P38_PRIORITIES,P38_AREAS_OF_RESPONSIBILITY,P38_AREAS_OF_RESP_OTHER,P38_AREAS_OF_RES'
||'P_OTHER_DESC,P38_TARGET_DEMOGRAPHICS,P38_CORE_EXPERTISE,P38_WORK_MODE_PREFERENCE,P38_SUPERVISION_OP_AUTONOMY,P38_CORE_COMP_HEADER,P38_PUBLIC_SPEAKING_FACILITATE,P38_PLANING_IMPLEMENTATION,P38_CROSS_CULTURE_COMM,P38_TIME_MANAGEMENT_PROD,P38_PROFESSION'
||'AL_ENGLISH_PROF,P38_REQUIRED_SKILLS,P38_PREFERRED_SKILLS,P38_DRIVERS_LICENSE,P38_RELIGIOUS_ENVIRONMENT,P38_SHABBAT_ACCOMMODATION,P38_DIETARY_STANDARDS,P38_SOCIAL_ECOSYSTEM,P38_SOCIAL_ECOSYSTEM_AMOUNT,P38_HOLISTIC_SUPPORT_SYSTEM,P38_HOLISTIC_SUPPORT_S'
||'YS_OTHER,P38_PARTNERSHIP_2_GATHER_PREF,P38_SUMMER_CAMP_REQUIREMENT,P38_CAMP_TYPE,P38_ROLE_IN_CAMP,P38_DURATION_AND_LOCATION,P38_ASSIGN_ON_BEHALF_OF,P38_MEASURABLE_OUTCOMES,P38_SHLICHUT_TERMS_HEADER,P38_ST_HOUSING,P38_ST_TRANSPORTATION,P38_ST_CHILDREN'
||'S_EDUCATION,P38_FURTHER_INFORMATION,P38_JOB_DESCRIPTION'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700895644009557699)
,p_event_id=>wwv_flow_api.id(700894699520557698)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_FORM_SUBMITTED,P38_STEP_1_COMPLETE,P38_STEP_2_COMPLETE,P38_STEP_3_COMPLETE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700896673861557699)
,p_event_id=>wwv_flow_api.id(700894699520557698)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1237635994977767557)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700897051308557699)
,p_name=>'Recycle Replace Shaliach Click'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#recycleReplaceShaliachBtn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700897570460557700)
,p_event_id=>wwv_flow_api.id(700897051308557699)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P38_PERSON_ID'').change();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700897975318557700)
,p_name=>'Display Current Region'
,p_event_sequence=>160
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700898535503557700)
,p_event_id=>wwv_flow_api.id(700897975318557700)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'isMobile = window.mobileCheck();',
'if (isMobile) {',
'    $(''#shlichimRegion_cards li'').each(function() {',
'        //Set date elements',
'        var startDateValueHtml = $(this).find(''.start-date-value'').clone();   ',
'        var endDateValueHtml = $(this).find(''.end-date-value'').clone();',
'        $(this).find(''.start-date-value'').remove();',
'        $(this).find(''.end-date-value'').remove();',
'        $(startDateValueHtml).insertAfter($(this).find(''.start-date-container''));',
'        $(endDateValueHtml).insertAfter($(this).find(''.end-date-container''));',
'        ',
'        //Set long names as marquee elements',
'        /*const maxVisibleLetters = 13;',
'        $(''.shaliach-name'').each(function() {',
'            var text = $(this).text();',
'            if (text.length > maxVisibleLetters) {',
'                $(''<marquee class="shaliach-name" style="font-size: 20px; line-height: 27.7px; text-wrap: nowrap; overflow: hidden; margin-top: 2.5px;">'' + text + ''</marquee>'').insertAfter($(this));',
'                $(this).remove();',
'            }',
'        });*/',
'        ',
'        $(''#P38_AREAS_OF_RESP_OTHER_DESC_LABEL'').text(''Please specify'');',
'    });',
'}',
'',
'setStepHeader($v(''P38_PERSON_NAME''));',
'',
'if ($v(''P38_STEP_1_COMPLETE'') == ''Y'' && $v(''P38_STEP_2_COMPLETE'') == ''N'') {',
'    $(''#replaceShaliachStep1'').hide();',
'    $(''#replaceShaliachStep2'').show();',
'    $(''#formRegion'').show();',
'}',
'else if ($v(''P38_STEP_2_COMPLETE'') == ''Y'' && $v(''P38_STEP_3_COMPLETE'') == ''N'') {',
'    $(''#replaceShaliachStep1'').hide();',
'    $(''#replaceShaliachStep2'').hide();',
'    $(''#replaceShaliachStep3'').show();',
'    $(''#formRegion'').show();',
'}',
'else if ($v(''P38_STEP_3_COMPLETE'') == ''Y'' && $v(''P38_FORM_SUBMITTED'') == ''Y'') {',
'    $(''#formRegion'').hide();',
'    $(''#thankYouContainer'').show();',
'}',
'else if ($(''.t-Form-error'').length == 0) {',
'    $(''#shlichimRegion'').show();',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700898898536557701)
,p_name=>'Progress Bar Click'
,p_event_sequence=>170
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#progressBar'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700899356991557701)
,p_event_id=>wwv_flow_api.id(700898898536557701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_FORM_SUBMITTED'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700899929568557701)
,p_event_id=>wwv_flow_api.id(700898898536557701)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P38_FORM_SUBMITTED := NULL;'
,p_attribute_02=>'P38_FORM_SUBMITTED'
,p_attribute_03=>'P38_FORM_SUBMITTED'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700900330682557701)
,p_name=>'Replace Another Shaliach Click'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(700871933755557682)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700900769067557702)
,p_event_id=>wwv_flow_api.id(700900330682557701)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_FORM_SUBMITTED,P38_STEP_1_COMPLETE,P38_STEP_2_COMPLETE,P38_STEP_3_COMPLETE,P38_PERSON_ID,P38_PERSON_NAME,P38_MASLUL,P38_ESTIMATED_START_DATE,P38_HOST_ORGANIZATION,P38_PRIORITIES,P38_AREAS_OF_RESPONSIBILITY,P38_AREAS_OF_RESP_OTHER,P38_AREAS_OF_RES'
||'P_OTHER_DESC,P38_TARGET_DEMOGRAPHICS,P38_CORE_EXPERTISE,P38_WORK_MODE_PREFERENCE,P38_SUPERVISION_OP_AUTONOMY,P38_CORE_COMP_HEADER,P38_PUBLIC_SPEAKING_FACILITATE,P38_PLANING_IMPLEMENTATION,P38_CROSS_CULTURE_COMM,P38_TIME_MANAGEMENT_PROD,P38_PROFESSION'
||'AL_ENGLISH_PROF,P38_REQUIRED_SKILLS,P38_PREFERRED_SKILLS,P38_DRIVERS_LICENSE,P38_RELIGIOUS_ENVIRONMENT,P38_SHABBAT_ACCOMMODATION,P38_DIETARY_STANDARDS,P38_SOCIAL_ECOSYSTEM,P38_SOCIAL_ECOSYSTEM_AMOUNT,P38_HOLISTIC_SUPPORT_SYSTEM,P38_HOLISTIC_SUPPORT_S'
||'YS_OTHER,P38_PARTNERSHIP_2_GATHER_PREF,P38_SUMMER_CAMP_REQUIREMENT,P38_CAMP_TYPE,P38_ROLE_IN_CAMP,P38_DURATION_AND_LOCATION,P38_ASSIGN_ON_BEHALF_OF,P38_MEASURABLE_OUTCOMES,P38_SHLICHUT_TERMS_HEADER,P38_ST_HOUSING,P38_ST_TRANSPORTATION,P38_ST_CHILDREN'
||'S_EDUCATION,P38_FURTHER_INFORMATION,P38_JOB_DESCRIPTION'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700901274143557702)
,p_event_id=>wwv_flow_api.id(700900330682557701)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_FORM_SUBMITTED,P38_STEP_1_COMPLETE,P38_STEP_2_COMPLETE,P38_STEP_3_COMPLETE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700901758323557702)
,p_event_id=>wwv_flow_api.id(700900330682557701)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ReplaceAnotherShaliach'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700902190142557702)
,p_name=>'Header Links Click'
,p_event_sequence=>190
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.t-Header-logo-link'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700902656456557702)
,p_event_id=>wwv_flow_api.id(700902190142557702)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_FORM_SUBMITTED'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700903143057557703)
,p_event_id=>wwv_flow_api.id(700902190142557702)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P38_FORM_SUBMITTED := NULL;'
,p_attribute_02=>'P38_FORM_SUBMITTED'
,p_attribute_03=>'P38_FORM_SUBMITTED'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700903635733557703)
,p_name=>'Header Home Link Click'
,p_event_sequence=>200
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.home-link'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700904132857557703)
,p_event_id=>wwv_flow_api.id(700903635733557703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_FORM_SUBMITTED'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700904590563557703)
,p_event_id=>wwv_flow_api.id(700903635733557703)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P38_FORM_SUBMITTED := NULL;'
,p_attribute_02=>'P38_FORM_SUBMITTED'
,p_attribute_03=>'P38_FORM_SUBMITTED'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700905024077557703)
,p_name=>'Check Date for Replace Button'
,p_event_sequence=>210
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700905445942557704)
,p_event_id=>wwv_flow_api.id(700905024077557703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var dateString = $v(''P0_COMMUNITY_END_DATE'') ; // "31/10/2025";',
'var dateParts = dateString.split("/");',
'var day = parseInt(dateParts[0]);',
'var month = parseInt(dateParts[1]) - 1; // Month is 0-indexed in JavaScript',
'var year = parseInt(dateParts[2]);',
'var targetDate = new Date(year, month, day);',
'var currentDate = new Date();',
'',
'if (currentDate > targetDate) { ',
'    $(''.replace-shaliach-btn .background'').addClass(''remove-pointer'');',
unistr('    $(''.replace-shaliach-btn .replace-shaliach-text'').text(''\200E '');'),
'    $s(''P38_DISABLE_EDIT'',''Y'');',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700910941849557706)
,p_name=>'Core Expertise Change'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_CORE_EXPERTISE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700911361956557707)
,p_event_id=>wwv_flow_api.id(700910941849557706)
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
 p_id=>wwv_flow_api.id(700907258380557705)
,p_name=>'Initialize HTML Checkbox Group'
,p_event_sequence=>230
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700907831415557705)
,p_event_id=>wwv_flow_api.id(700907258380557705)
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
 p_id=>wwv_flow_api.id(700908190208557705)
,p_name=>'Form Next Click'
,p_event_sequence=>240
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.form-next-button'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700908690330557705)
,p_event_id=>wwv_flow_api.id(700908190208557705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.page.submit(''FormStep'' + $(this.triggeringElement).data(''step'') + ''Submit'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700909130628557705)
,p_name=>'Form Back Click'
,p_event_sequence=>250
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.form-back-button'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700909569500557706)
,p_event_id=>wwv_flow_api.id(700909130628557705)
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
 p_id=>wwv_flow_api.id(700910026272557706)
,p_name=>'Area of Responsibilities Other Change'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_AREAS_OF_RESP_OTHER'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700910464253557706)
,p_event_id=>wwv_flow_api.id(700910026272557706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(event.target).is('':checked'') === true ?',
'    $(''#P38_AREAS_OF_RESP_OTHER_DESC_CONTAINER'').show() :',
'    $(''#P38_AREAS_OF_RESP_OTHER_DESC_CONTAINER'').hide();'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700911756977557707)
,p_name=>'Social Ecosystem Change'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_SOCIAL_ECOSYSTEM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700912304027557707)
,p_event_id=>wwv_flow_api.id(700911756977557707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$v(''P38_SOCIAL_ECOSYSTEM'') === ''Y'' ?',
'    $(''#P38_SOCIAL_ECOSYSTEM_AMOUNT_CONTAINER'').show() :',
'    $(''#P38_SOCIAL_ECOSYSTEM_AMOUNT_CONTAINER'').hide();'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700912732631557707)
,p_name=>'Holistic Support System Change'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_HOLISTIC_SUPPORT_SYSTEM'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P38_HOLISTIC_SUPPORT_SYSTEM'').includes(''5'') === false'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700913232762557708)
,p_event_id=>wwv_flow_api.id(700912732631557707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_HOLISTIC_SUPPORT_SYS_OTHER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700913667564557708)
,p_event_id=>wwv_flow_api.id(700912732631557707)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_HOLISTIC_SUPPORT_SYS_OTHER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700914119997557708)
,p_name=>'Initialize File Upload Controls'
,p_event_sequence=>290
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700914616532557708)
,p_event_id=>wwv_flow_api.id(700914119997557708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    $(''#P38_JOB_DESCRIPTION'').on(''cancel'', function() {',
'        $(''#jd-file-upload-btn-filename'').text('''');',
'        $(''#jd-file-upload-btn-text'').text(''Upload File'');',
'    });',
'});'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700914986154557708)
,p_name=>'Job Description Upload File Click'
,p_event_sequence=>300
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#jd-file-upload-btn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700915542683557708)
,p_event_id=>wwv_flow_api.id(700914986154557708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P38_JOB_DESCRIPTION'').click();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(700915926246557709)
,p_name=>'Job Description Change'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_JOB_DESCRIPTION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
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
 p_id=>wwv_flow_api.id(700916430320557709)
,p_event_id=>wwv_flow_api.id(700915926246557709)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var filename = $(''#P38_JOB_DESCRIPTION'').val().replace(''C:\\fakepath\\'', '''');',
'if (filename && filename.length > 0) {',
'    const fileExtension = filename.split(''.'').pop().toLowerCase();',
'    if (![''doc'',''docx'',''pdf'',''jpg'',''jpeg''].includes(fileExtension)) {',
'        alert(''Invalid file type!\nPlease upload a file of these formates:\ndoc, docx, pdf, jpg, jpeg.'');',
'',
'        $(''#jd-file-upload-btn-filename'').text('''');',
'        $(''#jd-file-upload-btn-text'').text(''File Upload'');',
'        $(''#P38_JOB_DESCRIPTION'').val('''');',
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
 p_id=>wwv_flow_api.id(700905919586557704)
,p_name=>'Summer Camps Requirement Change'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_SUMMER_CAMP_REQUIREMENT'
,p_condition_element=>'P38_SUMMER_CAMP_REQUIREMENT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700906419431557704)
,p_event_id=>wwv_flow_api.id(700905919586557704)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_CAMP_TYPE,P38_ROLE_IN_CAMP,P38_DURATION_AND_LOCATION,P38_ASSIGN_ON_BEHALF_OF'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(700906888587557705)
,p_event_id=>wwv_flow_api.id(700905919586557704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_CAMP_TYPE,P38_ROLE_IN_CAMP,P38_DURATION_AND_LOCATION,P38_ASSIGN_ON_BEHALF_OF'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(700888192861557692)
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
'l_media_id  number;',
'l_media_id_area number;',
'',
'l_full_name varchar2(500);',
'BEGIN',
'   ',
'fnd_global.APPS_INITIALIZE(:PO_USER_ID,:PO_RESP_ID,800);  ',
'',
'XX_MY_UTILS.add_msg(''Start Submit PAge8 ''); ',
'fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800);  ',
'    ',
'    /* Vita, please do not remove the next line: */',
'    :P38_FORM_SUBMITTED := ''Y'';',
unistr('    /* Thank you! :) \2665 */'),
'',
' ',
'     SELECT  CASE WHEN paaf.job_id = 46484 THEN ''Young Shlichut(Ofek)''',
'	          	  ELSE ''Senior Shlichut(Shahar/Bina)''',
'			 END name  ,',
'             papf.full_name ',
'    into     l_name, l_full_name',
'    ',
' FROM   per_all_people_f papf,',
'           per_all_assignments_f paaf,',
'           per_periods_of_service ppos,',
'           per_jobs pj',
'    WHERE  paaf.person_id = :P38_PERSON_ID',
'          and paaf.organization_id =	:P0_ORG_ID',
'           AND papf.person_id = paaf.person_id',
'           AND paaf.person_id = ppos.person_id',
'           AND paaf.period_of_service_id = ppos.period_of_service_id',
'           AND paaf.job_id = pj.job_id',
'           AND Trunc(sysdate) BETWEEN papf.effective_start_date AND papf.effective_end_date',
'           AND (',
'                  Trunc(sysdate) BETWEEN paaf.effective_start_date AND paaf.effective_end_date',
'               or ',
'                  ppos.actual_termination_date BETWEEN paaf.effective_start_date AND paaf.effective_end_date',
'               )',
'           AND pj.job_id IN ( 46484, 46482, 46480 )',
'           AND To_date(paaf.ass_attribute5, ''YYYY/MM/DD HH24:MI:SS'') - Trunc(sysdate) < 365 ; ',
'    ',
'',
'  ',
'       if (:P38_PRIORITIES is not null ) THEN ',
'         l_media_id:= JAFI_IRC_EIT_UTILS.create_short_text(:P38_PRIORITIES);',
'       else',
'         l_media_id:=Null;',
'       end if;',
'      ',
'',
'      if (:P38_AREAS_OF_RESP_OTHER_DESC is not null ) THEN ',
'         l_media_id_area:= JAFI_IRC_EIT_UTILS.create_short_text(:P38_AREAS_OF_RESP_OTHER_DESC);',
'       else',
'         l_media_id_area:=Null;',
'       end if;',
'       ',
' -- For Replace Shaliah ',
'            hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                                                  ,p_object_version_number => l_ovn',
'                                                  ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOM_LTS_RF'' ',
'                                                  ,p_org_information_id => l_org_information_id',
'                                                  ,p_org_information1 =>  l_full_name',
'                                                  ,p_org_information2 => :P38_PERSON_ID    ',
'                                                  ,p_org_information4 => l_name',
'                                                  ,p_org_information5 => TO_CHAR(TO_DATE( :P38_ESTIMATED_START_DATE, ''Month DD, YYYY''), ''DD/MM/YYYY'') ',
'                                                      ',
'                                                  ,p_org_information6 => l_media_id',
'                                                  ',
'                                                  ,p_org_information7 => :P38_AREAS_OF_RESPONSIBILITY',
'                                                  ,p_org_information8 => l_media_id_area',
'                                                  ',
'                                                  ,p_org_information9 => :P38_REQUIRED_SKILLS ',
'                                                  ,p_org_information10 => :P38_PREFERRED_SKILLS  ',
'                                                  ,p_org_information11 => :P0_CURRENT_YEAR',
'                                                  ,p_org_information12 => case ',
'                                                                              when :P38_PRESCHOOL is null or :P38_PRESCHOOL = '''' then ''N''',
'                                                                              else ''Y''',
'                                                                           end',
'                                                  ,p_org_information13 => case ',
'                                                                              when :P38_ELEMENTARY is null or :P38_ELEMENTARY = '''' then ''N''',
'                                                                              else ''Y''',
'                                                                           end',
'                                                  ,p_org_information14 =>  case ',
'                                                                              when :P38_TEENAGERS is null or :P38_TEENAGERS = '''' then ''N''',
'                                                                              else ''Y''',
'                                                                           end',
'                                                      ',
'                                                  ,p_org_information15 =>  case ',
'                                                                              when :P38_COLLEGE is null or :P38_COLLEGE = '''' then ''N''',
'                                                                              else ''Y''',
'                                                                           end     ',
'                                                  ,p_org_information16 =>  case ',
'                                                                              when :P38_PARENTS is null or :P38_PARENTS = '''' then ''N''',
'                                                                              else ''Y''',
'                                                                           end         ',
'                                                  ,p_org_information17 =>  case ',
'                                                                              when :P38_ADULTS is null or :P38_ADULTS = '''' then ''N''',
'                                                                              else ''Y''',
'                                                                           end       ',
'                                                  ,p_org_information18 =>  case ',
'                                                                              when :P38_SENIORS is null or :P38_SENIORS = '''' then ''N''',
'                                                                              else ''Y''',
'                                                                           end         ',
'                                                  ,p_org_information19 =>   case ',
'                                                                              when :P38_TARGET_AUDIENCES_OTHER is null or :P38_TARGET_AUDIENCES_OTHER = '''' then ''N''',
'                                                                              else ''Y''',
'                                                                           end    ',
'                                                       ',
'                                                  ,p_org_information20 => :P38_CORE_EXPERTISE',
'                                                  ,p_org_information3 => :P38_HOST_ORGANIZATION        ',
'                                                 ,p_attribute_category  => ''JAFI_HR_SHLICHUT_CUSTOM_LTS_RF''',
'                                                 ,p_attribute1  =>  SUBSTR(:P38_PRESCHOOL_DESC,1,145)',
'                                                  ,p_attribute2  => SUBSTR(:P38_ELEMENTARY_DESC,1,150)',
'                                                  ,p_attribute3  => SUBSTR(:P38_TEENAGERS_DESC,1,150)',
'                                                  ,p_attribute4  => SUBSTR(:P38_COLLEGE_DESC,1,150)',
'                                                  ,p_attribute5  => SUBSTR(:P38_PARENTS_DESC,1,150)',
'                                                  ,p_attribute6  => SUBSTR(:P38_ADULTS_DESC,1,150)',
'                                                  ,p_attribute7  =>  SUBSTR(:P38_SENIORS_DESC , 1, 150)  -- :P9_SENIORS_DESC  ',
'                                                  ,p_attribute8  => SUBSTR(:P38_TARGET_AUDIENCES_OTHER_DESC, 1, 150)  --   :P9_TARGET_AUDIENCES_OTHER_DESC',
'                                                ',
'                                                  ,p_organization_id  => :P0_ORG_ID);    ',
'                            ',
'                  ',
'exception when others then',
' :P38_FORM_SUBMITTED := null;',
' XX_MY_UTILS.add_msg(''Failed to update  '' ||sqlerrm); ',
' ',
' apex_error.add_error (',
'              p_message          => ''Failed to update =>''||sqlerrm,',
'                     ',
'    p_display_location => apex_error.c_inline_in_notification );',
'',
'end;',
'       '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(700870478254557680)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(700888557436557692)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FormStep1Submit'
,p_process_sql_clob=>':P38_STEP_1_COMPLETE := ''Y'';'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'FormStep1Submit'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(700888988936557693)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FormStep2Submit'
,p_process_sql_clob=>':P38_STEP_2_COMPLETE := ''Y'';'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'FormStep2Submit'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(700889423065557693)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FormStep3Submit'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'  XX_MY_UTILS.add_msg(''Start Submit PAge8 '');',
' ',
'  /* Vita, please do not remove the next line: */',
'  :P38_FORM_SUBMITTED := ''Y'';',
unistr('  /* Thank you! :) \2665 */'),
'',
'  SELECT CASE',
'           WHEN paaf.job_id = 46484 THEN',
'            ''Young Shlichut(Ofek)''',
'           ELSE',
'            ''Senior Shlichut(Shahar/Bina/Yovel)''',
'         END name,',
'         papf.full_name',
'    into l_name, l_full_name',
'    FROM per_all_people_f       papf,',
'         per_all_assignments_f  paaf,',
'         per_periods_of_service ppos,',
'         per_jobs               pj',
'   WHERE paaf.person_id = :P38_PERSON_ID',
'     and paaf.organization_id = :P0_ORG_ID',
'     AND papf.person_id = paaf.person_id',
'     AND paaf.person_id = ppos.person_id',
'     AND paaf.period_of_service_id = ppos.period_of_service_id',
'     AND paaf.job_id = pj.job_id',
'     AND Trunc(sysdate) BETWEEN papf.effective_start_date AND',
'         papf.effective_end_date',
'     AND (Trunc(sysdate) BETWEEN paaf.effective_start_date AND',
'         paaf.effective_end_date or',
'         ppos.actual_termination_date BETWEEN paaf.effective_start_date AND',
'         paaf.effective_end_date)',
'     AND pj.job_id IN (46484, 46482, 46480)',
'     AND To_date(paaf.ass_attribute5, ''YYYY/MM/DD HH24:MI:SS'') -',
'         Trunc(sysdate) < 365;',
'',
'',
'',
'',
'  if (:P38_PRIORITIES is not null) THEN',
'    l_media_id := JAFI_IRC_EIT_UTILS.create_short_text(:P38_PRIORITIES);',
'  else',
'    l_media_id := Null;',
'  end if;',
'',
'  if (:P38_AREAS_OF_RESP_OTHER_DESC is not null) THEN',
'    l_media_id_area := JAFI_IRC_EIT_UTILS.create_short_text(:P38_AREAS_OF_RESP_OTHER_DESC);',
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
'                                             p_org_information1      => l_full_name,',
'                                             p_org_information2      => :P38_PERSON_ID,',
'                                             p_org_information4      => l_name,',
'                                             p_org_information5      => TO_CHAR(TO_DATE(:P38_ESTIMATED_START_DATE,',
'                                                                                        ''Month DD, YYYY''),',
'                                                                                ''DD/MM/YYYY'')',
'                                             ',
'                                            ,',
'                                             p_org_information6 => l_media_id',
'                                             ',
'                                            ,',
'                                             p_org_information7 => :P38_AREAS_OF_RESPONSIBILITY,',
'                                             p_org_information8 => l_media_id_area',
'                                             ',
'                                            ,',
'                                             p_org_information9  => :P38_REQUIRED_SKILLS,',
'                                             p_org_information10 => :P38_PREFERRED_SKILLS,',
'                                             p_org_information11 => :P0_CURRENT_YEAR,',
'                                             p_org_information17 => case',
'                                                                      when INSTR(:P38_TARGET_DEMOGRAPHICS,',
'                                                                                 ''Adults'') > 0 then',
'                                                                       ''Y''',
'                                                                      else',
'                                                                       ''N''',
'                                                                    end',
'                                             --------',
'                                            ,',
'                                             p_org_information12 => case',
'                                                                      when INSTR(:P38_TARGET_DEMOGRAPHICS,',
'                                                                                 ''Preschool'') > 0 then',
'                                                                       ''Y''',
'                                                                      else',
'                                                                       ''N''',
'                                                                    end,',
'                                             p_org_information13 => case',
'                                                                      when INSTR(:P38_TARGET_DEMOGRAPHICS,',
'                                                                                 ''Elementary'') > 0 then',
'                                                                       ''Y''',
'                                                                      else',
'                                                                       ''N''',
'                                                                    end',
'                                             ',
'                                            ,',
'                                             p_org_information14 => case',
'                                                                      when INSTR(:P38_TARGET_DEMOGRAPHICS,',
'                                                                                 ''Teenagers'') > 0 then',
'                                                                       ''Y''',
'                                                                      else',
'                                                                       ''N''',
'                                                                    end,',
'                                             p_org_information15 => case',
'                                                                      when INSTR(:P38_TARGET_DEMOGRAPHICS,',
'                                                                                 ''College'') > 0 then',
'                                                                       ''Y''',
'                                                                      else',
'                                                                       ''N''',
'                                                                    end,',
'                                             p_org_information16 => case',
'                                                                      when INSTR(:P38_TARGET_DEMOGRAPHICS,',
'                                                                                 ''Parents'') > 0 then',
'                                                                       ''Y''',
'                                                                      else',
'                                                                       ''N''',
'                                                                    end,',
'                                             p_org_information18 => case',
'                                                                      when INSTR(:P38_TARGET_DEMOGRAPHICS,',
'                                                                                 ''Seniors'') > 0 then',
'                                                                       ''Y''',
'                                                                      else',
'                                                                       ''N''',
'                                                                    end',
'                                             ',
'                                             ----------------------',
'                                            ,',
'                                             p_org_information20 => :P38_CORE_EXPERTISE,',
'                                             p_org_information3  => :P38_HOST_ORGANIZATION',
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
'                                             p_org_information1      => l_full_name,',
'                                             p_org_information2      => :P38_PERSON_ID,',
'                                             p_org_information3      => v_tr_org_information_id,',
'                                             p_org_information4      => :P38_WORK_MODE_PREFERENCE,',
'                                             p_org_information5      => :P38_SUPERVISION_OP_AUTONOMY,',
'                                             p_org_information6      => :P38_PUBLIC_SPEAKING_FACILITATE,',
'                                             p_org_information7      => :P38_PLANING_IMPLEMENTATION,',
'                                             p_org_information8      => :P38_CROSS_CULTURE_COMM,',
'                                             p_org_information9      => :P38_TIME_MANAGEMENT_PROD,',
'                                             p_org_information10     => :P38_PROFESSIONAL_ENGLISH_PROF,',
'                                             p_org_information11     => :P0_CURRENT_YEAR,',
'                                             p_org_information12     => :P38_DRIVERS_LICENSE,',
'                                             p_org_information13     => :P38_RELIGIOUS_ENVIRONMENT,',
'                                             p_org_information14     => :P38_SHABBAT_ACCOMMODATION,',
'                                             p_org_information15     => :P38_DIETARY_STANDARDS,',
'                                             p_org_information16     => :P38_SOCIAL_ECOSYSTEM,',
'                                             p_org_information17     => :P38_SOCIAL_ECOSYSTEM_AMOUNT,',
'                                             p_org_information18     => :P38_HOLISTIC_SUPPORT_SYSTEM,',
'                                             p_org_information19     => :P38_HOLISTIC_SUPPORT_SYS_OTHER,',
'                                             p_org_information20     => :P38_PARTNERSHIP_2_GATHER_PREF,',
'                                             p_organization_id       => :P0_ORG_ID);',
'',
'  ----------------------------------------  JAFI_HR_SHLICHUT_CUST_LTS_RF_3',
'',
'                                                ',
'                          hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                                                   ,p_object_version_number => l_ovn',
'                                                   ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUST_LTS_RF_3'' ',
'                                                   ,p_org_information_id => l_org_information_id',
'                                                     ,p_org_information1 =>  l_full_name',
'                                                   ,p_org_information2 => :P38_PERSON_ID ',
'                                                   ,p_org_information3 => v_tr_org_information_id',
'                                                    ,p_org_information4 =>  :P38_SUMMER_CAMP_REQUIREMENT',
'                                                   ,p_org_information5 => :P38_CAMP_TYPE',
'                                                   ,p_org_information6 => :P38_ROLE_IN_CAMP',
'                                                   ,p_org_information7 => :P38_DURATION_AND_LOCATION',
'                                                      ,p_org_information8 => :P38_ASSIGN_ON_BEHALF_OF',
'                                                   ,p_org_information9 => :P38_MEASURABLE_OUTCOMES',
'                                                   ,p_org_information10 => :P38_ST_HOUSING',
'                                                    ,p_org_information11 =>:P0_CURRENT_YEAR ',
'                                                     ,p_org_information12 => :P38_ST_TRANSPORTATION',
'                                                   ,p_org_information13 => :P38_ST_CHILDRENS_EDUCATION',
'                                                   ,p_org_information14 => :P38_FURTHER_INFORMATION     ',
'                                                   ,p_organization_id  => :P0_ORG_ID);    ',
'                  ',
'                        JAFI_COMMUNITY_APEX_UTILS.jafi_update_dor_attachment(p_temp_name=>v(''P38_JOB_DESCRIPTION''),',
'                                                                      p_camp_name => :P0_USER_NAME,',
'                                                                      p_camp_id   => :P0_ORG_ID ,',
'                                                                      p_description => v_tr_org_information_id, ',
'                                                                      p_saved    => l_save_out ,',
'                                                                      p_message => l_message_out)  ;   -- Output message',
'           ',
'           :P38_STEP_3_COMPLETE := ''Y'';       ',
' ',
'exception',
'  when others then',
'    :P38_FORM_SUBMITTED := null;',
'    :P38_STEP_3_COMPLETE := ''N'';',
'    XX_MY_UTILS.add_msg(''Failed to update  '' || sqlerrm);',
'    apex_error.add_error(p_message          => ''Failed to update =>'' ||',
'                                               sqlerrm,',
'                         p_display_location => apex_error.c_inline_in_notification);',
'end;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'FormStep3Submit'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.component_end;
end;
/
