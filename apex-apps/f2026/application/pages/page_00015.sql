prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'TEST FILTERS'
,p_alias=>'TEST-FILTERS'
,p_step_title=>'TEST FILTERS'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var isMobile;',
'',
'function openInfoRg(org_info_id){',
'    if(org_info_id == ''-999''){',
'        apex.item("P4_ORG_INFO_ID").setValue('''');',
'        $("#add-org-id #P4_ORG_INFO_ID").click();',
'        ',
'  /*      apex.theme.openRegion("edit-organization-rg");*/',
'        return;',
'    }',
'    $(''#P4_ORG_INFO_ID'').text(org_info_id);',
'    apex.item("P4_ORG_INFO_ID").setValue(org_info_id);',
'    apex.region("org-type-info-rg").refresh();',
'    apex.region("org-header-info-rg").refresh();',
'    apex.region("org-aff-info-rg").refresh();',
'    apex.region("org-inv-info-rg").refresh();',
'    ',
'',
'     setTimeout(function() {',
'      apex.theme.openRegion("org-details-rg");',
'    }, 500);',
'',
'}',
'',
'function chk_scroll(e) {',
'    if (Math.ceil(e.scrollHeight) - Math.ceil(e.scrollTop) == Math.ceil($(e).outerHeight())) {',
'        $(e).removeClass(''opaque-gradient'');',
'    }',
'    else {',
'        $(e).addClass(''opaque-gradient'');',
'    }',
'}',
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
'};'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function () {',
'  $("#P4_FILTER").select2({',
'    templateResult: formatState,',
'    templateSelection: formatSelected,',
'    placeholder: "Filer",',
'    allowClear: true,',
'    closeOnSelect: false',
'  })',
'',
'    ',
'  function formatSelected(data) {',
'    if (!data.id) {',
'      return data.text',
'    }',
'',
'    const selectedValues = $("#P4_FILTER").val() || []',
'    const selectedCount = selectedValues.length',
'',
'    // Map selected values to their corresponding texts',
'    const options = $("#P4_FILTER option")',
'      .map(function () {',
'        return { value: $(this).val(), text: $(this).text() }',
'      })',
'      .get()',
'',
'    const selectedTexts = selectedValues.map((value) => {',
'      const match = options.find((option) => option.value === value)',
'      return match ? match.text : value',
'    })',
'',
'    // Construct the display text',
'    if (selectedCount === 0) {',
'      return "Types: None"',
'    } else if (selectedCount === 1) {',
'      return `${selectedTexts[0]}`',
'    } else {',
'      return `${selectedTexts[0]} +${',
'        selectedCount - 1',
'      }`',
'    }',
'  }',
'',
'  function formatState(state) {',
'    if (!state.id) {',
'      return state.text',
'    }',
'    var $state = $(',
'      ''<div class="rf-input-checkbox-wrap"><span class="rf-checkbox-mark"></span> '' +',
'        state.text +',
'        "</div>"',
'    )',
'    return $state',
'  }',
'',
'  // To maintain the checked status after selection',
'  $("#P4_FILTER").on("change", function () {',
'    $("#P4_FILTER option").each(function () {',
'      if ($(this).prop("selected")) {',
'        $(this).siblings(''input[type="checkbox"]'').prop("checked", true)',
'      }',
'    })',
'  })',
'})',
'',
'',
'',
'    /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/',
'$(document).ready(function () {',
'  $("#P4_ORG_TYPE_UPD").select2({',
'    maximumSelectionLength: 4, ',
'    templateResult: formatState,',
'    templateSelection: formatSelected,',
'    closeOnSelect: false',
'  });',
'',
'  function formatSelected(data) {',
'    if (!data.id) {',
'      return data.text;',
'    }',
'',
'    const selectedValues = $("#P4_ORG_TYPE_UPD").val() || [];',
'    const selectedCount = selectedValues.length;',
'',
'    const options = $("#P4_ORG_TYPE_UPD option")',
'      .map(function () {',
'        return { value: $(this).val(), text: $(this).text() };',
'      })',
'      .get();',
'',
'    const selectedTexts = selectedValues.map((value) => {',
'      const match = options.find((option) => option.value === value);',
'      return match ? match.text : value;',
'    });',
'',
'    if (selectedCount === 0) {',
'      return "Types: None";',
'    } else if (selectedCount === 1) {',
'      return `${selectedTexts[0]}`;',
'    } else {',
'      return `${selectedTexts[0]} +${selectedCount - 1}`;',
'    }',
'  }',
'',
'  function formatState(state) {',
'    if (!state.id) {',
'      return state.text;',
'    }',
'    var $state = $(',
'      ''<div class="rf-input-checkbox-wrap"><span class="rf-checkbox-mark"></span> '' +',
'        state.text +',
'        "</div>"',
'    );',
'    return $state;',
'  }',
'',
unistr('  // \05E9\05DE\05D9\05E8\05D4 \05E2\05DC \05E1\05D8\05D8\05D5\05E1 \05E9\05DC checkbox'),
'  $("#P4_ORG_TYPE_UPD").on("change", function () {',
'    $("#P4_ORG_TYPE_UPD option").each(function () {',
'      if ($(this).prop("selected")) {',
'        $(this).siblings(''input[type="checkbox"]'').prop("checked", true);',
'      }',
'    });',
'      ',
'    var ele = $(this);',
'    if(ele.val().length==4) {',
'      ele.select2(''close'');',
'    }',
'  });',
'    ',
'  $(''#P4_PHONE1_UPD'').css({"font-size":"16px"});',
'});',
'',
'//',
'$("#edit-organization-rg").on("dialogbeforeclose", function(event, ui) {',
'   //   alert( $v(''P4_LEAVE'') );',
'    ',
'if  ($v(''P4_LEAVE'') == 0) {',
'      ',
'    var originalData = JSON.parse(sessionStorage.getItem(''original-data'') || ''{}'');',
'',
'    // Fields to compare',
'    var fields = [',
'        "P4_ORG_NAME_UPD",',
'        "P4_FULL_NAME_UPD",',
'        "P4_EMAIL_UPD",',
'        "P4_PHONE1_UPD",',
'        "P4_PHONE2_UPD",',
'        //"P4_PHONE3_UPD",',
'        "P4_SHSH_ACTIVE",',
'        "P4_LTS_ACTIVE",',
'        "P4_ORG_TYPE_UPD",',
'        "P4_AFFLICATION_UPD",',
'        "P4_FREQ_UPD"',
'    ];',
'',
'    // Check if any field changed',
'    var hasChanges = fields.some(function(item) {',
'        return (originalData[item] || '''') !== ($v(item) || '''');',
'    });',
'   ',
'    if (hasChanges) {',
'        event.preventDefault(); // stop closing',
'        apex.item("P4_LEAVE").setValue(1);',
'        $("#ExitConfirmation").dialog("open"); // open confirmation',
'    } ',
'}',
'});',
'    ',
'/*',
'$("#edit-organization-rg").on("dialogbeforeclose", function(event, ui) {',
'    // Get the stored JSON object from sessionStorage',
'    var originalData = JSON.parse(sessionStorage.getItem(''original-data'') || ''{}'');',
'    // Get the original value from the JSON',
'    var originalOrgName = originalData.P4_ORG_NAME_UPD;',
'    // Get the current value from the page item',
'    var currentOrgName = $v(''P4_ORG_NAME_UPD''); // or apex.item(''P4_ORG_NAME_UPD'').getValue()',
'    // Compare them',
'    if ( ',
'           originalData.P4_ORG_NAME_UPD !== $v(''P4_ORG_NAME_UPD'') ||',
'           originalData.P4_FULL_NAME_UPD !== $v(''P4_FULL_NAME_UPD'') ||',
'           originalData.P4_EMAIL_UPD !== $v(''P4_EMAIL_UPD'') ||',
'           originalData.P4_PHONE1_UPD !== $v(''P4_PHONE1_UPD'') ||',
'           originalData.P4_PHONE2_UPD !== $v(''P4_PHONE2_UPD'') ||',
'           //originalData.P4_PHONE3_UPD !== $v(''P4_PHONE3_UPD'') ||',
'           originalData.P4_SHSH_ACTIVE !== $v(''P4_SHSH_ACTIVE'') ||',
'           originalData.P4_LTS_ACTIVE !== $v(''P4_LTS_ACTIVE'') ||',
'           originalData.P4_ORG_TYPE_UPD !== $v(''P4_ORG_TYPE_UPD'') ||',
'           originalData.P4_AFFLICATION_UPD !== $v(''P4_AFFLICATION_UPD'') ||',
'           originalData.P4_FREQ_UPD !== $v(''P4_FREQ_UPD'') ) {',
'        //alert(" has changed");',
'        event.preventDefault(); // stop the close',
'        // Show your custom confirmation modal region',
'        $("#ExitConfirmation").dialog("open");',
'          ',
'     } else {',
'       alert("P4_ORG_NAME_UPD is the same as before");',
'}',
'       ',
'});',
'*/'))
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
'    .t-Body-contentInner {',
'        width: 90vw;',
'        padding: 0;',
'    }',
'    ',
'    .progress-bar-col {',
'        padding: 0;',
'    }',
'    ',
'    #progressBar {',
'        margin-bottom: 0 !important;',
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
'    #buttonsRegion {',
'        position: absolute;',
'        bottom: 0;',
'        left: 0;',
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
,p_last_updated_by=>'MEITAVC'
,p_last_upd_yyyymmddhh24miss=>'20260603134014'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(572716515460003273)
,p_plug_name=>'organization details'
,p_region_name=>'org-details-rg'
,p_region_css_classes=>'js-dialog-size560x600'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_api.id(7169934722329292)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(572717077724003278)
,p_name=>'Header details'
,p_region_name=>'org-header-info-rg'
,p_parent_plug_id=>wwv_flow_api.id(572716515460003273)
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Cards--animColorFill:t-Cards--cols:t-Cards--basic'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''HEDAER_DETAILS'' CARD_TYPE,',
'       hoi.ORG_INFORMATION1 ORG_NAME,',
'       hoi.ORG_INFORMATION2 FULL_NAME,',
'       hoi.ORG_INFORMATION3 MAIL,',
'       hoi.ORG_INFORMATION4 PHONE,',
'       case when hoi.ORG_INFORMATION9 like ''%SSH%'' and hoi.ORG_INFORMATION9 like ''%LTS%'' then',
'        ''<img src="#APP_IMAGES#ic-heart-house.png" height="25px"/><img src="#APP_IMAGES#ic-shaking-hands.png" height="24px"/>''',
'        when hoi.ORG_INFORMATION9 like ''%SSH%'' then',
'        ''<img src="#APP_IMAGES#ic-shaking-hands.png" height="25px"/>''',
'        when hoi.ORG_INFORMATION9 like ''%LTS%'' then',
'         ''<img src="#APP_IMAGES#ic-heart-house.png" height="25px"/>''',
'         else null end as work_with,',
'       hoi.ORG_INFORMATION5 Organization_Type,',
'     /*  jafi_hr_utils.US_Decode_Lookup(''JAFI_HR_KEHILATI_ORG_TYPE'',',
'                                      hoi.org_information5),*/',
'       hoi.ORG_INFORMATION6 Affiliation_code,',
'       jafi_hr_utils.US_Decode_Lookup(''JAFI_HR_KEHILATI_AFFILIATION'',',
'                                      hoi.org_information6) Affiliation,',
'       hoi.ORG_INFORMATION7 Frequency_code,',
'       jafi_hr_utils.US_Decode_Lookup(''JAFI_HR_KEHILATI_FREQUENCY'',',
'                                      hoi.org_information7) Frequency,',
'       hoi.ORG_INFORMATION10 Active',
'  from hr_organization_information hoi',
' where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG'' ',
'   and hoi.org_information_id = :P15_ORG_INFO_ID;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P15_ORG_INFO_ID'
,p_query_row_template=>wwv_flow_api.id(7108873192070315)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73546954702330402)
,p_query_column_id=>1
,p_column_alias=>'CARD_TYPE'
,p_column_display_sequence=>9
,p_column_heading=>'Card Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73543752355330400)
,p_query_column_id=>2
,p_column_alias=>'ORG_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Org Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73547343013330402)
,p_query_column_id=>3
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Full Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73547760804330402)
,p_query_column_id=>4
,p_column_alias=>'MAIL'
,p_column_display_sequence=>11
,p_column_heading=>'Mail'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73548222250330402)
,p_query_column_id=>5
,p_column_alias=>'PHONE'
,p_column_display_sequence=>12
,p_column_heading=>'Phone'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73544193772330400)
,p_query_column_id=>6
,p_column_alias=>'WORK_WITH'
,p_column_display_sequence=>2
,p_column_heading=>'Work With'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73544560502330401)
,p_query_column_id=>7
,p_column_alias=>'ORGANIZATION_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Organization Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73545039714330401)
,p_query_column_id=>8
,p_column_alias=>'AFFILIATION_CODE'
,p_column_display_sequence=>4
,p_column_heading=>'Affiliation Code'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73545431532330401)
,p_query_column_id=>9
,p_column_alias=>'AFFILIATION'
,p_column_display_sequence=>5
,p_column_heading=>'Affiliation'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73545829466330401)
,p_query_column_id=>10
,p_column_alias=>'FREQUENCY_CODE'
,p_column_display_sequence=>6
,p_column_heading=>'Frequency Code'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73546177939330401)
,p_query_column_id=>11
,p_column_alias=>'FREQUENCY'
,p_column_display_sequence=>7
,p_column_heading=>'Frequency'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73546568035330402)
,p_query_column_id=>12
,p_column_alias=>'ACTIVE'
,p_column_display_sequence=>8
,p_column_heading=>'Active'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(572720253796003310)
,p_name=>'Affiliation'
,p_region_name=>'org-aff-info-rg'
,p_parent_plug_id=>wwv_flow_api.id(572716515460003273)
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_component_template_options=>'#DEFAULT#:t-Cards--basic:t-Cards--cols:t-Cards--animColorFill'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''HEDAER_DETAILS_CUBES'' CARD_TYPE,',
'       hoi.ORG_INFORMATION1 ORG_NAME,',
'      jafi_hr_utils.US_Decode_Lookup(''JAFI_HR_KEHILATI_AFFILIATION'',',
'                                      hoi.org_information6) CARD_TEXT,',
'       hoi.ORG_INFORMATION7 Frequency_code,',
'       jafi_hr_utils.US_Decode_Lookup(''JAFI_HR_KEHILATI_FREQUENCY'',',
'                                      hoi.org_information7) Frequency,',
'       hoi.ORG_INFORMATION10 Active',
'  from hr_organization_information hoi',
' where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG'' ',
'   and hoi.org_information_id = :P15_ORG_INFO_ID;'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="t-org-info-cube-title">',
'Affiliation',
'</span>'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P15_ORG_INFO_ID'
,p_query_row_template=>wwv_flow_api.id(9963657594902100)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73551193853330404)
,p_query_column_id=>1
,p_column_alias=>'CARD_TYPE'
,p_column_display_sequence=>5
,p_column_heading=>'Card Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73549638350330403)
,p_query_column_id=>2
,p_column_alias=>'ORG_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Org Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73551639502330404)
,p_query_column_id=>3
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>6
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73549984737330404)
,p_query_column_id=>4
,p_column_alias=>'FREQUENCY_CODE'
,p_column_display_sequence=>2
,p_column_heading=>'Frequency Code'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73550347975330404)
,p_query_column_id=>5
,p_column_alias=>'FREQUENCY'
,p_column_display_sequence=>3
,p_column_heading=>'Frequency'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73550819548330404)
,p_query_column_id=>6
,p_column_alias=>'ACTIVE'
,p_column_display_sequence=>4
,p_column_heading=>'Active'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(572781481105924469)
,p_name=>' Involvement Frequency'
,p_region_name=>'org-inv-info-rg'
,p_parent_plug_id=>wwv_flow_api.id(572716515460003273)
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_component_template_options=>'#DEFAULT#:t-Cards--basic:t-Cards--cols:t-Cards--animColorFill'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''HEDAER_DETAILS_CUBES'' CARD_TYPE,',
'       hoi.ORG_INFORMATION1 ORG_NAME,',
'     jafi_hr_utils.US_Decode_Lookup(''JAFI_HR_KEHILATI_FREQUENCY'',',
'                                      hoi.org_information7) CARD_TEXT,',
'       hoi.ORG_INFORMATION10 Active',
'  from hr_organization_information hoi',
' where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG'' ',
'   and hoi.org_information_id = :P15_ORG_INFO_ID;'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="t-org-info-cube-title">',
' Involvement Frequency',
'</span>'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P15_ORG_INFO_ID'
,p_query_row_template=>wwv_flow_api.id(9963657594902100)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73552646385330405)
,p_query_column_id=>1
,p_column_alias=>'CARD_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Card Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73553499986330405)
,p_query_column_id=>2
,p_column_alias=>'ORG_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Org Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73553075519330405)
,p_query_column_id=>3
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>4
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73552294437330405)
,p_query_column_id=>4
,p_column_alias=>'ACTIVE'
,p_column_display_sequence=>2
,p_column_heading=>'Active'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(572782293240924477)
,p_plug_name=>'button contianer'
,p_parent_plug_id=>wwv_flow_api.id(572716515460003273)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>60
,p_plug_grid_column_css_classes=>'center-region'
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
,p_default_application_id=>220
,p_default_id_offset=>1696803741697335224
,p_default_owner=>'APPS'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(572784096528924495)
,p_name=>'Organization Type'
,p_region_name=>'org-type-info-rg'
,p_parent_plug_id=>wwv_flow_api.id(572716515460003273)
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Cards--basic:t-Cards--cols:t-Cards--animColorFill'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'  ',
'  select ''HEDAER_DETAILS_CUBES'' CARD_TYPE,',
'       hoi.ORG_INFORMATION1 ORG_NAME,',
'       regexp_substr(hoi.ORG_INFORMATION5, ''[^:]+'', 1, level) as CARD_CODE,',
'       jafi_hr_utils.US_Decode_Lookup(''JAFI_HR_KEHILATI_ORG_TYPE'',',
'            regexp_substr(hoi.ORG_INFORMATION5, ''[^:]+'', 1, level)) as CARD_TEXT',
'  from hr_organization_information hoi',
' where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG'' ',
'   and hoi.org_information_id = :P15_ORG_INFO_ID',
'   and hoi.ORG_INFORMATION5 is not null',
'connect by level <= regexp_count(hoi.ORG_INFORMATION5, '':'') + 1',
'   and prior hoi.org_information_id = hoi.org_information_id',
'   and prior dbms_random.value is not null',
'',
'',
'',
'/*',
'UNION ALL',
'   ',
'SELECT ''HEADER_DETAILS_CUBES'' CARD_TYPE,',
'       NULL ORG_NAME,',
'       NULL CARD_CODE,',
'       ''<span style="font-size:18px; font-weight: 500; color:#E84C26; line-height: 24px;">Please Update</span>'' CARD_TEXT  ',
'  FROM dual',
' WHERE NOT EXISTS (',
'    SELECT 1    ',
'      FROM hr_organization_information hoi',
'     WHERE hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG'' ',
'       AND hoi.org_information_id =:P15_ORG_INFO_ID',
'       AND hoi.ORG_INFORMATION5 IS NOT NULL',
')',
'*/'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="t-org-info-cube-title">',
'    Organization Type',
'</span>'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P15_ORG_INFO_ID'
,p_query_row_template=>wwv_flow_api.id(9963657594902100)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73541842849330399)
,p_query_column_id=>1
,p_column_alias=>'CARD_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Card Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73543063182330400)
,p_query_column_id=>2
,p_column_alias=>'ORG_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Org Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73542671279330399)
,p_query_column_id=>3
,p_column_alias=>'CARD_CODE'
,p_column_display_sequence=>4
,p_column_heading=>'Card Code'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73542324555330399)
,p_query_column_id=>4
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1066395151573503491)
,p_plug_name=>'edit organization details'
,p_region_name=>'edit-organization-rg'
,p_region_css_classes=>'js-dialog-size560x1000'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(7169934722329292)
,p_plug_display_sequence=>70
,p_plug_grid_column_css_classes=>'center-region edit-organization-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1069196802458500596)
,p_plug_name=>'center container'
,p_region_name=>'add-org-id'
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(572013717805422207)
,p_name=>'organizations container'
,p_region_name=>'organizations-container'
,p_parent_plug_id=>wwv_flow_api.id(1069196802458500596)
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:margin-left-none:margin-right-none'
,p_component_template_options=>'#DEFAULT#:t-Cards--basic:t-Cards--3cols:t-Cards--animColorFill'
,p_grid_column_css_classes=>'t-organiztions-cards center-region'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'    select * from (select ''MAIN_CARDS'' CARD_TYPE,',
'       hoi.org_information_id,',
'        case ',
'        when 1=0 and regexp_count(hoi.ORG_INFORMATION1, ''\s+'') > 1 then ',
'          regexp_substr(hoi.ORG_INFORMATION1, ''^(\S+\s+\S+)'', 1, 1) || ''...''',
'        else ',
'      hoi.ORG_INFORMATION1 end as org_name,',
'   /*    hoi.ORG_INFORMATION1 as org_name,*/',
'       hoi.ORG_INFORMATION2 FULL_NAME,',
'       ''openInfoRg('''''' || hoi.org_information_id ||''''''''||'');'' AS CARD_LINK,',
'    case when hoi.ORG_INFORMATION9 like ''%SSH%'' and hoi.ORG_INFORMATION9 like ''%LTS%'' then',
'    ''<img src="#APP_IMAGES#ic-heart-house.png" height="25px"/><img src="#APP_IMAGES#ic-shaking-hands.png" height="24px"/>''',
'    when hoi.ORG_INFORMATION9 like ''%SSH%'' then',
'    ''<img src="#APP_IMAGES#ic-shaking-hands.png" height="25px"/>''',
'    when hoi.ORG_INFORMATION9 like ''%LTS%'' then',
'     ''<img src="#APP_IMAGES#ic-heart-house.png" height="25px"/>''',
'     else null end as work_with,',
'     ORG_INFORMATION6',
'  from hr_organization_information hoi',
' where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG''',
'   and hoi.ORG_INFORMATION10 = ''Y''',
'AND (',
'    UPPER(hoi.ORG_INFORMATION1) LIKE ''%'' || UPPER(TRIM(:P15_SEARCH)) || ''%''',
'    OR :P15_SEARCH IS NULL',
')',
'   and hoi.organization_id =  :P0_ORG_ID',
'   order by hoi.ORG_INFORMATION1 asc)',
'     where rownum <= :P15_END_ROW',
' UNION',
'     SELECT ''BLANK_ADD_ORG'' CARD_TYPE,',
'     NULL org_information_id,',
'     NULL org_name,',
'     NULL FULL_NAME,',
'     ''openInfoRg('''''' || -999 ||''''''''||'');'' AS CARD_LINK,',
'     NULL work_with,',
'     NULL ORG_INFORMATION6',
'',
' from dual) a',
'',
'ORDER BY CARD_TYPE desc, org_name asc',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P15_END_ROW,P15_SEARCH'
,p_query_row_template=>wwv_flow_api.id(7108873192070315)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'COMPUTED_BUT_NOT_DISPLAYED'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73527242595330386)
,p_query_column_id=>1
,p_column_alias=>'CARD_TYPE'
,p_column_display_sequence=>6
,p_column_heading=>'Card Type'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73526755505330386)
,p_query_column_id=>2
,p_column_alias=>'ORG_INFORMATION_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Org Information Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73525544038330385)
,p_query_column_id=>3
,p_column_alias=>'ORG_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Org Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73525192604330385)
,p_query_column_id=>4
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Full Name'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73525965526330386)
,p_query_column_id=>5
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>3
,p_column_heading=>'Card Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73526416393330386)
,p_query_column_id=>6
,p_column_alias=>'WORK_WITH'
,p_column_display_sequence=>4
,p_column_heading=>'Work With'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(65368568506161385)
,p_query_column_id=>7
,p_column_alias=>'ORG_INFORMATION6'
,p_column_display_sequence=>7
,p_column_heading=>'Org Information6'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(575932622110333300)
,p_plug_name=>'button container'
,p_parent_plug_id=>wwv_flow_api.id(572013717805422207)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(572715715668003265)
,p_plug_name=>'organizations filter region'
,p_region_name=>'filterRegion'
,p_parent_plug_id=>wwv_flow_api.id(1069196802458500596)
,p_region_css_classes=>'t-filter-container-rg '
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>20
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_api.id(572013717805422207)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_06=>'N'
,p_attribute_09=>'N'
,p_attribute_12=>'10000'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65368407841161383)
,p_plug_name=>'Faceted Seach'
,p_parent_plug_id=>wwv_flow_api.id(572715715668003265)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_api.id(572013717805422207)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_06=>'N'
,p_attribute_09=>'N'
,p_attribute_12=>'1000000'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1084819419737571978)
,p_plug_name=>'button container'
,p_region_name=>'backToHomeContainer'
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>90
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1096315970572306095)
,p_plug_name=>'Modal Exit Confirmation'
,p_region_name=>'ExitConfirmation'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_api.id(7169934722329292)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'no-title-bar'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>'js-dialog-size410x320'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1096316260480306098)
,p_plug_name=>'text'
,p_parent_plug_id=>wwv_flow_api.id(1096315970572306095)
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
 p_id=>wwv_flow_api.id(1096316548112306101)
,p_plug_name=>'Leave Page'
,p_parent_plug_id=>wwv_flow_api.id(1096315970572306095)
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
 p_id=>wwv_flow_api.id(1096316763473306103)
,p_plug_name=>'keep Editing'
,p_parent_plug_id=>wwv_flow_api.id(1096315970572306095)
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
 p_id=>wwv_flow_api.id(1601070081348488639)
,p_plug_name=>'PrograssBar'
,p_region_name=>'progressBar'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall:t-Form--noPadding:margin-top-md:margin-bottom-lg'
,p_component_template_options=>'#DEFAULT#:t-Tabs--simple'
,p_plug_template=>wwv_flow_api.id(1572085619207170)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region progress-bar-col'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(1542529475718063)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(2125342479223692)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1601070111183488640)
,p_plug_name=>'ButtonRegion'
,p_region_name=>'buttonsRegion'
,p_region_css_classes=>'width-900 bottom-btn-container'
,p_region_template_options=>'#DEFAULT#:margin-top-none'
,p_plug_template=>wwv_flow_api.id(2942455427172219)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6770788569210956628)
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
 p_id=>wwv_flow_api.id(73531712464330390)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1066395151573503491)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(5843813714039240)
,p_button_image_alt=>'Save Changes'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(73548900660330403)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(572782293240924477)
,p_button_name=>'EDIT_ORG_INFO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(5843813714039240)
,p_button_image_alt=>'Edit Info'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(73531340794330390)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1066395151573503491)
,p_button_name=>'DeleteOrg'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'Delete Organization'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_css_classes=>'t-delete-org'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(73528712519330387)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(575932622110333300)
,p_button_name=>'SHOW_MORE_BTN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'Show more'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'center-region'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(73540849845330397)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1096316763473306103)
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
 p_id=>wwv_flow_api.id(73554185366330406)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1084819419737571978)
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
 p_id=>wwv_flow_api.id(73529391807330388)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(572715715668003265)
,p_button_name=>'P15_FILTER_BTN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--padLeft'
,p_button_template_id=>wwv_flow_api.id(491308676814075284)
,p_button_image_alt=>'P15 Filter Btn'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btn-filter'
,p_icon_css_classes=>'fa-filter'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(73529763885330388)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(572715715668003265)
,p_button_name=>'P15_SEE_ALL'
,p_button_static_id=>'P4_SEE_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'See All (&P15_COUNT_ROWS.)'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'float-right see-all-col'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(73532468362330391)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(1066395151573503491)
,p_button_name=>'SHSH_img'
,p_button_static_id=>'shshImgBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--padRight'
,p_button_template_id=>wwv_flow_api.id(10113380236895156)
,p_button_image_alt=>'<img src="#APP_IMAGES#ic-shaking-hands.png" width="40px" /> <span>SHSH</span>'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'image-button'
,p_grid_column_css_classes=>'cancel-right-margin'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(73532850436330391)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(1066395151573503491)
,p_button_name=>'LTS_img'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--padLeft'
,p_button_template_id=>wwv_flow_api.id(10113380236895156)
,p_button_image_alt=>'<img src="#APP_IMAGES#ic-heart-house.png" width="40px" /> <span>Community Shlichut</span>'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'image-button'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(73523776537330381)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1601070111183488640)
,p_button_name=>'PrevStep'
,p_button_static_id=>'prevStepBtn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'<img src="#APP_IMAGES#ic-back.svg"/>Back'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'prev-btn'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(73532113413330390)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1066395151573503491)
,p_button_name=>'CloseEditRG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(2910527574307047)
,p_button_image_alt=>'#APP_IMAGES#ic-x-close.png'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65368471809161384)
,p_name=>'P15_FILTER_AFFILIATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(65368407841161383)
,p_prompt=>'Affiliation'
,p_source=>'ORG_INFORMATION6'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'SHLIC_TYPE_AFFILIAT_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  ',
' select ',
'           lookup_code,',
'           MEANING',
'    from (',
'    ',
'    ',
'    ',
'    select ',
'        Null lookup_code, ',
'       ''Slichut Type'' MEANING,',
'       1 seq',
'  from dual',
'    ',
' union    ',
'    select ',
'       flv.lookup_code, ',
'       FLV.MEANING,',
'       2 seq',
'  from fnd_lookup_values FLV',
' where FLV.lookup_type = ''JAFI_HR_KEHILATI_ORG_TYPE''',
'   and FLV.language = ''US''',
'   and flv.enabled_flag = ''Y''',
'   ',
'   union',
'   ',
'   ',
'    select ',
'       Null lookup_code, ',
'       ''Affiliation'' MEANING,',
'       3 seq',
'  from dual',
'    union ',
'  ',
'   select  ',
'          flv.lookup_code, ',
'          FLV.MEANING,',
'          4 seq',
'  from fnd_lookup_values FLV',
' where FLV.lookup_type = ''JAFI_HR_KEHILATI_AFFILIATION''',
'   and FLV.language = ''US''',
'   and flv.enabled_flag = ''Y'') All_Filters',
'   order by seq, MEANING',
'   '))
,p_item_template_options=>'#DEFAULT#'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>50
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73524446271330382)
,p_name=>'P15_ORG_INFO_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1069196802458500596)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73527624370330386)
,p_name=>'P15_END_ROW'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(572013717805422207)
,p_source=>'5'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73528023290330387)
,p_name=>'P15_COUNT_ROWS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(572013717805422207)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73530205236330388)
,p_name=>'P15_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(572715715668003265)
,p_placeholder=>'Search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>0
,p_grid_column_css_classes=>'search-col'
,p_field_template=>wwv_flow_api.id(491308052443075282)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:margin-right-none'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73530617841330389)
,p_name=>'P15_FILTER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(572715715668003265)
,p_prompt=>'Filter'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'SHLIC_TYPE_AFFILIAT_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  ',
' select ',
'           lookup_code,',
'           MEANING',
'    from (',
'    ',
'    ',
'    ',
'    select ',
'        Null lookup_code, ',
'       ''Slichut Type'' MEANING,',
'       1 seq',
'  from dual',
'    ',
' union    ',
'    select ',
'       flv.lookup_code, ',
'       FLV.MEANING,',
'       2 seq',
'  from fnd_lookup_values FLV',
' where FLV.lookup_type = ''JAFI_HR_KEHILATI_ORG_TYPE''',
'   and FLV.language = ''US''',
'   and flv.enabled_flag = ''Y''',
'   ',
'   union',
'   ',
'   ',
'    select ',
'       Null lookup_code, ',
'       ''Affiliation'' MEANING,',
'       3 seq',
'  from dual',
'    union ',
'  ',
'   select  ',
'          flv.lookup_code, ',
'          FLV.MEANING,',
'          4 seq',
'  from fnd_lookup_values FLV',
' where FLV.lookup_type = ''JAFI_HR_KEHILATI_AFFILIATION''',
'   and FLV.language = ''US''',
'   and flv.enabled_flag = ''Y'') All_Filters',
'   order by seq, MEANING',
'   '))
,p_lov_display_null=>'YES'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_grid_column_css_classes=>'rf-select2-filter'
,p_field_template=>wwv_flow_api.id(491308052443075282)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'MULTI'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73533258277330391)
,p_name=>'P15_ORG_NAME_UPD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1066395151573503491)
,p_prompt=>'Organization name'
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
 p_id=>wwv_flow_api.id(73533725439330391)
,p_name=>'P15_NAME_EMAIL_LABEL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1066395151573503491)
,p_prompt=>'Organization Contact Person:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column_css_classes=>'black-label'
,p_field_template=>wwv_flow_api.id(11033930535026651)
,p_item_template_options=>'#DEFAULT#:margin-bottom-none'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73534060419330391)
,p_name=>'P15_FULL_NAME_UPD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1066395151573503491)
,p_prompt=>'Name'
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
 p_id=>wwv_flow_api.id(73534447095330392)
,p_name=>'P15_EMAIL_UPD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1066395151573503491)
,p_prompt=>'Email'
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
 p_id=>wwv_flow_api.id(73534925261330392)
,p_name=>'P15_PHONE_LABEL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(1066395151573503491)
,p_prompt=>'Phone'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column_css_classes=>'phone-label'
,p_field_template=>wwv_flow_api.id(5871941200456443)
,p_item_template_options=>'#DEFAULT#:margin-bottom-none'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73535315830330392)
,p_name=>'P15_PHONE1_UPD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(1066395151573503491)
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  flv.attribute15 d,',
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
'order by d'))
,p_cHeight=>1
,p_colspan=>3
,p_grid_column_css_classes=>'disable-phone-label p1'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#:margin-top-none'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73535679068330392)
,p_name=>'P15_PHONE2_UPD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(1066395151573503491)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column_css_classes=>'disable-phone-label disable-error-label p2'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#:margin-top-none'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73536072706330392)
,p_name=>'P15_PHONE3_UPD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(1066395151573503491)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column_css_classes=>'disable-phone-label  disable-error-label'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#:margin-top-none'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73536492674330393)
,p_name=>'P15_WORK_WITH_LABEL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(1066395151573503491)
,p_prompt=>'Does the institution regularly work with:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column_css_classes=>'black-label'
,p_field_template=>wwv_flow_api.id(11033930535026651)
,p_item_template_options=>'#DEFAULT#:margin-bottom-none'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73536904645330393)
,p_name=>'P15_SHSH_ACTIVE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(1066395151573503491)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73537287265330394)
,p_name=>'P15_LTS_ACTIVE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(1066395151573503491)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73537718306330394)
,p_name=>'P15_SELECTED_ORG_TYPES'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(1066395151573503491)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(73538110809330394)
,p_name=>'P15_ORG_TYPE_UPD'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(1066395151573503491)
,p_prompt=>'Type of organization <br class="mobile-br">(please select up to 4 options)'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'ORG_TYPE_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select flv.lookup_code, FLV.MEANING',
'  from fnd_lookup_values FLV',
' where FLV.lookup_type = ''JAFI_HR_KEHILATI_ORG_TYPE''',
'   and FLV.language = ''US''',
'   and flv.enabled_flag = ''Y'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Choose Type'
,p_grid_column_css_classes=>'black-label rf-select2-filter'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'MULTI'
,p_attribute_04=>'4'
,p_attribute_05=>'4'
,p_attribute_08=>'CIC'
,p_attribute_10=>'280px'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73538477060330394)
,p_name=>'P15_AFFLICATION_UPD'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(1066395151573503491)
,p_prompt=>'Affiliation'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'AFFILIATION_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select flv.lookup_code, FLV.MEANING',
'  from fnd_lookup_values FLV',
' where FLV.lookup_type = ''JAFI_HR_KEHILATI_AFFILIATION''',
'   and FLV.language = ''US''',
'   and flv.enabled_flag = ''Y''',
''))
,p_grid_column_css_classes=>'black-label'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73538852096330394)
,p_name=>'P15_FREQ_UPD'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(1066395151573503491)
,p_prompt=>'If the institution works with a ShinShin <br class="mobile-br">or a shaliach, how often are they <br class="mobile-br">involved in activities or present on-site?'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FREQUENCY_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select flv.lookup_code, FLV.MEANING',
'  from fnd_lookup_values FLV',
' where FLV.lookup_type = ''JAFI_HR_KEHILATI_FREQUENCY''',
'   and FLV.language = ''US''',
'   and flv.enabled_flag = ''Y'''))
,p_grid_column_css_classes=>'black-label'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73540143513330396)
,p_name=>'P15_LEAVE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1096316548112306101)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(73554642878330408)
,p_validation_name=>'email is not null'
,p_validation_sequence=>10
,p_validation=>'P15_EMAIL_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_when_button_pressed=>wwv_flow_api.id(73531712464330390)
,p_associated_item=>wwv_flow_api.id(73534447095330392)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(73555500708330409)
,p_validation_name=>'phone1 not null'
,p_validation_sequence=>20
,p_validation=>'(:P15_PHONE1_UPD is not null and :P15_PHONE2_UPD is not null) -- and :P15_PHONE3_UPD is not null)'
,p_validation_type=>'SQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_when_button_pressed=>wwv_flow_api.id(73531712464330390)
,p_associated_item=>wwv_flow_api.id(73535315830330392)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(73557469797330410)
,p_validation_name=>'phone1 is valid'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'regexp_like(:P15_PHONE1_UPD, ''^[+]\d{0,3}$'') ',
'and regexp_like(:P15_PHONE2_UPD, ''^\d{0,10}$'')'))
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Invalid phone number'
,p_when_button_pressed=>wwv_flow_api.id(73531712464330390)
,p_associated_item=>wwv_flow_api.id(73535315830330392)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(73557846266330410)
,p_validation_name=>'phone2 is valid_1'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'regexp_like(:P15_PHONE1_UPD, ''^[+]\d{0,3}$'') ',
'and regexp_like(:P15_PHONE2_UPD, ''^\d{0,10}$'')'))
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\2800'),
''))
,p_when_button_pressed=>wwv_flow_api.id(73531712464330390)
,p_associated_item=>wwv_flow_api.id(73535679068330392)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(73558255439330410)
,p_validation_name=>'phone3 is valid'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'regexp_like(:P15_PHONE1_UPD, ''^[+]\d{0,3}$'') ',
'and regexp_like(:P15_PHONE2_UPD, ''^\d{0,10}$'') ',
'--and regexp_like(:P15_PHONE3_UPD, ''^\d{4}$'')'))
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\2800'),
''))
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(73531712464330390)
,p_associated_item=>wwv_flow_api.id(73536072706330392)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(73555929128330409)
,p_validation_name=>'phone2 not null'
,p_validation_sequence=>60
,p_validation=>'(:P15_PHONE1_UPD is not null and :P15_PHONE2_UPD is not null) -- and :P15_PHONE3_UPD is not null)'
,p_validation_type=>'SQL_EXPRESSION'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\2800'),
''))
,p_when_button_pressed=>wwv_flow_api.id(73531712464330390)
,p_associated_item=>wwv_flow_api.id(73535679068330392)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(73556273241330409)
,p_validation_name=>'phone3 not null'
,p_validation_sequence=>70
,p_validation=>'(:P15_PHONE1_UPD is not null and :P15_PHONE2_UPD is not null) -- and :P15_PHONE3_UPD is not null)'
,p_validation_type=>'SQL_EXPRESSION'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\2800'),
''))
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(73531712464330390)
,p_associated_item=>wwv_flow_api.id(73536072706330392)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(73555113041330409)
,p_validation_name=>'last name not null'
,p_validation_sequence=>80
,p_validation=>'P15_FULL_NAME_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_when_button_pressed=>wwv_flow_api.id(73531712464330390)
,p_associated_item=>wwv_flow_api.id(73534060419330391)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(73560310449330411)
,p_validation_name=>'Name English Validation'
,p_validation_sequence=>90
,p_validation=>'P15_FULL_NAME_UPD'
,p_validation2=>'^[a-zA-Z0-9.,"''-:; ]*$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Please use English'
,p_when_button_pressed=>wwv_flow_api.id(73531712464330390)
,p_associated_item=>wwv_flow_api.id(73534060419330391)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(73556707496330410)
,p_validation_name=>'org name is not null'
,p_validation_sequence=>100
,p_validation=>'P15_ORG_NAME_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_when_button_pressed=>wwv_flow_api.id(73531712464330390)
,p_associated_item=>wwv_flow_api.id(73533258277330391)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(73559887290330411)
,p_validation_name=>'Org Name English Validation'
,p_validation_sequence=>110
,p_validation=>'P15_ORG_NAME_UPD'
,p_validation2=>'^[a-zA-Z0-9.,"''-:; ]*$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Please use English'
,p_when_button_pressed=>wwv_flow_api.id(73531712464330390)
,p_associated_item=>wwv_flow_api.id(73533258277330391)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(73557068163330410)
,p_validation_name=>'email is valid'
,p_validation_sequence=>120
,p_validation=>'P15_EMAIL_UPD'
,p_validation2=>'^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Invalid Mail'
,p_when_button_pressed=>wwv_flow_api.id(73531712464330390)
,p_associated_item=>wwv_flow_api.id(73534447095330392)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(73558692756330411)
,p_validation_name=>'afflication is not null'
,p_validation_sequence=>130
,p_validation=>'P15_AFFLICATION_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_when_button_pressed=>wwv_flow_api.id(73531712464330390)
,p_associated_item=>wwv_flow_api.id(73538477060330394)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(73559091638330411)
,p_validation_name=>'freq is not null'
,p_validation_sequence=>140
,p_validation=>'P15_FREQ_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_when_button_pressed=>wwv_flow_api.id(73531712464330390)
,p_associated_item=>wwv_flow_api.id(73538852096330394)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(73559516341330411)
,p_validation_name=>'org type is not null'
,p_validation_sequence=>150
,p_validation=>'P15_ORG_TYPE_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please select at least one option'
,p_when_button_pressed=>wwv_flow_api.id(73531712464330390)
,p_associated_item=>wwv_flow_api.id(73538110809330394)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73574440243330420)
,p_name=>'hide region'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73574888329330420)
,p_event_id=>wwv_flow_api.id(73574440243330420)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_FILTER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(103422619502006443)
,p_event_id=>wwv_flow_api.id(73574440243330420)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(65368407841161383)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73570047700330418)
,p_name=>'refresh rg when change'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P15_SEARCH'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73570638334330418)
,p_event_id=>wwv_flow_api.id(73570047700330418)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(572013717805422207)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73571110661330418)
,p_event_id=>wwv_flow_api.id(73570047700330418)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COUNT(*)',
'INTO :P15_COUNT_ROWS',
'  from hr_organization_information hoi',
' where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG''',
'   and hoi.ORG_INFORMATION10 = ''Y''',
'AND (',
'    UPPER(hoi.ORG_INFORMATION1) LIKE ''%'' || UPPER(TRIM(:P15_SEARCH)) || ''%''',
'    OR :P15_SEARCH IS NULL',
')',
'   and hoi.organization_id =  :P0_ORG_ID;'))
,p_attribute_02=>'P15_SEARCH'
,p_attribute_03=>'P15_COUNT_ROWS'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73571632487330419)
,p_event_id=>wwv_flow_api.id(73570047700330418)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_COUNT_ROWS'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73572138214330419)
,p_event_id=>wwv_flow_api.id(73570047700330418)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(73529763885330388)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var count = $v("P15_COUNT_ROWS"); ',
'$("#P15_SEE_ALL .t-Button-label").text("See All (" + count + ")");',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73572532187330419)
,p_name=>'clear edit org data'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P15_ORG_INFO_ID'
,p_condition_element=>'P15_ORG_INFO_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73573464940330420)
,p_event_id=>wwv_flow_api.id(73572532187330419)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P15_ORG_NAME_UPD := null;',
':P15_FULL_NAME_UPD := null;',
':P15_EMAIL_UPD := null;',
':P15_PHONE1_UPD := null;',
':P15_PHONE2_UPD := null;',
'--:P15_PHONE3_UPD := null;',
':P15_SHSH_ACTIVE := null;',
':P15_LTS_ACTIVE := null;',
':P15_AFFLICATION_UPD := null;',
':P15_FREQ_UPD  := null;',
':P15_SELECTED_ORG_TYPES := null;',
':P15_ORG_TYPE_UPD := null;',
'',
''))
,p_attribute_03=>'P15_ORG_NAME_UPD,P15_FULL_NAME_UPD,P15_EMAIL_UPD,P15_PHONE1_UPD,P15_PHONE2_UPD,P15_PHONE3_UPD,P15_AFFLICATION_UPD,P15_FREQ_UPD,P15_SHSH_ACTIVE,P15_LTS_ACTIVE,P15_SELECTED_ORG_TYPES,P15_ORG_TYPE_UPD'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73573959964330420)
,p_event_id=>wwv_flow_api.id(73572532187330419)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(73531340794330390)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73573013859330419)
,p_event_id=>wwv_flow_api.id(73572532187330419)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1066395151573503491)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73579518771330422)
,p_name=>'open edit org region'
,p_event_sequence=>310
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(73548900660330403)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73580019870330422)
,p_event_id=>wwv_flow_api.id(73579518771330422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select hoi.ORG_INFORMATION1 org_name,',
'       hoi.ORG_INFORMATION2 FULL_NAME,',
'       hoi.ORG_INFORMATION3 MAIL,',
'       substr(hoi.ORG_INFORMATION4, 1, INSTR(hoi.ORG_INFORMATION4, ''-'', 1, 1) - 1),               -- PHONE1',
'       substr(hoi.ORG_INFORMATION4, INSTR(hoi.ORG_INFORMATION4, ''-'', 1, 1) + 1),               -- PHONE2',
'       --substr(hoi.ORG_INFORMATION4, 7),',
'       case',
'         when hoi.ORG_INFORMATION9 like ''%SSH%'' then',
'          ''Y''',
'         else',
'          ''N''',
'       end as ssh_img,',
'       case',
'         when hoi.ORG_INFORMATION9 like ''%LTS%'' then',
'          ''Y''',
'         else',
'          ''N''',
'       end as lts_img,',
'       hoi.ORG_INFORMATION5 org_Type,',
'       hoi.ORG_INFORMATION6 Affiliation,',
'       hoi.ORG_INFORMATION7 Frequency     ',
'  into :P15_ORG_NAME_UPD,',
'       :P15_FULL_NAME_UPD,',
'       :P15_EMAIL_UPD,',
'       :P15_PHONE1_UPD,',
'       :P15_PHONE2_UPD,',
'       --:P15_PHONE3_UPD,',
'       :P15_SHSH_ACTIVE,',
'       :P15_LTS_ACTIVE,',
'       :P15_ORG_TYPE_UPD,',
'       :P15_AFFLICATION_UPD,',
'       :P15_FREQ_UPD',
'  from hr_organization_information hoi',
' where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG''',
'   and hoi.org_information_id = :P15_ORG_INFO_ID;',
'',
''))
,p_attribute_03=>'P15_ORG_NAME_UPD,P15_FULL_NAME_UPD,P15_EMAIL_UPD,P15_PHONE1_UPD,P15_PHONE2_UPD,P15_PHONE3_UPD,P15_AFFLICATION_UPD,P15_FREQ_UPD,P15_SHSH_ACTIVE,P15_LTS_ACTIVE'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73581540716330423)
,p_event_id=>wwv_flow_api.id(73579518771330422)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'',
'select replace(hoi.ORG_INFORMATION5, '':'', '',''),',
'     0',
'     into :P15_SELECTED_ORG_TYPES,',
'       :P15_LEAVE',
'    from hr_organization_information hoi',
'   where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG'' ',
'     and hoi.org_information_id = :P15_ORG_INFO_ID',
'     and hoi.ORG_INFORMATION5 is not null;',
'',
'exception  when others then',
'    ',
'    :P15_SELECTED_ORG_TYPES :='''';',
' ',
'   ',
'    ',
'end; ',
'',
''))
,p_attribute_02=>'P15_ORG_INFO_ID'
,p_attribute_03=>'P15_SELECTED_ORG_TYPES ,P15_LEAVE'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73581037753330423)
,p_event_id=>wwv_flow_api.id(73579518771330422)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selected = $v("P15_SELECTED_ORG_TYPES"); ',
'',
'if (selected) {',
'  var valuesArray = selected.split(",");',
'  apex.item("P15_ORG_TYPE_UPD").setValue(valuesArray);',
'  $("#P15_ORG_TYPE_UPD").trigger("change"); ',
'}',
'',
'if ($(''.select2-selection__choice__remove'').length < 4) {',
'    $(''.select2-selection__choice__remove'').addClass(''open-select2 fa fa-chevron-down'')',
'                                           .removeClass(''select2-selection__choice__remove'')',
'                                           .text('''');',
'}',
'else if ($(''#P15_ORG_TYPE_UPD_CONTAINER ul.select2-selection__rendered li.select2-selection__choice'').length == 0) {',
'    if (!$(''li.select2-search--inline'').hasClass(''open-select2'')) {',
'        $(''li.select2-search--inline'').addClass(''open-select2 fa fa-chevron-down'');',
'    }',
'}',
'',
'$(''.select2-search__field'').attr(''disabled'',''disabled'');',
'',
'var dataObj = {',
'    "P15_ORG_NAME_UPD": $v(''P15_ORG_NAME_UPD''),',
'    "P15_FULL_NAME_UPD": $v(''P15_FULL_NAME_UPD''),',
'    "P15_EMAIL_UPD": $v(''P15_EMAIL_UPD''), ',
'    "P15_PHONE1_UPD": $v(''P15_PHONE1_UPD''),',
'    "P15_PHONE2_UPD": $v(''P15_PHONE2_UPD''),',
'    //"P15_PHONE3_UPD": $v(''P15_PHONE3_UPD''),',
'    "P15_SHSH_ACTIVE": $v(''P15_SHSH_ACTIVE''),',
'    "P15_LTS_ACTIVE": $v(''P15_LTS_ACTIVE''),',
'    "P15_ORG_TYPE_UPD": $v(''P15_ORG_TYPE_UPD''),',
'    "P15_AFFLICATION_UPD": $v(''P15_AFFLICATION_UPD''),',
'    "P15_FREQ_UPD": $v(''P15_FREQ_UPD'') ',
'};',
'',
'sessionStorage.setItem(''original-data'', JSON.stringify(dataObj));'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73581998444330423)
,p_event_id=>wwv_flow_api.id(73579518771330422)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(73531340794330390)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73580500188330423)
,p_event_id=>wwv_flow_api.id(73579518771330422)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1066395151573503491)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73583776527330424)
,p_name=>'show more rows'
,p_event_sequence=>320
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(73528712519330387)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73584257724330424)
,p_event_id=>wwv_flow_api.id(73583776527330424)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_END_ROW'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_NUMBER(:P15_END_ROW) + 6'
,p_attribute_07=>'P15_END_ROW'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73575271185330421)
,p_name=>'activate shsh image'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P15_SHSH_ACTIVE'
,p_condition_element=>'P15_SHSH_ACTIVE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73575794163330421)
,p_event_id=>wwv_flow_api.id(73575271185330421)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(73532468362330391)
,p_attribute_01=>'active-btn'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73576328093330421)
,p_event_id=>wwv_flow_api.id(73575271185330421)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(73532468362330391)
,p_attribute_01=>'active-btn'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73578087272330422)
,p_name=>'activate lts imag'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P15_LTS_ACTIVE'
,p_condition_element=>'P15_LTS_ACTIVE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73578565443330422)
,p_event_id=>wwv_flow_api.id(73578087272330422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(73532850436330391)
,p_attribute_01=>'active-btn'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73579140157330422)
,p_event_id=>wwv_flow_api.id(73578087272330422)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(73532850436330391)
,p_attribute_01=>'active-btn'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73576667063330421)
,p_name=>'toggle shsh active'
,p_event_sequence=>350
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(73532468362330391)
,p_condition_element=>'P15_SHSH_ACTIVE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73577176299330421)
,p_event_id=>wwv_flow_api.id(73576667063330421)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_SHSH_ACTIVE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73577701611330421)
,p_event_id=>wwv_flow_api.id(73576667063330421)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_SHSH_ACTIVE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73582375638330423)
,p_name=>'toggle lts active'
,p_event_sequence=>360
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(73532850436330391)
,p_condition_element=>'P15_LTS_ACTIVE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73582857272330424)
,p_event_id=>wwv_flow_api.id(73582375638330423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_LTS_ACTIVE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73583390275330424)
,p_event_id=>wwv_flow_api.id(73582375638330423)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_LTS_ACTIVE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73584736998330424)
,p_name=>'show filter input'
,p_event_sequence=>370
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(73529391807330388)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73585234246330424)
,p_event_id=>wwv_flow_api.id(73584736998330424)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(65368407841161383)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73586109695330425)
,p_name=>'hide filter input'
,p_event_sequence=>380
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(572013717805422207)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73586562360330425)
,p_event_id=>wwv_flow_api.id(73586109695330425)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(73529391807330388)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73587124141330425)
,p_event_id=>wwv_flow_api.id(73586109695330425)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_FILTER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73565889114330416)
,p_name=>'set rows to max'
,p_event_sequence=>390
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(73529763885330388)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73566428989330416)
,p_event_id=>wwv_flow_api.id(73565889114330416)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_END_ROW'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P15_COUNT_ROWS'
,p_attribute_07=>'P15_COUNT_ROWS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73566838903330416)
,p_name=>'refresh region'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P15_END_ROW'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73567306158330416)
,p_event_id=>wwv_flow_api.id(73566838903330416)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(572013717805422207)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73567675450330417)
,p_name=>'show hide show more btn'
,p_event_sequence=>410
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P15_COUNT_ROWS,P15_END_ROW'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Number($v("P15_END_ROW")) >= Number($v("P15_COUNT_ROWS"))',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73569172866330418)
,p_event_id=>wwv_flow_api.id(73567675450330417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(73528712519330387)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73569670480330418)
,p_event_id=>wwv_flow_api.id(73567675450330417)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(73528712519330387)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73568239096330417)
,p_event_id=>wwv_flow_api.id(73567675450330417)
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
 p_id=>wwv_flow_api.id(73568695731330417)
,p_event_id=>wwv_flow_api.id(73567675450330417)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#buttonsRegion'').attr(''style'',''width: 588px;max-width: 100%;margin: 0 auto; bottom: 0 !important'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73591215324330427)
,p_name=>'set null org info id'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P15_ORG_INFO_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73591699536330427)
,p_event_id=>wwv_flow_api.id(73591215324330427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P15_ORG_INFO_ID:= null;'
,p_attribute_03=>'P15_ORG_INFO_ID'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73592062275330427)
,p_name=>'show warning window'
,p_event_sequence=>430
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(73532113413330390)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'1===0'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
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
 p_id=>wwv_flow_api.id(73593105827330428)
,p_event_id=>wwv_flow_api.id(73592062275330427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1096315970572306095)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73592575827330427)
,p_event_id=>wwv_flow_api.id(73592062275330427)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73594073913330428)
,p_event_id=>wwv_flow_api.id(73592062275330427)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(572716515460003273)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73593564556330428)
,p_event_id=>wwv_flow_api.id(73592062275330427)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(572013717805422207)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73587499314330426)
,p_name=>'leave page'
,p_event_sequence=>450
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(1096316548112306101)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73588464595330426)
,p_event_id=>wwv_flow_api.id(73587499314330426)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73587966889330426)
,p_event_id=>wwv_flow_api.id(73587499314330426)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#ExitConfirmation").dialog("close");',
'$("#edit-organization-rg").dialog("close");'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73588892844330426)
,p_name=>'New_1'
,p_event_sequence=>460
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P15_CLEAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73589412379330426)
,p_event_id=>wwv_flow_api.id(73588892844330426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("edit-organization-rg").widget().find("input, select, textarea").each(function () {',
'    if (this.tagName.toLowerCase() === "select") {',
'        this.selectedIndex = 0;',
'    } else if (this.type === "checkbox" || this.type === "radio") {',
'        this.checked = this.defaultChecked;',
'    } else {',
'        this.value = this.defaultValue;',
'    }',
'    $(this).removeAttr("data-apexchanged");',
'});'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73589823734330426)
,p_name=>'keep editing dailog'
,p_event_sequence=>470
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(73540849845330397)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73590817475330427)
,p_event_id=>wwv_flow_api.id(73589823734330426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'     apex.item("P15_LEAVE").setValue(0);'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73590320727330427)
,p_event_id=>wwv_flow_api.id(73589823734330426)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1096315970572306095)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73561812350330413)
,p_name=>'set items'
,p_event_sequence=>480
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73562294676330414)
,p_event_id=>wwv_flow_api.id(73561812350330413)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''.disable-phone-label'').parent(''div.row'').addClass(''phone-number-row'');',
'',
'isMobile = window.mobileCheck();',
'if (isMobile) {',
'    $(''.add-organization-container'').attr(''style'',',
'    ''width: 225px !important; min-height: 200px; border: none; border-radius: 10px; background: white; color: #172B54; display: flex; flex-direction: row; justify-content: center; align-items: center; cursor: pointer; gap: 13px;'');',
'    ',
'    $(''#shshImgBtn'').parents(''div.row'').addClass(''shsh-community-buttons-container'');',
'    ',
'    var affiliationOptions = $(''#P15_AFFLICATION_UPD .apex-item-option'');',
'    $(''#P15_AFFLICATION_UPD .apex-item-grid-row'').remove();',
'    ',
'    var rowCount = 0;',
'    for (var i = 1; i <= affiliationOptions.length; i++) {',
'        if (i % 2 != 0) {',
'            rowCount++;',
'            $(''#P15_AFFLICATION_UPD .radio_group'').append(''<div class="apex-item-grid-row row-'' + rowCount + ''"></div>'');',
'        }',
'        $(''.row-'' + rowCount).append(affiliationOptions[i - 1]);',
'    }',
'    ',
'    var freqOptions = $(''#P15_FREQ_UPD .apex-item-option'');',
'    $(''#P15_FREQ_UPD .apex-item-option'').remove();    ',
'    $(''#P15_FREQ_UPD'').append(''<div class="apex-item-grid radio_group"></div>'');',
'',
'    for (var i = 0; i < freqOptions.length; i++) {',
'        var optionHtml = $(freqOptions[i]).wrap(''<p/>'').parent().html().replace(''<div '',''<div style="width: 100%;" '');',
'        $(''#P15_FREQ_UPD .radio_group'').append(''<div class="apex-item-grid-row">'' + optionHtml + ''</div>'');',
'    }',
'    ',
'    ',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73564986109330415)
,p_name=>'org type change delayed'
,p_event_sequence=>490
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P15_ORG_TYPE_UPD'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73565454720330415)
,p_event_id=>wwv_flow_api.id(73564986109330415)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selectedOptionIds = $(''#P15_ORG_TYPE_UPD'').val();',
'var selectedOptions = $(''#P15_ORG_TYPE_UPD option'').filter(function(index) {',
'    return $.inArray($(this).attr("value"), selectedOptionIds) !== -1;',
'}).sort(function(a, b) {',
'   return $(a).text().toUpperCase().localeCompare($(b).text().toUpperCase());',
'});',
'$(selectedOptions).remove();',
'var sortedOptions = $(''#P15_ORG_TYPE_UPD option'').sort(function(a, b) {',
'   return $(a).text().toUpperCase().localeCompare($(b).text().toUpperCase());',
'});',
'$(''#P15_ORG_TYPE_UPD option'').remove();',
'$(selectedOptions).attr(''data-is-selected'', ''true'');',
'$(''#P15_ORG_TYPE_UPD'').prepend(selectedOptions);',
'$(''#P15_ORG_TYPE_UPD'').append(sortedOptions);',
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
'        else if ($(''#P15_ORG_TYPE_UPD_CONTAINER ul.select2-selection__rendered li.select2-selection__choice'').length == 0) {',
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
 p_id=>wwv_flow_api.id(73562719638330414)
,p_name=>'org type click'
,p_event_sequence=>500
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#P15_ORG_TYPE_UPD_CONTAINER'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73563160089330414)
,p_event_id=>wwv_flow_api.id(73562719638330414)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $(''hr.select2-divider'').remove();',
'    $(''<hr class="select2-divider"/>'').insertAfter(''.select2-results__option[aria-selected="true"]:last''); ',
'    if (!$(''.select2-results__options'').hasClass(''opaque-gradient'')) {',
'        $(''.select2-results__options'').addClass(''opaque-gradient'');',
'        $(''.select2-results__options'').attr("onscroll", "chk_scroll(this)");',
'    };',
'    ',
'    if ($(''#clearSelectionBtn'').length == 0) {',
'        $(''<div style="width: 100%; height: 38px;">'' +',
'          ''<button class="t-Button t-orange-btn lto520489891246004103_0" type="button" id="clearSelectionBtn" '' + ',
'          ''style="height:30px;BACKGROUND-COLOR: TRANSPARENT;BOX-SHADOW: NONE; float: right; padding-right: 10px; padding-bottom: 0;">'' + ',
'          ''<span class="t-Button-label" style="color: #E84C26;font-size:16px;font-weight:500">Clear All</span></button></div>'')',
'            .insertAfter(''ul.select2-results__options'');',
'    }',
'}, 10);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73563631116330415)
,p_name=>'clear selection btn click'
,p_event_sequence=>510
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#clearSelectionBtn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73564095925330415)
,p_event_id=>wwv_flow_api.id(73563631116330415)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P15_ORG_TYPE_UPD'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73564638625330415)
,p_event_id=>wwv_flow_api.id(73563631116330415)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*$(''#select2-P15_ORG_TYPE_UPD-results li'').attr(''aria-selected'',''false'');',
'$(''#P15_ORG_TYPE_UPD option'').removeAttr(''data-is-selected'');',
'$(''#P15_ORG_TYPE_UPD'').val('''');',
'$(''#P15_ORG_TYPE_UPD'').trigger(''change'');',
'$(''hr.select2-divider'').remove();',
'$(''<hr class="select2-divider"/>'').insertAfter(''.select2-results__option[aria-selected="true"]:last''); ',
'if (!$(''.select2-results__options'').hasClass(''opaque-gradient'')) {',
'    $(''.select2-results__options'').addClass(''opaque-gradient'');',
'    $(''.select2-results__options'').attr("onscroll", "chk_scroll(this)");',
'};*/'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73594464520330428)
,p_name=>'organizations after refresh'
,p_event_sequence=>520
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(572013717805422207)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73594958089330428)
,p_event_id=>wwv_flow_api.id(73594464520330428)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (isMobile) {',
'    $(''.add-organization-container'').attr(''style'',',
'    ''width: 225px !important; min-height: 200px; border: none; border-radius: 10px; background: white; color: #172B54; display: flex; flex-direction: row; justify-content: center; align-items: center; cursor: pointer; gap: 13px;'');',
'}'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(73560999880330412)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'l_ovn pls_integer;',
'l_org_information_id Pls_Integer;',
'l_shsh_lts   varchar(200);',
'',
'',
'begin',
'',
'',
'fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800); ',
'',
'--SSH:LTS ',
'',
'if :P15_SHSH_ACTIVE = ''Y'' then 	l_shsh_lts   := ''SSH:'';  end if;',
'',
'if :P15_LTS_ACTIVE = ''Y'' then 	l_shsh_lts  :=  l_shsh_lts||''LTS'';    end if;',
'',
'/*',
'  XX_MY_UTILS.add_msg('' 220 Page Community Information Organizations P15_FULL_NAME_UPD ''||:P15_FULL_NAME_UPD);  ',
'  XX_MY_UTILS.add_msg('' 220 Page Community Information Organizations P15_EMAIL_UPD ''||:P15_EMAIL_UPD);  ',
'  XX_MY_UTILS.add_msg('' 220 Page Community Information Organizations P15_PHONE ''|| :P15_PHONE1_UPD||:P15_PHONE2_UPD||:P15_PHONE3_UPD);  ',
'  XX_MY_UTILS.add_msg('' 220 Page Community Information Organizations P15_AFFLICATION_UPD ''|| :P15_AFFLICATION_UPD);  ',
'  XX_MY_UTILS.add_msg('' 220 Page Community Information Organizations P15_FREQ_UPD ''|| :P15_FREQ_UPD);  ',
'  XX_MY_UTILS.add_msg('' 220 Page Community Information Organizations P15_ORG_TYPE_UPD ''|| :P15_ORG_TYPE_UPD);  ',
'  XX_MY_UTILS.add_msg('' 220 Page Community Information Organizations l_shsh_lts ''|| l_shsh_lts);  ',
' */',
' ',
' ',
' Begin    ',
'  ',
'    Select t.object_version_number, org_information_id',
'      Into l_ovn, l_org_information_id ',
'      From Hr_Organization_Information t',
'     Where t.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG''',
'       and t.ORGANIZATION_ID = :P0_ORG_ID',
'       and t.org_information_id = :P15_ORG_INFO_ID;',
'   ',
'    ',
'               hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                                           ,p_object_version_number => l_ovn',
'                                                           ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTUMER_ORG''',
'                                                           ,p_org_information_id => l_org_information_id',
'                                                           ,p_org_information1 => :P15_ORG_NAME_UPD',
'                                                           ,p_org_information2 => :P15_FULL_NAME_UPD',
'                                                           ,p_org_information3 => :P15_EMAIL_UPD   ',
'                                                           ,p_org_information4 => :P15_PHONE1_UPD||''-''||:P15_PHONE2_UPD/*||:P15_PHONE3_UPD*/',
'                                                           ,p_org_information5 => :P15_ORG_TYPE_UPD',
'                                                           ,p_org_information6 => :P15_AFFLICATION_UPD',
'                                                           ,p_org_information7 => :P15_FREQ_UPD',
'                                                           ,p_org_information9 => l_shsh_lts );  ',
'                                                           ',
'                                             ',
'     EXCEPTION when no_data_found then ',
' ',
'             hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                                  ,p_object_version_number => l_ovn',
'                                  ,p_org_info_type_code =>  ''JAFI_HR_SHLICHUT_CUSTUMER_ORG''',
'                                  ,p_org_information_id => l_org_information_id',
'                                  ,p_org_information1 => :P15_ORG_NAME_UPD',
'                                  ,p_org_information2 => :P15_FULL_NAME_UPD',
'                                  ,p_org_information3 => :P15_EMAIL_UPD   ',
'                                  ,p_org_information4 => :P15_PHONE1_UPD||''-''||:P15_PHONE2_UPD/*||:P15_PHONE3_UPD*/',
'                                  ,p_org_information5 => :P15_ORG_TYPE_UPD',
'                                  ,p_org_information6 => :P15_AFFLICATION_UPD',
'                                  ,p_org_information7 => :P15_FREQ_UPD',
'                                  ,p_org_information9 => l_shsh_lts               ',
'                                  ,p_org_information10 => ''Y''              ',
'                                  ,p_organization_id   => :P0_ORG_ID  );',
'',
'        commit;',
'End;',
'',
'exception  when others then',
'    XX_MY_UTILS.add_msg(''Main ERROR 220 Page 4 Community Information Organizations ''||SQLERRM); ',
'',
'     apex_error.add_error (',
'              p_message          => ''Failed to update Community Information Organizations =>''||SQLERRM,   p_display_location => apex_error.c_inline_in_notification );',
'    ',
'    ',
'end;',
' ',
'                 '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(73531712464330390)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(73561383912330413)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'l_ovn pls_integer;',
'l_org_information_id Pls_Integer;',
'',
' ',
' Begin    ',
'  ',
'    Select t.object_version_number, org_information_id',
'      Into l_ovn, l_org_information_id ',
'      From Hr_Organization_Information t',
'     Where t.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG''',
'       and t.ORGANIZATION_ID = :P0_ORG_ID',
'       and t.org_information_id = :P15_ORG_INFO_ID;',
'   ',
'   ',
'      XX_MY_UTILS.add_msg('' 220 Page Community Information Organizations l_org_information_id ''||l_org_information_id);  ',
'  ',
' ',
'               hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                                           ,p_object_version_number => l_ovn',
'                                                           ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTUMER_ORG''',
'                                                           ,p_org_information_id => l_org_information_id',
'                                                           ,p_org_information10 => ''N'');  ',
'                                                           ',
'commit;',
'',
'',
'',
'exception  when others then',
'    XX_MY_UTILS.add_msg(''Main ERROR 220 Page 4 Community Information Organizations ''||SQLERRM); ',
'',
'     apex_error.add_error (',
'              p_message          => ''Failed to update Community Information Organizations =>''||SQLERRM,   p_display_location => apex_error.c_inline_in_notification );',
'    ',
'    ',
'end;',
' ',
'                 '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(73531340794330390)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(73560563812330411)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set items'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P15_END_ROW := 5;',
'',
'',
'select COUNT(*)',
'INTO :P15_COUNT_ROWS',
'  from hr_organization_information hoi',
' where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG''',
'   and hoi.ORG_INFORMATION10 = ''Y''',
'AND (',
'    UPPER(hoi.ORG_INFORMATION1) LIKE ''%'' || UPPER(TRIM(:P15_SEARCH)) || ''%''',
'    OR :P15_SEARCH IS NULL',
')',
'   and hoi.organization_id =  :P0_ORG_ID;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
