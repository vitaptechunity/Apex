prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'Community Information Organizations'
,p_alias=>'COMMUNITY-INFORMATION-ORGANIZATIONS'
,p_step_title=>'Community Information Organizations'
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
'#P4_ORG_NAME_UPD_CONTAINER .t-Form-itemWrapper {',
'    flex-flow: column;',
'}',
'',
'#P4_ORG_NAME_UPD_CONTAINER .t-Form-itemText--post {',
'    font-size: 14px;',
'    color: red;',
'}',
'',
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
'.apex-item-checkbox input+label:after {',
'    content: ''\e007'';',
'    font-size: 10px;',
'}',
'',
'#org-tag-info-rg .t-Cards {',
'    flex-flow: column;',
'}',
'',
'#P4_ORG_NAME_UPD_CONTAINER .select2-selection__rendered {',
'    margin-top: 2px;',
'}',
'',
'#P4_ORG_NAME_UPD_CONTAINER .select2-selection__arrow {',
'    top: 5px;',
'}',
'',
'#P4_ORG_NAME_OTHER_UPD,',
'#P4_ORG_NAME_UPD_CONTAINER .select2-container {',
'    width: 100% !important;',
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
,p_last_updated_by=>'DRORA'
,p_last_upd_yyyymmddhh24miss=>'20261019153640'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7825959015758451)
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
 p_id=>wwv_flow_api.id(7826521279758456)
,p_name=>'Header details'
,p_region_name=>'org-header-info-rg'
,p_parent_plug_id=>wwv_flow_api.id(7825959015758451)
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Cards--animColorFill:t-Cards--cols:t-Cards--basic'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''HEDAER_DETAILS'' CARD_TYPE,',
'       case when hoi.ORG_INFORMATION1 = ''Other'' then hoi.ORG_INFORMATION12 else hoi.ORG_INFORMATION1 end ORG_NAME,',
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
'   and hoi.org_information_id = :P4_ORG_INFO_ID;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P4_ORG_INFO_ID'
,p_query_row_template=>wwv_flow_api.id(7108873192070315)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7827799318758469)
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
 p_id=>wwv_flow_api.id(7826616784758457)
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
 p_id=>wwv_flow_api.id(7827947157758471)
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
 p_id=>wwv_flow_api.id(7828120654758472)
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
 p_id=>wwv_flow_api.id(7828142786758473)
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
 p_id=>wwv_flow_api.id(7826960808758461)
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
 p_id=>wwv_flow_api.id(7827068251758462)
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
 p_id=>wwv_flow_api.id(7827197233758463)
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
 p_id=>wwv_flow_api.id(7827283937758464)
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
 p_id=>wwv_flow_api.id(7827368188758465)
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
 p_id=>wwv_flow_api.id(7827518496758466)
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
 p_id=>wwv_flow_api.id(7827556674758467)
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
 p_id=>wwv_flow_api.id(7829697351758488)
,p_name=>'Affiliation'
,p_region_name=>'org-aff-info-rg'
,p_parent_plug_id=>wwv_flow_api.id(7825959015758451)
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
'   and hoi.org_information_id = :P4_ORG_INFO_ID;'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="t-org-info-cube-title">',
'Affiliation',
'</span>'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P4_ORG_INFO_ID'
,p_query_row_template=>wwv_flow_api.id(9963657594902100)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7890667496679645)
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
 p_id=>wwv_flow_api.id(7829798437758489)
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
 p_id=>wwv_flow_api.id(7890789730679646)
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
 p_id=>wwv_flow_api.id(7830137015758492)
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
 p_id=>wwv_flow_api.id(7890514494679643)
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
 p_id=>wwv_flow_api.id(7890574649679644)
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
 p_id=>wwv_flow_api.id(7890924661679647)
,p_name=>' Involvement frequency'
,p_region_name=>'org-inv-info-rg'
,p_parent_plug_id=>wwv_flow_api.id(7825959015758451)
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>60
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
'   and hoi.org_information_id = :P4_ORG_INFO_ID;'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="t-org-info-cube-title">',
' Involvement Frequency',
'</span>'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P4_ORG_INFO_ID'
,p_query_row_template=>wwv_flow_api.id(9963657594902100)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7891365425679652)
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
 p_id=>wwv_flow_api.id(7891041130679648)
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
 p_id=>wwv_flow_api.id(7891542240679653)
,p_query_column_id=>3
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>4
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
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
 p_id=>wwv_flow_api.id(7891259018679651)
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
 p_id=>wwv_flow_api.id(7891736796679655)
,p_plug_name=>'button contianer'
,p_parent_plug_id=>wwv_flow_api.id(7825959015758451)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>70
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(7893540084679673)
,p_name=>'Organization type'
,p_region_name=>'org-type-info-rg'
,p_parent_plug_id=>wwv_flow_api.id(7825959015758451)
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
'   and hoi.org_information_id = :P4_ORG_INFO_ID',
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
'       AND hoi.org_information_id =:P4_ORG_INFO_ID',
'       AND hoi.ORG_INFORMATION5 IS NOT NULL',
')',
'*/'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="t-org-info-cube-title">',
'    Organization Type',
'</span>'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P4_ORG_INFO_ID'
,p_query_row_template=>wwv_flow_api.id(9963657594902100)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7893696272679675)
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
 p_id=>wwv_flow_api.id(7893562589679674)
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
 p_id=>wwv_flow_api.id(7893898306679677)
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
 p_id=>wwv_flow_api.id(7893761711679676)
,p_query_column_id=>4
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(666159877387744344)
,p_name=>'Target age groups'
,p_region_name=>'org-tag-info-rg'
,p_parent_plug_id=>wwv_flow_api.id(7825959015758451)
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_component_template_options=>'#DEFAULT#:t-Cards--basic:t-Cards--cols:t-Cards--animColorFill'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''HEDAER_DETAILS_CUBES'' CARD_TYPE,',
'       flv.meaning CARD_TEXT',
'from fnd_lookup_values flv ',
'where flv.lookup_type = ''JAFI_HR_KEHILATI_TARGET_AGE'' and flv.language = ''US'' and',
'      INSTR((',
'        select hoi.org_information11',
'        from hr_organization_information hoi',
'        where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG'' and hoi.org_information_id = :P4_ORG_INFO_ID',
'      ), flv.lookup_code) > 0',
'order by flv.lookup_code'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from hr_organization_information hoi',
'where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG'' and hoi.org_information_id = :P4_ORG_INFO_ID and length(hoi.org_information11) > 0'))
,p_display_condition_type=>'EXISTS'
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="t-org-info-cube-title">',
'Target age groups',
'</span>'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P4_ORG_INFO_ID'
,p_query_row_template=>wwv_flow_api.id(9963657594902100)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(666160004091744345)
,p_query_column_id=>1
,p_column_alias=>'CARD_TYPE'
,p_column_display_sequence=>1
,p_column_heading=>'Card Type'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(666160191837744347)
,p_query_column_id=>2
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>2
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(501504595129258669)
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
 p_id=>wwv_flow_api.id(504306246014255774)
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
 p_id=>wwv_flow_api.id(7123161361177385)
,p_name=>'organizations container'
,p_region_name=>'organizations-container'
,p_parent_plug_id=>wwv_flow_api.id(504306246014255774)
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
'        when hoi.ORG_INFORMATION1 = ''Other'' then hoi.ORG_INFORMATION12 else hoi.ORG_INFORMATION1 end as org_name,',
'   /*    hoi.ORG_INFORMATION1 as org_name,*/',
'       hoi.ORG_INFORMATION2 FULL_NAME,',
'       ''openInfoRg('''''' || hoi.org_information_id ||''''''''||'');'' AS CARD_LINK,',
'    case when hoi.ORG_INFORMATION9 like ''%SSH%'' and hoi.ORG_INFORMATION9 like ''%LTS%'' then',
'    ''<img src="#APP_IMAGES#ic-heart-house.png" height="25px"/><img src="#APP_IMAGES#ic-shaking-hands.png" height="24px"/>''',
'    when hoi.ORG_INFORMATION9 like ''%SSH%'' then',
'    ''<img src="#APP_IMAGES#ic-shaking-hands.png" height="25px"/>''',
'    when hoi.ORG_INFORMATION9 like ''%LTS%'' then',
'     ''<img src="#APP_IMAGES#ic-heart-house.png" height="25px"/>''',
'     else null end as work_with',
'  from hr_organization_information hoi',
' where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG''',
'   and hoi.ORG_INFORMATION10 = ''Y''',
'AND (',
'    UPPER(hoi.ORG_INFORMATION1) LIKE ''%'' || UPPER(TRIM(:P4_SEARCH)) || ''%''',
'    OR :P4_SEARCH IS NULL',
')',
'   and hoi.organization_id =  :P0_ORG_ID',
'   order by hoi.ORG_INFORMATION1 asc)',
'     where rownum <= :P4_END_ROW',
' UNION',
'     SELECT ''BLANK_ADD_ORG'' CARD_TYPE,',
'     NULL org_information_id,',
'     NULL org_name,',
'     NULL FULL_NAME,',
'     ''openInfoRg('''''' || -999 ||''''''''||'');'' AS CARD_LINK,',
'     NULL work_with',
' from dual) a',
'',
'ORDER BY CARD_TYPE desc, org_name asc',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P4_END_ROW,P4_SEARCH'
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
 p_id=>wwv_flow_api.id(7827672260758468)
,p_query_column_id=>1
,p_column_alias=>'CARD_TYPE'
,p_column_display_sequence=>6
,p_column_heading=>'Card Type'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7826123905758452)
,p_query_column_id=>2
,p_column_alias=>'ORG_INFORMATION_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Org Information Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7123596720177389)
,p_query_column_id=>3
,p_column_alias=>'ORG_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Org Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7123250580177386)
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
 p_id=>wwv_flow_api.id(7123732916177390)
,p_query_column_id=>5
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>3
,p_column_heading=>'Card Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7123925384177392)
,p_query_column_id=>6
,p_column_alias=>'WORK_WITH'
,p_column_display_sequence=>4
,p_column_heading=>'Work With'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11042065666088478)
,p_plug_name=>'button container'
,p_parent_plug_id=>wwv_flow_api.id(7123161361177385)
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
 p_id=>wwv_flow_api.id(7825159223758443)
,p_plug_name=>'organizations filter region'
,p_region_name=>'filterRegion'
,p_parent_plug_id=>wwv_flow_api.id(504306246014255774)
,p_region_css_classes=>'t-filter-container-rg '
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>20
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_api.id(7123161361177385)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_06=>'N'
,p_attribute_09=>'N'
,p_attribute_12=>'10000'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(615475438006883768)
,p_plug_name=>'Info'
,p_parent_plug_id=>wwv_flow_api.id(504306246014255774)
,p_region_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Please provide information for all organizations and institutions with which your Shlichim work or interact. Capturing these details allows us to measure our collective reach, track engagement, and demonstrate the full impact of the Shlichut progr'
||'am.',
'</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(519928863293327156)
,p_plug_name=>'button container'
,p_region_name=>'backToHomeContainer'
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>90
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(531425414128061273)
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
 p_id=>wwv_flow_api.id(531425704036061276)
,p_plug_name=>'text'
,p_parent_plug_id=>wwv_flow_api.id(531425414128061273)
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
 p_id=>wwv_flow_api.id(531425991668061279)
,p_plug_name=>'Leave Page'
,p_parent_plug_id=>wwv_flow_api.id(531425414128061273)
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
 p_id=>wwv_flow_api.id(531426207029061281)
,p_plug_name=>'keep Editing'
,p_parent_plug_id=>wwv_flow_api.id(531425414128061273)
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
 p_id=>wwv_flow_api.id(1036179524904243817)
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
 p_id=>wwv_flow_api.id(1036179554739243818)
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
 p_id=>wwv_flow_api.id(6205898012766711806)
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
 p_id=>wwv_flow_api.id(7090763042050066)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(501504595129258669)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(5843813714039240)
,p_button_image_alt=>'Save Changes'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7891575799679654)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(7891736796679655)
,p_button_name=>'EDIT_ORG_INFO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(5843813714039240)
,p_button_image_alt=>'Edit Info'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11040040263088457)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(501504595129258669)
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
 p_id=>wwv_flow_api.id(10094701907645979)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11042065666088478)
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
 p_id=>wwv_flow_api.id(15123070135009325)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(519928863293327156)
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
 p_id=>wwv_flow_api.id(32937188485969466)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(531426207029061281)
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
 p_id=>wwv_flow_api.id(7825770787758449)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(7825159223758443)
,p_button_name=>'P4_FILTER_BTN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--padLeft'
,p_button_template_id=>wwv_flow_api.id(491308676814075284)
,p_button_image_alt=>'P4 Filter Btn'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'btn-filter'
,p_icon_css_classes=>'fa-filter'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11041348265088471)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(7825159223758443)
,p_button_name=>'P4_SEE_ALL'
,p_button_static_id=>'P4_SEE_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'See All (&P4_COUNT_ROWS.)'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'float-right see-all-col'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10095118681645983)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(501504595129258669)
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
 p_id=>wwv_flow_api.id(10095166292645984)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_api.id(501504595129258669)
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
 p_id=>wwv_flow_api.id(7089755527050064)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1036179554739243818)
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
 p_id=>wwv_flow_api.id(7091165358050066)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(501504595129258669)
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
 p_id=>wwv_flow_api.id(7092719072050076)
,p_name=>'P4_ORG_NAME_UPD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(501504595129258669)
,p_prompt=>'Organization name'
,p_post_element_text=>unistr('If you cannot find the organization in the list, please select \201COther\201D and enter the details of the new organization.')
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_ORGANIZATIONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select flv.meaning d, flv.meaning r',
'from fnd_lookup_values flv ',
'where flv.lookup_type=''JAFI_HR_KEHILATI_ORGANIZATIONS'' and flv.language=''US''',
'order by flv.lookup_code'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7093111584050076)
,p_name=>'P4_FULL_NAME_UPD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(501504595129258669)
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
 p_id=>wwv_flow_api.id(7093534344050077)
,p_name=>'P4_PHONE_LABEL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(501504595129258669)
,p_prompt=>'Phone'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column_css_classes=>'phone-label'
,p_field_template=>wwv_flow_api.id(11033930535026651)
,p_item_template_options=>'#DEFAULT#:margin-bottom-none'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7093894088050077)
,p_name=>'P4_PHONE1_UPD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(501504595129258669)
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
,p_colspan=>3
,p_grid_column_css_classes=>'disable-phone-label p1'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#:margin-top-none'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7094316865050077)
,p_name=>'P4_PHONE2_UPD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(501504595129258669)
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
 p_id=>wwv_flow_api.id(7094737368050077)
,p_name=>'P4_PHONE3_UPD'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(501504595129258669)
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
 p_id=>wwv_flow_api.id(7095079368050078)
,p_name=>'P4_EMAIL_UPD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(501504595129258669)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7825289428758444)
,p_name=>'P4_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7825159223758443)
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
 p_id=>wwv_flow_api.id(7826228637758453)
,p_name=>'P4_ORG_INFO_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(504306246014255774)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7894481200679683)
,p_name=>'P4_AFFLICATION_UPD'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(501504595129258669)
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
 p_id=>wwv_flow_api.id(7894640990679684)
,p_name=>'P4_SHSH_ACTIVE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(501504595129258669)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7894722839679685)
,p_name=>'P4_LTS_ACTIVE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(501504595129258669)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7894750156679686)
,p_name=>'P4_FREQ_UPD'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(501504595129258669)
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
 p_id=>wwv_flow_api.id(10094610285645978)
,p_name=>'P4_END_ROW'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(7123161361177385)
,p_source=>'5'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10095320430645985)
,p_name=>'P4_WORK_WITH_LABEL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(501504595129258669)
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
 p_id=>wwv_flow_api.id(10095389048645986)
,p_name=>'P4_NAME_EMAIL_LABEL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(501504595129258669)
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
 p_id=>wwv_flow_api.id(11039146908088449)
,p_name=>'P4_ORG_TYPE_UPD'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(501504595129258669)
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
 p_id=>wwv_flow_api.id(11039848261088456)
,p_name=>'P4_SELECTED_ORG_TYPES'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(501504595129258669)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11040411473088461)
,p_name=>'P4_FILTER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(7825159223758443)
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
 p_id=>wwv_flow_api.id(11041239346088469)
,p_name=>'P4_COUNT_ROWS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(7123161361177385)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33032072947138084)
,p_name=>'P4_LEAVE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(531425991668061279)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(661615433970156548)
,p_name=>'P4_TARGET_AGE_GROUPS_UPD'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(501504595129258669)
,p_prompt=>'Target age groups:'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOV_AGE_GROUPS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select flv.meaning d, flv.lookup_code r',
'from fnd_lookup_values flv ',
'where flv.lookup_type=''JAFI_HR_KEHILATI_TARGET_AGE'' and flv.language=''US''',
'order by flv.lookup_code'))
,p_grid_column_css_classes=>'black-label'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(666160617709744351)
,p_name=>'P4_ORG_NAME_OTHER_UPD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(501504595129258669)
,p_prompt=>'Please specify organization name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7097921584050119)
,p_validation_name=>'email is not null'
,p_validation_sequence=>10
,p_validation=>'P4_EMAIL_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(7090763042050066)
,p_associated_item=>wwv_flow_api.id(7095079368050078)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7098707942050120)
,p_validation_name=>'phone1 not null'
,p_validation_sequence=>20
,p_validation=>'(:P4_PHONE1_UPD is not null and :P4_PHONE2_UPD is not null) -- and :P4_PHONE3_UPD is not null)'
,p_validation_type=>'SQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(7090763042050066)
,p_associated_item=>wwv_flow_api.id(7093894088050077)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13434534033403346)
,p_validation_name=>'phone1 is valid'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'regexp_like(:P4_PHONE1_UPD, ''^[+]\d{0,3}$'') ',
'and regexp_like(:P4_PHONE2_UPD, ''^\d{0,10}$'')'))
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Invalid phone number'
,p_validation_condition=>'P4_PHONE1_UPD'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_when_button_pressed=>wwv_flow_api.id(7090763042050066)
,p_associated_item=>wwv_flow_api.id(7093894088050077)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13434613911403347)
,p_validation_name=>'phone2 is valid_1'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'regexp_like(:P4_PHONE1_UPD, ''^[+]\d{0,3}$'') ',
'and regexp_like(:P4_PHONE2_UPD, ''^\d{0,10}$'')'))
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\2800'),
''))
,p_validation_condition=>'P4_PHONE2_UPD'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_when_button_pressed=>wwv_flow_api.id(7090763042050066)
,p_associated_item=>wwv_flow_api.id(7094316865050077)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13434699320403348)
,p_validation_name=>'phone3 is valid'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'regexp_like(:P4_PHONE1_UPD, ''^[+]\d{0,3}$'') ',
'and regexp_like(:P4_PHONE2_UPD, ''^\d{0,10}$'') ',
'--and regexp_like(:P4_PHONE3_UPD, ''^\d{4}$'')'))
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\2800'),
''))
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(7090763042050066)
,p_associated_item=>wwv_flow_api.id(7094737368050077)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7099136478050120)
,p_validation_name=>'phone2 not null'
,p_validation_sequence=>60
,p_validation=>'(:P4_PHONE1_UPD is not null and :P4_PHONE2_UPD is not null) -- and :P4_PHONE3_UPD is not null)'
,p_validation_type=>'SQL_EXPRESSION'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\2800'),
''))
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(7090763042050066)
,p_associated_item=>wwv_flow_api.id(7094316865050077)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7099507242050120)
,p_validation_name=>'phone3 not null'
,p_validation_sequence=>70
,p_validation=>'(:P4_PHONE1_UPD is not null and :P4_PHONE2_UPD is not null) -- and :P4_PHONE3_UPD is not null)'
,p_validation_type=>'SQL_EXPRESSION'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\2800'),
''))
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(7090763042050066)
,p_associated_item=>wwv_flow_api.id(7094737368050077)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7098261645050119)
,p_validation_name=>'last name not null'
,p_validation_sequence=>80
,p_validation=>'P4_FULL_NAME_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_when_button_pressed=>wwv_flow_api.id(7090763042050066)
,p_associated_item=>wwv_flow_api.id(7093111584050076)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13936619255796081)
,p_validation_name=>'Name English Validation'
,p_validation_sequence=>90
,p_validation=>'P4_FULL_NAME_UPD'
,p_validation2=>'^[a-zA-Z0-9.,"''-:; ]*$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Please use English'
,p_when_button_pressed=>wwv_flow_api.id(7090763042050066)
,p_associated_item=>wwv_flow_api.id(7093111584050076)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(11043309466088490)
,p_validation_name=>'org name is not null'
,p_validation_sequence=>100
,p_validation=>'P4_ORG_NAME_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_when_button_pressed=>wwv_flow_api.id(7090763042050066)
,p_associated_item=>wwv_flow_api.id(7092719072050076)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13936496904796080)
,p_validation_name=>'Org Name English Validation'
,p_validation_sequence=>110
,p_validation=>'P4_ORG_NAME_UPD'
,p_validation2=>'^[a-zA-Z0-9.,"''-:; ]*$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Please use English'
,p_when_button_pressed=>wwv_flow_api.id(7090763042050066)
,p_associated_item=>wwv_flow_api.id(7092719072050076)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13434427204403345)
,p_validation_name=>'email is valid'
,p_validation_sequence=>120
,p_validation=>'P4_EMAIL_UPD'
,p_validation2=>'^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Invalid Mail'
,p_validation_condition=>'P4_EMAIL_UPD'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_when_button_pressed=>wwv_flow_api.id(7090763042050066)
,p_associated_item=>wwv_flow_api.id(7095079368050078)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13434793004403349)
,p_validation_name=>'afflication is not null'
,p_validation_sequence=>130
,p_validation=>'P4_AFFLICATION_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_when_button_pressed=>wwv_flow_api.id(7090763042050066)
,p_associated_item=>wwv_flow_api.id(7894481200679683)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13434889529403350)
,p_validation_name=>'freq is not null'
,p_validation_sequence=>140
,p_validation=>'P4_FREQ_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_when_button_pressed=>wwv_flow_api.id(7090763042050066)
,p_associated_item=>wwv_flow_api.id(7894750156679686)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13434952138403351)
,p_validation_name=>'org type is not null'
,p_validation_sequence=>150
,p_validation=>'P4_ORG_TYPE_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please select at least one option'
,p_when_button_pressed=>wwv_flow_api.id(7090763042050066)
,p_associated_item=>wwv_flow_api.id(11039146908088449)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(666159769841744343)
,p_validation_name=>'Target Age Groups is not null'
,p_validation_sequence=>160
,p_validation=>'P4_TARGET_AGE_GROUPS_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required.'
,p_associated_item=>wwv_flow_api.id(661615433970156548)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(666161016771744355)
,p_validation_name=>'Other Organization name is not null'
,p_validation_sequence=>170
,p_validation=>'P4_ORG_NAME_OTHER_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required'
,p_validation_condition=>'P4_ORG_NAME_UPD'
,p_validation_condition2=>'Other'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(7090763042050066)
,p_associated_item=>wwv_flow_api.id(666160617709744351)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7100581558050122)
,p_name=>'hide region'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7101125888050125)
,p_event_id=>wwv_flow_api.id(7100581558050122)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_FILTER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7825447648758446)
,p_name=>'refresh rg when change'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_SEARCH'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7825557133758447)
,p_event_id=>wwv_flow_api.id(7825447648758446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7123161361177385)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11042375680088481)
,p_event_id=>wwv_flow_api.id(7825447648758446)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COUNT(*)',
'INTO :P4_COUNT_ROWS',
'  from hr_organization_information hoi',
' where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG''',
'   and hoi.ORG_INFORMATION10 = ''Y''',
'AND (',
'    UPPER(hoi.ORG_INFORMATION1) LIKE ''%'' || UPPER(TRIM(:P4_SEARCH)) || ''%''',
'    OR :P4_SEARCH IS NULL',
')',
'   and hoi.organization_id =  :P0_ORG_ID;'))
,p_attribute_02=>'P4_SEARCH'
,p_attribute_03=>'P4_COUNT_ROWS'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11042532320088482)
,p_event_id=>wwv_flow_api.id(7825447648758446)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_COUNT_ROWS'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11042556676088483)
,p_event_id=>wwv_flow_api.id(7825447648758446)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(11041348265088471)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var count = $v("P4_COUNT_ROWS"); ',
'$("#P4_SEE_ALL .t-Button-label").text("See All (" + count + ")");',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7826271235758454)
,p_name=>'clear edit org data'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_ORG_INFO_ID'
,p_condition_element=>'P4_ORG_INFO_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11040044425088458)
,p_event_id=>wwv_flow_api.id(7826271235758454)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P4_ORG_NAME_UPD := null;',
':P4_FULL_NAME_UPD := null;',
':P4_EMAIL_UPD := null;',
':P4_PHONE1_UPD := null;',
':P4_PHONE2_UPD := null;',
'--:P4_PHONE3_UPD := null;',
':P4_SHSH_ACTIVE := null;',
':P4_LTS_ACTIVE := null;',
':P4_AFFLICATION_UPD := null;',
':P4_FREQ_UPD  := null;',
':P4_SELECTED_ORG_TYPES := null;',
':P4_ORG_TYPE_UPD := null;',
'',
''))
,p_attribute_03=>'P4_ORG_NAME_UPD,P4_FULL_NAME_UPD,P4_EMAIL_UPD,P4_PHONE1_UPD,P4_PHONE2_UPD,P4_PHONE3_UPD,P4_AFFLICATION_UPD,P4_FREQ_UPD,P4_SHSH_ACTIVE,P4_LTS_ACTIVE,P4_SELECTED_ORG_TYPES,P4_ORG_TYPE_UPD'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11040189491088459)
,p_event_id=>wwv_flow_api.id(7826271235758454)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(11040040263088457)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7827867226758470)
,p_event_id=>wwv_flow_api.id(7826271235758454)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(501504595129258669)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7894318464679681)
,p_name=>'open edit org region'
,p_event_sequence=>310
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7891575799679654)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7894356078679682)
,p_event_id=>wwv_flow_api.id(7894318464679681)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select hoi.ORG_INFORMATION1 org_name,',
'       hoi.ORG_INFORMATION12 other_org_name,',
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
'       hoi.ORG_INFORMATION7 Frequency,',
'       hoi.ORG_INFORMATION11 Age_Groups',
'  into :P4_ORG_NAME_UPD,',
'       :P4_ORG_NAME_OTHER_UPD,',
'       :P4_FULL_NAME_UPD,',
'       :P4_EMAIL_UPD,',
'       :P4_PHONE1_UPD,',
'       :P4_PHONE2_UPD,',
'       --:P4_PHONE3_UPD,',
'       :P4_SHSH_ACTIVE,',
'       :P4_LTS_ACTIVE,',
'       :P4_ORG_TYPE_UPD,',
'       :P4_AFFLICATION_UPD,',
'       :P4_FREQ_UPD,',
'       :P4_TARGET_AGE_GROUPS_UPD',
'  from hr_organization_information hoi',
' where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG''',
'   and hoi.org_information_id = :P4_ORG_INFO_ID;',
'',
''))
,p_attribute_03=>'P4_ORG_NAME_UPD,P4_ORG_NAME_OTHER_UPD,P4_FULL_NAME_UPD,P4_EMAIL_UPD,P4_PHONE1_UPD,P4_PHONE2_UPD,P4_PHONE3_UPD,P4_AFFLICATION_UPD,P4_FREQ_UPD,P4_SHSH_ACTIVE,P4_LTS_ACTIVE,P4_TARGET_AGE_GROUPS_UPD'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11039745384088455)
,p_event_id=>wwv_flow_api.id(7894318464679681)
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
'     into :P4_SELECTED_ORG_TYPES,',
'       :P4_LEAVE',
'    from hr_organization_information hoi',
'   where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG'' ',
'     and hoi.org_information_id = :P4_ORG_INFO_ID',
'     and hoi.ORG_INFORMATION5 is not null;',
'',
'exception  when others then',
'    ',
'    :P4_SELECTED_ORG_TYPES :='''';',
' ',
'   ',
'    ',
'end; ',
'',
''))
,p_attribute_02=>'P4_ORG_INFO_ID'
,p_attribute_03=>'P4_SELECTED_ORG_TYPES ,P4_LEAVE'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11039644923088454)
,p_event_id=>wwv_flow_api.id(7894318464679681)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selected = $v("P4_SELECTED_ORG_TYPES"); ',
'',
'if (selected) {',
'  var valuesArray = selected.split(",");',
'  apex.item("P4_ORG_TYPE_UPD").setValue(valuesArray);',
'  $("#P4_ORG_TYPE_UPD").trigger("change"); ',
'}',
'',
'if ($(''.select2-selection__choice__remove'').length < 4) {',
'    $(''.select2-selection__choice__remove'').addClass(''open-select2 fa fa-chevron-down'')',
'                                           .removeClass(''select2-selection__choice__remove'')',
'                                           .text('''');',
'}',
'else if ($(''#P4_ORG_TYPE_UPD_CONTAINER ul.select2-selection__rendered li.select2-selection__choice'').length == 0) {',
'    if (!$(''li.select2-search--inline'').hasClass(''open-select2'')) {',
'        $(''li.select2-search--inline'').addClass(''open-select2 fa fa-chevron-down'');',
'    }',
'}',
'',
'$(''.select2-search__field'').attr(''disabled'',''disabled'');',
'',
'var dataObj = {',
'    "P4_ORG_NAME_UPD": $v(''P4_ORG_NAME_UPD''),',
'    "P4_FULL_NAME_UPD": $v(''P4_FULL_NAME_UPD''),',
'    "P4_EMAIL_UPD": $v(''P4_EMAIL_UPD''), ',
'    "P4_PHONE1_UPD": $v(''P4_PHONE1_UPD''),',
'    "P4_PHONE2_UPD": $v(''P4_PHONE2_UPD''),',
'    //"P4_PHONE3_UPD": $v(''P4_PHONE3_UPD''),',
'    "P4_SHSH_ACTIVE": $v(''P4_SHSH_ACTIVE''),',
'    "P4_LTS_ACTIVE": $v(''P4_LTS_ACTIVE''),',
'    "P4_ORG_TYPE_UPD": $v(''P4_ORG_TYPE_UPD''),',
'    "P4_AFFLICATION_UPD": $v(''P4_AFFLICATION_UPD''),',
'    "P4_FREQ_UPD": $v(''P4_FREQ_UPD'') ',
'};',
'',
'sessionStorage.setItem(''original-data'', JSON.stringify(dataObj));'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11040294950088460)
,p_event_id=>wwv_flow_api.id(7894318464679681)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(11040040263088457)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7894870243679687)
,p_event_id=>wwv_flow_api.id(7894318464679681)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(501504595129258669)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10094774338645980)
,p_name=>'show more rows'
,p_event_sequence=>320
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(10094701907645979)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10094904045645981)
,p_event_id=>wwv_flow_api.id(10094774338645980)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_END_ROW'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_NUMBER(:P4_END_ROW) + 6'
,p_attribute_07=>'P4_END_ROW'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10095491194645987)
,p_name=>'activate shsh image'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_SHSH_ACTIVE'
,p_condition_element=>'P4_SHSH_ACTIVE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10095560591645988)
,p_event_id=>wwv_flow_api.id(10095491194645987)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(10095118681645983)
,p_attribute_01=>'active-btn'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10095703062645989)
,p_event_id=>wwv_flow_api.id(10095491194645987)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(10095118681645983)
,p_attribute_01=>'active-btn'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10095839707645990)
,p_name=>'activate lts imag'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_LTS_ACTIVE'
,p_condition_element=>'P4_LTS_ACTIVE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10095846565645991)
,p_event_id=>wwv_flow_api.id(10095839707645990)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(10095166292645984)
,p_attribute_01=>'active-btn'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10095999381645992)
,p_event_id=>wwv_flow_api.id(10095839707645990)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(10095166292645984)
,p_attribute_01=>'active-btn'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11038573279088443)
,p_name=>'toggle shsh active'
,p_event_sequence=>350
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(10095118681645983)
,p_condition_element=>'P4_SHSH_ACTIVE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11038674751088444)
,p_event_id=>wwv_flow_api.id(11038573279088443)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_SHSH_ACTIVE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11038800915088445)
,p_event_id=>wwv_flow_api.id(11038573279088443)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_SHSH_ACTIVE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11038911849088446)
,p_name=>'toggle lts active'
,p_event_sequence=>360
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(10095166292645984)
,p_condition_element=>'P4_LTS_ACTIVE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11039013264088447)
,p_event_id=>wwv_flow_api.id(11038911849088446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_LTS_ACTIVE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11039137083088448)
,p_event_id=>wwv_flow_api.id(11038911849088446)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_LTS_ACTIVE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11040464910088462)
,p_name=>'show filter input'
,p_event_sequence=>370
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7825770787758449)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11040558332088463)
,p_event_id=>wwv_flow_api.id(11040464910088462)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_FILTER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11040678106088464)
,p_event_id=>wwv_flow_api.id(11040464910088462)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(7825770787758449)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11040797712088465)
,p_name=>'hide filter input'
,p_event_sequence=>380
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(7123161361177385)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11040876943088466)
,p_event_id=>wwv_flow_api.id(11040797712088465)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(7825770787758449)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11040991961088467)
,p_event_id=>wwv_flow_api.id(11040797712088465)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_FILTER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11041537279088472)
,p_name=>'set rows to max'
,p_event_sequence=>390
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(11041348265088471)
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
 p_id=>wwv_flow_api.id(11041581787088473)
,p_event_id=>wwv_flow_api.id(11041537279088472)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_END_ROW'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P4_COUNT_ROWS'
,p_attribute_07=>'P4_COUNT_ROWS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11041681072088474)
,p_name=>'refresh region'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_END_ROW'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11041786238088475)
,p_event_id=>wwv_flow_api.id(11041681072088474)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7123161361177385)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11042698764088484)
,p_name=>'show hide show more btn'
,p_event_sequence=>410
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_COUNT_ROWS,P4_END_ROW'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Number($v("P4_END_ROW")) >= Number($v("P4_COUNT_ROWS"))',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11042833207088485)
,p_event_id=>wwv_flow_api.id(11042698764088484)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(10094701907645979)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11042873969088486)
,p_event_id=>wwv_flow_api.id(11042698764088484)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(10094701907645979)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45430389773295451)
,p_event_id=>wwv_flow_api.id(11042698764088484)
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
 p_id=>wwv_flow_api.id(45430509138295452)
,p_event_id=>wwv_flow_api.id(11042698764088484)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#buttonsRegion'').attr(''style'',''width: 588px;max-width: 100%;margin: 0 auto; bottom: 0 !important'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13936850648796084)
,p_name=>'set null org info id'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_ORG_INFO_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13937024830796085)
,p_event_id=>wwv_flow_api.id(13936850648796084)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P4_ORG_INFO_ID:= null;'
,p_attribute_03=>'P4_ORG_INFO_ID'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32960671536107597)
,p_name=>'show warning window'
,p_event_sequence=>430
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7091165358050066)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'1===0'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32961624517107606)
,p_event_id=>wwv_flow_api.id(32960671536107597)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(531425414128061273)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32961056214107605)
,p_event_id=>wwv_flow_api.id(32960671536107597)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32963089462107607)
,p_event_id=>wwv_flow_api.id(32960671536107597)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7825959015758451)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29127558275102976)
,p_event_id=>wwv_flow_api.id(32960671536107597)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7123161361177385)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(33028089872138044)
,p_name=>'leave page'
,p_event_sequence=>450
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(531425991668061279)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33028602147138049)
,p_event_id=>wwv_flow_api.id(33028089872138044)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33028151082138045)
,p_event_id=>wwv_flow_api.id(33028089872138044)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#ExitConfirmation").dialog("close");',
'$("#edit-organization-rg").dialog("close");'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(33029060113138054)
,p_name=>'New_1'
,p_event_sequence=>460
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_CLEAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33029234950138055)
,p_event_id=>wwv_flow_api.id(33029060113138054)
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
 p_id=>wwv_flow_api.id(33029280618138056)
,p_name=>'keep editing dailog'
,p_event_sequence=>470
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(32937188485969466)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33032172178138085)
,p_event_id=>wwv_flow_api.id(33029280618138056)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'     apex.item("P4_LEAVE").setValue(0);'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33029403504138057)
,p_event_id=>wwv_flow_api.id(33029280618138056)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(531425414128061273)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(35632623229550997)
,p_name=>'set items'
,p_event_sequence=>480
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(35632956164551005)
,p_event_id=>wwv_flow_api.id(35632623229550997)
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
'    var affiliationOptions = $(''#P4_AFFLICATION_UPD .apex-item-option'');',
'    $(''#P4_AFFLICATION_UPD .apex-item-grid-row'').remove();',
'    ',
'    var rowCount = 0;',
'    for (var i = 1; i <= affiliationOptions.length; i++) {',
'        if (i % 2 != 0) {',
'            rowCount++;',
'            $(''#P4_AFFLICATION_UPD .radio_group'').append(''<div class="apex-item-grid-row row-'' + rowCount + ''"></div>'');',
'        }',
'        $(''.row-'' + rowCount).append(affiliationOptions[i - 1]);',
'    }',
'    ',
'    var freqOptions = $(''#P4_FREQ_UPD .apex-item-option'');',
'    $(''#P4_FREQ_UPD .apex-item-option'').remove();    ',
'    $(''#P4_FREQ_UPD'').append(''<div class="apex-item-grid radio_group"></div>'');',
'',
'    for (var i = 0; i < freqOptions.length; i++) {',
'        var optionHtml = $(freqOptions[i]).wrap(''<p/>'').parent().html().replace(''<div '',''<div style="width: 100%;" '');',
'        $(''#P4_FREQ_UPD .radio_group'').append(''<div class="apex-item-grid-row">'' + optionHtml + ''</div>'');',
'    }',
'    ',
'    ',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(21933142117071578)
,p_name=>'org type change delayed'
,p_event_sequence=>490
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_ORG_TYPE_UPD'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21933179224071579)
,p_event_id=>wwv_flow_api.id(21933142117071578)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selectedOptionIds = $(''#P4_ORG_TYPE_UPD'').val();',
'var selectedOptions = $(''#P4_ORG_TYPE_UPD option'').filter(function(index) {',
'    return $.inArray($(this).attr("value"), selectedOptionIds) !== -1;',
'}).sort(function(a, b) {',
'   return $(a).text().toUpperCase().localeCompare($(b).text().toUpperCase());',
'});',
'$(selectedOptions).remove();',
'var sortedOptions = $(''#P4_ORG_TYPE_UPD option'').sort(function(a, b) {',
'   return $(a).text().toUpperCase().localeCompare($(b).text().toUpperCase());',
'});',
'$(''#P4_ORG_TYPE_UPD option'').remove();',
'$(selectedOptions).attr(''data-is-selected'', ''true'');',
'$(''#P4_ORG_TYPE_UPD'').prepend(selectedOptions);',
'$(''#P4_ORG_TYPE_UPD'').append(sortedOptions);',
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
'        else if ($(''#P4_ORG_TYPE_UPD_CONTAINER ul.select2-selection__rendered li.select2-selection__choice'').length == 0) {',
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
 p_id=>wwv_flow_api.id(21933703143071584)
,p_name=>'org type click'
,p_event_sequence=>500
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#P4_ORG_TYPE_UPD_CONTAINER'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21933794659071585)
,p_event_id=>wwv_flow_api.id(21933703143071584)
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
 p_id=>wwv_flow_api.id(39433213323653232)
,p_name=>'clear selection btn click'
,p_event_sequence=>510
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#clearSelectionBtn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39433581219653278)
,p_event_id=>wwv_flow_api.id(39433213323653232)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_ORG_TYPE_UPD'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39433952000653281)
,p_event_id=>wwv_flow_api.id(39433213323653232)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*$(''#select2-P4_ORG_TYPE_UPD-results li'').attr(''aria-selected'',''false'');',
'$(''#P4_ORG_TYPE_UPD option'').removeAttr(''data-is-selected'');',
'$(''#P4_ORG_TYPE_UPD'').val('''');',
'$(''#P4_ORG_TYPE_UPD'').trigger(''change'');',
'$(''hr.select2-divider'').remove();',
'$(''<hr class="select2-divider"/>'').insertAfter(''.select2-results__option[aria-selected="true"]:last''); ',
'if (!$(''.select2-results__options'').hasClass(''opaque-gradient'')) {',
'    $(''.select2-results__options'').addClass(''opaque-gradient'');',
'    $(''.select2-results__options'').attr("onscroll", "chk_scroll(this)");',
'};*/'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45430181466295449)
,p_name=>'organizations after refresh'
,p_event_sequence=>520
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(7123161361177385)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45430332837295450)
,p_event_id=>wwv_flow_api.id(45430181466295449)
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(666160732146744352)
,p_name=>'Organization name change'
,p_event_sequence=>530
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_ORG_NAME_UPD'
,p_condition_element=>'P4_ORG_NAME_UPD'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Other'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(666160831460744353)
,p_event_id=>wwv_flow_api.id(666160732146744352)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_ORG_NAME_OTHER_UPD'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(666160860675744354)
,p_event_id=>wwv_flow_api.id(666160732146744352)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_ORG_NAME_OTHER_UPD'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13936707363796082)
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
'if :P4_SHSH_ACTIVE = ''Y'' then 	l_shsh_lts   := ''SSH:'';  end if;',
'',
'if :P4_LTS_ACTIVE = ''Y'' then 	l_shsh_lts  :=  l_shsh_lts||''LTS'';    end if;',
'',
'/*',
'  XX_MY_UTILS.add_msg('' 220 Page Community Information Organizations P4_FULL_NAME_UPD ''||:P4_FULL_NAME_UPD);  ',
'  XX_MY_UTILS.add_msg('' 220 Page Community Information Organizations P4_EMAIL_UPD ''||:P4_EMAIL_UPD);  ',
'  XX_MY_UTILS.add_msg('' 220 Page Community Information Organizations P4_PHONE ''|| :P4_PHONE1_UPD||:P4_PHONE2_UPD||:P4_PHONE3_UPD);  ',
'  XX_MY_UTILS.add_msg('' 220 Page Community Information Organizations P4_AFFLICATION_UPD ''|| :P4_AFFLICATION_UPD);  ',
'  XX_MY_UTILS.add_msg('' 220 Page Community Information Organizations P4_FREQ_UPD ''|| :P4_FREQ_UPD);  ',
'  XX_MY_UTILS.add_msg('' 220 Page Community Information Organizations P4_ORG_TYPE_UPD ''|| :P4_ORG_TYPE_UPD);  ',
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
'       and t.org_information_id = :P4_ORG_INFO_ID;',
'   ',
'    ',
'               hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                                           ,p_object_version_number => l_ovn',
'                                                           ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTUMER_ORG''',
'                                                           ,p_org_information_id => l_org_information_id',
'                                                           ,p_org_information1 => :P4_ORG_NAME_UPD',
'                                                           ,p_org_information12 => case when :P4_ORG_NAME_UPD = ''Other'' then :P4_ORG_NAME_OTHER_UPD else null end',
'                                                           ,p_org_information2 => :P4_FULL_NAME_UPD',
'                                                           ,p_org_information3 => :P4_EMAIL_UPD   ',
'                                                           ,p_org_information4 => :P4_PHONE1_UPD||''-''||:P4_PHONE2_UPD/*||:P4_PHONE3_UPD*/',
'                                                           ,p_org_information5 => :P4_ORG_TYPE_UPD',
'                                                           ,p_org_information6 => :P4_AFFLICATION_UPD',
'                                                           ,p_org_information7 => :P4_FREQ_UPD',
'                                                           ,p_org_information9 => l_shsh_lts',
'                                                           ,p_org_information11 => :P4_TARGET_AGE_GROUPS_UPD);  ',
'                                                           ',
'                                             ',
'     EXCEPTION when no_data_found then ',
' ',
'             hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                                  ,p_object_version_number => l_ovn',
'                                  ,p_org_info_type_code =>  ''JAFI_HR_SHLICHUT_CUSTUMER_ORG''',
'                                  ,p_org_information_id => l_org_information_id',
'                                  ,p_org_information1 => :P4_ORG_NAME_UPD',
'                                  ,p_org_information12 => case when :P4_ORG_NAME_UPD = ''Other'' then :P4_ORG_NAME_OTHER_UPD else null end',
'                                  ,p_org_information2 => :P4_FULL_NAME_UPD',
'                                  ,p_org_information3 => :P4_EMAIL_UPD   ',
'                                  ,p_org_information4 => :P4_PHONE1_UPD||''-''||:P4_PHONE2_UPD/*||:P4_PHONE3_UPD*/',
'                                  ,p_org_information5 => :P4_ORG_TYPE_UPD',
'                                  ,p_org_information6 => :P4_AFFLICATION_UPD',
'                                  ,p_org_information7 => :P4_FREQ_UPD',
'                                  ,p_org_information9 => l_shsh_lts               ',
'                                  ,p_org_information10 => ''Y''         ',
'                                  ,p_org_information11 => :P4_TARGET_AGE_GROUPS_UPD',
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
,p_process_when_button_id=>wwv_flow_api.id(7090763042050066)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13937234819796087)
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
'       and t.org_information_id = :P4_ORG_INFO_ID;',
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
,p_process_when_button_id=>wwv_flow_api.id(11040040263088457)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7100233534050120)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set items'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P4_END_ROW := 5;',
'',
'',
'select COUNT(*)',
'INTO :P4_COUNT_ROWS',
'  from hr_organization_information hoi',
' where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG''',
'   and hoi.ORG_INFORMATION10 = ''Y''',
'AND (',
'    UPPER(hoi.ORG_INFORMATION1) LIKE ''%'' || UPPER(TRIM(:P4_SEARCH)) || ''%''',
'    OR :P4_SEARCH IS NULL',
')',
'   and hoi.organization_id =  :P0_ORG_ID;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
