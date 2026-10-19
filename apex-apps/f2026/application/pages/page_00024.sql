prompt --application/pages/page_00024
begin
--   Manifest
--     PAGE: 00024
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
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'SHSH Flight Request'
,p_alias=>'SHSH-FLIGHT-REQUEST'
,p_step_title=>'SHSH Flight Request'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var newShlichim = [];',
'var existingShlichim = [];',
'',
'function setSelectedShalich(element, sessionKey) {',
'    var arrayToStore = [];',
'    var assignmentId = $(element).data(''assignment-id'');',
'    var personId = $(element).data(''person-id'');',
'    var selected = $(element).data(''selected'');',
'    ',
'    if (selected == ''Y'') {',
'        //REMOVE',
'        $(element).data(''selected'', ''N'');',
'        $(element).find(''img'').attr(''src'', ''#APP_IMAGES#check-inactive.svg'');',
'        $(element).parents(''.shsh-card'').removeClass(''selected-shsh-card'');',
'        ',
'        if (sessionKey == ''SHSH_NewShlichim'') {',
'            newShlichim = newShlichim.filter(s => { return s.assignmentId != assignmentId && s.personId != personId; });',
'            arrayToStore = newShlichim;',
'        }',
'        else if (sessionKey == ''SHSH_ExistingShlichim'') {',
'            existingShlichim = existingShlichim.filter(s => { return s.assignmentId != assignmentId && s.personId != personId; });',
'            arrayToStore = existingShlichim;',
'        }',
'    }',
'    else {',
'        //ADD',
'        $(element).data(''selected'', ''Y'');',
'        $(element).find(''img'').attr(''src'', ''#APP_IMAGES#check-active.svg'');',
'        $(element).parents(''.shsh-card'').addClass(''selected-shsh-card'');',
'        var styleAttr = $(element).parents(''.shsh-card'').find(''.shsh-photo'').attr(''style'');',
'        var startIdx = styleAttr.indexOf(''url('') + 4;',
'        styleAttr = styleAttr.substr(startIdx);',
'        var endIdx = styleAttr.indexOf('');'');',
'        var photoUrl = styleAttr.substr(0, endIdx);',
'        var name = $(element).parents(''.shsh-card'').find(''.shsh-name'').text();',
'        ',
'        if (sessionKey == ''SHSH_NewShlichim'') {',
'            newShlichim.push({ ''assignmentId'': assignmentId, ''personId'': personId, ''photoUrl'': photoUrl, ''name'': name });',
'            arrayToStore = newShlichim;',
'        }',
'        else if (sessionKey == ''SHSH_ExistingShlichim'') {',
'            existingShlichim.push({ ''assignmentId'': assignmentId, ''personId'': personId, ''photoUrl'': photoUrl, ''name'': name });',
'            arrayToStore = existingShlichim;',
'        }',
'    }',
'    ',
'    sessionStorage.setItem(sessionKey, arrayToStore);',
'    setCreateFlightRequestsButton(sessionKey);',
'}',
'',
'function setCreateFlightRequestsButton(sessionKey) {',
'    var shlichimLength = 0;',
'    var mode = '''';',
'    ',
'    if (sessionKey == ''SHSH_NewShlichim'') {',
'        shlichimLength = newShlichim.length;',
'        mode = ''NEW'';',
'    }',
'    else if (sessionKey == ''SHSH_ExistingShlichim'') {',
'        shlichimLength = existingShlichim.length;',
'        mode = ''EXISTING'';',
'    }',
'    ',
'    if (shlichimLength > 0) {',
'        $(''.createCounter'').text(''('' + shlichimLength + '')'');',
'        $(''#createFlightRequestBtn'').removeClass(''apex_disabled'');',
'        $(''#createFlightRequestBtn'').attr(''disabled'', false);',
'        $(''.create-flight-request-icon'').attr(''src'', ''#APP_IMAGES#departure.svg'');',
'    }',
'    else {',
'        //Disable create button',
'        $(''.createCounter'').text('''');',
'        $(''#createFlightRequestBtn'').addClass(''apex_disabled'');',
'        $(''#createFlightRequestBtn'').attr(''disabled'', true);',
'        $(''.create-flight-request-icon'').attr(''src'', ''#APP_IMAGES#departure-disabled.svg'');',
'    }',
'    ',
'    $(''#createFlightRequestBtn'').attr(''mode'', mode);',
'}',
'',
'function isMobile() {',
'    var isMobile = false;',
'    if(/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|ipad|iris|kindle|Android|Silk|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series('
||'4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(navigator.userAgent) ',
'        || /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\'
||'-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|t'
||'a)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1'
||'\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|'
||'p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-'
||'|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|'
||'vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(navigator.userAgent.substr(0,4))) { ',
'        isMobile = true;',
'    }',
'    return isMobile;',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    $(''.disallow-user-input'').on(''keydown'', (e) => {',
'        e.preventDefault();',
'    });',
'});',
'',
'',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#backToGeneralInfoLink {',
'    display: none;',
'}',
'',
'.tooltip-container {',
'    position: relative;',
'    display: inline-block;',
'    cursor: pointer;',
'}',
'',
'.tooltip-text {',
'    visibility: hidden;',
'    z-index: 999;',
'    width: 395px;',
'    line-height: 22px;',
'    font-weight: 400;',
'    font-size: 14px;',
'    position: absolute;',
'    bottom: -225px;',
'    left: -92px;',
'    color: #172B54;',
'    background-color: #F9F7F4;',
'    padding: 8px 10px;',
'    border-radius: 4px;',
'    border: 1px solid #EFE8E0;',
'    box-shadow: 0px 4px 10px 0px #00000014;',
'}',
'',
'.tooltip-text strong {',
'    font-weight: bold;',
'}',
'',
'.tooltip-container:hover .tooltip-text {',
'    visibility: visible;',
'}',
'',
'',
'#seeMoreDialog {',
'    width: 1120px !important;',
'    color: #172B54 !important;',
'}',
'',
'div[role="dialog"][aria-describedby="seeMoreDialog"] {',
'    width: 1120px !important;',
'}',
'',
'.download-ticket-btn[data-ticket-id=""] img,',
'.edit-request-btn[data-status="In Process"] img {',
'    display: none;',
'}',
'',
'.download-ticket-btn {',
'    outline: none;',
'}',
'',
'.home-link {',
'    display: block !important;',
'}',
'',
'.hidden {',
'    display: none;',
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
'.select2-selection__rendered {',
'    flex-grow: 0.95;',
'    color: #172B54 !important;',
'}',
'.select2-col .is-required .t-Form-labelContainer {',
'    padding-left: 0 !important;',
'}',
'',
'.select2-col .is-required .required-content::after {',
'    font-size: 18px !important;',
'    left: 2px !important;',
'    position: relative !important;',
'}',
'',
'span.select2-selection.select2-selection--single {',
'    display: flex;',
'    align-items: center;',
'    padding-top: 0;',
'    height: 40px;',
'}',
'',
'.select2-selection__arrow {',
'    background: url(''#APP_IMAGES#select-chevron.png'');',
'    background-repeat: no-repeat;',
'    background-position: center;',
'    top: 8px !important;',
'    right: 7px !important;',
'}',
'',
'.select2-selection__arrow b {',
'    display: none;   ',
'}',
'',
'.apex-item-checkbox input+label:after {',
'    content: ''\e007'' !important;',
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
'.apex-item-group--textarea,',
'.apex-item-group--textarea textarea {',
'    width: 100%;',
'}',
'',
'.t-Form-fieldContainer.is-required .t-Form-label::after {',
'    content: none;',
'}',
'',
'.apex-item-wrapper--date-picker {',
'    width: 223px;',
'    margin-left: 0;',
'    margin-right: 0;',
'}',
'',
'.apex-item-wrapper--date-picker .t-Form-itemWrapper {',
'    width: 100%;',
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
'.apex-item-wrapper--date-picker .t-input-standard-optional {',
'    padding-right: 0;',
'}',
'',
'#P24_ARRIVAL_DATE_TO_CONTAINER,',
'#P24_DEPARTURE_DATE_TO_CONTAINER,',
'#P24_ESTIMATED_RETURN_DATE_TO_CONTAINER {',
'    float: right; ',
'    margin-right: 0;',
'}',
'',
'.hour-col {',
'    max-width: 116px;',
'}',
'',
'#P24_ARRIVAL_TIME_FROM_CONTAINER .t-input-standard-optional,',
'#P24_ARRIVAL_TIME_TO_CONTAINER .t-input-standard-optional {',
'    padding-right: 0;',
'    padding-left: 0;',
'    margin-left: 8px;',
'}',
'',
'#P24_ARRIVAL_TIME_FROM_AMPM_CONTAINER .t-input-standard-optional,',
'#P24_ARRIVAL_TIME_TO_AMPM_CONTAINER .t-input-standard-optional {',
'    padding-left: 0;',
'    padding-right: 0;',
'    margin-right: 8px;',
'}',
'',
'#P24_ARRIVAL_TIME_FROM,',
'#P24_ARRIVAL_TIME_TO {',
'    border-top-right-radius: 0;',
'    border-bottom-right-radius: 0;',
'}',
'',
'#P24_ARRIVAL_TIME_FROM_AMPM,',
'#P24_ARRIVAL_TIME_TO_AMPM {',
'    border-top-left-radius: 0;',
'    border-bottom-left-radius: 0;',
'}',
'',
'.checkbox_group input:checked+label:hover:before {',
'    background-color: #E84C26;',
'}',
'',
'.checkbox_group input:checked+label:before {',
'    background-color: #E84C26;',
'    box-shadow: none;',
'}',
'',
'.checkbox_group input:focus:checked+label:before {',
'    box-shadow: inset #E84C26 0 0 0 1px,inset #fff 0 0 0 2px;',
'}',
'',
'',
'.see-all-col {',
'    width: 897px;',
'}',
'',
'.t-custom-sub-list-Tab .t-Tabs-item {',
'    width: 215px;',
'}',
'',
'#letsStartContainer,',
'#letsStartContainer td,',
'#createButtonContainer,',
'#createButtonContainer td,',
'#submitButtonContainer,',
'#submitButtonContainer td,',
'#newShlichimRegion,',
'#existingShlichimRegion {',
'    display: flex;',
'    justify-content: center;',
'}',
'',
'#createFlightRequestBtn .t-Button-label,',
'#letsStartBtn .t-Button-label,',
'#submitFlightRequestsNewBtn .t-Button-label,',
'#submitFlightRequestsExistingBtn .t-Button-label {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    height: 100%;',
'}',
'',
'#createFlightRequestBtn:disabled,',
'#createFlightRequestBtn[disabled] {',
'    background-color: #F1F0F0;',
'    color: #8B8787;',
'    opacity: 1;',
'}',
'',
'.createCounter {',
'    margin-left: 5px;',
'}',
'',
'.selected-shsh-card {',
'    border: 1px solid #A3A3A3;',
'    box-shadow: 0px 4px 20px 0px #172B5426;',
'}',
'',
'.nodatafound {',
'    display: flex;',
'    justify-content: center;',
'    align-items: center;',
'    flex-direction: column;',
'    font-size: 16px;',
'    font-weight: 400;',
'    line-height: 22px;',
'    text-align: center;',
'}',
'',
'.nodatafound img {',
'    margin-top: 15px;',
'}',
'',
'.nodatafound .no-data-found-header {',
'    font-weight: 500;',
'    margin-top: 40px;',
'}',
'',
'#rds ul {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    border-radius: 5px;',
'}',
'',
'#rds ul li {',
'    min-width: 300px;',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    background-color: #DFF4FF;',
'    border-radius: 5px;',
'}',
'',
'#rds ul li:first-child {',
'    border-top-right-radius: 0;',
'    border-bottom-right-radius: 0;',
'}',
'',
'#rds ul li:last-child {',
'    border-top-left-radius: 0;',
'    border-bottom-left-radius: 0;',
'}',
'',
'#rds .apex-rds-selected {',
'    background-color: #172B54;',
'}',
'',
'#rds .apex-rds-selected a {',
'    color: #FFFFFF;',
'}',
'',
'#rds .apex-rds a:focus,',
'#rds .apex-rds a:active,',
'#rds .apex-rds .apex-rds-selected span {',
'    box-shadow: none;',
'}',
'',
'#createFlightRequestBtn {',
'    width: 847px;',
'    height: 56px;',
'    border-radius: 10px;',
'    background-color: #172B54;',
'    color: #FFFFFF;',
'    font-weight: 500;',
'    font-size: 16px;',
'    line-height: 100%;',
'    letter-spacing: 0%;',
'}',
'',
'#letsStartBtn {',
'    width: 285px;',
'    height: 50px;',
'    border-radius: 10px;',
'    background-color: #172B54;',
'    color: #FFFFFF;',
'    font-weight: 500;',
'    font-size: 16px;',
'    line-height: 100%;',
'    letter-spacing: 0%;',
'}',
'',
'#submitFlightRequestsNewBtn,',
'#submitFlightRequestsExistingBtn {',
'    width: 100%;',
'    height: 56px;',
'    border-radius: 10px;',
'    background-color: #172B54;',
'    color: #FFFFFF;',
'    font-weight: 500;',
'    font-size: 16px;',
'    line-height: 100%;',
'    letter-spacing: 0%;',
'}',
'',
'.create-flight-request-icon {',
'    width: 20px;',
'    height: 20px;',
'    margin-right: 10px;',
'}',
'',
'.create-request-form-container {',
'    display: flex;',
'    justify-content: center;',
'}',
'',
'#createRequestFormRegion {',
'    width: 600px;',
'    border-radius: 10px;',
'    background-color: #FFFFFF;',
'    box-shadow: 0px 4px 20px 0px #0000000D;',
'}',
'',
'#createRequestFormRegion .t-Region-header {',
'    border-radius: 10px;',
'}',
'',
'#createRequestFormRegion .t-Region-headerItems--buttons {',
'    display: none;',
'}',
'',
'#createRequestFormRegion_heading {',
'    width: 100%;',
'    display: flex;',
'}',
'',
'#createRequestFormRegion_heading .create-form-title {',
'    flex-grow: 1;',
'    padding-top: 2px;',
'}',
'',
'.close-create-form:hover {',
'    cursor: pointer;',
'}',
'',
'.create-form-icon {',
'    margin-right: 8px;',
'}',
'',
'#createRequestFormRegion .t-Region-body {',
'    padding-right: 0;',
'    padding-left: 0;',
'}',
'',
'#createRequestFormRegion .create-shlichim-count {',
'    font-family: Roboto;',
'    font-weight: 400;',
'    font-size: 16px;',
'    line-height: 35px;',
'    letter-spacing: 0%;',
'    color: #A8A8A8;',
'}',
'',
'.create-form-hr {',
'    border: 1px solid #D9D9D9;',
'}',
'',
'.create-shlichim-images {',
'    display: flex;',
'    flex-wrap: wrap;',
'    margin-top: 10px;',
'    margin-bottom: 20px;',
'}',
'',
'.select2-container {',
'    min-width: 100% !important;',
'}',
'',
'#P24_I_CONFIRM_NEW,',
'#P24_I_CONFIRM_EXISTING {',
'    padding-top: 0;',
'}',
'',
'label[for="P24_I_CONFIRM_NEW_0"],',
'label[for="P24_I_CONFIRM_EXISTING_0"] {',
'    color: #172B54 !important;',
'    font-weight: 400;',
'    font-size: 16px !important;',
'    line-height: 20px !important;',
'    letter-spacing: 0%;',
'}',
'',
'.create-shaliach-image-container,',
'.see-more-shaliach-image-container {',
'    display: flex;',
'    align-items: center;',
'    height: 85px;',
'    margin-bottom: 15px;',
'    gap: 15px;',
'}',
'',
'.see-more-shaliach-image-container {',
'    margin-top: 15px;',
'}',
'',
'',
'.create-shaliach-name,',
'.see-more-shaliach-name {',
'    font-weight: 700;',
'    font-size: 20px;',
'    line-height: 35px;',
'    letter-spacing: 0%;',
'    color: #172B54;',
'}',
'',
'.select2-col .t-Form-error {',
'    padding: 0;',
'}',
'',
'.see-more:hover {',
'    cursor: pointer;',
'}',
'',
'div[role="dialog"][aria-describedby="seeMoreDialog"] .ui-dialog-titlebar {',
'    padding: 0;',
'}',
'',
'div[role="dialog"][aria-describedby="seeMoreDialog"] .ui-dialog-title {',
'    display: none;',
'}',
'',
'div[role="dialog"][aria-describedby="seeMoreDialog"] .ui-dialog-titlebar-close {',
'    position: absolute;',
'    z-index: 9;',
'}',
'',
'#seeMoreDialog {',
'    background-color: #FFFFFF;',
'    border-radius: 10px;',
'}',
'',
'.form-sub-header {',
'    font-family: Roboto;',
'    font-weight: 400;',
'    font-size: 16px;',
'    line-height: 35px;',
'    letter-spacing: 0%;',
'    color: #A3A3A3;',
'    border-top: 1px solid #D9D9D9;',
'    border-bottom: 1px solid #D9D9D9;',
'    padding: 10px 32px;',
'}',
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
'@media (max-width: 575px), @media (max-width: 640px) {',
'    .mobile-br {',
'        display: block;',
'    }',
'    ',
'    .desktop-br {',
'        display: none;',
'    }',
'    ',
'    #progressBar ul li:first-child .t-Tabs-link, ',
'    #progressBar ul li:last-child .t-Tabs-link {',
'        padding: 12px;',
'    }',
'    ',
'    #progressBar .t-Custom-Tabs .t-Tabs-item .t-Tabs-link {',
'        border-radius: 10px;',
'        background-color: #E9F8FF;',
'    }',
'    ',
'    #progressBar .t-Custom-Tabs .t-Tabs-item.is-active .t-Tabs-link {',
'        border-radius: 10px;',
'        background-color: #FFFFFF;',
'    }',
'    ',
'    #progressBar .t-custom-sub-list-Tab .t-Tabs-labell {',
'        font-weight: 600;',
'    }',
'    ',
'    .header-container .container .row {',
'        display: flex;',
'        padding-top: 20px;',
'        padding-bottom: 5px;',
'    }',
'    ',
'    .cards-container {',
'        justify-content: center !important;',
'        gap: 25px !important;',
'    }',
'    ',
'    #rds ul li {',
'        min-width: 50%;',
'    }',
'    ',
'    #rds ul {',
'        padding: 5px;',
'        background-color: #DFF4FF;',
'    }',
'    ',
'    #rds ul li:first-child {',
'        border-top-right-radius: 5px;',
'        border-bottom-right-radius: 5px;',
'    }',
'    ',
'    #rds ul li:last-child {',
'        border-top-left-radius: 5px;',
'        border-bottom-left-radius: 5px;',
'    }',
'    ',
'    .shsh-card {',
'        padding: 7px !important;',
'        height: 224px !important;',
'    }',
'    ',
'    .shsh-card,',
'    .shsh-card .buttons-container {',
'        width: 165px !important;',
'    }',
'    ',
'    .shsh-card .check-icon {',
'        top: -2px !important;',
'        right: 5px !important;',
'    }',
'    ',
'    .shsh-card .shsh-name {',
'        line-height: 20px !important;',
'        text-align: center;',
'        font-size: 16px !important;',
'        margin-bottom: 2px;',
'    }',
'    ',
'    .shsh-card .community-maslul {',
'        min-height: 30px;',
'    }',
'    ',
'    .see-more-container {',
'        height: 53px !important;',
'    }',
'    ',
'    .see-more {',
'        margin-top: 2px !important;',
'        line-height: 20px;',
'        font-size: 14px !important;',
'    }',
'    ',
'    .shsh-card > .community-requests {',
'        margin-bottom: 26px !important;',
'    }',
'    ',
'    div[role="dialog"][aria-describedby="seeMoreDialog"] {',
'        max-width: 100% !important;',
'    }',
'    ',
'    #seeMoreDialog,',
'    #createRequestFormRegion {',
'        max-width: 100% !important;',
'    }',
'    ',
'    #createRequestFormRegion {',
'        border-radius: 20px !important;',
'    }',
'    ',
'    #CreateFlightRequestContainerID {',
'        display: flex;',
'        align-items: center;',
'        justify-content: center;',
'        margin-bottom: 5px !important;',
'    }',
'    ',
'    .create-flight-request-btn {',
'        float: none !important;',
'        top: 0 !important;',
'        right: 0 !important;',
'    }',
'    ',
'    .select2-selection__rendered {',
'        padding-right: 30px !important;',
'    }',
'    ',
'    .select2-selection__clear {',
'        width: 15px;',
'        text-align: center;',
'    }',
'    ',
'    .apex-item-wrapper--date-picker {',
'        width: 100%;',
'    }',
'    ',
'    .create-shaliach-name, .see-more-shaliach-name {',
'        font-size: 16px !important;',
'    }',
'    ',
'    #newShlichimSubmitMessage {',
'        font-size: 14px !important;',
'    }',
'    ',
'    #createFlightRequestBtn {',
'        width: 100%;',
'    }',
'    ',
'    .cards-container {',
'        gap: 10px !important;',
'    }',
'    ',
'    #progressBar .t-custom-sub-list-Tab {',
'        width: 100%;',
'        padding-bottom: 5px;',
'        gap: 4% !important;',
'    }',
'    ',
'    #progressBar .t-Tabs-item {',
'        width: 48% !important;',
'    }',
'    ',
'    #progressBar .t-Tabs-item a {',
'        height: 57px;',
'        align-items: center;',
'        display: flex;',
'        justify-content: center;',
'    }',
'    ',
'    #P24_TYPE_OF_TRAVEL .apex-item-grid-row {',
'        display: flex;',
'        flex-flow: column;',
'    }',
'    ',
'    #P24_TYPE_OF_TRAVEL .apex-item-option {',
'        width: 100%;',
'    }',
'}',
'',
'@media (max-width: 360px) {',
'    ',
'}'))
,p_step_template=>wwv_flow_api.id(29244342218644)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DRORA'
,p_last_upd_yyyymmddhh24miss=>'20260917154542'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(193149690769566679)
,p_plug_name=>'See More Dialog'
,p_region_name=>'seeMoreDialog'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_api.id(491239719494075185)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(193149754934566680)
,p_plug_name=>'Single Shaliach Image'
,p_region_name=>'singleShaliachImageRegion'
,p_parent_plug_id=>wwv_flow_api.id(193149690769566679)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="see-more-shaliach-image-container">',
'    <div class="see-more-shaliach-image">B</div>',
'    <div class="see-more-shaliach-name">A</div>',
'</div>',
'<hr class="see-more-form-hr"/>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(193150266997566685)
,p_name=>'My Requests'
,p_region_name=>'myRequestsRegion'
,p_parent_plug_id=>wwv_flow_api.id(193149690769566679)
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with my_requests as ',
'(',
'select  ''REQUEST'' CARD_TYPE,',
'        paei.aei_information1 REQUEST_ID,',
'        paei.aei_information3 FORM_TYPE,',
'        case when paei.aei_information4 = ''Conference'' then paei.aei_information11',
'             else case when paei.aei_information11 is not null and paei.AEI_INFORMATION12 is not null then',
'                            paei.aei_information11 || '' - '' || paei.AEI_INFORMATION12',
'                       when paei.aei_information11 is not null then',
'                            paei.aei_information11',
'                       when paei.AEI_INFORMATION12 is not null then',
'                            paei.AEI_INFORMATION12 end',
'        end ESTIMATED_ARRIVAL_DATE,',
'    ',
'        case when paei.aei_information3 = ''New Shaliach'' then paei.aei_information5',
'             when paei.aei_information3 = ''Existing Shaliach'' then ',
'                  case when paei.aei_information4 = ''Conference'' then paei.aei_information14',
'                       else paei.aei_information10 ',
'                  end ',
'        end ARRIVAL_AIRPORT,',
'    ',
'        case when paei.aei_information3 = ''Existing Shaliach'' then',
'             case when paei.aei_information4 = ''Conference'' then paei.aei_information6',
'             else case when paei.aei_information6 is not null and paei.AEI_INFORMATION7 is not null then  paei.aei_information6 || '' - '' || paei.AEI_INFORMATION7',
'                       when paei.aei_information6 is not null then paei.aei_information6',
'                       when paei.AEI_INFORMATION7 is not null then paei.AEI_INFORMATION7 end',
'             end',
'             when paei.aei_information3 = ''New Shaliach'' then ',
'                  case when paei.aei_information6 is null and paei.AEI_INFORMATION7 is null then ''Latest Possible'' ',
'                       when paei.aei_information7 is null then paei.aei_information6 ',
'                       else paei.aei_information6 || '' - '' || paei.AEI_INFORMATION7 end ',
'        end ESTIMATED_RETURN_DATE,',
'    ',
'                   /* when paei.aei_information3 = ''New Shaliach'' then ''Latest Possible''end ESTIMATED_RETURN_DATE,*/',
'    ',
'        case when paei.aei_information4 = ''Conference'' then paei.aei_information5 else ''TLV'' end RETURN_AIRPORT,',
'    ',
'        case when nvl((select jaf1.status',
'                       from apps.jafi_apex_shlichut_flights jaf1',
'                       where paaf.assignment_id = jaf1.assgt_id(+) and ',
'                             jaf1.request_id(+) = paei.aei_information1 and',
'                             jaf1.status not in (''7'')), ''0'') = ''0'' then ''Pending''',
'             when (select jaf1.status',
'                   from apps.jafi_apex_shlichut_flights jaf1',
'                   where paaf.assignment_id=jaf1.assgt_id and',
'                         jaf1.request_id(+) = paei.aei_information1 and',
'                         jaf1.status not in (''7'')) in (''1'',''2'',''3'',''4'',''5'',''8'') then ''In Process'' end STATUS,',
'        case when nvl((select jaf1.status',
'                       from apps.jafi_apex_shlichut_flights jaf1',
'                       where paaf.assignment_id = jaf1.assgt_id(+) and ',
'                             jaf1.request_id(+) = paei.aei_information1 and',
'                             jaf1.status not in (''7'')), ''0'') = ''0'' then ''#EFD4FF''',
'             when (select jaf1.status',
'                   from apps.jafi_apex_shlichut_flights jaf1',
'                   where paaf.assignment_id=jaf1.assgt_id and',
'                         jaf1.request_id(+) = paei.aei_information1 and',
'                         jaf1.status not in (''7'')) in (''1'',''2'',''3'',''4'',''5'',''8'') then ''#FDE784'' else ''transparent'' end STATUS_COLOR',
'from	per_all_people_f papf,',
'        per_all_assignments_f paaf,',
'        per_all_vacancies pav,',
'        irc_assignment_statuses ias,',
'        per_assignment_status_types past,',
'        PER_ASSIGNMENT_EXTRA_INFO PAEI',
'where   pav.organization_id = :P0_ORG_ID',
'		and paaf.assignment_id= :P24_SEE_MORE_ASSIGNMENT_ID',
'		AND papf.person_id = paaf.person_id',
'		and paaf.vacancy_id = pav.vacancy_id',
'		and ias.assignment_id = paaf.assignment_id',
'		and ias.assignment_status_type_id IN (47358, 23357, 23358, 6, 1, 279)',
'		and trunc(sysdate) between papf.effective_start_date and papf.effective_end_date',
'		and trunc(sysdate) between paaf.effective_start_date and paaf.effective_end_date',
'		and paaf.business_group_id = 4088',
'		and pav.attribute11 = ''N''',
'		AND PAV.ATTRIBUTE_CATEGORY = ''SSH''',
'		and past.assignment_status_type_id = paaf.assignment_status_type_id',
'		and past.assignment_status_type_id = ias.assignment_status_type_id',
'		and ias.status_change_date = (select max(status_change_date)',
'		from irc_assignment_statuses ias1',
'		where ias.assignment_id = ias1.assignment_id)',
'		and PAEI.ASSIGNMENT_ID = paaf.assignment_id',
'		and PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS''',
'         and not exists (',
'        select 1',
'        from apps.jafi_apex_shlichut_flights jaf2',
'        where jaf2.request_id = paei.aei_information1',
'        and jaf2.assgt_id = paaf.assignment_id',
'        and jaf2.status = ''6'') ----Meitav 20052026',
'order by REQUEST_ID',
')',
'',
'select CARD_TYPE,',
'       FORM_TYPE,',
'       REQUEST_ID,',
'       ESTIMATED_ARRIVAL_DATE,',
'       ARRIVAL_AIRPORT,',
'       ESTIMATED_RETURN_DATE,',
'       RETURN_AIRPORT,',
'       STATUS,',
'       STATUS_COLOR',
'from my_requests'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P24_SEE_MORE_ASSIGNMENT_ID'
,p_query_row_template=>wwv_flow_api.id(195424393306232318)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(193150998477566692)
,p_query_column_id=>1
,p_column_alias=>'CARD_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Card Type'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(222011018148889790)
,p_query_column_id=>2
,p_column_alias=>'FORM_TYPE'
,p_column_display_sequence=>9
,p_column_heading=>'Form Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(205784367669189670)
,p_query_column_id=>3
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Request Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(195415423525215357)
,p_query_column_id=>4
,p_column_alias=>'ESTIMATED_ARRIVAL_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Estimated Arrival Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(195415478091215358)
,p_query_column_id=>5
,p_column_alias=>'ARRIVAL_AIRPORT'
,p_column_display_sequence=>4
,p_column_heading=>'Arrival Airport'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(195415560156215359)
,p_query_column_id=>6
,p_column_alias=>'ESTIMATED_RETURN_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Estimated Return Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(195415695030215360)
,p_query_column_id=>7
,p_column_alias=>'RETURN_AIRPORT'
,p_column_display_sequence=>6
,p_column_heading=>'Return Airport'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(193150885986566691)
,p_query_column_id=>8
,p_column_alias=>'STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(195415807086215361)
,p_query_column_id=>9
,p_column_alias=>'STATUS_COLOR'
,p_column_display_sequence=>7
,p_column_heading=>'Status Color'
,p_use_as_row_header=>'N'
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(195414022740215343)
,p_name=>'My Flights'
,p_region_name=>'myFlightsRegion'
,p_parent_plug_id=>wwv_flow_api.id(193149690769566679)
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ''FLIGHT'' CARD_TYPE,',
'        PAEI.aei_information1 REQUEST_ID,',
'        paei.aei_information3 FORM_TYPE,',
'        last_flight.final_destination DESTINATION_AIRPORT,',
'        JAFI_HR_UTILS.US_Decode_Lookup (''JAFI_HR_SC_AIRLINES'', last_flight.airline) AIRLINE,',
'        last_flight.flight_number FLIGHT_NUMBER,',
'        JAFI_HR_PKG3.format_to_us_date(last_flight.arival_date) ARRIVAL_DATE,',
'        JAFI_HR_PKG3.format_to_us_time(last_flight.arival_time) ARRIVAL_TIME,',
'        case when last_flight.ticket_doc_id > 0 then',
'            apex_page.get_url(p_page => ''24'', ',
'            p_request => ''APPLICATION_PROCESS=GetDocument'', ',
'            p_items => ''DOCUMENT_ID'', ',
'            p_values => last_flight.ticket_doc_id) else ''javascript:void(0);'' end TICKET_URL,',
'        (SELECT NVL(MAX(ird.document_id), 0)',
'        FROM irc_documents ird',
'        WHERE papf.person_id = ird.PERSON_ID',
'        AND ird.end_date IS NULL',
'        AND ird.type = ''FLIGHT_TICKET_SSH''',
'        and ird.document_id=last_flight.ticket_doc_id) TICKET_ID',
'from per_all_people_f papf,',
'     per_all_assignments_f paaf,',
'     per_all_vacancies pav,',
'     irc_assignment_statuses ias,',
'     per_assignment_status_types past,',
'     PER_ASSIGNMENT_EXTRA_INFO PAEI,',
'     (SELECT jasf.assgt_id,',
'     JASF.REQUEST_ID,',
'     jasf.ticket_doc_id,',
'     CASE',
'     WHEN jasf.to_seg3_arrival_date IS NOT NULL THEN',
'     jasf.to_seg3_arrival_date',
'     WHEN jasf.to_seg2_arrival_date IS NOT NULL THEN',
'     jasf.to_seg2_arrival_date',
'     ELSE',
'     jasf.to_seg1_arrival_date',
'     END AS arival_date,',
'     CASE',
'     WHEN jasf.to_seg3_arrival_date IS NOT NULL THEN',
'     jasf.to_seg3_arrival_time',
'     WHEN jasf.to_seg2_arrival_date IS NOT NULL THEN',
'     jasf.to_seg2_arrival_time',
'     ELSE',
'     jasf.to_seg1_arrival_time',
'     END AS arival_time,',
'     CASE',
'     WHEN jasf.to_seg3_arrival_date IS NOT NULL THEN',
'     jasf.to_seg3_airline',
'     WHEN jasf.to_seg2_arrival_date IS NOT NULL THEN',
'     jasf.to_seg2_airline',
'     ELSE',
'     jasf.to_seg1_airline',
'     END AS airline,',
'     CASE',
'     WHEN jasf.to_seg3_arrival_date IS NOT NULL THEN',
'     jasf.to_seg3_flight_number',
'     WHEN jasf.to_seg2_arrival_date IS NOT NULL THEN',
'     jasf.to_seg2_flight_number',
'     ELSE',
'     jasf.to_seg1_flight_number',
'     END AS flight_number,',
'     CASE',
'     WHEN jasf.to_seg3_arrival_date IS NOT NULL THEN',
'     jasf.to_seg3_destination_airport',
'     WHEN jasf.to_seg2_arrival_date IS NOT NULL THEN',
'     jasf.to_seg2_destination_airport',
'     ELSE',
'     jasf.to_seg1_destination_airport',
'     END AS final_destination',
'     FROM apps.jafi_apex_shlichut_flights jasf',
'     WHERE jasf. status in (''6'')) last_flight',
'where pav.organization_id = :P0_ORG_ID',
'AND papf.person_id = paaf.person_id',
'and paaf.vacancy_id = pav.vacancy_id',
'and ias.assignment_id = paaf.assignment_id',
'and ias.assignment_status_type_id IN (47358, 23357, 23358, 6, 1, 279)',
'and trunc(sysdate) between papf.effective_start_date and papf.effective_end_date',
'and trunc(sysdate) between paaf.effective_start_date and paaf.effective_end_date',
'and paaf.business_group_id = 4088',
'and pav.attribute11 = ''N''',
'AND PAV.ATTRIBUTE_CATEGORY = ''SSH''',
'and past.assignment_status_type_id = paaf.assignment_status_type_id',
'and past.assignment_status_type_id = ias.assignment_status_type_id',
'and ias.status_change_date = (select max(status_change_date)',
'                              from irc_assignment_statuses ias1',
'                              where ias.assignment_id = ias1.assignment_id)',
'and PAEI.ASSIGNMENT_ID = paaf.assignment_id',
'and last_flight.assgt_id= :P24_SEE_MORE_ASSIGNMENT_ID',
'and PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS''',
'AND last_flight.assgt_id = paaf.assignment_id',
'AND LAST_FLIGHT.REQUEST_ID=PAEI.AEI_INFORMATION1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P24_SEE_MORE_ASSIGNMENT_ID,P24_MODE'
,p_query_row_template=>wwv_flow_api.id(215029999485580748)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(195414671166215350)
,p_query_column_id=>1
,p_column_alias=>'CARD_TYPE'
,p_column_display_sequence=>1
,p_column_heading=>'Card Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(205783821062189664)
,p_query_column_id=>2
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Request Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(222010899428889789)
,p_query_column_id=>3
,p_column_alias=>'FORM_TYPE'
,p_column_display_sequence=>10
,p_column_heading=>'Form Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(205783897130189665)
,p_query_column_id=>4
,p_column_alias=>'DESTINATION_AIRPORT'
,p_column_display_sequence=>4
,p_column_heading=>'Destination Airport'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(195414954268215353)
,p_query_column_id=>5
,p_column_alias=>'AIRLINE'
,p_column_display_sequence=>2
,p_column_heading=>'Airline'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(205784049027189667)
,p_query_column_id=>6
,p_column_alias=>'FLIGHT_NUMBER'
,p_column_display_sequence=>5
,p_column_heading=>'Flight Number'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(205784151617189668)
,p_query_column_id=>7
,p_column_alias=>'ARRIVAL_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Arrival Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(205784261827189669)
,p_query_column_id=>8
,p_column_alias=>'ARRIVAL_TIME'
,p_column_display_sequence=>7
,p_column_heading=>'Arrival Time'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(222010739304889787)
,p_query_column_id=>9
,p_column_alias=>'TICKET_URL'
,p_column_display_sequence=>9
,p_column_heading=>'Ticket Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(222010307817889783)
,p_query_column_id=>10
,p_column_alias=>'TICKET_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Ticket Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(205786445059189691)
,p_plug_name=>'Create Flight Request Container'
,p_region_name=>'CreateFlightRequestContainerID'
,p_parent_plug_id=>wwv_flow_api.id(193149690769566679)
,p_region_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>160
,p_plug_display_point=>'BODY'
,p_plug_source=>'<img class="create-flight-request-btn" src="#APP_IMAGES#create-flight-request.svg" style="width: 181px; height: 20px; float: right; cursor: pointer; top: 4px; position: relative;" />'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1173049803585089843)
,p_name=>'My Requests'
,p_region_name=>'myRequestsRegionMobile'
,p_parent_plug_id=>wwv_flow_api.id(193149690769566679)
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>110
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with my_requests as ',
'(',
'select  ''REQUEST'' CARD_TYPE,',
'        paei.aei_information1 REQUEST_ID,',
'        paei.aei_information3 FORM_TYPE,',
'        case when paei.aei_information11 is not null and paei.AEI_INFORMATION12 is not null then',
'                  paei.aei_information11 || '' - '' || paei.AEI_INFORMATION12',
'             when paei.aei_information11 is not null then',
'                  paei.aei_information11',
'             when paei.AEI_INFORMATION12 is not null then',
'                  paei.AEI_INFORMATION12 end ESTIMATED_ARRIVAL_DATE,',
'        case when paei.aei_information3 = ''New Shaliach'' then paei.aei_information5',
'             when paei.aei_information3 = ''Existing Shaliach'' then paei.aei_information10 end ARRIVAL_AIRPORT,',
'        case when paei.aei_information3 = ''Existing Shaliach'' then',
'            (case when paei.aei_information6 is not null and paei.AEI_INFORMATION7 is not null then',
'                       paei.aei_information6 || '' - '' || paei.AEI_INFORMATION7',
'                  when paei.aei_information6 is not null then',
'                       paei.aei_information6',
'                  when paei.AEI_INFORMATION7 is not null then',
'                       paei.AEI_INFORMATION7 end) ',
'                  when paei.aei_information3 = ''New Shaliach'' then ''Latest Possible'' end ESTIMATED_RETURN_DATE,',
'        ''TLV'' RETURN_AIRPORT,',
'        case when nvl((select jaf1.status',
'                       from apps.jafi_apex_shlichut_flights jaf1',
'                       where paaf.assignment_id = jaf1.assgt_id(+) and ',
'                             jaf1.request_id(+) = paei.aei_information1 and',
'                             jaf1.status not in (''7'')), ''0'') = ''0'' then ''Pending''',
'             when (select jaf1.status',
'                   from apps.jafi_apex_shlichut_flights jaf1',
'                   where paaf.assignment_id=jaf1.assgt_id and',
'                         jaf1.request_id(+) = paei.aei_information1 and',
'                         jaf1.status not in (''7'')) in (''1'',''2'',''3'',''4'',''5'',''8'') then ''In Process'' end STATUS,',
'        case when nvl((select jaf1.status',
'                       from apps.jafi_apex_shlichut_flights jaf1',
'                       where paaf.assignment_id = jaf1.assgt_id(+) and ',
'                             jaf1.request_id(+) = paei.aei_information1 and',
'                             jaf1.status not in (''7'')), ''0'') = ''0'' then ''#EFD4FF''',
'             when (select jaf1.status',
'                   from apps.jafi_apex_shlichut_flights jaf1',
'                   where paaf.assignment_id=jaf1.assgt_id and',
'                         jaf1.request_id(+) = paei.aei_information1 and',
'                         jaf1.status not in (''7'')) in (''1'',''2'',''3'',''4'',''5'',''8'') then ''#FDE784'' else ''transparent'' end STATUS_COLOR',
'from	per_all_people_f papf,',
'        per_all_assignments_f paaf,',
'        per_all_vacancies pav,',
'        irc_assignment_statuses ias,',
'        per_assignment_status_types past,',
'        PER_ASSIGNMENT_EXTRA_INFO PAEI',
'where   pav.organization_id = :P0_ORG_ID',
'		and paaf.assignment_id= :P24_SEE_MORE_ASSIGNMENT_ID',
'		AND papf.person_id = paaf.person_id',
'		and paaf.vacancy_id = pav.vacancy_id',
'		and ias.assignment_id = paaf.assignment_id',
'		and ias.assignment_status_type_id IN (47358, 23357, 23358, 6, 1, 279)',
'		and trunc(sysdate) between papf.effective_start_date and papf.effective_end_date',
'		and trunc(sysdate) between paaf.effective_start_date and paaf.effective_end_date',
'		and paaf.business_group_id = 4088',
'		and pav.attribute11 = ''N''',
'		AND PAV.ATTRIBUTE_CATEGORY = ''SSH''',
'		and past.assignment_status_type_id = paaf.assignment_status_type_id',
'		and past.assignment_status_type_id = ias.assignment_status_type_id',
'		and ias.status_change_date = (select max(status_change_date)',
'		from irc_assignment_statuses ias1',
'		where ias.assignment_id = ias1.assignment_id)',
'		and PAEI.ASSIGNMENT_ID = paaf.assignment_id',
'		and PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS''',
'         and not exists (',
'        select 1',
'        from apps.jafi_apex_shlichut_flights jaf2',
'        where jaf2.request_id = paei.aei_information1',
'        and jaf2.assgt_id = paaf.assignment_id',
'        and jaf2.status = ''6'') ----Meitav 20052026',
'order by REQUEST_ID',
')',
'',
'select CARD_TYPE,',
'       FORM_TYPE,',
'       REQUEST_ID,',
'       ESTIMATED_ARRIVAL_DATE,',
'       ARRIVAL_AIRPORT,',
'       ESTIMATED_RETURN_DATE,',
'       RETURN_AIRPORT,',
'       STATUS,',
'       STATUS_COLOR',
'from my_requests'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P24_SEE_MORE_ASSIGNMENT_ID'
,p_query_row_template=>wwv_flow_api.id(314207920041627445)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(370375770371572150)
,p_query_column_id=>1
,p_column_alias=>'CARD_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Card Type'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(370378194612572154)
,p_query_column_id=>2
,p_column_alias=>'FORM_TYPE'
,p_column_display_sequence=>9
,p_column_heading=>'Form Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(370375012820572149)
,p_query_column_id=>3
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Request Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(370376147698572151)
,p_query_column_id=>4
,p_column_alias=>'ESTIMATED_ARRIVAL_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Estimated Arrival Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(370376639098572151)
,p_query_column_id=>5
,p_column_alias=>'ARRIVAL_AIRPORT'
,p_column_display_sequence=>5
,p_column_heading=>'Arrival Airport'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(370377035306572152)
,p_query_column_id=>6
,p_column_alias=>'ESTIMATED_RETURN_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Estimated Return Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(370377352491572153)
,p_query_column_id=>7
,p_column_alias=>'RETURN_AIRPORT'
,p_column_display_sequence=>7
,p_column_heading=>'Return Airport'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(370375410696572150)
,p_query_column_id=>8
,p_column_alias=>'STATUS'
,p_column_display_sequence=>2
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(370377833963572154)
,p_query_column_id=>9
,p_column_alias=>'STATUS_COLOR'
,p_column_display_sequence=>8
,p_column_heading=>'Status Color'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1173054796125092480)
,p_name=>'My Flights'
,p_region_name=>'myFlightsRegionMobile'
,p_parent_plug_id=>wwv_flow_api.id(193149690769566679)
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>120
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ''FLIGHT'' CARD_TYPE,',
'        PAEI.aei_information1 REQUEST_ID,',
'        case when :P24_MODE = ''EXISTING'' and paei.aei_information3 = ''New Shaliach'' then ''New Shaliach With Departure'' else paei.aei_information3 end FORM_TYPE,',
'        last_flight.final_destination DESTINATION_AIRPORT,',
'        JAFI_HR_UTILS.US_Decode_Lookup (''JAFI_HR_SC_AIRLINES'', last_flight.airline) AIRLINE,',
'        last_flight.flight_number FLIGHT_NUMBER,',
'        JAFI_HR_PKG3.format_to_us_date(last_flight.arival_date) ARRIVAL_DATE,',
'        JAFI_HR_PKG3.format_to_us_time(last_flight.arival_time) ARRIVAL_TIME,',
'        case when last_flight.ticket_doc_id > 0 then',
'            apex_page.get_url(p_page => ''24'', ',
'            p_request => ''APPLICATION_PROCESS=GetDocument'', ',
'            p_items => ''DOCUMENT_ID'', ',
'            p_values => last_flight.ticket_doc_id) else ''javascript:void(0);'' end TICKET_URL,',
'        (SELECT NVL(MAX(ird.document_id), 0)',
'        FROM irc_documents ird',
'        WHERE papf.person_id = ird.PERSON_ID',
'        AND ird.end_date IS NULL',
'        AND ird.type = ''FLIGHT_TICKET_SSH''',
'        and ird.document_id=last_flight.ticket_doc_id) TICKET_ID',
'from per_all_people_f papf,',
'     per_all_assignments_f paaf,',
'     per_all_vacancies pav,',
'     irc_assignment_statuses ias,',
'     per_assignment_status_types past,',
'     PER_ASSIGNMENT_EXTRA_INFO PAEI,',
'     (SELECT jasf.assgt_id,',
'     JASF.REQUEST_ID,',
'     jasf.ticket_doc_id,',
'     CASE',
'     WHEN jasf.to_seg3_arrival_date IS NOT NULL THEN',
'     jasf.to_seg3_arrival_date',
'     WHEN jasf.to_seg2_arrival_date IS NOT NULL THEN',
'     jasf.to_seg2_arrival_date',
'     ELSE',
'     jasf.to_seg1_arrival_date',
'     END AS arival_date,',
'     CASE',
'     WHEN jasf.to_seg3_arrival_date IS NOT NULL THEN',
'     jasf.to_seg3_arrival_time',
'     WHEN jasf.to_seg2_arrival_date IS NOT NULL THEN',
'     jasf.to_seg2_arrival_time',
'     ELSE',
'     jasf.to_seg1_arrival_time',
'     END AS arival_time,',
'     CASE',
'     WHEN jasf.to_seg3_arrival_date IS NOT NULL THEN',
'     jasf.to_seg3_airline',
'     WHEN jasf.to_seg2_arrival_date IS NOT NULL THEN',
'     jasf.to_seg2_airline',
'     ELSE',
'     jasf.to_seg1_airline',
'     END AS airline,',
'     CASE',
'     WHEN jasf.to_seg3_arrival_date IS NOT NULL THEN',
'     jasf.to_seg3_flight_number',
'     WHEN jasf.to_seg2_arrival_date IS NOT NULL THEN',
'     jasf.to_seg2_flight_number',
'     ELSE',
'     jasf.to_seg1_flight_number',
'     END AS flight_number,',
'     CASE',
'     WHEN jasf.to_seg3_arrival_date IS NOT NULL THEN',
'     jasf.to_seg3_destination_airport',
'     WHEN jasf.to_seg2_arrival_date IS NOT NULL THEN',
'     jasf.to_seg2_destination_airport',
'     ELSE',
'     jasf.to_seg1_destination_airport',
'     END AS final_destination',
'     FROM apps.jafi_apex_shlichut_flights jasf',
'     WHERE jasf. status in (''6'')) last_flight',
'where pav.organization_id = :P0_ORG_ID',
'AND papf.person_id = paaf.person_id',
'and paaf.vacancy_id = pav.vacancy_id',
'and ias.assignment_id = paaf.assignment_id',
'and ias.assignment_status_type_id IN (47358, 23357, 23358, 6, 1, 279)',
'and trunc(sysdate) between papf.effective_start_date and papf.effective_end_date',
'and trunc(sysdate) between paaf.effective_start_date and paaf.effective_end_date',
'and paaf.business_group_id = 4088',
'and pav.attribute11 = ''N''',
'AND PAV.ATTRIBUTE_CATEGORY = ''SSH''',
'and past.assignment_status_type_id = paaf.assignment_status_type_id',
'and past.assignment_status_type_id = ias.assignment_status_type_id',
'and ias.status_change_date = (select max(status_change_date)',
'                              from irc_assignment_statuses ias1',
'                              where ias.assignment_id = ias1.assignment_id)',
'and PAEI.ASSIGNMENT_ID = paaf.assignment_id',
'and last_flight.assgt_id= :P24_SEE_MORE_ASSIGNMENT_ID',
'and PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS''',
'AND last_flight.assgt_id = paaf.assignment_id',
'AND LAST_FLIGHT.REQUEST_ID=PAEI.AEI_INFORMATION1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P24_SEE_MORE_ASSIGNMENT_ID,P24_MODE'
,p_query_row_template=>wwv_flow_api.id(314207581041626145)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(370380826685574775)
,p_query_column_id=>1
,p_column_alias=>'CARD_TYPE'
,p_column_display_sequence=>6
,p_column_heading=>'Card Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(370378884639574774)
,p_query_column_id=>2
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Request Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(370382409576574776)
,p_query_column_id=>3
,p_column_alias=>'FORM_TYPE'
,p_column_display_sequence=>10
,p_column_heading=>'Form Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(370379204981574774)
,p_query_column_id=>4
,p_column_alias=>'DESTINATION_AIRPORT'
,p_column_display_sequence=>2
,p_column_heading=>'Destination Airport'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(370381224971574776)
,p_query_column_id=>5
,p_column_alias=>'AIRLINE'
,p_column_display_sequence=>7
,p_column_heading=>'Airline'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(370379558045574774)
,p_query_column_id=>6
,p_column_alias=>'FLIGHT_NUMBER'
,p_column_display_sequence=>3
,p_column_heading=>'Flight Number'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(370380019514574775)
,p_query_column_id=>7
,p_column_alias=>'ARRIVAL_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Arrival Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(370380359338574775)
,p_query_column_id=>8
,p_column_alias=>'ARRIVAL_TIME'
,p_column_display_sequence=>5
,p_column_heading=>'Arrival Time'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(370382019603574776)
,p_query_column_id=>9
,p_column_alias=>'TICKET_URL'
,p_column_display_sequence=>9
,p_column_heading=>'Ticket Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(370381550957574776)
,p_query_column_id=>10
,p_column_alias=>'TICKET_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Ticket Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(216730720813364850)
,p_plug_name=>'Content'
,p_region_name=>'contentRegion'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="display: none;"'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(179790416085875245)
,p_plug_name=>'Create Button Container'
,p_region_name=>'createButtonContainer'
,p_parent_plug_id=>wwv_flow_api.id(216730720813364850)
,p_region_template_options=>'#DEFAULT#:margin-top-lg'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(179791465992875256)
,p_plug_name=>'<img class="create-form-icon" src="#APP_IMAGES#departure-create.svg" /><span class="create-form-title">Create Request</span><img class="close-create-form" src="#APP_IMAGES#close-icon.svg"#" />'
,p_region_name=>'createRequestFormRegion'
,p_parent_plug_id=>wwv_flow_api.id(216730720813364850)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="display: none;"'
,p_plug_template=>wwv_flow_api.id(491247236618075195)
,p_plug_display_sequence=>100
,p_plug_grid_column_css_classes=>'create-request-form-container'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(179793287372875274)
,p_plug_name=>'Multiple Shlichim Images'
,p_region_name=>'multipleShlichimImagesRegion'
,p_parent_plug_id=>wwv_flow_api.id(179791465992875256)
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="create-shlichim-images-container">',
'    <div class="create-shlichim-count">3 Selected Shlichim</div>',
'    <div class="create-shlichim-images">A</div>',
'</div>',
'<hr class="create-form-hr"/>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(179793377584875275)
,p_plug_name=>'Form'
,p_parent_plug_id=>wwv_flow_api.id(179791465992875256)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(183558315973789452)
,p_plug_name=>'Container'
,p_parent_plug_id=>wwv_flow_api.id(179793377584875275)
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p id="newShlichimSubmitMessage" style="width: 100%; border-radius: 7px; background-color: #F9F7F4; font-weight: 400; padding: 25px; font-size: 16px; line-height: 20px; letter-spacing: 0%; color: #7A8497;">',
'    The return flight will be automatically booked for the latest available date (up to one year from the booking date).<br />',
'    Once the flight is booked, you will be able to update the date by editing the request.',
'</p>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(183558793023789457)
,p_plug_name=>'Submit Container'
,p_region_name=>'submitContainer'
,p_parent_plug_id=>wwv_flow_api.id(179793377584875275)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-md:margin-left-lg:margin-right-lg'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(183561247968789482)
,p_plug_name=>'Type Of Travel'
,p_region_name=>'typeOfTravelContainer'
,p_parent_plug_id=>wwv_flow_api.id(179793377584875275)
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(319972294605897484)
,p_plug_name=>'Flight to Shlichut'
,p_parent_plug_id=>wwv_flow_api.id(179793377584875275)
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'only-for-new'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<div style="font-weight: 600; font-size: 16px; line-height: 35px; letter-spacing: 0%; color: #172B54">Flight to Shlichut</div>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_column_width=>'style="display: none;"'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(615475443992883769)
,p_plug_name=>'One Way & Round Trip Form'
,p_region_name=>'oneWayAndRoundTripContainer'
,p_parent_plug_id=>wwv_flow_api.id(179793377584875275)
,p_region_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:margin-left-lg:margin-right-lg'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(183560069715789470)
,p_plug_name=>'Existing Shlichim Fields Container'
,p_region_name=>'existingShlichimFieldsContainer'
,p_parent_plug_id=>wwv_flow_api.id(615475443992883769)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(183560392192789473)
,p_plug_name=>'Estimated Departure Date'
,p_parent_plug_id=>wwv_flow_api.id(183560069715789470)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<hr class="desktop-br" style="width: 21px; border: 1px solid #A3A3A3; position: absolute; top: 88px; left: 255px;"/>',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="departureDateRequired" style="font-weight: 400; font-style: Regular; font-size: 16px; line-height: 35px; letter-spacing: 0%; color: #A3A3A3;"><span style="color: red;">*</span> Estimated Departure Date:</div>',
'',
'',
'',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(183560776331789477)
,p_plug_name=>'Estimated Departure Time'
,p_parent_plug_id=>wwv_flow_api.id(183560069715789470)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'',
'',
''))
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
 p_id=>wwv_flow_api.id(216733978770364883)
,p_plug_name=>'Departure Airport'
,p_parent_plug_id=>wwv_flow_api.id(183560069715789470)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(183560176803789471)
,p_plug_name=>'Arrival Date Fields Container'
,p_region_name=>'arrivalDateFieldsContainer'
,p_parent_plug_id=>wwv_flow_api.id(615475443992883769)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(179794798032875289)
,p_plug_name=>'Preferred Arrival Date'
,p_parent_plug_id=>wwv_flow_api.id(183560176803789471)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<hr class="desktop-br" style="width: 21px; border: 1px solid #A3A3A3; position: absolute; top: 88px; left: 255px;"/>',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-weight: 400; font-style: Regular; font-size: 16px; line-height: 35px; letter-spacing: 0%; color: #A3A3A3;"><span style="color: red;">*</span> Preferred Arrival Date:</div>',
'',
'',
'',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(183557564603789445)
,p_plug_name=>'Estimated Arrival Time'
,p_parent_plug_id=>wwv_flow_api.id(183560176803789471)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'',
'',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(183560290987789472)
,p_plug_name=>'Destination Airport'
,p_parent_plug_id=>wwv_flow_api.id(183560176803789471)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(319968266096897444)
,p_plug_name=>'Destination Airport'
,p_parent_plug_id=>wwv_flow_api.id(615475443992883769)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(319972440628897485)
,p_plug_name=>'Home Leave - Flight to Israel'
,p_region_name=>'homeLeaveFlightToIsraelContainer'
,p_parent_plug_id=>wwv_flow_api.id(615475443992883769)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>60
,p_plug_grid_column_css_classes=>'only-for-new'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-weight: 600; font-size: 16px; line-height: 35px; letter-spacing: 0%; color: #172B54">',
'    Home Leave - Flight to Israel ',
'    <span class="fa fa-info-circle-o tooltip-container" style="width: 17px; height: 17px; top: 9px; left: 5px;">',
'        <span class="tooltip-text">',
'            If the dates for the Shaliach''s home leave to Israel are<br/>',
'            already known, please enter them below.<br/>',
'            <strong>Please note: Enter only the departure dates to Israel here.</strong><br/>',
'            To book the return flight back to the Shlichut, a new flight<br/>',
'            request must be submitted at a later date.<br/>',
'            If the exact dates are not yet known, you can update this<br/>',
'            request later once the flight is booked. (We will book a<br/>',
'            tentative date for now and modify the ticket once final<br/>',
'            dates are provided).',
'        </span>',
'    </span>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_column_width=>'style="display: none;"'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(615475609291883770)
,p_plug_name=>'Conference'
,p_region_name=>'conferenceContainer'
,p_parent_plug_id=>wwv_flow_api.id(179793377584875275)
,p_region_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(615475722043883771)
,p_plug_name=>'Flight to the conference'
,p_parent_plug_id=>wwv_flow_api.id(615475609291883770)
,p_region_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div class="form-sub-header">Flight to the conference</div>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(615476281414883777)
,p_plug_name=>'Form'
,p_parent_plug_id=>wwv_flow_api.id(615475722043883771)
,p_region_template_options=>'#DEFAULT#:margin-top-md:margin-bottom-md:margin-left-lg:margin-right-lg'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(615477042143883784)
,p_plug_name=>'Flight from the conference'
,p_parent_plug_id=>wwv_flow_api.id(615475609291883770)
,p_region_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div class="form-sub-header">Flight from the conference</div>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(615477067270883785)
,p_plug_name=>'Form'
,p_parent_plug_id=>wwv_flow_api.id(615477042143883784)
,p_region_template_options=>'#DEFAULT#:margin-top-md:margin-bottom-md:margin-left-lg:margin-right-lg'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(183559158949789461)
,p_plug_name=>'Single Shaliach Image'
,p_region_name=>'singleShaliachImageRegion'
,p_parent_plug_id=>wwv_flow_api.id(179791465992875256)
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="create-shaliach-image-container">',
'    <div class="create-shaliach-image">B</div>',
'    <div class="create-shaliach-name">A</div>',
'</div>',
'<hr class="create-form-hr"/>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(185729567269859870)
,p_plug_name=>'RDS'
,p_region_name=>'rds'
,p_parent_plug_id=>wwv_flow_api.id(216730720813364850)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(679861427228044575)
,p_name=>'New Shlichim'
,p_region_name=>'newShlichimRegion'
,p_parent_plug_id=>wwv_flow_api.id(216730720813364850)
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when REQUESTS_COUNT > 0 then ''SEE_MORE'' else ''BLANK'' end CARD_TYPE_ID,',
'       ASSIGNMENT_ID,',
'       PERSON_ID,',
'       case when PHOTO > 0 then',
'            apex_page.get_url(p_page => ''12'', ',
'            p_request => ''APPLICATION_PROCESS=GetDocument'', ',
'            p_items => ''DOCUMENT_ID'', ',
'            p_values => PHOTO) else ''#APP_IMAGES#anonymous-user.jpeg'' end PHOTO,',
'       NAME,',
'       REQUESTS_COUNT',
'from (',
'select',
'    papf.first_name || '' '' || papf.last_name NAME,',
'    papf.PERSON_ID,',
'    paaf.ASSIGNMENT_ID,',
'    (select NVL(max(document_id), 0)',
'     from irc_documents',
'     where person_id = papf.person_id',
'     and end_date is null',
'     and type = ''PHOTO'') PHOTO,',
'    (select count(*)',
'    from PER_ASSIGNMENT_EXTRA_INFO PAEI',
'   where PAEI.ASSIGNMENT_ID = paaf.assignment_id      ',
'     and PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS'') as REQUESTS_COUNT',
'from per_all_people_f            papf, ',
'     per_all_assignments_f       paaf, ',
'     per_all_vacancies           pav, ',
'     irc_assignment_statuses     ias, ',
'     per_assignment_status_types past',
'where pav.organization_id =:P0_ORG_ID ',
'     and papf.person_id = paaf.person_id ',
'     and paaf.vacancy_id = pav.vacancy_id ',
'     and ias.assignment_id = paaf.assignment_id ',
'     and ias.assignment_status_type_id IN (47358,23357,23358,6,279)',
'     and trunc(sysdate) between papf.effective_start_date and papf.effective_end_date ',
'     and trunc(sysdate) between paaf.effective_start_date and  paaf.effective_end_date ',
'     and paaf.business_group_id = 4088 ',
'     and pav.attribute11 = ''N'' ',
'     and PAV.ATTRIBUTE_CATEGORY =''SSH''',
'     and past.assignment_status_type_id =paaf.assignment_status_type_id ',
'     and past.assignment_status_type_id =ias.assignment_status_type_id ',
'     and ias.status_change_date = (select max(status_change_date) ',
'                                   from irc_assignment_statuses ias1 ',
'                                   where ias.assignment_id = ias1.assignment_id)',
')',
'order by NAME'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(187502144824003912)
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img src="#APP_IMAGES#no-data-found-shlichim.svg" />',
'<span class="no-data-found-header">',
'<span style="font-weight: 800;">No Shlichim yet to display.</span><br/>',
'Shlichim will appear here once they are assigned<br/>to your community',
'</span>'))
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(679861530493044576)
,p_query_column_id=>1
,p_column_alias=>'CARD_TYPE_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Card Type Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(679861917970044580)
,p_query_column_id=>2
,p_column_alias=>'ASSIGNMENT_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Assignment Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(679862032216044581)
,p_query_column_id=>3
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>6
,p_column_heading=>'Person Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(679861550536044577)
,p_query_column_id=>4
,p_column_alias=>'PHOTO'
,p_column_display_sequence=>2
,p_column_heading=>'Photo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(679861712943044578)
,p_query_column_id=>5
,p_column_alias=>'NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(679861811175044579)
,p_query_column_id=>6
,p_column_alias=>'REQUESTS_COUNT'
,p_column_display_sequence=>4
,p_column_heading=>'Requests Count'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(679862650164044588)
,p_name=>'Existing Shlichim'
,p_region_name=>'existingShlichimRegion'
,p_parent_plug_id=>wwv_flow_api.id(216730720813364850)
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="display: none;"'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when REQUESTS_COUNT > 0 then ''SEE_MORE'' else ''BLANK'' end CARD_TYPE_ID,',
'       ASSIGNMENT_ID,',
'       PERSON_ID,',
'       case when PHOTO > 0 then',
'            apex_page.get_url(p_page => ''12'', ',
'            p_request => ''APPLICATION_PROCESS=GetDocument'', ',
'            p_items => ''DOCUMENT_ID'', ',
'            p_values => PHOTO) else ''#APP_IMAGES#anonymous-user.jpeg'' end PHOTO,',
'       NAME,',
'       REQUESTS_COUNT',
'from (',
'select',
'    papf.first_name || '' '' || papf.last_name NAME,',
'    papf.PERSON_ID,',
'    paaf.ASSIGNMENT_ID,',
'    (select NVL(max(document_id), 0)',
'     from irc_documents',
'     where person_id = papf.person_id',
'     and end_date is null',
'     and type = ''PHOTO'') PHOTO,',
'    (select count(*)',
'    from PER_ASSIGNMENT_EXTRA_INFO PAEI',
'   where PAEI.ASSIGNMENT_ID = paaf.assignment_id ',
'     and PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS'') as REQUESTS_COUNT',
'from per_all_people_f            papf, ',
'     per_all_assignments_f       paaf, ',
'     per_all_vacancies           pav, ',
'     irc_assignment_statuses     ias, ',
'     per_assignment_status_types past',
'where pav.organization_id =:P0_ORG_ID ',
'     and papf.person_id = paaf.person_id ',
'     and paaf.vacancy_id = pav.vacancy_id ',
'     and ias.assignment_id = paaf.assignment_id ',
'     and ias.assignment_status_type_id IN (1)',
'     and trunc(sysdate) between papf.effective_start_date and papf.effective_end_date ',
'     and trunc(sysdate) between paaf.effective_start_date and  paaf.effective_end_date ',
'     and paaf.business_group_id = 4088 ',
'     and pav.attribute11 = ''N'' ',
'     and PAV.ATTRIBUTE_CATEGORY =''SSH''',
'     and past.assignment_status_type_id =paaf.assignment_status_type_id ',
'     and past.assignment_status_type_id =ias.assignment_status_type_id ',
'     and ias.status_change_date = (select max(status_change_date) ',
'                                   from irc_assignment_statuses ias1 ',
'                                   where ias.assignment_id = ias1.assignment_id)',
')',
'order by NAME'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(222598705161400398)
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img src="#APP_IMAGES#no-data-found-shlichim.svg" />',
'<span class="no-data-found-header">',
'<span style="font-weight: 800;">No Shlichim yet to display.</span><br/>',
'Shlichim will appear here once they are assigned<br/>to your community',
'</span>'))
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(679862941506044590)
,p_query_column_id=>1
,p_column_alias=>'CARD_TYPE_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Card Type Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(179790212775875243)
,p_query_column_id=>2
,p_column_alias=>'ASSIGNMENT_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Assignment Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(179790246409875244)
,p_query_column_id=>3
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>6
,p_column_heading=>'Person Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(679862978132044591)
,p_query_column_id=>4
,p_column_alias=>'PHOTO'
,p_column_display_sequence=>3
,p_column_heading=>'Photo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(679862823663044589)
,p_query_column_id=>5
,p_column_alias=>'NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(679863057548044592)
,p_query_column_id=>6
,p_column_alias=>'REQUESTS_COUNT'
,p_column_display_sequence=>4
,p_column_heading=>'Requests Count'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(728129038146526173)
,p_plug_name=>'Sub Page Info'
,p_parent_plug_id=>wwv_flow_api.id(216730720813364850)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_source=>'Please select the Shlichim for whom <br class="mobile-br" />you would like <br class="desktop-br" />to submit the request.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(216730758849364851)
,p_plug_name=>'Pre Content'
,p_region_name=>'preContentRegion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(216730936652364852)
,p_plug_name=>'Sub Page Info'
,p_parent_plug_id=>wwv_flow_api.id(216730758849364851)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>'Welcome to the flight request<br />submission screen for Shlichut!'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(216730987932364853)
,p_plug_name=>'Info Cards'
,p_region_name=>'infoCardsRegion'
,p_parent_plug_id=>wwv_flow_api.id(216730758849364851)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg'
,p_region_attributes=>'style="align-items: center; justify-content: center; display: flex;"'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="info-cards" style="/*width: 1020px;*/width: 680px; display: flex; align-items: center; justify-content: center; flex-wrap: wrap; gap: 15px;">',
'    <div class="info-card" style="width: 325px; height: 243px; border-radius: 10px; background-color: #F4FBFF; display: flex; justify-content: start; align-items: center; flex-flow: column; gap: 15px; padding-top: 25px;">',
'        <img class="info-card-icon" src="#APP_IMAGES#info-request-types.svg" style="width: 24px; height: 24px;" />',
'        <div class="info-card-title" style="font-weight: 500; font-size: 16px; line-height: 22px; letter-spacing: 0%; text-align: center;">Request types</div>',
'        <div class="info-card-title" style="font-weight: 400; font-size: 16px; line-height: 22px; letter-spacing: 0%; text-align: center;">',
'            You can submit requests for both<br/>new and existing Shlichim.',
'        </div>',
'    </div>',
'    ',
'    <div class="info-card" style="width: 325px; height: 243px; border-radius: 10px; background-color: #F4FBFF; display: flex; justify-content: start; align-items: center; flex-flow: column; gap: 15px; padding-top: 25px;">',
'        <img class="info-card-icon" src="#APP_IMAGES#info-flight-updates.svg" style="width: 24px; height: 24px;" />',
'        <div class="info-card-title" style="font-weight: 500; font-size: 16px; line-height: 22px; letter-spacing: 0%; text-align: center;">Flight updates</div>',
'        <div class="info-card-title" style="font-weight: 400; font-size: 16px; line-height: 22px; letter-spacing: 0%; text-align: center;">',
'            If a Shaliach already has a<br/>booked flight and the return date<br/>needs to be changed,<br/>please edit the existing request.<br/>There is no need to submit a new one.',
'        </div>',
'    </div>',
'    ',
'    <div class="info-card" style="width: 325px; height: 243px; border-radius: 10px; background-color: #F4FBFF; display: flex; justify-content: start; align-items: center; flex-flow: column; gap: 15px; padding-top: 25px;">',
'        <img class="info-card-icon" src="#APP_IMAGES#info-timing.svg" style="width: 24px; height: 24px;" />',
'        <div class="info-card-title" style="font-weight: 500; font-size: 16px; line-height: 22px; letter-spacing: 0%; text-align: center;">Timing</div>',
'        <div class="info-card-title" style="font-weight: 400; font-size: 16px; line-height: 22px; letter-spacing: 0%; text-align: center;">',
'            Requests for home leave flights<br/>must be submitted within a period<br/>not exceeding 5.5 months from<br/>the start of the Shlichut.',
'        </div>',
'    </div>',
'    ',
'    <div class="info-card" style="width: 325px; height: 243px; border-radius: 10px; background-color: #F4FBFF; display: flex; justify-content: start; align-items: center; flex-flow: column; gap: 15px; padding-top: 25px;">',
'        <img class="info-card-icon" src="#APP_IMAGES#info-data-flexibility.svg" style="width: 24px; height: 24px;" />',
'        <div class="info-card-title" style="font-weight: 500; font-size: 16px; line-height: 22px; letter-spacing: 0%; text-align: center;">Date flexibility</div>',
'        <div class="info-card-title" style="font-weight: 400; font-size: 16px; line-height: 22px; letter-spacing: 0%; text-align: center;">',
'            Each request allows you to enter<br/>a date range.<br/>Please be as flexible as possible<br/>so we can find the best flight option<br/>for both you and the Shaliach.',
'        </div>',
'    </div>',
'    ',
' <!--  ',
' <div class="info-card" style="width: 325px; height: 243px; border-radius: 10px; background-color: #F4FBFF; display: flex; justify-content: start; align-items: center; flex-flow: column; gap: 15px; padding-top: 25px;">',
'        <img class="info-card-icon" src="#APP_IMAGES#info-tracking.svg" style="width: 24px; height: 24px;" />',
'        <div class="info-card-title" style="font-weight: 500; font-size: 16px; line-height: 22px; letter-spacing: 0%; text-align: center;">Tracking</div>',
'        <div class="info-card-title" style="font-weight: 400; font-size: 16px; line-height: 22px; letter-spacing: 0%; text-align: center;">',
unistr('            You can view the status of all your<br/>requests in one place on the<br/>\201CRequests Status\201D\00A0page.'),
'        </div>',
'    </div>',
'	-->',
'  ',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(216731171823364855)
,p_plug_name=>'Lets Start Container'
,p_region_name=>'letsStartContainer'
,p_parent_plug_id=>wwv_flow_api.id(216730758849364851)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1930515631554832524)
,p_plug_name=>'Title'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(1491988443724117)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>'SHSH Program - <br class="mobile-br" />Flight Request'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1930516056287833642)
,p_plug_name=>'Prograss Bar'
,p_region_name=>'progressBar'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall:t-Form--noPadding:margin-top-md:margin-bottom-lg'
,p_component_template_options=>'#DEFAULT#:t-Tabs--simple'
,p_plug_template=>wwv_flow_api.id(1572085619207170)
,p_plug_display_sequence=>20
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(186952845923697535)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(2125342479223692)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1949524343953505695)
,p_plug_name=>'Back To Menu Container'
,p_region_name=>'backToMenuContainer'
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>50
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(179790460325875246)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(179790416085875245)
,p_button_name=>'Create_Flight_Request'
,p_button_static_id=>'createFlightRequestBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(491309414896075286)
,p_button_image_alt=>'<img src="#APP_IMAGES#departure.svg" class="create-flight-request-icon" />Create Flight Request<span class="createCounter"></span>'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'t-blue-btn'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(216731089533364854)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(216731171823364855)
,p_button_name=>'Lets_Start'
,p_button_static_id=>'letsStartBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(491309386210075286)
,p_button_image_alt=>'Let''s Start'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'t-blue-btn'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(183558621871789455)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(183558793023789457)
,p_button_name=>'Submit_Flight_Requests'
,p_button_static_id=>'submitFlightRequestsNewBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(491309386210075286)
,p_button_image_alt=>'Submit'
,p_button_position=>'BELOW_BOX'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'t-blue-btn'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(216731658970364860)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1949524343953505695)
,p_button_name=>'BACK_TO_GENERAL_INFO'
,p_button_static_id=>'backToGeneralInfoLink'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back to General Info'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(186945803049661910)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1949524343953505695)
,p_button_name=>'BACK_TO_MENU'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back to Menu'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:RR,16,17,18:P24_LETS_START_CLICK:N'
,p_grid_column_attributes=>'style="display: flex; justify-content: center;"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(179793524567875276)
,p_name=>'P24_ARRIVAL_DATE_FROM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(179794798032875289)
,p_prompt=>'From'
,p_placeholder=>'Select Date'
,p_format_mask=>'Month DD, YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cattributes_element=>'style="padding-right: 0;"'
,p_tag_css_classes=>'disallow-user-input'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_02=>'&P24_ARRIVAL_DATE_MIN.'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'2026:3000'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183557479364789444)
,p_name=>'P24_ARRIVAL_DATE_TO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(179794798032875289)
,p_prompt=>'To'
,p_placeholder=>'Select Date'
,p_format_mask=>'Month DD, YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cattributes_element=>'style="padding-left: 0;"'
,p_tag_css_classes=>'disallow-user-input'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_02=>'&P24_ARRIVAL_DATE_MIN.'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'2026:3000'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183558165715789451)
,p_name=>'P24_DESTINATION_AIRPORT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(183560290987789472)
,p_prompt=>'Destination Airport:'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRPORT_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code ||''-''|| meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select Airport'
,p_grid_column_css_classes=>'select2-col'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
,p_attribute_10=>'100% !important'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183558438895789453)
,p_name=>'P24_I_CONFIRM_NEW'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(183558315973789452)
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC(,):I confirm that if a flight matching these conditions is found, it may be ticketed immediately without additional approval.Y'
,p_field_template=>wwv_flow_api.id(491308284349075283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_api.id(183558447861789454)
,p_name=>'P24_REMARKS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(183558315973789452)
,p_prompt=>'Remarks<span class="remarks-ssh-comment" style="margin-left:5px;line-height:20px;">(Please include any important information regarding the flight. <b>Also, please specify the planned return date to Israel for home leave.</b>)</span>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183558926944789458)
,p_name=>'P24_ARRIVAL_DATE_MIN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(179794798032875289)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183559989900789469)
,p_name=>'P24_MODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(185729567269859870)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183560480495789474)
,p_name=>'P24_DEPARTURE_DATE_MIN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(183560392192789473)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183560547826789475)
,p_name=>'P24_DEPARTURE_DATE_FROM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(183560392192789473)
,p_prompt=>'From'
,p_placeholder=>'Select Date'
,p_format_mask=>'Month DD, YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cattributes_element=>'style="padding-right: 0;"'
,p_tag_css_classes=>'disallow-user-input'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_02=>'&P24_DEPARTURE_DATE_MIN.'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'2026:3000'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183560716587789476)
,p_name=>'P24_DEPARTURE_DATE_TO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(183560392192789473)
,p_prompt=>'To'
,p_placeholder=>'Select Date'
,p_format_mask=>'Month DD, YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cattributes_element=>'style="padding-left: 0;"'
,p_tag_css_classes=>'disallow-user-input'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_02=>'&P24_DEPARTURE_DATE_MIN.'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'2026:3000'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183561410005789483)
,p_name=>'P24_DEPARTURE_AIRPORT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(216733978770364883)
,p_prompt=>'Departure Airport:'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRPORT_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code ||''-''|| meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select Airport'
,p_grid_column_css_classes=>'select2-col'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
,p_attribute_10=>'100% !important'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(193149193263566674)
,p_name=>'P24_TYPE_OF_TRAVEL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(183561247968789482)
,p_prompt=>'Type Of Travel:'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Round Trip;Round Trip,One Way;One Way,Conference;Conference'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(208543661143387870)
,p_name=>'P24_ACTION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(185729567269859870)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(216733378499364877)
,p_name=>'P24_PREFERRED_DEPARTURE_TIME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(183560776331789477)
,p_prompt=>'Preferred Departure Time:'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'PREFERRED_FLIGHT_TIME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_SC_ARRIVAL_TIME'' and m.LANGUAGE = ''US''',
'order by attribute1'))
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'5'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(216733454964364878)
,p_name=>'P24_PREFERRED_ARRIVAL_TIME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(183557564603789445)
,p_prompt=>'Preferred Arrival Time:'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'PREFERRED_FLIGHT_TIME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_SC_ARRIVAL_TIME'' and m.LANGUAGE = ''US''',
'order by attribute1'))
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'5'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(216733846986364882)
,p_name=>'P24_DESTINATION_AIRPORT_DISABLED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(319968266096897444)
,p_prompt=>'Destination Airport:'
,p_source=>'TLV'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AIRPORT_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code ||''-''|| meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(222007065329889751)
,p_name=>'P24_SEE_MORE_ASSIGNMENT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(185729567269859870)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(222007415077889754)
,p_name=>'P24_SEE_MORE_REQUEST_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(185729567269859870)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(222008516147889765)
,p_name=>'P24_LETS_START_CLICK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(216731171823364855)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(222009284571889773)
,p_name=>'P24_SELECTED_MAIN_AIRPORT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1930515631554832524)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(222010144706889782)
,p_name=>'P24_SEE_MORE_TICKET_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(185729567269859870)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(222011053413889791)
,p_name=>'P24_FORM_TYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(185729567269859870)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(319968419438897445)
,p_name=>'P24_DEPARTURE_AIRPORT_DISABLED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(216733978770364883)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Departure Airport:'
,p_source=>'TLV'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AIRPORT_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code ||''-''|| meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select Airport'
,p_cHeight=>1
,p_grid_column_css_classes=>'select2-col'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(348139201150543057)
,p_name=>'P24_DESTINATION_AIRPORT_RO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(319968266096897444)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Destination Airport:'
,p_source=>'TLV - Israel'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="font-weight: 400; font-size: 16px; letter-spacing: 0%;"'
,p_grid_column_css_classes=>'only-for-new'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(390250881278416864)
,p_name=>'P24_SELECTED_ASSIG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(185729567269859870)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(615475833793883772)
,p_name=>'P24_C_TO_DEPARTURE_AIRPORT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(615476281414883777)
,p_prompt=>'Departure Airport:'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRPORT_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code ||''-''|| meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select Airport'
,p_grid_column_css_classes=>'select2-col'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
,p_attribute_10=>'100% !important'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(615475892365883773)
,p_name=>'P24_C_TO_DESTINATION_AIRPORT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(615476281414883777)
,p_prompt=>'Destination Airport:'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRPORT_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code ||''-''|| meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select Airport'
,p_grid_column_css_classes=>'select2-col'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
,p_attribute_10=>'100% !important'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(615476047843883775)
,p_name=>'P24_C_TO_ARRIVAL_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(615476281414883777)
,p_prompt=>'Estimated Arrival Date:'
,p_placeholder=>'Select Date'
,p_format_mask=>'Month DD, YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cattributes_element=>'style="padding-right: 0;"'
,p_tag_css_classes=>'disallow-user-input'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_02=>'&P24_ARRIVAL_DATE_MIN.'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'2026:3000'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(615476354103883778)
,p_name=>'P24_C_TO_ARRIVAL_TIME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(615476281414883777)
,p_prompt=>'Preferred Arrival Time:'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'PREFERRED_FLIGHT_TIME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_SC_ARRIVAL_TIME'' and m.LANGUAGE = ''US''',
'order by attribute1'))
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'5'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(615477174571883786)
,p_name=>'P24_C_FROM_DEPARTURE_AIRPORT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(615477067270883785)
,p_prompt=>'Departure Airport:'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRPORT_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code ||''-''|| meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select Airport'
,p_grid_column_css_classes=>'select2-col'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
,p_attribute_10=>'100% !important'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(615477284825883787)
,p_name=>'P24_C_FROM_DESTINATION_AIRPORT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(615477067270883785)
,p_prompt=>'Destination Airport:'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRPORT_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code ||''-''|| meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select Airport'
,p_grid_column_css_classes=>'select2-col'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
,p_attribute_10=>'100% !important'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(615477427379883788)
,p_name=>'P24_C_FROM_DEPARTURE_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(615477067270883785)
,p_prompt=>'Estimated Departure Date:'
,p_placeholder=>'Select Date'
,p_format_mask=>'Month DD, YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cattributes_element=>'style="padding-right: 0;"'
,p_tag_css_classes=>'disallow-user-input'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_02=>'&P24_ARRIVAL_DATE_MIN.'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'2026:3000'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(615477494932883789)
,p_name=>'P24_C_FROM_DEPARTURE_TIME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(615477067270883785)
,p_prompt=>'Preferred Departure Time:'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'PREFERRED_FLIGHT_TIME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_SC_ARRIVAL_TIME'' and m.LANGUAGE = ''US''',
'order by attribute1'))
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'5'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(183558994414789459)
,p_computation_sequence=>10
,p_computation_item=>'P24_ARRIVAL_DATE_MIN'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation=>'to_char(sysdate, ''Month DD, YYYY'')'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(222009417928889774)
,p_computation_sequence=>30
,p_computation_item=>'P24_SELECTED_MAIN_AIRPORT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select hoi2.ORG_INFORMATION14 main_airport',
'from   hr_all_organization_units   haou,',
'       hr_organization_information hoi1,',
'       hr_organization_information hoi2',
'where  haou.organization_id = :P0_ORG_ID',
'   and haou.organization_id = hoi1.organization_id',
'   and hoi1.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOMER_ADDR''',
'   and haou.organization_id = hoi2.organization_id',
'   and hoi2.org_information_context = ''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'   AND HOI2.ORG_INFORMATION1 IN (''SSH'',''COMM'',''AMI'')',
'   and haou.business_group_id = 4088'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(222009691035889777)
,p_computation_sequence=>40
,p_computation_item=>'P24_DEPARTURE_DATE_MIN'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation=>'to_char(sysdate, ''Month DD, YYYY'')'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(183559636265789465)
,p_validation_name=>'Arrival Date From Is Not Null'
,p_validation_sequence=>10
,p_validation=>':P24_ARRIVAL_DATE_FROM is not null'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and (:P24_FORM_TYPE = ''New Shaliach'' OR :P24_TYPE_OF_TRAVEL = ''Round Trip'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(179793524567875276)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(183559689407789466)
,p_validation_name=>'Arrival Date To Is Not Null'
,p_validation_sequence=>30
,p_validation=>':P24_ARRIVAL_DATE_TO is not null'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and (:P24_FORM_TYPE = ''New Shaliach'' OR :P24_TYPE_OF_TRAVEL = ''Round Trip'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(183557479364789444)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(183559888619789468)
,p_validation_name=>'Arrival Date From Is Bigger Than To'
,p_validation_sequence=>50
,p_validation=>'to_date(:P24_ARRIVAL_DATE_FROM, ''Month DD, YYYY'') <= to_date(:P24_ARRIVAL_DATE_TO, ''Month DD, YYYY'')'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Please select a date prior to &P24_ARRIVAL_DATE_TO.'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and (:P24_FORM_TYPE = ''New Shaliach'' OR :P24_TYPE_OF_TRAVEL = ''Round Trip'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(179793524567875276)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(183559798721789467)
,p_validation_name=>'Destination Airport Is Not Null'
,p_validation_sequence=>70
,p_validation=>':P24_DESTINATION_AIRPORT is not null'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and (:P24_FORM_TYPE = ''New Shaliach'' OR :P24_TYPE_OF_TRAVEL = ''Round Trip'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(183558165715789451)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(222006618018889746)
,p_validation_name=>'Departure Date From Is Not Null'
,p_validation_sequence=>80
,p_validation=>':P24_DEPARTURE_DATE_FROM is not null AND :P24_FORM_TYPE != ''New Shaliach'''
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P24_FORM_TYPE = ''Existing Shaliach'' and :P24_TYPE_OF_TRAVEL != ''Conference'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(183560547826789475)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(222006691592889747)
,p_validation_name=>'Departure Date To Is Not Null'
,p_validation_sequence=>90
,p_validation=>':P24_DEPARTURE_DATE_TO is not null AND :P24_FORM_TYPE != ''New Shaliach'''
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P24_FORM_TYPE = ''Existing Shaliach'' and :P24_TYPE_OF_TRAVEL != ''Conference'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(183560716587789476)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(222006770299889748)
,p_validation_name=>'Departure Date From Is Bigger Than To'
,p_validation_sequence=>100
,p_validation=>'to_date(:P24_DEPARTURE_DATE_FROM, ''Month DD, YYYY'') <= to_date(:P24_DEPARTURE_DATE_TO, ''Month DD, YYYY'') AND :P24_FORM_TYPE != ''New Shaliach'''
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Please select a date prior to &P24_DEPARTURE_DATE_TO.'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P24_FORM_TYPE = ''Existing Shaliach'' and :P24_TYPE_OF_TRAVEL != ''Conference'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(183560547826789475)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(266838756350616649)
,p_validation_name=>'Departure Date From Is Bigger Than Departure Date To'
,p_validation_sequence=>110
,p_validation=>'to_date(:P24_DEPARTURE_DATE_FROM, ''Month DD, YYYY'') >= to_date(:P24_ARRIVAL_DATE_TO, ''Month DD, YYYY'') AND :P24_FORM_TYPE != ''New Shaliach'''
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Please select a date later than &P24_ARRIVAL_DATE_TO.'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P24_FORM_TYPE = ''Existing Shaliach'' and :P24_TYPE_OF_TRAVEL != ''Conference'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(183560547826789475)
,p_error_display_location=>'INLINE_WITH_FIELD'
,p_validation_comment=>'add by Vita '
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(222006851443889749)
,p_validation_name=>'Departure Airport Is Not Null'
,p_validation_sequence=>130
,p_validation=>':P24_DEPARTURE_AIRPORT is not null AND :P24_FORM_TYPE != ''New Shaliach'''
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P24_FORM_TYPE = ''Existing Shaliach'' and :P24_TYPE_OF_TRAVEL != ''Conference'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(183561410005789483)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(621919058443649745)
,p_validation_name=>'Conference - To Departure Airport Is Not Null'
,p_validation_sequence=>140
,p_validation=>'P24_C_TO_DEPARTURE_AIRPORT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Required Field'
,p_always_execute=>'Y'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P24_FORM_TYPE = ''Existing Shaliach'' and :P24_TYPE_OF_TRAVEL = ''Conference'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(615475833793883772)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(621919350328649748)
,p_validation_name=>'Conference - From Departure Airport Is Not Null'
,p_validation_sequence=>150
,p_validation=>'P24_C_FROM_DEPARTURE_AIRPORT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Required Field'
,p_always_execute=>'Y'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P24_FORM_TYPE = ''Existing Shaliach'' and :P24_TYPE_OF_TRAVEL = ''Conference'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(615477174571883786)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(621919499950649749)
,p_validation_name=>'Conference - From Destination Airport Is Not Null'
,p_validation_sequence=>160
,p_validation=>'P24_C_FROM_DESTINATION_AIRPORT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Required Field'
,p_always_execute=>'Y'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P24_FORM_TYPE = ''Existing Shaliach'' and :P24_TYPE_OF_TRAVEL = ''Conference'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(615477284825883787)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(621919550279649750)
,p_validation_name=>'Conference - From Departure Date Is Not Null'
,p_validation_sequence=>170
,p_validation=>'P24_C_FROM_DEPARTURE_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Required Field'
,p_always_execute=>'Y'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P24_FORM_TYPE = ''Existing Shaliach'' and :P24_TYPE_OF_TRAVEL = ''Conference'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(615477427379883788)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(621919162889649746)
,p_validation_name=>'Conference - To Destination Airport Is Not Null'
,p_validation_sequence=>180
,p_validation=>'P24_C_TO_DESTINATION_AIRPORT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Required Field'
,p_always_execute=>'Y'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P24_FORM_TYPE = ''Existing Shaliach'' and :P24_TYPE_OF_TRAVEL = ''Conference'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(615475892365883773)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(621919314681649747)
,p_validation_name=>'Conference - To Arrival Date Is Not Null'
,p_validation_sequence=>190
,p_validation=>'P24_C_TO_ARRIVAL_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Required Field'
,p_always_execute=>'Y'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P24_FORM_TYPE = ''Existing Shaliach'' and :P24_TYPE_OF_TRAVEL = ''Conference'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(615476047843883775)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(621919698728649751)
,p_validation_name=>'Conference - To Arrival Date From Is Bigger Than From Departure Date'
,p_validation_sequence=>200
,p_validation=>'to_date(:P24_C_TO_ARRIVAL_DATE, ''Month DD, YYYY'') <= to_date(:P24_C_FROM_DEPARTURE_DATE, ''Month DD, YYYY'') AND :P24_FORM_TYPE != ''New Shaliach'''
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Please select a date later than &P24_C_TO_ARRIVAL_DATE.'
,p_always_execute=>'Y'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P24_FORM_TYPE = ''Existing Shaliach'' and :P24_TYPE_OF_TRAVEL = ''Conference'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(615477427379883788)
,p_error_display_location=>'INLINE_WITH_FIELD'
,p_validation_comment=>'add by Vita '
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(679862117755044582)
,p_name=>'New Shlichim Select\Unselect Click'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#newShlichimRegion .check-icon'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(679862221314044583)
,p_event_id=>wwv_flow_api.id(679862117755044582)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setSelectedShalich(this.triggeringElement, ''SHSH_NewShlichim'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(179790923993875250)
,p_name=>'Existing Shlichim Select\Unselect Click'
,p_event_sequence=>60
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#existingShlichimRegion .check-icon'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(179790976050875251)
,p_event_id=>wwv_flow_api.id(179790923993875250)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setSelectedShalich(this.triggeringElement, ''SHSH_ExistingShlichim'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(679862278650044584)
,p_name=>'See More Click'
,p_event_sequence=>70
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.see-more'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(679862434740044585)
,p_event_id=>wwv_flow_api.id(679862278650044584)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var assignmentId = $(this.triggeringElement).data(''assignment-id'');',
'var personId = $(this.triggeringElement).data(''person-id'');',
'var name = $(this.triggeringElement).data(''name'');',
'var photoUrl = $(this.triggeringElement).data(''photo-url'');',
'var mode = $(this.triggeringElement).data(''mode'');',
'',
'$s(''P24_SEE_MORE_ASSIGNMENT_ID'', assignmentId);',
'',
'var html = ''<div class="shsh-photo" title="'' + name + ''" style="width: 69px; height: 69px; border: 1px solid #E84C26; border-radius: 35px; background-color: #D9D9D9; background-image: url('' + photoUrl + ''); background-size: cover; background-repeat: '
||'no-repeat; background-position: center;"></div>'';',
'$(''.see-more-shaliach-image'').html(html);',
'$(''.see-more-shaliach-name'').text(name);',
'',
'if (isMobile()) {',
'    $(''#myRequestsRegion'').hide();',
'    $(''#myRequestsRegionMobile'').show();',
'    $(''#myFlightsRegion'').hide();',
'    $(''#myFlightsRegionMobile'').show();',
'}',
'else {',
'    $(''#myRequestsRegion'').show();',
'    $(''#myRequestsRegionMobile'').hide();',
'    $(''#myFlightsRegion'').show();',
'    $(''#myFlightsRegionMobile'').hide();    ',
'}'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(222007230713889752)
,p_event_id=>wwv_flow_api.id(679862278650044584)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(193150266997566685)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(222010841962889788)
,p_event_id=>wwv_flow_api.id(679862278650044584)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(195414022740215343)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(367174538102495644)
,p_event_id=>wwv_flow_api.id(679862278650044584)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1173049803585089843)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(367174612823495645)
,p_event_id=>wwv_flow_api.id(679862278650044584)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1173054796125092480)
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
 p_id=>wwv_flow_api.id(193150107187566683)
,p_event_id=>wwv_flow_api.id(679862278650044584)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(193149690769566679)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(266838618200616647)
,p_event_id=>wwv_flow_api.id(679862278650044584)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P24_MODE'') == ''NEW'') {',
'    $(''#CreateFlightRequestContainerID'').hide();',
'} else {',
'    $(''#CreateFlightRequestContainerID'').show();',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(205784939209189675)
,p_name=>'See More Request Edit Click'
,p_event_sequence=>71
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#myRequestsRegion .edit-request-btn[data-status="Pending"], #myRequestsRegionMobile .edit-request-btn[data-status="Pending"]'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(205785309083189679)
,p_event_id=>wwv_flow_api.id(205784939209189675)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(179790460325875246)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(205785379682189680)
,p_event_id=>wwv_flow_api.id(205784939209189675)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_TYPE_OF_TRAVEL,P24_DESTINATION_AIRPORT,P24_ARRIVAL_DATE_FROM,P24_ARRIVAL_DATE_TO,P24_PREFERRED_ARRIVAL_TIME,P24_DEPARTURE_AIRPORT,P24_DEPARTURE_DATE_FROM,P24_DEPARTURE_DATE_TO,P24_PREFERRED_DEPARTURE_TIME,P24_REMARKS,P24_I_CONFIRM_NEW'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(205785539836189681)
,p_event_id=>wwv_flow_api.id(205784939209189675)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#newShlichimRegion'').hide();',
'$(''#existingShlichimRegion'').hide();',
'var formType = $(this.triggeringElement).data(''form-type'');',
'$s(''P24_FORM_TYPE'', formType);',
'var selectedRDS = $(''.apex-rds-selected a'').attr(''href'');',
'var formTitle = '''';',
'',
'if (formType == ''New Shaliach'') {',
'    formTitle = ''Edit Request'';',
'    newShlichim = [];',
'    newShlichim.push({assignmentId: $v(''P24_SEE_MORE_ASSIGNMENT_ID'')});',
'    $(''.only-for-new'').show();',
'    $(''#newShlichimSubmitMessage'').show();    ',
'    $(''#arrivalDateFieldsContainer'').show();',
'    $(''#existingShlichimFieldsContainer'').show();',
'    $(''#P24_DESTINATION_AIRPORT_CONTAINER'').show();',
'    $(''#P24_DESTINATION_AIRPORT_DISABLED_CONTAINER'').hide();',
'    $(''#P24_DEPARTURE_AIRPORT_CONTAINER'').removeClass(''is-required'').show();',
'    $(''#P24_DEPARTURE_AIRPORT_DISABLED_CONTAINER'').hide();',
'    //$(''#P24_DEPARTURE_AIRPORT_DISABLED_CONTAINER'').removeClass(''is-required'');',
'    $(''#departureDateRequired span'').hide();',
'    $(''#typeOfTravelContainer'').hide();',
'}',
'else if (formType == ''Existing Shaliach'') {',
'    formTitle = ''Edit Request for Existing Shlichim'';',
'    existingShlichim = [];',
'    existingShlichim.push({assignmentId: $v(''P24_SEE_MORE_ASSIGNMENT_ID'')});',
'    $(''.only-for-new'').hide();',
'    $(''#newShlichimSubmitMessage'').hide();',
'    $(''#arrivalDateFieldsContainer'').hide();',
'    $(''#existingShlichimFieldsContainer'').show();',
'    $(''#P24_DESTINATION_AIRPORT_CONTAINER'').show();',
'    $(''#P24_DESTINATION_AIRPORT_DISABLED_CONTAINER'').hide();',
'    $(''#P24_DEPARTURE_AIRPORT_CONTAINER'').show();',
'    $(''#P24_DEPARTURE_AIRPORT_DISABLED_CONTAINER'').hide();',
'    $(''#P24_DEPARTURE_AIRPORT_DISABLED_CONTAINER'').addClass(''is-required'');',
'    $(''#departureDateRequired'').show();',
'    $(''#typeOfTravelContainer'').show();',
'}',
'',
'$(''.create-form-title'').text(formTitle);',
'',
'var shaliachName = $(''.see-more-shaliach-name'').text();',
'var styleAttr = $(''.see-more-shaliach-image .shsh-photo'').attr(''style'');',
'var startIdx = styleAttr.indexOf(''url('') + 4;',
'styleAttr = styleAttr.substr(startIdx);',
'var endIdx = styleAttr.indexOf('');'');',
'var photoUrl = styleAttr.substr(0, endIdx);',
'var html = ''<div class="shsh-photo" title="'' + shaliachName + ''" style="width: 69px; height: 69px; border: 1px solid #E84C26; border-radius: 35px; background-color: #D9D9D9; background-image: url('' + photoUrl + ''); background-size: cover; background-'
||'repeat: no-repeat; background-position: center;"></div>'';',
'$(''.create-shaliach-image'').html(html);',
'$(''.create-shaliach-name'').text(shaliachName);',
'',
'$(''#singleShaliachImageRegion'').show();',
'$(''#multipleShlichimImagesRegion'').hide();',
'',
'var requestId = $(this.triggeringElement).data(''request-id'');',
'$s(''P24_SEE_MORE_REQUEST_ID'', requestId);',
'$s(''P24_ACTION'', ''U'');'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(222007298890889753)
,p_event_id=>wwv_flow_api.id(205784939209189675)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_aei_information5 varchar2(1000);',
'    v_aei_information6 varchar2(1000);',
'    v_aei_information7 varchar2(1000);',
'    v_aei_information8 varchar2(1000);',
'    v_aei_information9 varchar2(1000);',
'    v_aei_information10 varchar2(1000);',
'    v_aei_information11 varchar2(1000);',
'    v_aei_information12 varchar2(1000);',
'    v_aei_information13 varchar2(1000);',
'    v_aei_information14 varchar2(1000);',
'begin',
'    APEX_UTIL.SET_SESSION_STATE(''P24_ACTION'', ''U'');',
'    ',
'    select paei.aei_information4,',
'           paei.aei_information5,',
'           paei.aei_information6,',
'           paei.aei_information7,',
'           paei.aei_information8,',
'           paei.aei_information9,',
'           paei.aei_information10,',
'           paei.aei_information11,',
'           paei.aei_information12,',
'           paei.aei_information13,',
'           paei.aei_information14,',
'           (select t.short_text ',
'            from fnd_documents_short_text t',
'            where t.media_id =  paei.aei_information15)',
'    into   :P24_TYPE_OF_TRAVEL,',
'           v_aei_information5,',
'           v_aei_information6,',
'           v_aei_information7,',
'           v_aei_information8,',
'           v_aei_information9,',
'           v_aei_information10,',
'           v_aei_information11,',
'           v_aei_information12,',
'           v_aei_information13,',
'           v_aei_information14,',
'           :P24_REMARKS',
'    from   PER_ASSIGNMENT_EXTRA_INFO PAEI',
'    where  PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS'' and',
'           PAEI.aei_information1 = :P24_SEE_MORE_REQUEST_ID;',
'    ',
'    if :P24_TYPE_OF_TRAVEL = ''Conference'' then',
'        :P24_C_TO_DEPARTURE_AIRPORT := v_aei_information14;',
'        :P24_C_TO_DESTINATION_AIRPORT := v_aei_information10;',
'        :P24_C_TO_ARRIVAL_DATE := v_aei_information11;',
'        :P24_C_TO_ARRIVAL_TIME := v_aei_information13;',
'        :P24_C_FROM_DEPARTURE_AIRPORT := v_aei_information5;',
'        :P24_C_FROM_DESTINATION_AIRPORT := v_aei_information9;',
'        :P24_C_FROM_DEPARTURE_DATE := v_aei_information6;',
'        :P24_C_FROM_DEPARTURE_TIME := v_aei_information8;',
'        ',
'        /*        ',
'        ,p_aei_information12    => :P24_C_TO_ARRIVAL_DATE',
'        ,p_aei_information7    => :P24_C_FROM_DEPARTURE_DATE',
'        */',
'    else',
'        :P24_DESTINATION_AIRPORT := v_aei_information10;',
'        :P24_ARRIVAL_DATE_FROM := v_aei_information11; ',
'        :P24_ARRIVAL_DATE_TO := v_aei_information12;',
'        :P24_PREFERRED_ARRIVAL_TIME := v_aei_information13;',
'        :P24_DEPARTURE_AIRPORT := v_aei_information5;',
'        :P24_DEPARTURE_DATE_FROM := v_aei_information6;',
'        :P24_DEPARTURE_DATE_TO := v_aei_information7;',
'        :P24_PREFERRED_DEPARTURE_TIME := v_aei_information8;',
'    end if;',
'end;'))
,p_attribute_02=>'P24_SEE_MORE_REQUEST_ID,P24_ACTION'
,p_attribute_03=>'P24_ACTION,P24_TYPE_OF_TRAVEL,P24_REMARKS,P24_SEE_MORE_REQUEST_ID,P24_DESTINATION_AIRPORT,P24_ARRIVAL_DATE_FROM,P24_ARRIVAL_DATE_TO,P24_PREFERRED_ARRIVAL_TIME,P24_DEPARTURE_AIRPORT,P24_DEPARTURE_DATE_FROM,P24_DEPARTURE_DATE_TO,P24_PREFERRED_DEPARTURE'
||'_TIME,P24_C_TO_DEPARTURE_AIRPORT,P24_C_TO_DESTINATION_AIRPORT,P24_C_TO_ARRIVAL_DATE,P24_C_TO_ARRIVAL_TIME,P24_C_FROM_DEPARTURE_AIRPORT,P24_C_FROM_DESTINATION_AIRPORT,P24_C_FROM_DEPARTURE_DATE,P24_C_FROM_DEPARTURE_TIME'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(205785555064189682)
,p_event_id=>wwv_flow_api.id(205784939209189675)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(179791465992875256)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(205785828541189684)
,p_event_id=>wwv_flow_api.id(205784939209189675)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(193149690769566679)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(266735388924899956)
,p_event_id=>wwv_flow_api.id(205784939209189675)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.body.scrollTop = document.documentElement.scrollTop = 0;'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(205785074272189677)
,p_name=>'See More Flight Edit Click'
,p_event_sequence=>72
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#myFlightsRegion .edit-flight-btn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(205785891114189685)
,p_event_id=>wwv_flow_api.id(205785074272189677)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(179790460325875246)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(205786030692189686)
,p_event_id=>wwv_flow_api.id(205785074272189677)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_TYPE_OF_TRAVEL,P24_DESTINATION_AIRPORT,P24_ARRIVAL_DATE_FROM,P24_ARRIVAL_DATE_TO,P24_PREFERRED_ARRIVAL_TIME,P24_DEPARTURE_AIRPORT,P24_DEPARTURE_DATE_FROM,P24_DEPARTURE_DATE_TO,P24_PREFERRED_DEPARTURE_TIME,P24_REMARKS,P24_I_CONFIRM_NEW'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(205786106208189687)
,p_event_id=>wwv_flow_api.id(205785074272189677)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#newShlichimRegion'').hide();',
'$(''#existingShlichimRegion'').hide();',
'var formType = $(this.triggeringElement).data(''form-type'');',
'$s(''P24_FORM_TYPE'', formType);',
'var selectedRDS = $(''.apex-rds-selected a'').attr(''href'');',
'var formTitle = '''';',
'if (formType == ''New Shaliach'') {',
'    formTitle = ''Edit Request'';',
'    newShlichim = [];',
'    newShlichim.push({assignmentId: $v(''P24_SEE_MORE_ASSIGNMENT_ID'')});',
'    $(''.only-for-new'').show();',
'    $(''#newShlichimSubmitMessage'').show();    ',
'    $(''#arrivalDateFieldsContainer'').show();',
'    $(''#existingShlichimFieldsContainer'').show();',
'    $(''#P24_DESTINATION_AIRPORT_CONTAINER'').show();',
'    $(''#P24_DESTINATION_AIRPORT_DISABLED_CONTAINER'').hide();',
'    $(''#P24_DEPARTURE_AIRPORT_CONTAINER'').removeClass(''is-required'').show();',
'    $(''#P24_DEPARTURE_AIRPORT_DISABLED_CONTAINER'').hide();',
'    //$(''#P24_DEPARTURE_AIRPORT_DISABLED_CONTAINER'').removeClass(''is-required'');',
'    $(''#departureDateRequired span'').hide();',
'    $(''#typeOfTravelContainer'').hide();',
'}',
'else if (formType == ''Existing Shaliach'') {',
'    formTitle = ''Edit Request for Existing Shlichim'';',
'    existingShlichim = [];',
'    existingShlichim.push({assignmentId: $v(''P24_SEE_MORE_ASSIGNMENT_ID'')});',
'    $(''.only-for-new'').hide();',
'    $(''#newShlichimSubmitMessage'').hide();',
'    $(''#arrivalDateFieldsContainer'').hide();',
'    $(''#existingShlichimFieldsContainer'').show();',
'    $(''#P24_DESTINATION_AIRPORT_CONTAINER'').show();',
'    $(''#P24_DESTINATION_AIRPORT_DISABLED_CONTAINER'').hide();',
'    $(''#P24_DEPARTURE_AIRPORT_CONTAINER'').show();',
'    $(''#P24_DEPARTURE_AIRPORT_DISABLED_CONTAINER'').hide();',
'    $(''#P24_DEPARTURE_AIRPORT_DISABLED_CONTAINER'').addClass(''is-required'');',
'    $(''#departureDateRequired'').show();',
'    $(''#typeOfTravelContainer'').show();',
'}',
'',
'var shaliachName = $(''.see-more-shaliach-name'').text();',
'var styleAttr = $(''.see-more-shaliach-image .shsh-photo'').attr(''style'');',
'var startIdx = styleAttr.indexOf(''url('') + 4;',
'styleAttr = styleAttr.substr(startIdx);',
'var endIdx = styleAttr.indexOf('');'');',
'var photoUrl = styleAttr.substr(0, endIdx);',
'var html = ''<div class="shsh-photo" title="'' + shaliachName + ''" style="width: 69px; height: 69px; border: 1px solid #E84C26; border-radius: 35px; background-color: #D9D9D9; background-image: url('' + photoUrl + ''); background-size: cover; background-'
||'repeat: no-repeat; background-position: center;"></div>'';',
'$(''.create-form-title'').text(formTitle);',
'$(''.create-shaliach-image'').html(html);',
'$(''.create-shaliach-name'').text(shaliachName);',
'',
'$(''#singleShaliachImageRegion'').show();',
'$(''#multipleShlichimImagesRegion'').hide();',
'',
'var requestId = $(this.triggeringElement).data(''request-id'');',
'$s(''P24_SEE_MORE_REQUEST_ID'', requestId);',
'$s(''P24_ACTION'', ''U'');'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(222007691663889757)
,p_event_id=>wwv_flow_api.id(205785074272189677)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select case when paei.aei_information3 = ''New Shaliach'' then paei.aei_information5',
'                when paei.aei_information3 = ''Existing Shaliach'' then paei.aei_information10 end,',
'           paei.aei_information11,',
'           paei.aei_information12,',
'           paei.aei_information13,',
'           ',
'           (select t.short_text ',
'              from fnd_documents_short_text t',
'              where t.media_id =  paei.aei_information15) remarks,  -- paei.aei_information15, ',
'           ',
'           ',
'           paei.aei_information4,',
'           paei.aei_information5,',
'           paei.aei_information6,',
'           paei.aei_information7,',
'           paei.aei_information8',
'           ',
'    into   :P24_DESTINATION_AIRPORT,',
'           :P24_ARRIVAL_DATE_FROM,',
'           :P24_ARRIVAL_DATE_TO,',
'           :P24_PREFERRED_ARRIVAL_TIME,',
'           :P24_REMARKS,',
'           :P24_TYPE_OF_TRAVEL,',
'           :P24_DEPARTURE_AIRPORT,',
'           :P24_DEPARTURE_DATE_FROM,',
'           :P24_DEPARTURE_DATE_TO,',
'           :P24_PREFERRED_DEPARTURE_TIME',
'    from   PER_ASSIGNMENT_EXTRA_INFO PAEI',
'    where  PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS'' and',
'           PAEI.aei_information1 = :P24_SEE_MORE_REQUEST_ID;',
'',
'',
'    APEX_UTIL.SET_SESSION_STATE(''P24_ACTION'', ''U'');',
'    --exception when no_data_found then null;',
'end;'))
,p_attribute_02=>'P24_SEE_MORE_REQUEST_ID,P24_ACTION'
,p_attribute_03=>'P24_SEE_MORE_REQUEST_ID,P24_DESTINATION_AIRPORT,P24_ARRIVAL_DATE_FROM,P24_ARRIVAL_DATE_TO,P24_PREFERRED_ARRIVAL_TIME,P24_REMARKS,P24_TYPE_OF_TRAVEL,P24_DEPARTURE_AIRPORT,P24_DEPARTURE_DATE_FROM,P24_DEPARTURE_DATE_TO,P24_PREFERRED_DEPARTURE_TIME,P24_A'
||'CTION'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(205786258378189689)
,p_event_id=>wwv_flow_api.id(205785074272189677)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(179791465992875256)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(205786165754189688)
,p_event_id=>wwv_flow_api.id(205785074272189677)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(193149690769566679)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(319970209952897463)
,p_event_id=>wwv_flow_api.id(205785074272189677)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.body.scrollTop = document.documentElement.scrollTop = 0;'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(205786575905189692)
,p_name=>'See More Create Flight Request Click'
,p_event_sequence=>73
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.create-flight-request-btn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(216729992189364843)
,p_event_id=>wwv_flow_api.id(205786575905189692)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(179790460325875246)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(216730413447364847)
,p_event_id=>wwv_flow_api.id(205786575905189692)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_TYPE_OF_TRAVEL,P24_DESTINATION_AIRPORT,P24_ARRIVAL_DATE_FROM,P24_ARRIVAL_DATE_TO,P24_PREFERRED_ARRIVAL_TIME,P24_DEPARTURE_AIRPORT,P24_DEPARTURE_DATE_FROM,P24_DEPARTURE_DATE_TO,P24_PREFERRED_DEPARTURE_TIME,P24_REMARKS,P24_I_CONFIRM_NEW,P24_C_TO_DE'
||'PARTURE_AIRPORT,P24_C_TO_DESTINATION_AIRPORT,P24_C_TO_ARRIVAL_DATE,P24_C_TO_ARRIVAL_TIME,P24_C_FROM_DEPARTURE_AIRPORT,P24_C_FROM_DESTINATION_AIRPORT,P24_C_FROM_DEPARTURE_DATE,P24_SEE_MORE_REQUEST_ID'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(216730164612364845)
,p_event_id=>wwv_flow_api.id(205786575905189692)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#newShlichimRegion'').hide();',
'$(''#existingShlichimRegion'').hide();',
'var selectedRDS = $(''.apex-rds-selected a'').attr(''href'');',
'var formTitle = '''';',
'var selectedShlichim = [];',
'if (selectedRDS == ''#newShlichimRegion'') {',
'    $s(''P24_FORM_TYPE'', ''New Shaliach'');',
'    formTitle = ''Create Request'';',
'    newShlichim = [];',
'    newShlichim.push({assignmentId: $v(''P24_SEE_MORE_ASSIGNMENT_ID'')}); ',
'    $(''.only-for-new'').show();',
'    $(''#newShlichimSubmitMessage'').show();    ',
'    $(''#arrivalDateFieldsContainer'').show();',
'    $(''#existingShlichimFieldsContainer'').show();',
'    $(''#P24_DESTINATION_AIRPORT_CONTAINER'').show();',
'    $(''#P24_DESTINATION_AIRPORT_DISABLED_CONTAINER'').hide();',
'    $(''#P24_DEPARTURE_AIRPORT_CONTAINER'').removeClass(''is-required'').show();',
'    $(''#P24_DEPARTURE_AIRPORT_DISABLED_CONTAINER'').hide();',
'    //$(''#P24_DEPARTURE_AIRPORT_DISABLED_CONTAINER'').removeClass(''is-required'');',
'    $(''#departureDateRequired span'').hide();',
'    $(''#typeOfTravelContainer'').hide();',
'}',
'else if (selectedRDS == ''#existingShlichimRegion'') {',
'    $s(''P24_FORM_TYPE'', ''Existing Shaliach'');',
'    formTitle = ''Create Request for Existing Shlichim'';',
'    existingShlichim = [];',
'    existingShlichim.push({assignmentId: $v(''P24_SEE_MORE_ASSIGNMENT_ID'')});',
'    $(''.only-for-new'').hide();',
'    $(''#newShlichimSubmitMessage'').hide();',
'    $(''#arrivalDateFieldsContainer'').hide();',
'    $(''#existingShlichimFieldsContainer'').show();',
'    $(''#P24_DESTINATION_AIRPORT_CONTAINER'').show();',
'    $(''#P24_DESTINATION_AIRPORT_DISABLED_CONTAINER'').hide();',
'    $(''#P24_DEPARTURE_AIRPORT_CONTAINER'').show();',
'    $(''#P24_DEPARTURE_AIRPORT_DISABLED_CONTAINER'').hide();',
'    $(''#P24_DEPARTURE_AIRPORT_DISABLED_CONTAINER'').addClass(''is-required'');',
'    $(''#departureDateRequired'').show();',
'    $(''#typeOfTravelContainer'').show();',
'}',
'',
'$(''.create-form-title'').text(formTitle);',
'',
'var shaliachName = $(''.see-more-shaliach-name'').text();',
'var styleAttr = $(''.see-more-shaliach-image .shsh-photo'').attr(''style'');',
'var startIdx = styleAttr.indexOf(''url('') + 4;',
'styleAttr = styleAttr.substr(startIdx);',
'var endIdx = styleAttr.indexOf('');'');',
'var photoUrl = styleAttr.substr(0, endIdx);',
'var html = ''<div class="shsh-photo" title="'' + shaliachName + ''" style="width: 69px; height: 69px; border: 1px solid #E84C26; border-radius: 35px; background-color: #D9D9D9; background-image: url('' + photoUrl + ''); background-size: cover; background-'
||'repeat: no-repeat; background-position: center;"></div>'';',
'$(''.create-shaliach-image'').html(html);',
'$(''.create-shaliach-name'').text(shaliachName);',
'',
'$(''#singleShaliachImageRegion'').show();',
'$(''#multipleShlichimImagesRegion'').hide();',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(216730063736364844)
,p_event_id=>wwv_flow_api.id(205786575905189692)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(179791465992875256)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(222008104490889761)
,p_event_id=>wwv_flow_api.id(205786575905189692)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  APEX_UTIL.SET_SESSION_STATE(''P24_ACTION'', ''N'');',
'  APEX_UTIL.SET_SESSION_STATE(''P24_DESTINATION_AIRPORT'', :P24_SELECTED_MAIN_AIRPORT);',
'  APEX_UTIL.SET_SESSION_STATE(''P24_DEPARTURE_AIRPORT'', :P24_SELECTED_MAIN_AIRPORT);',
'END;'))
,p_attribute_02=>'P24_ACTION,P24_SELECTED_MAIN_AIRPORT'
,p_attribute_03=>'P24_ACTION,P24_DESTINATION_AIRPORT,P24_DEPARTURE_AIRPORT'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(222009555917889776)
,p_event_id=>wwv_flow_api.id(205786575905189692)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_DESTINATION_AIRPORT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(222008269658889763)
,p_event_id=>wwv_flow_api.id(205786575905189692)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P24_TYPE_OF_TRAVEL_0'').click();',
'$(''#P24_TYPE_OF_TRAVEL_0'').change();'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(216730487712364848)
,p_event_id=>wwv_flow_api.id(205786575905189692)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(193149690769566679)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(319970059278897462)
,p_event_id=>wwv_flow_api.id(205786575905189692)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.body.scrollTop = document.documentElement.scrollTop = 0;'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(179790562706875247)
,p_name=>'Initialize'
,p_event_sequence=>91
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(179790820285875249)
,p_event_id=>wwv_flow_api.id(179790562706875247)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_SEE_MORE_ASSIGNMENT_ID,P24_SELECTED_ASSIG'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    //Initialize page state',
'    sessionStorage.removeItem(''SHSH_NewShlichim'');',
'    sessionStorage.removeItem(''SHSH_ExistingShlichim'');',
'',
'    $s(''P24_SELECTED_ASSIG'', '''');',
'    $s(''P24_SEE_MORE_ASSIGNMENT_ID'', '''');',
'    ',
'    //Disable create button',
'    $(''.createCounter'').text('''');',
'    $(''#createFlightRequestBtn'').addClass(''apex_disabled'');',
'    $(''#createFlightRequestBtn'').attr(''disabled'', true);',
'    $(''.create-flight-request-icon'').attr(''src'', ''#APP_IMAGES#departure-disabled.svg'');',
'',
'    //Disable submit button',
'    $(''#submitFlightRequestsNewBtn'').addClass(''apex_disabled'');',
'    $(''#submitFlightRequestsNewBtn'').attr(''disabled'', true);',
'    $(''#submitFlightRequestsExistingBtn'').addClass(''apex_disabled'');',
'    $(''#submitFlightRequestsExistingBtn'').attr(''disabled'', true);',
'',
'    if (($(''#newShlichimRegion .nodatafound'').length > 0 && $v(''P24_MODE'') == ''NEW'') ||',
'        ($(''#existingShlichimRegion .nodatafound'').length > 0 && $v(''P24_MODE'') == ''EXISTING'')) {',
'        $(''#createFlightRequestBtn'').hide();',
'    }',
'    else {',
'        $(''#createFlightRequestBtn'').show();',
'    }',
'',
'    if ($v(''P24_LETS_START_CLICK'') == ''Y'') {',
'        $(''#preContentRegion'').hide();',
'        $(''#contentRegion'').show();',
'    }',
'',
'    setTimeout(function() {',
'        $(''#rds .apex-rds-selected a'').click();    ',
'    }, 1000);',
'});',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(222009819161889778)
,p_event_id=>wwv_flow_api.id(179790562706875247)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.SET_SESSION_STATE(''P24_MODE'', :P24_MODE);',
'',
':P24_SELECTED_ASSIG := '''';',
':P24_SEE_MORE_ASSIGNMENT_ID := '''';'))
,p_attribute_02=>'P24_MODE,P24_SELECTED_ASSIG,P24_SEE_MORE_ASSIGNMENT_ID'
,p_attribute_03=>'P24_MODE,P24_SELECTED_ASSIG,P24_SEE_MORE_ASSIGNMENT_ID'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(216733838143364881)
,p_event_id=>wwv_flow_api.id(179790562706875247)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_DESTINATION_AIRPORT_DISABLED,P24_DEPARTURE_AIRPORT_DISABLED,P24_DEPARTURE_DATE_TO,P24_ARRIVAL_DATE_TO'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(179791068298875252)
,p_name=>'RDS Click'
,p_event_sequence=>101
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#rds a'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(179791222420875253)
,p_event_id=>wwv_flow_api.id(179791068298875252)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_MODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selectedRDS = $(''.apex-rds-selected a'').attr(''href'');',
'var sessionKey = '''';',
'',
'if (selectedRDS == ''#newShlichimRegion'') { ',
'    sessionKey = ''SHSH_NewShlichim'';',
'    $s(''P24_MODE'', ''NEW'');',
'}',
'else if (selectedRDS == ''#existingShlichimRegion'') {',
'    sessionKey = ''SHSH_ExistingShlichim'';',
'    $s(''P24_MODE'', ''EXISTING'');',
'}',
'',
'$(selectedRDS).show();',
'setCreateFlightRequestsButton(sessionKey);',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(222009861916889779)
,p_event_id=>wwv_flow_api.id(179791068298875252)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'APEX_UTIL.SET_SESSION_STATE(''P24_MODE'', :P24_MODE);'
,p_attribute_02=>'P24_MODE'
,p_attribute_03=>'P24_MODE'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(179792178225875263)
,p_event_id=>wwv_flow_api.id(179791068298875252)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(179791465992875256)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(216730570926364849)
,p_event_id=>wwv_flow_api.id(179791068298875252)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($(''#newShlichimRegion .nodatafound'').length > 0 && $v(''P24_MODE'') == ''NEW'') ||',
'    ($(''#existingShlichimRegion .nodatafound'').length > 0 && $v(''P24_MODE'') == ''EXISTING'')) {',
'    $(''#createFlightRequestBtn'').hide();',
'}',
'else {',
'    $(''#createFlightRequestBtn'').show();',
'}',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(179792575927875267)
,p_name=>'Close Create Flight Request Form'
,p_event_sequence=>111
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.close-create-form'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(179792838780875269)
,p_event_id=>wwv_flow_api.id(179792575927875267)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selectedRDS = $(''.apex-rds-selected a'').attr(''href'');',
'var sessionKey = '''';',
'',
'if (selectedRDS == ''#newShlichimRegion'') {',
'    sessionKey = ''SHSH_NewShlichim'';',
'    newShlichim = [];',
'}',
'else if (selectedRDS == ''#existingShlichimRegion'') {',
'    sessionKey = ''SHSH_ExistingShlichim'';',
'    existingShlichim = [];',
'}',
'apex.message.clearErrors();',
'apex.region(selectedRDS.substring(1)).refresh();',
'$(selectedRDS).show();',
'setCreateFlightRequestsButton(sessionKey);'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(179792922206875270)
,p_event_id=>wwv_flow_api.id(179792575927875267)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(179791465992875256)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(179793115784875272)
,p_event_id=>wwv_flow_api.id(179792575927875267)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(179790460325875246)
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
 p_id=>wwv_flow_api.id(179791323451875254)
,p_name=>'Create Flight Request Click'
,p_event_sequence=>121
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(179790460325875246)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(179791866796875260)
,p_event_id=>wwv_flow_api.id(179791323451875254)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(179790460325875246)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(183559475062789464)
,p_event_id=>wwv_flow_api.id(179791323451875254)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_TYPE_OF_TRAVEL,P24_DESTINATION_AIRPORT,P24_ARRIVAL_DATE_FROM,P24_ARRIVAL_DATE_TO,P24_PREFERRED_ARRIVAL_TIME,P24_DEPARTURE_AIRPORT,P24_DEPARTURE_DATE_FROM,P24_DEPARTURE_DATE_TO,P24_PREFERRED_DEPARTURE_TIME,P24_REMARKS,P24_I_CONFIRM_NEW,P24_C_TO_DE'
||'PARTURE_AIRPORT,P24_C_TO_DESTINATION_AIRPORT,P24_C_TO_ARRIVAL_DATE,P24_C_TO_ARRIVAL_TIME,P24_C_FROM_DEPARTURE_AIRPORT,P24_C_FROM_DESTINATION_AIRPORT,P24_C_FROM_DEPARTURE_DATE,P24_SEE_MORE_REQUEST_ID'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(183557349339789443)
,p_event_id=>wwv_flow_api.id(179791323451875254)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#newShlichimRegion'').hide();',
'$(''#existingShlichimRegion'').hide();',
'var selectedRDS = $(''.apex-rds-selected a'').attr(''href'');',
'var formTitle = '''';',
'var selectedShlichim = [];',
'',
'if (selectedRDS == ''#newShlichimRegion'') {',
'    $s(''P24_FORM_TYPE'', ''New Shaliach'');',
'    formTitle = ''Create Request'';',
'    selectedShlichim = newShlichim;',
'    $(''.only-for-new'').show();',
'    $(''#newShlichimSubmitMessage'').show();    ',
'    $(''#arrivalDateFieldsContainer'').show();',
'    $(''#existingShlichimFieldsContainer'').show();',
'    $(''#P24_DESTINATION_AIRPORT_CONTAINER'').show();',
'    $(''#P24_DESTINATION_AIRPORT_DISABLED_CONTAINER'').hide();',
'    $(''#P24_DEPARTURE_AIRPORT_CONTAINER'').removeClass(''is-required'').show();',
'    $(''#P24_DEPARTURE_AIRPORT_DISABLED_CONTAINER'').hide();',
'    //$(''#P24_DEPARTURE_AIRPORT_DISABLED_CONTAINER'').removeClass(''is-required'');',
'    $(''#departureDateRequired span'').hide();',
'    $(''#typeOfTravelContainer'').hide();',
'}',
'else if (selectedRDS == ''#existingShlichimRegion'') {',
'    $s(''P24_FORM_TYPE'', ''Existing Shaliach'');',
'    formTitle = ''Create Request for Existing Shlichim'';',
'    selectedShlichim = existingShlichim;',
'    $(''.only-for-new'').hide();',
'    $(''#newShlichimSubmitMessage'').hide();',
'    $(''#arrivalDateFieldsContainer'').hide();',
'    $(''#existingShlichimFieldsContainer'').show();',
'    $(''#P24_DESTINATION_AIRPORT_CONTAINER'').show();',
'    $(''#P24_DESTINATION_AIRPORT_DISABLED_CONTAINER'').hide();',
'    $(''#P24_DEPARTURE_AIRPORT_CONTAINER'').show();',
'    $(''#P24_DEPARTURE_AIRPORT_DISABLED_CONTAINER'').hide();',
'    $(''#P24_DEPARTURE_AIRPORT_DISABLED_CONTAINER'').addClass(''is-required'');',
'    $(''#departureDateRequired'').show();',
'    $(''#typeOfTravelContainer'').show();',
'}',
'',
'$(''.create-form-title'').text(formTitle);',
'',
'',
'if (selectedShlichim.length > 1) { //Multiple',
'    $(''.create-shlichim-images'').html('''');',
'    var html = '''';',
'    var marginFactor = -7;',
'    var marginProperty = '''';',
'    for (var i = 0; i < selectedShlichim.length; i++) {',
'        if (i > 14) {',
'            marginProperty = ''position: relative; left: '' + (marginFactor * (i - 14)) + ''px; margin-top: 5px; '';',
'        }',
'        else if (i == 14) {',
'            marginProperty = ''margin-top: 5px;'';',
'        }',
'        else if (i > 0 && i < 14) {',
'            marginProperty = ''position: relative; left: '' + (marginFactor * i) + ''px; '';',
'        }',
'        html = html + ''<div class="shsh-photo" title="'' + selectedShlichim[i].name + ''" style="'' + marginProperty + ''width: 37px; height: 37px; border: 1px solid #E84C26; border-radius: 35px; background-color: #D9D9D9; background-image: url('' + selec'
||'tedShlichim[i].photoUrl + ''); background-size: cover; background-repeat: no-repeat; background-position: center;"></div>'';',
'    }',
'    $(''.create-shlichim-images'').html(html);',
'    $(''.create-shlichim-count'').text(selectedShlichim.length + '' Selected Shlichim'');',
'    $(''#multipleShlichimImagesRegion'').show();',
'    $(''#singleShaliachImageRegion'').hide();',
'}',
'else if (selectedShlichim.length === 1) { //Single',
'    var html = ''<div class="shsh-photo" title="'' + selectedShlichim[0].name + ''" style="width: 69px; height: 69px; border: 1px solid #E84C26; border-radius: 35px; background-color: #D9D9D9; background-image: url('' + selectedShlichim[0].photoUrl + '');'
||' background-size: cover; background-repeat: no-repeat; background-position: center;"></div>'';',
'    $(''.create-shaliach-image'').html(html);',
'    $(''.create-shaliach-name'').text(selectedShlichim[0].name);',
'    ',
'    $(''#singleShaliachImageRegion'').show();',
'    $(''#multipleShlichimImagesRegion'').hide();',
'}'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(179795014118875291)
,p_event_id=>wwv_flow_api.id(179791323451875254)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(179791465992875256)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(208543764044387871)
,p_event_id=>wwv_flow_api.id(179791323451875254)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  APEX_UTIL.SET_SESSION_STATE(''P24_ACTION'', ''N'');',
'  APEX_UTIL.SET_SESSION_STATE(''P24_DESTINATION_AIRPORT'', :P24_SELECTED_MAIN_AIRPORT);',
'  APEX_UTIL.SET_SESSION_STATE(''P24_DEPARTURE_AIRPORT'', :P24_SELECTED_MAIN_AIRPORT);',
'END;'))
,p_attribute_02=>'P24_ACTION,P24_SELECTED_MAIN_AIRPORT'
,p_attribute_03=>'P24_ACTION,P24_DESTINATION_AIRPORT,P24_DEPARTURE_AIRPORT'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(222009515696889775)
,p_event_id=>wwv_flow_api.id(179791323451875254)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_DESTINATION_AIRPORT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(216733585054364879)
,p_event_id=>wwv_flow_api.id(179791323451875254)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P24_TYPE_OF_TRAVEL_0'').click();',
'$(''#P24_TYPE_OF_TRAVEL_0'').change();',
'',
'document.body.scrollTop = document.documentElement.scrollTop = 0;'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(183559326458789462)
,p_name=>'I Confirm Change'
,p_event_sequence=>141
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_I_CONFIRM_NEW'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(183559407631789463)
,p_event_id=>wwv_flow_api.id(183559326458789462)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P24_I_CONFIRM_NEW'') == ''Y'') {',
'    $(''#submitFlightRequestsNewBtn'').removeClass(''apex_disabled'');',
'    $(''#submitFlightRequestsNewBtn'').removeAttr(''disabled'');',
'}',
'else {',
'    $(''#submitFlightRequestsNewBtn'').addClass(''apex_disabled'');',
'    $(''#submitFlightRequestsNewBtn'').attr(''disabled'', true);',
'}',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(193149339653566675)
,p_name=>'Type Of Travel Change'
,p_event_sequence=>151
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_TYPE_OF_TRAVEL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(193149373867566676)
,p_event_id=>wwv_flow_api.id(193149339653566675)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selectedRDS = $(''.apex-rds-selected a'').attr(''href'');',
'if (selectedRDS == ''#existingShlichimRegion'') {',
'    var selectedValue = $(''input[type="radio"][name="P24_TYPE_OF_TRAVEL"]'').filter(function(i, e) { return $(e).is('':checked''); }).val();',
'    if (selectedValue) { ',
'        if (selectedValue == ''Round Trip'') {',
'            $(''#P24_DESTINATION_AIRPORT_CONTAINER'').show();',
'            $(''#P24_DESTINATION_AIRPORT_DISABLED_CONTAINER'').hide();',
'            $(''#arrivalDateFieldsContainer'').show();',
'            $(''#conferenceContainer'').hide();',
'            $(''#oneWayAndRoundTripContainer'').show();',
'        }',
'        else if (selectedValue == ''One Way'') {',
'            $(''#P24_DESTINATION_AIRPORT_CONTAINER'').hide();',
'            $(''#P24_DESTINATION_AIRPORT_DISABLED_CONTAINER'').show();',
'            $(''#arrivalDateFieldsContainer'').hide();',
'            $(''#conferenceContainer'').hide();',
'            $(''#oneWayAndRoundTripContainer'').show();',
'        }',
'        else if (selectedValue == ''Conference'') {',
'            //oneWayAndRoundTripContainer conferenceContainer',
'            $(''#conferenceContainer'').show();',
'            $(''#oneWayAndRoundTripContainer'').hide();',
'        }',
'    }',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(390250585262416861)
,p_name=>'Submit Click'
,p_event_sequence=>161
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(183558621871789455)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(390250655171416862)
,p_event_id=>wwv_flow_api.id(390250585262416861)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_SELECTED_ASSIG'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selectedShlichim = $v(''P24_FORM_TYPE'') === ''New Shaliach'' ? newShlichim : existingShlichim;',
'var assignmentIds = selectedShlichim.length > 1 ? selectedShlichim.map(function(shliach) { return shliach.assignmentId; }).join('', '') : selectedShlichim[0].assignmentId;',
'$s(''P24_SELECTED_ASSIG'', assignmentIds);',
'',
'document.body.scrollTop = document.documentElement.scrollTop = 0;',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(222008394829889764)
,p_event_id=>wwv_flow_api.id(390250585262416861)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'UpdateFlightRequest'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(216731337823364856)
,p_name=>'Lets Start Click'
,p_event_sequence=>171
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(216731089533364854)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(222008636470889766)
,p_event_id=>wwv_flow_api.id(216731337823364856)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  APEX_UTIL.SET_SESSION_STATE(''P24_LETS_START_CLICK'', ''Y'');',
'END;'))
,p_attribute_02=>'P24_LETS_START_CLICK'
,p_attribute_03=>'P24_LETS_START_CLICK'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(216731396868364857)
,p_event_id=>wwv_flow_api.id(216731337823364856)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(216730758849364851)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(216731472252364858)
,p_event_id=>wwv_flow_api.id(216731337823364856)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(216730720813364850)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(216731772800364861)
,p_event_id=>wwv_flow_api.id(216731337823364856)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(216731658970364860)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(292630039625352394)
,p_name=>'Back To General Info Click'
,p_event_sequence=>1820
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(216731658970364860)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(292630923500352435)
,p_event_id=>wwv_flow_api.id(292630039625352394)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  APEX_UTIL.SET_SESSION_STATE(''P26_LETS_START_CLICK'', ''N'');',
'END;'))
,p_attribute_02=>'P26_LETS_START_CLICK'
,p_attribute_03=>'P26_LETS_START_CLICK'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(292630405172352435)
,p_event_id=>wwv_flow_api.id(292630039625352394)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(216730758849364851)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(292631395681352435)
,p_event_id=>wwv_flow_api.id(292630039625352394)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(216730720813364850)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(292631867972352436)
,p_event_id=>wwv_flow_api.id(292630039625352394)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(216731658970364860)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(367176479055495664)
,p_name=>'Arrival Date From Change'
,p_event_sequence=>1830
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_ARRIVAL_DATE_FROM'
,p_condition_element=>'P24_ARRIVAL_DATE_FROM'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(367176620461495665)
,p_event_id=>wwv_flow_api.id(367176479055495664)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_ARRIVAL_DATE_TO'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(367176679443495666)
,p_event_id=>wwv_flow_api.id(367176479055495664)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_ARRIVAL_DATE_TO'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(367176827939495667)
,p_name=>'Departure Date From Change'
,p_event_sequence=>1840
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_DEPARTURE_DATE_FROM'
,p_condition_element=>'P24_DEPARTURE_DATE_FROM'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(367176869267495668)
,p_event_id=>wwv_flow_api.id(367176827939495667)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_DEPARTURE_DATE_TO'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(367177037726495669)
,p_event_id=>wwv_flow_api.id(367176827939495667)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_DEPARTURE_DATE_TO'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(615477612965883790)
,p_name=>'Conference To Departure Airport Change'
,p_event_sequence=>1850
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_C_TO_DEPARTURE_AIRPORT'
,p_condition_element=>'P24_C_FROM_DESTINATION_AIRPORT'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(615477646869883791)
,p_event_id=>wwv_flow_api.id(615477612965883790)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_C_FROM_DESTINATION_AIRPORT'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P24_C_TO_DEPARTURE_AIRPORT'
,p_attribute_07=>'P24_C_TO_DEPARTURE_AIRPORT'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(615477789870883792)
,p_name=>'Conference To Destination Airport Change'
,p_event_sequence=>1860
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_C_TO_DESTINATION_AIRPORT'
,p_condition_element=>'P24_C_FROM_DEPARTURE_AIRPORT'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(621918885852649743)
,p_event_id=>wwv_flow_api.id(615477789870883792)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_C_FROM_DEPARTURE_AIRPORT'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P24_C_TO_DESTINATION_AIRPORT'
,p_attribute_07=>'P24_C_TO_DESTINATION_AIRPORT'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(390250831431416863)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UpdateFlightRequest'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_remarks               varchar2(100) ;',
'   v_rest                  VARCHAR2(1000) := :P24_SELECTED_ASSIG;',
'   l_media_id              NUMBER :=0;',
'   l_existing_media_id     NUMBER :=0;',
'   v_request_id            NUMBER;',
'   v_count                 NUMBER;',
'   v_assign_id             VARCHAR2(100);',
'   v_shaliah_type          VARCHAR2(100);',
'   v_dest_airport          VARCHAR2(10);',
'   v_aei_information5      VARCHAR (50);',
'   v_aei_information6      VARCHAR (50);',
'   v_assi_extra_info_id    NUMBER;',
'   v_out_ovn               NUMBER;',
'   v_object_version_number NUMBER;',
'BEGIN',
'  xx_my_utils.add_msg(''START UpdateFlightRequest'' );  ',
'',
'    fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800);  ',
'',
'',
'    IF :P24_FORM_TYPE LIKE ''New%'' THEN',
'        v_shaliah_type := ''New Shaliach'';',
'    ELSE',
'        v_shaliah_type := ''Existing Shaliach'';',
'    END IF;',
'',
'    begin',
'        select paei.aei_information15',
'        into   l_existing_media_id',
'        from   PER_ASSIGNMENT_EXTRA_INFO PAEI',
'        where  PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS'' and',
'               PAEI.aei_information1 = :P24_SEE_MORE_REQUEST_ID;',
'        exception when no_data_found then l_existing_media_id := 0;',
'    end;',
'    ',
'    IF LENGTH(:P24_REMARKS) > 0 THEN',
'        if l_existing_media_id > 0 then',
'            update fnd_documents_short_text ',
'            set short_text = :P24_REMARKS ',
'            where media_id = l_existing_media_id;',
'            ',
'            l_media_id := l_existing_media_id;',
'        else',
'            select fnd_documents_short_text_s.nextval into l_media_id from dual;',
'            insert into fnd_documents_short_text(media_id, short_text) values (l_media_id, :P24_REMARKS);',
'        end if;',
'    ELSE',
'        if l_existing_media_id > 0 then',
'            delete fnd_documents_short_text',
'            where media_id = l_existing_media_id;',
'            ',
'            l_media_id := 0;',
'        end if;',
'    END IF;',
'                  ',
'  LOOP',
'        -- Extract the next value before the comma',
'        IF INSTR(v_rest, '','') > 0 THEN',
'            v_assign_id := SUBSTR(v_rest, 1, INSTR(v_rest, '','') - 1);',
'            v_rest  := SUBSTR(v_rest, INSTR(v_rest, '','') + 1);',
'        ELSE',
'            v_assign_id := v_rest;  -- Last value (no more commas)',
'            v_rest  := NULL;',
'           ',
'        END IF;',
' ',
'       xx_my_utils.add_msg( ''Start process for assign_id ''|| v_assign_id );  ',
'',
'             ',
' 		--------------------------------------------------  ',
'              IF :P24_MODE = ''NEW'' THEN ',
'                 --v_shaliah_type := ''New Shaliach'';',
'                 BEGIN ',
'                  if :P24_ACTION = ''N'' then',
'                     SELECT flight_request_id.NEXTVAL into  v_request_id from dual ; ',
'                     ',
'                      SELECT CASE WHEN :P24_DEPARTURE_AIRPORT IS NULL',
'                                                           THEN :P24_DESTINATION_AIRPORT',
'                                                      ELSE :P24_DEPARTURE_AIRPORT',
'                                                            END',
'                                                  INTO v_aei_information5',
'                                                  FROM DUAL;',
'                                          ',
'                                               ',
'                                               SELECT CASE WHEN  :P24_DEPARTURE_DATE_FROM IS NULL',
'                                                           THEN  ''Latest Possible''',
'                                                           ELSE :P24_DEPARTURE_DATE_FROM',
'                                                            END',
'                                                  INTO v_aei_information6',
'                                                  FROM DUAL;',
'                                                               ',
'                                         ',
'                                         ',
'                 ',
'                     hr_assignment_extra_info_api.create_assignment_extra_info(p_assignment_id      => v_assign_id',
'                                                                              ,p_information_type            => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                              ,p_aei_information_category    => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                              ,p_aei_information1     => v_request_id',
'                                                                              ,p_aei_information2     => :P24_ACTION  --- to check with dror ',
'                                                                              ,p_aei_information3     => ''New Shaliach''',
'                                                                              ,p_aei_information5     => v_aei_information5 -- :P24_DESTINATION_AIRPORT',
'                                                                              ,p_aei_information6     => v_aei_information6',
'                                                                              ,p_aei_information7     => :P24_DEPARTURE_DATE_TO',
'                                                                              ,p_aei_information8     => :P24_PREFERRED_DEPARTURE_TIME',
'                                                                              ,p_aei_information10    => :P24_DESTINATION_AIRPORT',
'                                                                              ,p_aei_information11    => :P24_ARRIVAL_DATE_FROM',
'                                                                              ,p_aei_information12    => :P24_ARRIVAL_DATE_TO',
'                                                                              ,p_aei_information13    => :P24_PREFERRED_ARRIVAL_TIME',
'                                                                              ,p_aei_information15    => l_media_id',
'                                                                             --Out Parameters',
'                                                                               ,p_assignment_extra_info_id  => v_assi_extra_info_id',
'                                                                               ,p_object_version_number => v_out_ovn);',
'   ',
'                      hr_assignment_extra_info_api.create_assignment_extra_info(p_assignment_id      => v_assign_id',
'                                                                               ,p_information_type            => ''JAFI_HR_FLIGHT_REQUESTS''',
'                                                                               ,p_aei_information_category    => ''JAFI_HR_FLIGHT_REQUESTS''',
'                                                                               ,p_aei_information1     => v_request_id',
'                                                                               ,p_aei_information2     => :P24_ACTION  --- to check with dror ',
'                                                                               ,p_aei_information3     => ''New Shaliach''',
'                                                                               ,p_aei_information5     => v_aei_information5',
'                                                                               ,p_aei_information6     => v_aei_information6',
'                                                                               ,p_aei_information7     => :P24_DEPARTURE_DATE_TO  ',
'                                                                               ,p_aei_information8     => :P24_PREFERRED_DEPARTURE_TIME',
'                                                                               ,p_aei_information10    => :P24_DESTINATION_AIRPORT',
'                                                                               ,p_aei_information11    => :P24_ARRIVAL_DATE_FROM',
'                                                                               ,p_aei_information12    => :P24_ARRIVAL_DATE_TO',
'                                                                               ,p_aei_information13    => :P24_PREFERRED_ARRIVAL_TIME',
'                                                                               ,p_aei_information15    => l_media_id',
'                                                                               --Out Parameters',
'                                                                               ,p_assignment_extra_info_id  => v_assi_extra_info_id',
'                                                                               ,p_object_version_number => v_out_ovn);',
'',
'                      elsif :P24_ACTION = ''U'' then',
'                                        ',
'                                               SELECT CASE WHEN :P24_DEPARTURE_AIRPORT IS NULL',
'                                                           THEN :P24_DESTINATION_AIRPORT',
'                                                      ELSE :P24_DEPARTURE_AIRPORT',
'                                                            END',
'                                                  INTO v_aei_information5',
'                                                  FROM DUAL;',
'                                          ',
'                                               ',
'                                               SELECT CASE WHEN  :P24_DEPARTURE_DATE_FROM IS NULL',
'                                                           THEN  ''Latest Possible''',
'                                                           ELSE :P24_DEPARTURE_DATE_FROM',
'                                                            END',
'                                                  INTO v_aei_information6',
'                                                  FROM DUAL;',
'                                              ',
'                                                                                          ',
'                             hr_assignment_extra_info_api.create_assignment_extra_info(p_assignment_id      => v_assign_id',
'                                                                                       ,p_information_type            => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                                       ,p_aei_information_category    => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                                       ,p_aei_information1     => :P24_SEE_MORE_REQUEST_ID',
'                                                                                       ,p_aei_information2     => :P24_ACTION  --- to check with dror ',
'                                                                                       ,p_aei_information3     => ''New Shaliach''',
'                                                                                       ,p_aei_information5     => v_aei_information5 ',
'                                                                                       ,p_aei_information6    =>  v_aei_information6  ',
'                                                                                       ,p_aei_information7     => :P24_DEPARTURE_DATE_TO  ',
'                                                                                       ,p_aei_information8     => :P24_PREFERRED_DEPARTURE_TIME',
'                                                                                       ,p_aei_information10    => :P24_DESTINATION_AIRPORT',
'                                                                                       ,p_aei_information11    => :P24_ARRIVAL_DATE_FROM',
'                                                                                       ,p_aei_information12    => :P24_ARRIVAL_DATE_TO',
'                                                                                       ,p_aei_information13    => :P24_PREFERRED_ARRIVAL_TIME',
'                                                                                        ,p_aei_information15    => l_media_id ',
'                                                                                         --Out Parameters',
'                                                                                        ,p_assignment_extra_info_id  => v_assi_extra_info_id',
'                                                                                        ,p_object_version_number => v_out_ovn);',
'                                                                                        ',
'                                             SELECT pei.object_version_number, ',
'                                                    pei.assignment_extra_info_id',
'                                               INTO                         ',
'                                                    v_object_version_number,',
'                                                    v_assi_extra_info_id',
'                                               FROM PER_ASSIGNMENT_EXTRA_INFO pei',
'                                              WHERE assignment_id = v_assign_id',
'                                                and pei.aei_information1 =:P24_SEE_MORE_REQUEST_ID',
'                                                AND (INFORMATION_TYPE LIKE ''JAFI_HR_FLIGHT_REQUESTS'');',
'         ',
'                                                               hr_assignment_extra_info_api.update_assignment_extra_info  (p_validate    =>  false',
'                                                                                                                          ,p_assignment_extra_info_id => v_assi_extra_info_id',
'                                                                                                                          ,p_object_version_number => v_object_version_number',
'                                                                                                                          ,p_aei_information1     => :P24_SEE_MORE_REQUEST_ID',
'                                                                                                                          ,p_aei_information2     => :P24_ACTION    --- to check with dror ',
'                                                                                                                          --,p_aei_information3     => ''New Shaliach''',
'                                                                                                                          ,p_aei_information5     => v_aei_information5',
'                                                                                                                          ,p_aei_information6     => v_aei_information6',
'                                                                                                                          ,p_aei_information7     => :P24_DEPARTURE_DATE_TO',
'                                                                                                                          ,p_aei_information8     => :P24_PREFERRED_DEPARTURE_TIME',
'                                                                                                                          ,p_aei_information10    => :P24_DESTINATION_AIRPORT',
'                                                                                                                          ,p_aei_information11    => :P24_ARRIVAL_DATE_FROM',
'                                                                                                                          ,p_aei_information12    => :P24_ARRIVAL_DATE_TO',
'                                                                                                                          ,p_aei_information13    => :P24_PREFERRED_ARRIVAL_TIME',
'                                                                                                                          ,p_aei_information15    => l_media_id);',
'                                                          end if;                                                                                  ',
'                            			 EXCEPTION when others then ',
'                                                        xx_my_utils.add_msg(''Error in  hr_assignment_extra_info_api.create_assignment_extra_info ''||Sqlerrm(Sqlcode)); ',
'		                                  END ;',
'                                      ',
'  ------------------------------------------------                                        ',
'			 ELSE -- MODE == EXIST SHALIAH',
'             ',
'             -- v_shaliah_type := ''Existing Shaliach'';',
'               /*if  :P24_TYPE_OF_TRAVEL  = ''One Way'' Then ',
'                   v_dest_airport  := NULL; ',
'               else',
'                   v_dest_airport  := :P24_DESTINATION_AIRPORT ; ',
'               end if;*/',
'               ',
'               BEGIN',
'                   if :P24_ACTION = ''N'' then',
'                      SELECT flight_request_id.NEXTVAL into  v_request_id from dual ; ',
'                      hr_assignment_extra_info_api.create_assignment_extra_info(p_assignment_id      => v_assign_id',
'                                                                               ,p_information_type            => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                               ,p_aei_information_category    => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                               ,p_aei_information1     => v_request_id',
'                                                                               ,p_aei_information2     => :P24_ACTION  --- to check with dror ',
'                                                                               ,p_aei_information3     => v_shaliah_type',
'                                                                               ,p_aei_information4     => :P24_TYPE_OF_TRAVEL',
'                                                                               ,p_aei_information5     => :P24_DEPARTURE_AIRPORT',
'                                                                               ,p_aei_information6     => :P24_DEPARTURE_DATE_FROM',
'                                                                               ,p_aei_information7    => :P24_DEPARTURE_DATE_TO',
'                                                                               ,p_aei_information8    => :P24_PREFERRED_DEPARTURE_TIME',
'                                                                               ,p_aei_information10    => :P24_DESTINATION_AIRPORT',
'                                                                               ,p_aei_information11    => :P24_ARRIVAL_DATE_FROM',
'                                                                               ,p_aei_information12    => :P24_ARRIVAL_DATE_TO',
'                                                                               ,p_aei_information13    => :P24_PREFERRED_ARRIVAL_TIME',
'                                                                               ,p_aei_information15    => l_media_id',
'                                                                                --Out Parameters',
'                                                                               ,p_assignment_extra_info_id  => v_assi_extra_info_id',
'                                                                               ,p_object_version_number => v_out_ovn);',
'   ',
'                        hr_assignment_extra_info_api.create_assignment_extra_info(p_assignment_id      => v_assign_id',
'                                                                                 ,p_information_type            => ''JAFI_HR_FLIGHT_REQUESTS''',
'                                                                                 ,p_aei_information_category    => ''JAFI_HR_FLIGHT_REQUESTS''',
'                                                                                 ,p_aei_information1     => v_request_id',
'                                                                                 ,p_aei_information2     => :P24_ACTION  --- to check with dror ',
'                                                                                 ,p_aei_information3     => v_shaliah_type',
'                                                                                 ,p_aei_information4     => :P24_TYPE_OF_TRAVEL',
'                                                                                 ,p_aei_information5     => :P24_DEPARTURE_AIRPORT',
'                                                                                 ,p_aei_information6     => :P24_DEPARTURE_DATE_FROM',
'                                                                                 ,p_aei_information7    => :P24_DEPARTURE_DATE_TO',
'                                                                                 ,p_aei_information8    => :P24_PREFERRED_DEPARTURE_TIME',
'                                                                                 ,p_aei_information10    => :P24_DESTINATION_AIRPORT',
'                                                                                 ,p_aei_information11    => :P24_ARRIVAL_DATE_FROM',
'                                                                                 ,p_aei_information12    => :P24_ARRIVAL_DATE_TO',
'                                                                                 ,p_aei_information13    => :P24_PREFERRED_ARRIVAL_TIME',
'                                                                                 ,p_aei_information15    => l_media_id',
'                                                                                 --Out Parameters',
'                                                                                 ,p_assignment_extra_info_id  => v_assi_extra_info_id',
'                                                                                 ,p_object_version_number => v_out_ovn);',
'                                                                               ',
'                  elsif :P24_ACTION = ''U'' then',
'                                                                  ',
'                            hr_assignment_extra_info_api.create_assignment_extra_info(p_assignment_id      => v_assign_id',
'                                                                                     ,p_information_type            => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                                     ,p_aei_information_category    => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                                     ,p_aei_information1     => :P24_SEE_MORE_REQUEST_ID',
'                                                                                     ,p_aei_information2     => :P24_ACTION  --- to check with dror ',
'                                                                                     ,p_aei_information3     => v_shaliah_type',
'                                                                                     ,p_aei_information4     => :P24_TYPE_OF_TRAVEL',
'                                                                                     ,p_aei_information5     => :P24_DEPARTURE_AIRPORT',
'                                                                                     ,p_aei_information6     => :P24_DEPARTURE_DATE_FROM',
'                                                                                     ,p_aei_information7    => :P24_DEPARTURE_DATE_TO',
'                                                                                     ,p_aei_information8    => :P24_PREFERRED_DEPARTURE_TIME',
'                                                                                     ,p_aei_information10    => :P24_DESTINATION_AIRPORT',
'                                                                                     ,p_aei_information11    => :P24_ARRIVAL_DATE_FROM',
'                                                                                     ,p_aei_information12    => :P24_ARRIVAL_DATE_TO',
'                                                                                     ,p_aei_information13    => :P24_PREFERRED_ARRIVAL_TIME',
'                                                                                     ,p_aei_information15    => l_media_id',
'                                                                                      --Out Parameters',
'                                                                                     ,p_assignment_extra_info_id  => v_assi_extra_info_id',
'                                                                                     ,p_object_version_number => v_out_ovn);',
'                          ',
'                         SELECT pei.object_version_number, ',
'                                 pei.assignment_extra_info_id',
'                           INTO                         ',
'                                 v_object_version_number,',
'                                 v_assi_extra_info_id',
'                            FROM PER_ASSIGNMENT_EXTRA_INFO pei',
'                           WHERE assignment_id = v_assign_id',
'                             and pei.aei_information1 = :P24_SEE_MORE_REQUEST_ID',
'                            AND (INFORMATION_TYPE LIKE ''JAFI_HR_FLIGHT_REQUESTS'');',
' ',
' ',
'                             hr_assignment_extra_info_api.update_assignment_extra_info  (p_validate    =>  false',
'                                                                                        ,p_assignment_extra_info_id => v_assi_extra_info_id',
'                                                                                        ,p_object_version_number => v_object_version_number',
'                                                                                        ,p_aei_information1     => :P24_SEE_MORE_REQUEST_ID',
'                                                                                        ,p_aei_information2     => :P24_ACTION   --- to check with dror ',
'                                                                                        --,p_aei_information3     => v_shaliah_type',
'                                                                                        ,p_aei_information4     => :P24_TYPE_OF_TRAVEL',
'                                                                                        ,p_aei_information5     => :P24_DEPARTURE_AIRPORT',
'                                                                                        ,p_aei_information6     => :P24_DEPARTURE_DATE_FROM',
'                                                                                        ,p_aei_information7    => :P24_DEPARTURE_DATE_TO',
'                                                                                        ,p_aei_information8    => :P24_PREFERRED_DEPARTURE_TIME',
'                                                                                        ,p_aei_information10    => :P24_DESTINATION_AIRPORT',
'                                                                                        ,p_aei_information11    => :P24_ARRIVAL_DATE_FROM',
'                                                                                        ,p_aei_information12    => :P24_ARRIVAL_DATE_TO',
'                                                                                        ,p_aei_information13    => :P24_PREFERRED_ARRIVAL_TIME',
'                                                                                        ,p_aei_information15    => l_media_id);',
'                       end if;',
'           	 EXCEPTION  when others then      ',
'                             xx_my_utils.add_msg(''Error in  hr_assignment_extra_info_api.create_assignment_extra_info ''||Sqlerrm(Sqlcode)); ',
'             END;  ',
'          END IF;',
'               ',
'                                        ',
'      EXIT WHEN v_rest IS NULL;',
'      ',
'    END LOOP;',
'     ',
'exception when no_data_found then      ',
'        xx_my_utils.add_msg(''Error in  UpdateFlightRequest ''||Sqlerrm(Sqlcode)); ',
'        ',
'END;',
'',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''UpdateFlightRequest'' and :P24_TYPE_OF_TRAVEL != ''Conference'''
,p_process_when_type=>'PLSQL_EXPRESSION'
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
 p_id=>wwv_flow_api.id(621920571936649760)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UpdateFlightRequest_Conference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_remarks               varchar2(100) ;',
'   v_rest                  VARCHAR2(1000) := :P24_SELECTED_ASSIG;',
'   l_media_id              NUMBER := 0;',
'   l_existing_media_id     NUMBER := 0;',
'   v_request_id            NUMBER;',
'   v_count                 NUMBER;',
'   v_assign_id             VARCHAR2(100);',
'   v_shaliah_type          VARCHAR2(100);',
'   v_dest_airport          VARCHAR2(10);',
'   v_aei_information5      VARCHAR (50);',
'   v_aei_information6      VARCHAR (50);',
'   v_assi_extra_info_id    NUMBER;',
'   v_out_ovn               NUMBER;',
'   v_object_version_number NUMBER;',
'BEGIN',
'    xx_my_utils.add_msg(''START UpdateFlightRequest'' );  ',
'',
'    fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800);  ',
'',
'    IF :P24_FORM_TYPE LIKE ''New%'' THEN',
'        v_shaliah_type := ''New Shaliach'';',
'    ELSE',
'        v_shaliah_type := ''Existing Shaliach'';',
'    END IF;',
'    ',
'    begin',
'        select paei.aei_information15',
'        into   l_existing_media_id',
'        from   PER_ASSIGNMENT_EXTRA_INFO PAEI',
'        where  PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS'' and',
'               PAEI.aei_information1 = :P24_SEE_MORE_REQUEST_ID;',
'        exception when no_data_found then l_existing_media_id := 0;',
'    end;',
'    ',
'    IF LENGTH(:P24_REMARKS) > 0 THEN',
'        if l_existing_media_id > 0 then',
'            update fnd_documents_short_text ',
'            set short_text = :P24_REMARKS ',
'            where media_id = l_existing_media_id;',
'            ',
'            l_media_id := l_existing_media_id;',
'        else',
'            select fnd_documents_short_text_s.nextval into l_media_id from dual;',
'            insert into fnd_documents_short_text(media_id, short_text) values (l_media_id, :P24_REMARKS);',
'        end if;',
'    ELSE',
'        if l_existing_media_id > 0 then',
'            delete fnd_documents_short_text',
'            where media_id = l_existing_media_id;',
'            ',
'            l_media_id := 0;',
'        end if;',
'    END IF;',
'    ',
'    LOOP',
'        -- Extract the next value before the comma',
'        IF INSTR(v_rest, '','') > 0 THEN',
'            v_assign_id := SUBSTR(v_rest, 1, INSTR(v_rest, '','') - 1);',
'            v_rest  := SUBSTR(v_rest, INSTR(v_rest, '','') + 1);',
'        ELSE',
'            v_assign_id := v_rest;  -- Last value (no more commas)',
'            v_rest  := NULL;',
'           ',
'        END IF;',
' ',
'        xx_my_utils.add_msg( ''Start process for assign_id ''|| v_assign_id );  ',
'',
'        BEGIN',
'            if :P24_ACTION = ''N'' then',
'                SELECT flight_request_id.NEXTVAL into  v_request_id from dual ; ',
'                hr_assignment_extra_info_api.create_assignment_extra_info(p_assignment_id      => v_assign_id',
'                                                                       ,p_information_type            => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                       ,p_aei_information_category    => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                       ,p_aei_information1     => v_request_id',
'                                                                       ,p_aei_information2     => :P24_ACTION  --- to check with dror ',
'                                                                       ,p_aei_information3     => v_shaliah_type',
'                                                                       ,p_aei_information4     => :P24_TYPE_OF_TRAVEL',
'                                                                       ,p_aei_information14    => :P24_C_TO_DEPARTURE_AIRPORT',
'                                                                       ,p_aei_information10    => :P24_C_TO_DESTINATION_AIRPORT',
'                                                                       ,p_aei_information11    => :P24_C_TO_ARRIVAL_DATE',
'                                                                       ,p_aei_information12    => :P24_C_TO_ARRIVAL_DATE',
'                                                                       ,p_aei_information13    => :P24_C_TO_ARRIVAL_TIME',
'                                                                       ,p_aei_information5     => :P24_C_FROM_DEPARTURE_AIRPORT',
'                                                                       ,p_aei_information9     => :P24_C_FROM_DESTINATION_AIRPORT',
'                                                                       ,p_aei_information6     => :P24_C_FROM_DEPARTURE_DATE',
'                                                                       ,p_aei_information7     => :P24_C_FROM_DEPARTURE_DATE',
'                                                                       ,p_aei_information8     => :P24_C_FROM_DEPARTURE_TIME',
'                                                                       ,p_aei_information15    => l_media_id',
'                                                                        --Out Parameters',
'                                                                       ,p_assignment_extra_info_id  => v_assi_extra_info_id',
'                                                                       ,p_object_version_number => v_out_ovn);',
'',
'                hr_assignment_extra_info_api.create_assignment_extra_info(p_assignment_id      => v_assign_id',
'                                                                       ,p_information_type            => ''JAFI_HR_FLIGHT_REQUESTS''',
'                                                                       ,p_aei_information_category    => ''JAFI_HR_FLIGHT_REQUESTS''',
'                                                                       ,p_aei_information1     => v_request_id',
'                                                                       ,p_aei_information2     => :P24_ACTION  --- to check with dror ',
'                                                                       ,p_aei_information3     => v_shaliah_type',
'                                                                       ,p_aei_information4     => :P24_TYPE_OF_TRAVEL',
'                                                                       ,p_aei_information14    => :P24_C_TO_DEPARTURE_AIRPORT',
'                                                                       ,p_aei_information10    => :P24_C_TO_DESTINATION_AIRPORT',
'                                                                       ,p_aei_information11    => :P24_C_TO_ARRIVAL_DATE',
'                                                                       ,p_aei_information12    => :P24_C_TO_ARRIVAL_DATE',
'                                                                       ,p_aei_information13    => :P24_C_TO_ARRIVAL_TIME',
'                                                                       ,p_aei_information5     => :P24_C_FROM_DEPARTURE_AIRPORT',
'                                                                       ,p_aei_information9     => :P24_C_FROM_DESTINATION_AIRPORT',
'                                                                       ,p_aei_information6     => :P24_C_FROM_DEPARTURE_DATE',
'                                                                       ,p_aei_information7     => :P24_C_FROM_DEPARTURE_DATE',
'                                                                       ,p_aei_information8     => :P24_C_FROM_DEPARTURE_TIME',
'                                                                       ,p_aei_information15    => l_media_id',
'                                                                       --Out Parameters',
'                                                                       ,p_assignment_extra_info_id  => v_assi_extra_info_id',
'                                                                       ,p_object_version_number => v_out_ovn);',
'',
'            elsif :P24_ACTION = ''U'' then',
'                hr_assignment_extra_info_api.create_assignment_extra_info(p_assignment_id      => v_assign_id',
'                                                                       ,p_information_type            => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                       ,p_aei_information_category    => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                       ,p_aei_information1     => :P24_SEE_MORE_REQUEST_ID',
'                                                                       ,p_aei_information2     => :P24_ACTION  --- to check with dror ',
'                                                                       ,p_aei_information3     => v_shaliah_type',
'                                                                       ,p_aei_information4     => :P24_TYPE_OF_TRAVEL',
'                                                                       ,p_aei_information14    => :P24_C_TO_DEPARTURE_AIRPORT',
'                                                                       ,p_aei_information10    => :P24_C_TO_DESTINATION_AIRPORT',
'                                                                       ,p_aei_information11    => :P24_C_TO_ARRIVAL_DATE',
'                                                                       ,p_aei_information12    => :P24_C_TO_ARRIVAL_DATE',
'                                                                       ,p_aei_information13    => :P24_C_TO_ARRIVAL_TIME',
'                                                                       ,p_aei_information5     => :P24_C_FROM_DEPARTURE_AIRPORT',
'                                                                       ,p_aei_information9     => :P24_C_FROM_DESTINATION_AIRPORT',
'                                                                       ,p_aei_information6     => :P24_C_FROM_DEPARTURE_DATE',
'                                                                       ,p_aei_information7     => :P24_C_FROM_DEPARTURE_DATE',
'                                                                       ,p_aei_information8     => :P24_C_FROM_DEPARTURE_TIME',
'                                                                       ,p_aei_information15    => l_media_id',
'                                                                       --Out Parameters',
'                                                                       ,p_assignment_extra_info_id  => v_assi_extra_info_id',
'                                                                       ,p_object_version_number => v_out_ovn);',
'',
'                SELECT pei.object_version_number, pei.assignment_extra_info_id',
'                INTO v_object_version_number, v_assi_extra_info_id',
'                FROM PER_ASSIGNMENT_EXTRA_INFO pei',
'                WHERE assignment_id = v_assign_id',
'                    and pei.aei_information1 = :P24_SEE_MORE_REQUEST_ID',
'                    AND (INFORMATION_TYPE LIKE ''JAFI_HR_FLIGHT_REQUESTS'');',
'',
'                hr_assignment_extra_info_api.update_assignment_extra_info  (p_validate    =>  false',
'                                                                       ,p_assignment_extra_info_id => v_assi_extra_info_id',
'                                                                       ,p_object_version_number => v_object_version_number',
'                                                                       ,p_aei_information1     => :P24_SEE_MORE_REQUEST_ID',
'                                                                       ,p_aei_information2     => :P24_ACTION   --- to check with dror ',
'                                                                       --,p_aei_information3     => v_shaliah_type',
'                                                                       ,p_aei_information4     => :P24_TYPE_OF_TRAVEL',
'                                                                       ,p_aei_information14    => :P24_C_TO_DEPARTURE_AIRPORT',
'                                                                       ,p_aei_information10    => :P24_C_TO_DESTINATION_AIRPORT',
'                                                                       ,p_aei_information11    => :P24_C_TO_ARRIVAL_DATE',
'                                                                       ,p_aei_information12    => :P24_C_TO_ARRIVAL_DATE',
'                                                                       ,p_aei_information13    => :P24_C_TO_ARRIVAL_TIME',
'                                                                       ,p_aei_information5     => :P24_C_FROM_DEPARTURE_AIRPORT',
'                                                                       ,p_aei_information9     => :P24_C_FROM_DESTINATION_AIRPORT',
'                                                                       ,p_aei_information6     => :P24_C_FROM_DEPARTURE_DATE',
'                                                                       ,p_aei_information7     => :P24_C_FROM_DEPARTURE_DATE',
'                                                                       ,p_aei_information8     => :P24_C_FROM_DEPARTURE_TIME',
'                                                                       ,p_aei_information15    => l_media_id);',
'            end if;',
'        EXCEPTION  when others then xx_my_utils.add_msg(''Error in  hr_assignment_extra_info_api.create_assignment_extra_info ''||Sqlerrm(Sqlcode)); ',
'        END;               ',
'                                        ',
'        EXIT WHEN v_rest IS NULL;',
'      ',
'    END LOOP;',
'     ',
'    exception when no_data_found then xx_my_utils.add_msg(''Error in  UpdateFlightRequest ''||Sqlerrm(Sqlcode)); ',
'END;',
'',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''UpdateFlightRequest'' and :P24_TYPE_OF_TRAVEL = ''Conference'''
,p_process_when_type=>'PLSQL_EXPRESSION'
);
null;
wwv_flow_api.component_end;
end;
/
