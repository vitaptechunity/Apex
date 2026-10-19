prompt --application/pages/page_00028
begin
--   Manifest
--     PAGE: 00028
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
 p_id=>28
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'Tnuati Flight Request'
,p_alias=>'TNUATI-FLIGHT-REQUEST'
,p_step_title=>'Tnuati Flight Request'
,p_warn_on_unsaved_changes=>'N'
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
'        $(element).parents(''.community-card'').removeClass(''selected-community-card'');',
'        ',
'        if (sessionKey == ''COMMUNITY_NewShlichim'') {',
'            newShlichim = newShlichim.filter(s => { return s.assignmentId != assignmentId && s.personId != personId; });',
'            arrayToStore = newShlichim;',
'        }',
'        else if (sessionKey == ''COMMUNITY_ExistingShlichim'') {',
'            existingShlichim = existingShlichim.filter(s => { return s.assignmentId != assignmentId && s.personId != personId; });',
'            arrayToStore = existingShlichim;',
'        }',
'    }',
'    else {',
'        //ADD',
'        $(element).data(''selected'', ''Y'');',
'        $(element).find(''img'').attr(''src'', ''#APP_IMAGES#check-active.svg'');',
'        $(element).parents(''.community-card'').addClass(''selected-community-card'');',
'        var styleAttr = $(element).parents(''.community-card'').find(''.community-photo'').attr(''style'');',
'        var startIdx = styleAttr.indexOf(''url('') + 4;',
'        styleAttr = styleAttr.substr(startIdx);',
'        var endIdx = styleAttr.indexOf('');'');',
'        var photoUrl = styleAttr.substr(0, endIdx);',
'        var name = $(element).parents(''.community-card'').find(''.community-name'').text();',
'        ',
'        if (sessionKey == ''COMMUNITY_NewShlichim'') {',
'            newShlichim.push({ ''assignmentId'': assignmentId, ''personId'': personId, ''photoUrl'': photoUrl, ''name'': name });',
'            arrayToStore = newShlichim;',
'        }',
'        else if (sessionKey == ''COMMUNITY_ExistingShlichim'') {',
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
'    if (sessionKey == ''COMMUNITY_NewShlichim'') {',
'        shlichimLength = newShlichim.length;',
'        mode = ''NEW'';',
'    }',
'    else if (sessionKey == ''COMMUNITY_ExistingShlichim'') {',
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
'$(''.disallow-user-input'').on(''keydown'', (e) => {',
'    e.preventDefault();',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Header-logo-link,',
'.home-link {',
'    pointer-events: none !important;',
'    cursor: default !important;',
'}',
'',
'#backToGeneralInfoLink,',
'.home-link, .home-link img {',
'    display: none !important;',
'}',
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
'#P28_ARRIVAL_DATE_TO_CONTAINER,',
'#P28_DEPARTURE_DATE_TO_CONTAINER,',
'#P28_ESTIMATED_RETURN_DATE_TO_CONTAINER {',
'    float: right; ',
'    margin-right: 0;',
'}',
'',
'.hour-col {',
'    max-width: 116px;',
'}',
'',
'#P28_ARRIVAL_TIME_FROM_CONTAINER .t-input-standard-optional,',
'#P28_ARRIVAL_TIME_TO_CONTAINER .t-input-standard-optional {',
'    padding-right: 0;',
'    padding-left: 0;',
'    margin-left: 8px;',
'}',
'',
'#P28_ARRIVAL_TIME_FROM_AMPM_CONTAINER .t-input-standard-optional,',
'#P28_ARRIVAL_TIME_TO_AMPM_CONTAINER .t-input-standard-optional {',
'    padding-left: 0;',
'    padding-right: 0;',
'    margin-right: 8px;',
'}',
'',
'#P28_ARRIVAL_TIME_FROM,',
'#P28_ARRIVAL_TIME_TO {',
'    border-top-right-radius: 0;',
'    border-bottom-right-radius: 0;',
'}',
'',
'#P28_ARRIVAL_TIME_FROM_AMPM,',
'#P28_ARRIVAL_TIME_TO_AMPM {',
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
'.selected-community-card {',
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
'    padding-right: 40px;',
'    padding-left: 40px;',
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
'#P28_I_CONFIRM_NEW,',
'#P28_I_CONFIRM_EXISTING {',
'    padding-top: 0;',
'}',
'',
'label[for="P28_I_CONFIRM_NEW_0"],',
'label[for="P28_I_CONFIRM_EXISTING_0"] {',
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
'.community-card .community-maslul {',
'    align-items: center;',
'    display: flex;',
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
'    .community-card {',
'        padding: 7px !important;',
'        height: 224px !important;',
'    }',
'    ',
'    .community-card,',
'    .community-card .buttons-container {',
'        width: 165px !important;',
'    }',
'    ',
'    .community-card .check-icon {',
'        top: -2px !important;',
'        right: 5px !important;',
'    }',
'    ',
'    .community-card .community-name {',
'        line-height: 20px !important;',
'        text-align: center;',
'        font-size: 16px !important;',
'        margin-bottom: 2px;',
'    }',
'    ',
'    .community-card .community-maslul {',
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
'    .community-card > .community-requests {',
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
'    #backToMenuMobileContainer {',
'        display: flex;',
'        justify-content: center;',
'        align-items: center;',
'    }',
'    ',
'    #backToMenuMobileContainer table {',
'        width: fit-content !important;',
'    }',
'    ',
'    .to-date {',
'        padding-left: 8px !important;',
'        justify-content: start !important;',
'        display: flex;',
'        padding-right: 0 !important;',
'    }',
'}',
'',
'@media (max-width: 360px) {',
'    .cards-container {',
'        gap: 10px !important;',
'    }',
'    ',
'    .t-custom-sub-list-Tab {',
'        gap: 5px !important;',
'    }',
'    ',
'    ',
'}'))
,p_step_template=>wwv_flow_api.id(29244342218644)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MEITAVC'
,p_last_upd_yyyymmddhh24miss=>'20260804100945'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1787545371364984742)
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1139043879191497252)
,p_name=>'My Requests'
,p_region_name=>'myRequestsRegionMobile'
,p_parent_plug_id=>wwv_flow_api.id(1787545371364984742)
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>50
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
'where   --pav.organization_id = :P0_ORG_ID and ',
'        paaf.assignment_id= :P28_SEE_MORE_ASSIGNMENT_ID',
'		AND papf.person_id = paaf.person_id',
'		and paaf.vacancy_id = pav.vacancy_id',
'		and ias.assignment_id = paaf.assignment_id',
'		and ias.assignment_status_type_id IN (47358, 23357, 23358, 6, 1, 279)',
'		and trunc(sysdate) between papf.effective_start_date and papf.effective_end_date',
'		and trunc(sysdate) between paaf.effective_start_date and paaf.effective_end_date',
'		and paaf.business_group_id = 4088',
'		and pav.attribute11 = ''N''',
'		AND PAV.ATTRIBUTE_CATEGORY = ''LTS''',
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
,p_ajax_items_to_submit=>'P28_SEE_MORE_ASSIGNMENT_ID'
,p_query_row_template=>wwv_flow_api.id(314207920041627445)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336379052553979579)
,p_query_column_id=>1
,p_column_alias=>'CARD_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Card Type'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336381454634979581)
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
 p_id=>wwv_flow_api.id(336378305750979579)
,p_query_column_id=>3
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Request Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336379470769979580)
,p_query_column_id=>4
,p_column_alias=>'ESTIMATED_ARRIVAL_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Estimated Arrival Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336379873809979580)
,p_query_column_id=>5
,p_column_alias=>'ARRIVAL_AIRPORT'
,p_column_display_sequence=>5
,p_column_heading=>'Arrival Airport'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336380316544979580)
,p_query_column_id=>6
,p_column_alias=>'ESTIMATED_RETURN_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Estimated Return Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336380699898979580)
,p_query_column_id=>7
,p_column_alias=>'RETURN_AIRPORT'
,p_column_display_sequence=>7
,p_column_heading=>'Return Airport'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336378737212979579)
,p_query_column_id=>8
,p_column_alias=>'STATUS'
,p_column_display_sequence=>2
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336381124265979581)
,p_query_column_id=>9
,p_column_alias=>'STATUS_COLOR'
,p_column_display_sequence=>8
,p_column_heading=>'Status Color'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1139044912524497262)
,p_name=>'My Flights'
,p_region_name=>'myFlightsRegionMobile'
,p_parent_plug_id=>wwv_flow_api.id(1787545371364984742)
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ''FLIGHT'' CARD_TYPE,',
'        PAEI.aei_information1 REQUEST_ID,',
'        case when :P28_MODE = ''EXISTING'' and paei.aei_information3 = ''New Shaliach'' then ''New Shaliach With Departure'' else paei.aei_information3 end FORM_TYPE,',
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
'where --pav.organization_id = :P0_ORG_ID AND ',
'papf.person_id = paaf.person_id',
'and paaf.vacancy_id = pav.vacancy_id',
'and ias.assignment_id = paaf.assignment_id',
'and ias.assignment_status_type_id IN (47358, 23357, 23358, 6, 1, 279)',
'and trunc(sysdate) between papf.effective_start_date and papf.effective_end_date',
'and trunc(sysdate) between paaf.effective_start_date and paaf.effective_end_date',
'and paaf.business_group_id = 4088',
'and pav.attribute11 = ''N''',
'AND PAV.ATTRIBUTE_CATEGORY = ''LTS''',
'and past.assignment_status_type_id = paaf.assignment_status_type_id',
'and past.assignment_status_type_id = ias.assignment_status_type_id',
'and ias.status_change_date = (select max(status_change_date)',
'                              from irc_assignment_statuses ias1',
'                              where ias.assignment_id = ias1.assignment_id)',
'and PAEI.ASSIGNMENT_ID = paaf.assignment_id',
'and last_flight.assgt_id= :P28_SEE_MORE_ASSIGNMENT_ID',
'and PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS''',
'AND last_flight.assgt_id = paaf.assignment_id',
'AND LAST_FLIGHT.REQUEST_ID=PAEI.AEI_INFORMATION1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P28_SEE_MORE_ASSIGNMENT_ID,P28_MODE'
,p_query_row_template=>wwv_flow_api.id(314207581041626145)
,p_query_num_rows=>100
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
 p_id=>wwv_flow_api.id(336384235711979583)
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
 p_id=>wwv_flow_api.id(336382201848979582)
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
 p_id=>wwv_flow_api.id(336385830888979585)
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
 p_id=>wwv_flow_api.id(336382632734979582)
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
 p_id=>wwv_flow_api.id(336384620136979583)
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
 p_id=>wwv_flow_api.id(336383030700979582)
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
 p_id=>wwv_flow_api.id(336383406788979583)
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
 p_id=>wwv_flow_api.id(336383745720979583)
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
 p_id=>wwv_flow_api.id(336385393829979584)
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
 p_id=>wwv_flow_api.id(336384966117979584)
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
 p_id=>wwv_flow_api.id(1787545435529984743)
,p_plug_name=>'Single Shaliach Image'
,p_region_name=>'singleShaliachImageRegion'
,p_parent_plug_id=>wwv_flow_api.id(1787545371364984742)
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
 p_id=>wwv_flow_api.id(1787545947592984748)
,p_name=>'My Requests'
,p_region_name=>'myRequestsRegion'
,p_parent_plug_id=>wwv_flow_api.id(1787545371364984742)
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
'where   --pav.organization_id = :P0_ORG_ID and ',
'        paaf.assignment_id= :P28_SEE_MORE_ASSIGNMENT_ID',
'		AND papf.person_id = paaf.person_id',
'		and paaf.vacancy_id = pav.vacancy_id',
'		and ias.assignment_id = paaf.assignment_id',
'		and ias.assignment_status_type_id IN (47358, 23357, 23358, 6, 1, 279)',
'		and trunc(sysdate) between papf.effective_start_date and papf.effective_end_date',
'		and trunc(sysdate) between paaf.effective_start_date and paaf.effective_end_date',
'		and paaf.business_group_id = 4088',
'		and pav.attribute11 = ''N''',
'		AND PAV.ATTRIBUTE_CATEGORY = ''LTS''',
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
,p_ajax_items_to_submit=>'P28_SEE_MORE_ASSIGNMENT_ID'
,p_query_row_template=>wwv_flow_api.id(195424393306232318)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336370634626979571)
,p_query_column_id=>1
,p_column_alias=>'CARD_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Card Type'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336372962000979573)
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
 p_id=>wwv_flow_api.id(336369895584979569)
,p_query_column_id=>3
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Request Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336370961834979572)
,p_query_column_id=>4
,p_column_alias=>'ESTIMATED_ARRIVAL_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Estimated Arrival Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336371422331979572)
,p_query_column_id=>5
,p_column_alias=>'ARRIVAL_AIRPORT'
,p_column_display_sequence=>4
,p_column_heading=>'Arrival Airport'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336371828720979572)
,p_query_column_id=>6
,p_column_alias=>'ESTIMATED_RETURN_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Estimated Return Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336372178507979572)
,p_query_column_id=>7
,p_column_alias=>'RETURN_AIRPORT'
,p_column_display_sequence=>6
,p_column_heading=>'Return Airport'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336370195943979570)
,p_query_column_id=>8
,p_column_alias=>'STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336372618178979573)
,p_query_column_id=>9
,p_column_alias=>'STATUS_COLOR'
,p_column_display_sequence=>7
,p_column_heading=>'Status Color'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1789809703335633406)
,p_name=>'My Flights'
,p_region_name=>'myFlightsRegion'
,p_parent_plug_id=>wwv_flow_api.id(1787545371364984742)
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ''FLIGHT'' CARD_TYPE,',
'        PAEI.aei_information1 REQUEST_ID,',
'        case when :P28_MODE = ''EXISTING'' and paei.aei_information3 = ''New Shaliach'' then ''New Shaliach With Departure'' else paei.aei_information3 end FORM_TYPE,',
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
'where --pav.organization_id = :P0_ORG_ID AND ',
'papf.person_id = paaf.person_id',
'and paaf.vacancy_id = pav.vacancy_id',
'and ias.assignment_id = paaf.assignment_id',
'and ias.assignment_status_type_id IN (47358, 23357, 23358, 6, 1, 279)',
'and trunc(sysdate) between papf.effective_start_date and papf.effective_end_date',
'and trunc(sysdate) between paaf.effective_start_date and paaf.effective_end_date',
'and paaf.business_group_id = 4088',
'and pav.attribute11 = ''N''',
'AND PAV.ATTRIBUTE_CATEGORY = ''LTS''',
'and past.assignment_status_type_id = paaf.assignment_status_type_id',
'and past.assignment_status_type_id = ias.assignment_status_type_id',
'and ias.status_change_date = (select max(status_change_date)',
'                              from irc_assignment_statuses ias1',
'                              where ias.assignment_id = ias1.assignment_id)',
'and PAEI.ASSIGNMENT_ID = paaf.assignment_id',
'and last_flight.assgt_id= :P28_SEE_MORE_ASSIGNMENT_ID',
'and PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS''',
'AND last_flight.assgt_id = paaf.assignment_id',
'AND LAST_FLIGHT.REQUEST_ID=PAEI.AEI_INFORMATION1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P28_SEE_MORE_ASSIGNMENT_ID,P28_MODE'
,p_query_row_template=>wwv_flow_api.id(215029999485580748)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336375942872979577)
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
 p_id=>wwv_flow_api.id(336374002228979575)
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
 p_id=>wwv_flow_api.id(336377602653979578)
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
 p_id=>wwv_flow_api.id(336374386906979576)
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
 p_id=>wwv_flow_api.id(336376434852979577)
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
 p_id=>wwv_flow_api.id(336374827144979576)
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
 p_id=>wwv_flow_api.id(336375151306979576)
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
 p_id=>wwv_flow_api.id(336375562814979577)
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
 p_id=>wwv_flow_api.id(336377184724979578)
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
 p_id=>wwv_flow_api.id(336376821434979577)
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
 p_id=>wwv_flow_api.id(1800182125654607754)
,p_plug_name=>'Create Flight Request Container'
,p_region_name=>'CreateFlightRequestContainerID'
,p_parent_plug_id=>wwv_flow_api.id(1787545371364984742)
,p_region_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_plug_source=>'<img class="create-flight-request-btn" src="#APP_IMAGES#create-flight-request.svg" style="width: 181px; height: 20px; float: right; cursor: pointer; top: 4px; position: relative;" />'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1811126401408782913)
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
 p_id=>wwv_flow_api.id(1774186096681293308)
,p_plug_name=>'Create Button Container'
,p_region_name=>'createButtonContainer'
,p_parent_plug_id=>wwv_flow_api.id(1811126401408782913)
,p_region_template_options=>'#DEFAULT#:margin-top-lg'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1774187146588293319)
,p_plug_name=>'<img class="create-form-icon" src="#APP_IMAGES#departure-create.svg" /><span class="create-form-title">Create Request</span><img class="close-create-form" src="#APP_IMAGES#close-icon.svg"#" />'
,p_region_name=>'createRequestFormRegion'
,p_parent_plug_id=>wwv_flow_api.id(1811126401408782913)
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
 p_id=>wwv_flow_api.id(1774188967968293337)
,p_plug_name=>'Multiple Shlichim Images'
,p_region_name=>'multipleShlichimImagesRegion'
,p_parent_plug_id=>wwv_flow_api.id(1774187146588293319)
,p_region_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_api.id(1774189058180293338)
,p_plug_name=>'Form'
,p_parent_plug_id=>wwv_flow_api.id(1774187146588293319)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1777953996569207515)
,p_plug_name=>'Container'
,p_parent_plug_id=>wwv_flow_api.id(1774189058180293338)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p id="newShlichimSubmitMessage" style="width: 100%; border-radius: 7px; background-color: #F9F7F4; font-weight: 400; padding: 25px; font-size: 16px; line-height: 20px; letter-spacing: 0%; color: #7A8497;">',
'    <span style="font-weight: 600; font-size: 16px;">Young Shlichut</span> - The return flight will be automatically booked<br />for a tentative date, which will need to be adjusted for the<br />',
'    following summer, and no longer than 364 days from arrival.<br />Once the flight is booked, you will be able to update the date by<br />editing the request.<br />',
'    <br />',
'    <span style="font-weight: 600; font-size: 16px;">Senior Shlichut</span> - A return flight will be booked separately at the<br />end of the Shlichut. In some cases, when cheaper, the Jewish<br />',
'    Agency will purchase a return flight, not for use.<br />',
'    <br />',
'    <span style="font-weight: 600; font-size: 16px;">Israel Fellows</span> - All flights are booked as a round-trip ticket.<br />The outbound flight from the U.S. to Israel will be booked at the<br />',
unistr('    time the ticket is issued. During the year, that flight date may be<br />adjusted based on the Fellow\2019s needs, the Hillel\2019s schedule, and<br />summer plans, subject to airline policies and fare rules. Please<br />'),
'    note that itinerary changes can only be made after the outbound<br />flight to Israel has been flown. ONLY the first flight change will be<br />covered by JAFI.<br />',
'</p>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1777954473619207520)
,p_plug_name=>'Submit Container'
,p_region_name=>'submitContainer'
,p_parent_plug_id=>wwv_flow_api.id(1774189058180293338)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1777955750311207533)
,p_plug_name=>'Existing Shlichim Fields Container'
,p_region_name=>'existingShlichimFieldsContainer'
,p_parent_plug_id=>wwv_flow_api.id(1774189058180293338)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1777956072788207536)
,p_plug_name=>'Estimated Departure Date'
,p_parent_plug_id=>wwv_flow_api.id(1777955750311207533)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<hr class="desktop-br" style="width: 21px; border: 1px solid #A3A3A3; position: absolute; top: 88px; left: 255px;"/>',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-weight: 400; font-style: Regular; font-size: 16px; line-height: 35px; letter-spacing: 0%; color: #A3A3A3;"><span style="color: red;">*</span> Estimated Departure Date:</div>',
'',
'',
'',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1777956456927207540)
,p_plug_name=>'Estimated Departure Time'
,p_parent_plug_id=>wwv_flow_api.id(1777955750311207533)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>40
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
 p_id=>wwv_flow_api.id(1811129659365782946)
,p_plug_name=>'Departure Airport'
,p_parent_plug_id=>wwv_flow_api.id(1777955750311207533)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1816401926982307806)
,p_plug_name=>'Destination Airport'
,p_parent_plug_id=>wwv_flow_api.id(1777955750311207533)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1777955857399207534)
,p_plug_name=>'Arrival Date Fields Container'
,p_region_name=>'arrivalDateFieldsContainer'
,p_parent_plug_id=>wwv_flow_api.id(1774189058180293338)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1774190478628293352)
,p_plug_name=>'Preferred Arrival Date'
,p_parent_plug_id=>wwv_flow_api.id(1777955857399207534)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>30
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
 p_id=>wwv_flow_api.id(1777953245199207508)
,p_plug_name=>'Estimated Arrival Time'
,p_parent_plug_id=>wwv_flow_api.id(1777955857399207534)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>40
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
 p_id=>wwv_flow_api.id(1777955971583207535)
,p_plug_name=>'Destination Airport'
,p_parent_plug_id=>wwv_flow_api.id(1777955857399207534)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1777956928564207545)
,p_plug_name=>'Type Of Travel'
,p_region_name=>'typeOfTravelContainer'
,p_parent_plug_id=>wwv_flow_api.id(1774189058180293338)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1777954839545207524)
,p_plug_name=>'Single Shaliach Image'
,p_region_name=>'singleShaliachImageRegion'
,p_parent_plug_id=>wwv_flow_api.id(1774187146588293319)
,p_region_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_api.id(1780125247865277933)
,p_plug_name=>'RDS'
,p_region_name=>'rds'
,p_parent_plug_id=>wwv_flow_api.id(1811126401408782913)
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
 p_id=>wwv_flow_api.id(2274257107823462638)
,p_name=>'New Shlichim'
,p_region_name=>'newShlichimRegion'
,p_parent_plug_id=>wwv_flow_api.id(1811126401408782913)
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
'                              p_request => ''APPLICATION_PROCESS=GetDocument'', ',
'                              p_items => ''DOCUMENT_ID'', ',
'                              p_values => PHOTO) else ''#APP_IMAGES#anonymous-user.jpeg'' end PHOTO,',
'       NAME,',
'       REQUESTS_COUNT,',
'       MASLUL,',
'       case when instr(MARITAL_STATUS, '' +0'') > 0 THEN replace(MARITAL_STATUS, '' +0'', '''') ELSE MARITAL_STATUS END MARITAL_STATUS',
'from (select ',
'    papf.first_name || '' '' || papf.last_name NAME,',
'    papf.PERSON_ID,',
'    paaf.ASSIGNMENT_ID,',
'    (select NVL(max(document_id), 0)',
'     from irc_documents',
'     where person_id = papf.person_id',
'     and end_date is null',
'     and type = ''PHOTO'') PHOTO,',
'    (select count(*)',
'     from   PER_ASSIGNMENT_EXTRA_INFO PAEI',
'     where  PAEI.ASSIGNMENT_ID = paaf.assignment_id      ',
'            and PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS'') as REQUESTS_COUNT,',
'    '''' MASLUL,',
'    jafi_hr_utils.US_Decode_Lookup (''MAR_STATUS'', papf.marital_status) || '' +'' ||',
'    (select count (*)',
'  from per_contact_relationships pcr,',
'  per_all_people_f papf1',
'  where pcr.person_id=papf.person_id',
'  and pcr.contact_person_id=papf1.PERSON_ID(+)',
'  and pcr.CONTACT_TYPE =''C'') MARITAL_STATUS',
'from per_all_people_f            papf,  ',
'   per_all_assignments_f       paaf,  ',
'   per_all_vacancies           pav,  ',
'   irc_assignment_statuses     ias,  ',
'   per_assignment_status_types past,',
'   per_jobs pj,',
'   hr_organization_information hoi',
'where  papf.person_id = paaf.person_id  ',
'    and paaf.vacancy_id = pav.vacancy_id  ',
'    and ias.assignment_id = paaf.assignment_id  ',
'    and ias.assignment_status_type_id IN (47358,23357,23358,6,279)',
'    and trunc(sysdate) between papf.effective_start_date and papf.effective_end_date  ',
'    and trunc(sysdate) between paaf.effective_start_date and  paaf.effective_end_date  ',
'    and paaf.business_group_id = 4088  ',
'    and pav.attribute11 = ''N''  ',
'    and PAV.ATTRIBUTE_CATEGORY =''LTS''',
'    and paaf.job_id=pj.job_id',
'    and pj.job_id in (''46490'',''46492'',''85464'')',
'    and past.assignment_status_type_id =paaf.assignment_status_type_id  ',
'    and past.assignment_status_type_id =ias.assignment_status_type_id  ',
'    and ias.status_change_date = (select max(status_change_date)  ',
'                      from irc_assignment_statuses ias1  ',
'                      where ias.assignment_id = ias1.assignment_id) ',
'                      ',
'    and hoi.organization_id=paaf.organization_id',
'    and hoi.org_information_context =''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'    and hoi.org_information1=''TNT''',
')',
'order by NAME'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(275790535580911162)
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
 p_id=>wwv_flow_api.id(336391321192979597)
,p_query_column_id=>1
,p_column_alias=>'CARD_TYPE_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Card Type Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336392450640979598)
,p_query_column_id=>2
,p_column_alias=>'ASSIGNMENT_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Assignment Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336392906688979599)
,p_query_column_id=>3
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>6
,p_column_heading=>'Person Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336391646008979598)
,p_query_column_id=>4
,p_column_alias=>'PHOTO'
,p_column_display_sequence=>2
,p_column_heading=>'Photo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336390910987979597)
,p_query_column_id=>5
,p_column_alias=>'NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336392058085979598)
,p_query_column_id=>6
,p_column_alias=>'REQUESTS_COUNT'
,p_column_display_sequence=>4
,p_column_heading=>'Requests Count'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336393245751979600)
,p_query_column_id=>7
,p_column_alias=>'MASLUL'
,p_column_display_sequence=>7
,p_column_heading=>'Maslul'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336393718023979600)
,p_query_column_id=>8
,p_column_alias=>'MARITAL_STATUS'
,p_column_display_sequence=>8
,p_column_heading=>'Marital Status'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(2274258330759462651)
,p_name=>'Existing Shlichim'
,p_region_name=>'existingShlichimRegion'
,p_parent_plug_id=>wwv_flow_api.id(1811126401408782913)
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
'       REQUESTS_COUNT,',
'       MASLUL,',
'       case when instr(MARITAL_STATUS, '' +0'') > 0 THEN replace(MARITAL_STATUS, '' +0'', '''') ELSE MARITAL_STATUS END MARITAL_STATUS',
'from (',
'select ',
'    papf.first_name || '' '' || papf.last_name NAME,',
'    papf.PERSON_ID,',
'    paaf.ASSIGNMENT_ID,',
'    (select NVL(max(document_id), 0)',
'     from irc_documents',
'     where person_id = papf.person_id',
'     and end_date is null',
'     and type = ''PHOTO'') PHOTO,',
'    (select count(*)',
'     from   PER_ASSIGNMENT_EXTRA_INFO PAEI',
'     where  PAEI.ASSIGNMENT_ID = paaf.assignment_id      ',
'            and PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS'') as REQUESTS_COUNT,',
'    '''' MASLUL,',
'    jafi_hr_utils.US_Decode_Lookup (''MAR_STATUS'', papf.marital_status) || '' +'' ||',
'    (select count (*)',
'  from per_contact_relationships pcr,',
'  per_all_people_f papf1',
'  where pcr.person_id=papf.person_id',
'  and pcr.contact_person_id=papf1.PERSON_ID(+)',
'  and pcr.CONTACT_TYPE =''C'') MARITAL_STATUS',
'from per_all_people_f            papf,  ',
'   per_all_assignments_f       paaf,  ',
'   per_all_vacancies           pav,  ',
'   irc_assignment_statuses     ias,  ',
'   per_assignment_status_types past,',
'   per_jobs pj,',
'   hr_organization_information hoi',
'where  papf.person_id = paaf.person_id  ',
'    and paaf.vacancy_id = pav.vacancy_id  ',
'    and ias.assignment_id = paaf.assignment_id  ',
'    and ias.assignment_status_type_id IN (1)',
'    and trunc(sysdate) between papf.effective_start_date and papf.effective_end_date  ',
'    and trunc(sysdate) between paaf.effective_start_date and  paaf.effective_end_date  ',
'    and paaf.business_group_id = 4088  ',
'    and pav.attribute11 = ''N''  ',
'    and PAV.ATTRIBUTE_CATEGORY =''LTS''',
'    and paaf.job_id=pj.job_id',
'    and pj.job_id in (''46490'',''46492'',''85464'')',
'    and past.assignment_status_type_id =paaf.assignment_status_type_id  ',
'    and past.assignment_status_type_id =ias.assignment_status_type_id  ',
'    and ias.status_change_date = (select max(status_change_date)  ',
'                      from irc_assignment_statuses ias1  ',
'                      where ias.assignment_id = ias1.assignment_id) ',
'                      ',
'    and hoi.organization_id=paaf.organization_id',
'    and hoi.org_information_context =''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'    and hoi.org_information1=''TNT''',
')',
'order by NAME'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(275790748197914280)
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
 p_id=>wwv_flow_api.id(336405892578979614)
,p_query_column_id=>1
,p_column_alias=>'CARD_TYPE_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Card Type Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336407523858979615)
,p_query_column_id=>2
,p_column_alias=>'ASSIGNMENT_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Assignment Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336407939732979615)
,p_query_column_id=>3
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>6
,p_column_heading=>'Person Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336406651469979614)
,p_query_column_id=>4
,p_column_alias=>'PHOTO'
,p_column_display_sequence=>3
,p_column_heading=>'Photo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336406251504979614)
,p_query_column_id=>5
,p_column_alias=>'NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336407131030979614)
,p_query_column_id=>6
,p_column_alias=>'REQUESTS_COUNT'
,p_column_display_sequence=>4
,p_column_heading=>'Requests Count'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336408340592979617)
,p_query_column_id=>7
,p_column_alias=>'MASLUL'
,p_column_display_sequence=>7
,p_column_heading=>'Maslul'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336408691032979617)
,p_query_column_id=>8
,p_column_alias=>'MARITAL_STATUS'
,p_column_display_sequence=>8
,p_column_heading=>'Marital Status'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2322524718741944236)
,p_plug_name=>'Sub Page Info'
,p_parent_plug_id=>wwv_flow_api.id(1811126401408782913)
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
 p_id=>wwv_flow_api.id(1811126439444782914)
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
 p_id=>wwv_flow_api.id(1811126617247782915)
,p_plug_name=>'Sub Page Info'
,p_parent_plug_id=>wwv_flow_api.id(1811126439444782914)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-weight: 700; font-size: 18px; line-height: 30px; color: #172B54; margin-bottom: 20px;">Welcome to the flight request<br />submission screen for Shlichut!</div>',
'<span style="font-weight: 500; font-size: 16px; line-height: 22px; color: #172B54;">',
'In light of the security situation and the <br class="mobile-br" />limited flight availability<br class="desktop-br" />',
'to and from Israel in <br class="mobile-br" />recent years, the Jewish Agency makes every<br />',
'effort to book flights for the requested travel <br class="mobile-br" />dates. <br class="desktop-br" />',
'However, flights may be scheduled up <br class="mobile-br" />to three days before or after <br class="desktop-br" />',
'the requested <br class="mobile-br" />date, subject to airline seat availability.',
'</span>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1811126668527782916)
,p_plug_name=>'Info Cards'
,p_region_name=>'infoCardsRegion'
,p_parent_plug_id=>wwv_flow_api.id(1811126439444782914)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg'
,p_region_attributes=>'style="align-items: center; justify-content: center; display: flex;"'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="info-cards" style="width: 1020px; display: flex; align-items: center; justify-content: center; flex-wrap: wrap; gap: 15px;">',
'    <div class="info-card" style="width: 325px; height: 300px; border-radius: 10px; background-color: #F4FBFF; display: flex; justify-content: start; align-items: center; flex-flow: column; gap: 15px; padding-top: 25px;">',
'        <img class="info-card-icon" src="#APP_IMAGES#info-young-shlichut.svg" style="width: 24px; height: 24px;" />',
'        <div class="info-card-title" style="font-weight: 500; font-size: 16px; line-height: 22px; letter-spacing: 0%; text-align: center;">Young shlichut</div>',
'        <div class="info-card-title" style="font-weight: 400; font-size: 16px; line-height: 22px; letter-spacing: 0%; text-align: center;">',
'            Ofek Shlichim are entitled for a home<br/>visit once a year, during the summer,<br/>and not after 364 days of the original<br/>departure date to the Shlichut.',
'        </div>',
'    </div>',
'    ',
'    <div class="info-card" style="width: 325px; height: 300px; border-radius: 10px; background-color: #F4FBFF; display: flex; justify-content: start; align-items: center; flex-flow: column; gap: 15px; padding-top: 25px;">',
'        <img class="info-card-icon" src="#APP_IMAGES#info-senior-shlichut.svg" style="width: 24px; height: 24px;" />',
'        <div class="info-card-title" style="font-weight: 500; font-size: 16px; line-height: 22px; letter-spacing: 0%; text-align: center;">Senior shlichut</div>',
'        <div class="info-card-title" style="font-weight: 400; font-size: 16px; line-height: 22px; letter-spacing: 0%; text-align: center;">',
'            SHABY Shlichim are not entitled<br/>for a home visit as part of<br/>their Shlichut.',
'        </div>',
'    </div>',
'    ',
'    <div class="info-card" style="width: 325px; height: 300px; border-radius: 10px; background-color: #F4FBFF; display: flex; justify-content: start; align-items: center; flex-flow: column; gap: 15px; padding-top: 25px;">',
'        <img class="info-card-icon" src="#APP_IMAGES#info-israel-fellow.svg" style="width: 24px; height: 24px;" />',
'        <div class="info-card-title" style="font-weight: 500; font-size: 16px; line-height: 22px; letter-spacing: 0%; text-align: center;">Israel Fellow</div>',
'        <div class="info-card-title" style="font-weight: 400; font-size: 16px; line-height: 22px; letter-spacing: 0%; text-align: center;">',
unistr('            An\00A0Israel Fellow\00A0may travel home for a<br/>visit to Israel only after students are no<br/>longer on campus. The Fellow must<br/>return for an additional year after\00A0June<br/>'),
unistr('            30\00A0(to align with the following year''s<br/>contract) and may do so only within the<br/>number of vacation days that have been<br/>approved for them.'),
'        </div>',
'    </div>',
'',
'    <div class="info-card" style="width: 325px; height: 300px; border-radius: 10px; background-color: #F4FBFF; display: flex; justify-content: start; align-items: center; flex-flow: column; gap: 15px; padding-top: 25px;">',
'        <img class="info-card-icon" src="#APP_IMAGES#info-request-types.svg" style="width: 24px; height: 24px;" />',
'        <div class="info-card-title" style="font-weight: 500; font-size: 16px; line-height: 22px; letter-spacing: 0%; text-align: center;">Request types</div>',
'        <div class="info-card-title" style="font-weight: 400; font-size: 16px; line-height: 22px; letter-spacing: 0%; text-align: center;">',
'            You can submit requests for both<br/>new and existing Shlichim.',
'        </div>',
'    </div>',
'    ',
'    <div class="info-card" style="width: 325px; height: 300px; border-radius: 10px; background-color: #F4FBFF; display: flex; justify-content: start; align-items: center; flex-flow: column; gap: 15px; padding-top: 25px;">',
'        <img class="info-card-icon" src="#APP_IMAGES#info-flight-updates.svg" style="width: 24px; height: 24px;" />',
'        <div class="info-card-title" style="font-weight: 500; font-size: 16px; line-height: 22px; letter-spacing: 0%; text-align: center;">Flight updates</div>',
'        <div class="info-card-title" style="font-weight: 400; font-size: 16px; line-height: 22px; letter-spacing: 0%; text-align: center;">',
'            If a Shaliach already has a<br/>booked flight and the return date<br/>needs to be changed,<br/>please edit the existing request.<br/>There is no need to submit a new one.',
'        </div>',
'    </div>',
'    ',
'    <div class="info-card" style="width: 325px; height: 300px; border-radius: 10px; background-color: #F4FBFF; display: flex; justify-content: start; align-items: center; flex-flow: column; gap: 15px; padding-top: 25px;">',
'        <img class="info-card-icon" src="#APP_IMAGES#info-data-flexibility.svg" style="width: 24px; height: 24px;" />',
'        <div class="info-card-title" style="font-weight: 500; font-size: 16px; line-height: 22px; letter-spacing: 0%; text-align: center;">Date flexibility</div>',
'        <div class="info-card-title" style="font-weight: 400; font-size: 16px; line-height: 22px; letter-spacing: 0%; text-align: center;">',
'            Each request allows you to enter<br/>a date range.<br/>Please be as flexible as possible<br/>so we can find the best flight option<br/>for both you and the Shaliach.',
'        </div>',
'    </div>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1811126852418782918)
,p_plug_name=>'Lets Start Container'
,p_region_name=>'letsStartContainer'
,p_parent_plug_id=>wwv_flow_api.id(1811126439444782914)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3524911312150250587)
,p_plug_name=>'Title'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(1491988443724117)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>'Community Shlichut - <br class="mobile-br" />Flight Request'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3524911736883251705)
,p_plug_name=>'Prograss Bar'
,p_region_name=>'progressBar'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall:t-Form--noPadding:margin-top-md:margin-bottom-lg'
,p_component_template_options=>'#DEFAULT#:t-Tabs--simple'
,p_plug_template=>wwv_flow_api.id(1572085619207170)
,p_plug_display_sequence=>20
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(336468924124998070)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(2125342479223692)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3543920024548923758)
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
 p_id=>wwv_flow_api.id(336387391101979587)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1811126852418782918)
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
 p_id=>wwv_flow_api.id(336394347729979601)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1774186096681293308)
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
 p_id=>wwv_flow_api.id(336395943620979603)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1777954473619207520)
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
 p_id=>wwv_flow_api.id(336389849662979595)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3543920024548923758)
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
 p_id=>wwv_flow_api.id(336389447724979595)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(3543920024548923758)
,p_button_name=>'BACK_TO_MENU'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back to Menu'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RR,:P28_LETS_START_CLICK:N'
,p_button_condition_type=>'NEVER'
,p_grid_column_attributes=>'style="display: flex; justify-content: center;"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(336387745667979590)
,p_name=>'P28_LETS_START_CLICK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1811126852418782918)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(336388469146979593)
,p_name=>'P28_SELECTED_MAIN_AIRPORT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3524911312150250587)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(336397020592979604)
,p_name=>'P28_DEPARTURE_AIRPORT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1811129659365782946)
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
 p_id=>wwv_flow_api.id(336397735023979605)
,p_name=>'P28_DESTINATION_AIRPORT_DISABLED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1816401926982307806)
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
 p_id=>wwv_flow_api.id(336398407018979606)
,p_name=>'P28_DEPARTURE_DATE_MIN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1777956072788207536)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(336398795851979606)
,p_name=>'P28_DEPARTURE_DATE_FROM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1777956072788207536)
,p_prompt=>'From'
,p_placeholder=>'Select Date'
,p_format_mask=>'Month DD, YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cattributes_element=>'style="padding-right: 0;"'
,p_tag_css_classes=>'disallow-user-input'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_02=>'&P28_DEPARTURE_DATE_MIN.'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'2026:3000'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(336399152884979607)
,p_name=>'P28_DEPARTURE_DATE_TO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1777956072788207536)
,p_prompt=>'To'
,p_placeholder=>'Select Date'
,p_format_mask=>'Month DD, YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cattributes_element=>'style="padding-left: 0; justify-content: end; display: flex; padding-right: 16px;"'
,p_tag_css_classes=>'disallow-user-input'
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'to-date'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_02=>'&P28_DEPARTURE_DATE_MIN.'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'2026:3000'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(336399896491979607)
,p_name=>'P28_PREFERRED_DEPARTURE_TIME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1777956456927207540)
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
 p_id=>wwv_flow_api.id(336400637653979608)
,p_name=>'P28_REMARKS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1777953996569207515)
,p_prompt=>'Remarks:'
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
 p_id=>wwv_flow_api.id(336400973045979610)
,p_name=>'P28_I_CONFIRM_NEW'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1777953996569207515)
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC(,):I confirm that if a flight matching these conditions is found, it may be ticketed immediately without additional approval.Y'
,p_field_template=>wwv_flow_api.id(491308284349075283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(336402021433979611)
,p_name=>'P28_ARRIVAL_DATE_MIN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1774190478628293352)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(336402400553979611)
,p_name=>'P28_ARRIVAL_DATE_FROM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1774190478628293352)
,p_prompt=>'From'
,p_placeholder=>'Select Date'
,p_format_mask=>'Month DD, YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cattributes_element=>'style="padding-right: 0;"'
,p_tag_css_classes=>'disallow-user-input'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_02=>'&P28_ARRIVAL_DATE_MIN.'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'2026:3000'
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
 p_id=>wwv_flow_api.id(336402777449979611)
,p_name=>'P28_ARRIVAL_DATE_TO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1774190478628293352)
,p_prompt=>'To'
,p_placeholder=>'Select Date'
,p_format_mask=>'Month DD, YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cattributes_element=>'style="padding-left: 0; justify-content: end; display: flex; padding-right: 16px;"'
,p_tag_css_classes=>'disallow-user-input'
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'to-date'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_02=>'&P28_ARRIVAL_DATE_MIN.'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'2026:3000'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(336403535728979611)
,p_name=>'P28_PREFERRED_ARRIVAL_TIME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1777953245199207508)
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
 p_id=>wwv_flow_api.id(336404149573979612)
,p_name=>'P28_DESTINATION_AIRPORT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1777955971583207535)
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
 p_id=>wwv_flow_api.id(336404908482979612)
,p_name=>'P28_TYPE_OF_TRAVEL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1777956928564207545)
,p_prompt=>'Type Of Travel:'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Round Trip;Round Trip,One Way;One Way'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(336409431845979618)
,p_name=>'P28_MODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1780125247865277933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(336409821479979618)
,p_name=>'P28_ACTION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1780125247865277933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(336410242580979618)
,p_name=>'P28_SELECTED_ASSIG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1780125247865277933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(336410573568979619)
,p_name=>'P28_SEE_MORE_ASSIGNMENT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1780125247865277933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(336411018331979619)
,p_name=>'P28_SEE_MORE_REQUEST_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1780125247865277933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(336411407751979619)
,p_name=>'P28_SEE_MORE_TICKET_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(1780125247865277933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(336411777827979619)
,p_name=>'P28_SEE_MORE_FORM_TYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(1780125247865277933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(336412553168979637)
,p_computation_sequence=>10
,p_computation_item=>'P28_ARRIVAL_DATE_MIN'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation=>'to_char(sysdate, ''Month DD, YYYY'')'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(336413022775979637)
,p_computation_sequence=>30
,p_computation_item=>'P28_SELECTED_MAIN_AIRPORT'
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
,p_compute_when_type=>'NEVER'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(336413395011979638)
,p_computation_sequence=>40
,p_computation_item=>'P28_DEPARTURE_DATE_MIN'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation=>'to_char(sysdate, ''Month DD, YYYY'')'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(336413759740979638)
,p_validation_name=>'Arrival Date From Is Not Null'
,p_validation_sequence=>10
,p_validation=>':P28_ARRIVAL_DATE_FROM is not null'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and (:P28_SEE_MORE_FORM_TYPE = ''New Shaliach'' OR :P28_TYPE_OF_TRAVEL = ''Round Trip'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(336402400553979611)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(336414173286979638)
,p_validation_name=>'Arrival Date To Is Not Null'
,p_validation_sequence=>30
,p_validation=>':P28_ARRIVAL_DATE_TO is not null'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and (:P28_SEE_MORE_FORM_TYPE = ''New Shaliach'' OR :P28_TYPE_OF_TRAVEL = ''Round Trip'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(336402777449979611)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(336415007010979639)
,p_validation_name=>'Arrival Date From Is Bigger Than To'
,p_validation_sequence=>50
,p_validation=>'to_date(:P28_ARRIVAL_DATE_FROM, ''Month DD, YYYY'') <= to_date(:P28_ARRIVAL_DATE_TO, ''Month DD, YYYY'')'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Please select a date prior to &P28_ARRIVAL_DATE_TO.'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and (:P28_SEE_MORE_FORM_TYPE = ''New Shaliach'' OR :P28_TYPE_OF_TRAVEL = ''Round Trip'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(336402400553979611)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(336414634438979639)
,p_validation_name=>'Destination Airport Is Not Null'
,p_validation_sequence=>70
,p_validation=>':P28_DESTINATION_AIRPORT is not null'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and (:P28_SEE_MORE_FORM_TYPE = ''New Shaliach'' OR :P28_TYPE_OF_TRAVEL = ''Round Trip'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(336404149573979612)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(336415346740979639)
,p_validation_name=>'Departure Date From Is Not Null'
,p_validation_sequence=>80
,p_validation=>':P28_DEPARTURE_DATE_FROM is not null'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P28_SEE_MORE_FORM_TYPE in (''Existing Shaliach'', ''New Shaliach With Departure'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(336398795851979606)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(336415750790979639)
,p_validation_name=>'Departure Date To Is Not Null'
,p_validation_sequence=>90
,p_validation=>':P28_DEPARTURE_DATE_TO is not null'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P28_SEE_MORE_FORM_TYPE in (''Existing Shaliach'', ''New Shaliach With Departure'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(336399152884979607)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(336416168155979639)
,p_validation_name=>'Departure Date From Is Bigger Than To'
,p_validation_sequence=>100
,p_validation=>'to_date(:P28_DEPARTURE_DATE_FROM, ''Month DD, YYYY'') <= to_date(:P28_DEPARTURE_DATE_TO, ''Month DD, YYYY'')'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Please select a date prior to &P28_DEPARTURE_DATE_TO.'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P28_SEE_MORE_FORM_TYPE in (''Existing Shaliach'', ''New Shaliach With Departure'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(336398795851979606)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(336417041212979640)
,p_validation_name=>'Departure Date From Is Bigger Than Departure Date To'
,p_validation_sequence=>110
,p_validation=>'to_date(:P28_DEPARTURE_DATE_FROM, ''Month DD, YYYY'') >= to_date(:P28_ARRIVAL_DATE_TO, ''Month DD, YYYY'')'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Please select a date later than &P28_ARRIVAL_DATE_TO.'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P28_SEE_MORE_FORM_TYPE in (''Existing Shaliach'', ''New Shaliach With Departure'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(336398795851979606)
,p_error_display_location=>'INLINE_WITH_FIELD'
,p_validation_comment=>'add by Vita '
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(336416563652979639)
,p_validation_name=>'Departure Airport Is Not Null'
,p_validation_sequence=>120
,p_validation=>':P28_DEPARTURE_AIRPORT is not null'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P28_SEE_MORE_FORM_TYPE in (''Existing Shaliach'', ''New Shaliach With Departure'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(336397020592979604)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(336419953361979644)
,p_name=>'Hide Show More On Max Rows Change'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P28_MAX_ROWS'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'parseInt($v(''P28_MAX_ROWS'')) >= parseInt($v(''P28_ROWS_COUNT''))',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(336420409200979645)
,p_name=>'New Shlichim Select\Unselect Click'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#newShlichimRegion .check-icon'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336420882074979645)
,p_event_id=>wwv_flow_api.id(336420409200979645)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setSelectedShalich(this.triggeringElement, ''COMMUNITY_NewShlichim'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(336427615281979648)
,p_name=>'Existing Shlichim Select\Unselect Click'
,p_event_sequence=>60
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#existingShlichimRegion .check-icon'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336428138006979648)
,p_event_id=>wwv_flow_api.id(336427615281979648)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setSelectedShalich(this.triggeringElement, ''COMMUNITY_ExistingShlichim'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(336421296800979645)
,p_name=>'See More Click'
,p_event_sequence=>70
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.see-more'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336421772169979645)
,p_event_id=>wwv_flow_api.id(336421296800979645)
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
'$s(''P28_SEE_MORE_ASSIGNMENT_ID'', assignmentId);',
'',
'var html = ''<div class="community-photo" title="'' + name + ''" style="width: 69px; height: 69px; border: 1px solid #E84C26; border-radius: 35px; background-color: #D9D9D9; background-image: url('' + photoUrl + ''); background-size: cover; background-rep'
||'eat: no-repeat; background-position: center;"></div>'';',
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
 p_id=>wwv_flow_api.id(336422248798979646)
,p_event_id=>wwv_flow_api.id(336421296800979645)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1787545947592984748)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336424253688979647)
,p_event_id=>wwv_flow_api.id(336421296800979645)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1139043879191497252)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336423803930979646)
,p_event_id=>wwv_flow_api.id(336421296800979645)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1789809703335633406)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336424823142979647)
,p_event_id=>wwv_flow_api.id(336421296800979645)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1139044912524497262)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336422802362979646)
,p_event_id=>wwv_flow_api.id(336421296800979645)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1787545371364984742)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336423327001979646)
,p_event_id=>wwv_flow_api.id(336421296800979645)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P28_MODE'') == ''NEW'') {',
'    $(''#CreateFlightRequestContainerID'').hide();',
'} else {',
'    $(''#CreateFlightRequestContainerID'').show();',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(336437549914979652)
,p_name=>'See More Request Edit Click'
,p_event_sequence=>71
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#myRequestsRegion .edit-request-btn[data-status="Pending"], #myRequestsRegion .edit-flight-btn, #myRequestsRegionMobile .edit-request-btn[data-status="Pending"], #myRequestsRegionMobile .edit-flight-btn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336438085300979653)
,p_event_id=>wwv_flow_api.id(336437549914979652)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(336394347729979601)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336438600533979653)
,p_event_id=>wwv_flow_api.id(336437549914979652)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_TYPE_OF_TRAVEL,P28_DESTINATION_AIRPORT,P28_ARRIVAL_DATE_FROM,P28_ARRIVAL_DATE_TO,P28_PREFERRED_ARRIVAL_TIME,P28_DEPARTURE_AIRPORT,P28_DEPARTURE_DATE_FROM,P28_DEPARTURE_DATE_TO,P28_PREFERRED_DEPARTURE_TIME,P28_REMARKS,P28_I_CONFIRM_NEW'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336439139705979653)
,p_event_id=>wwv_flow_api.id(336437549914979652)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#newShlichimRegion'').hide();',
'$(''#existingShlichimRegion'').hide();',
'var formType = $(this.triggeringElement).data(''form-type'');',
'$s(''P28_SEE_MORE_FORM_TYPE'', formType);',
'var selectedRDS = $(''.apex-rds-selected a'').attr(''href'');',
'var formTitle = '''';',
'',
'if (formType == ''New Shaliach'') {',
'    formTitle = ''Edit Request'';',
'    newShlichim = [];',
'    newShlichim.push({assignmentId: $v(''P28_SEE_MORE_ASSIGNMENT_ID'')});',
'    $(''#newShlichimSubmitMessage'').show();    ',
'    $(''#arrivalDateFieldsContainer'').show();',
'    $(''#existingShlichimFieldsContainer'').hide();',
'    $(''#typeOfTravelContainer'').hide();',
'}',
'else if (formType == ''Existing Shaliach'') {',
'    formTitle = ''Edit Request for Existing Shlichim'';',
'    existingShlichim = [];',
'    existingShlichim.push({assignmentId: $v(''P28_SEE_MORE_ASSIGNMENT_ID'')});',
'    $(''#newShlichimSubmitMessage'').hide();',
'    $(''#arrivalDateFieldsContainer'').hide();',
'    $(''#existingShlichimFieldsContainer'').show();',
'    $(''#typeOfTravelContainer'').show();',
'}',
'else if (formType == ''New Shaliach With Departure'') {',
'    formTitle = ''Edit Request'';',
'    newShlichim = [];',
'    newShlichim.push({assignmentId: $v(''P28_SEE_MORE_ASSIGNMENT_ID'')});',
'    $(''#newShlichimSubmitMessage'').show();    ',
'    $(''#arrivalDateFieldsContainer'').show();',
'    $(''#existingShlichimFieldsContainer'').show();',
'    $(''#P28_DESTINATION_AIRPORT_CONTAINER'').show();',
'    $(''#P28_DESTINATION_AIRPORT_DISABLED_CONTAINER'').hide();',
'    $(''#typeOfTravelContainer'').hide();',
'}',
'$(''.create-form-title'').text(formTitle);',
'',
'var shaliachName = $(''.see-more-shaliach-name'').text();',
'var styleAttr = $(''.see-more-shaliach-image .community-photo'').attr(''style'');',
'var startIdx = styleAttr.indexOf(''url('') + 4;',
'styleAttr = styleAttr.substr(startIdx);',
'var endIdx = styleAttr.indexOf('');'');',
'var photoUrl = styleAttr.substr(0, endIdx);',
'var html = ''<div class="community-photo" title="'' + shaliachName + ''" style="width: 69px; height: 69px; border: 1px solid #E84C26; border-radius: 35px; background-color: #D9D9D9; background-image: url('' + photoUrl + ''); background-size: cover; backgr'
||'ound-repeat: no-repeat; background-position: center;"></div>'';',
'$(''.create-shaliach-image'').html(html);',
'$(''.create-shaliach-name'').text(shaliachName);',
'',
'$(''#singleShaliachImageRegion'').show();',
'$(''#multipleShlichimImagesRegion'').hide();',
'',
'var requestId = $(this.triggeringElement).data(''request-id'');',
'$s(''P28_SEE_MORE_REQUEST_ID'', requestId);',
'$s(''P28_ACTION'', ''U'');'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336440571971979654)
,p_event_id=>wwv_flow_api.id(336437549914979652)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select paei.aei_information10,',
'           paei.aei_information11,',
'           paei.aei_information12,',
'           paei.aei_information13,',
'           ',
'           (select t.short_text ',
'              from fnd_documents_short_text t',
'              where t.media_id =  paei.aei_information15) remarks,  -- paei.aei_information15, ',
'',
'           ',
'           paei.aei_information4,',
'           case when paei.aei_information3 = ''New Shaliach'' then null',
'                when paei.aei_information3 = ''Existing Shaliach'' then paei.aei_information5 end,',
'           case when paei.aei_information3 = ''New Shaliach'' then null',
'                when paei.aei_information3 = ''Existing Shaliach'' then paei.aei_information6 end,',
'           case when paei.aei_information3 = ''New Shaliach'' then null',
'                when paei.aei_information3 = ''Existing Shaliach'' then paei.aei_information7 end,',
'           case when paei.aei_information3 = ''New Shaliach'' then null',
'                when paei.aei_information3 = ''Existing Shaliach'' then paei.aei_information8 end',
'               ',
'    into   :P28_DESTINATION_AIRPORT,',
'           :P28_ARRIVAL_DATE_FROM,',
'           :P28_ARRIVAL_DATE_TO,',
'           :P28_PREFERRED_ARRIVAL_TIME,',
'           :P28_REMARKS,',
'           :P28_TYPE_OF_TRAVEL,',
'           :P28_DEPARTURE_AIRPORT,',
'           :P28_DEPARTURE_DATE_FROM,',
'           :P28_DEPARTURE_DATE_TO,',
'           :P28_PREFERRED_DEPARTURE_TIME',
'         ',
'    from   PER_ASSIGNMENT_EXTRA_INFO PAEI',
'    where  PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS'' and',
'           PAEI.aei_information1 = :P28_SEE_MORE_REQUEST_ID;',
'           ',
'    APEX_UTIL.SET_SESSION_STATE(''P28_ACTION'', ''U'');',
'end;'))
,p_attribute_02=>'P28_SEE_MORE_REQUEST_ID,P28_ACTION'
,p_attribute_03=>'P28_SEE_MORE_REQUEST_ID,P28_DESTINATION_AIRPORT,P28_ARRIVAL_DATE_FROM,P28_ARRIVAL_DATE_TO,P28_PREFERRED_ARRIVAL_TIME,P28_REMARKS,P28_TYPE_OF_TRAVEL,P28_DEPARTURE_AIRPORT,P28_DEPARTURE_DATE_FROM,P28_DEPARTURE_DATE_TO,P28_PREFERRED_DEPARTURE_TIME,P28_A'
||'CTION'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336439630412979653)
,p_event_id=>wwv_flow_api.id(336437549914979652)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1774187146588293319)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336440086115979653)
,p_event_id=>wwv_flow_api.id(336437549914979652)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1787545371364984742)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336441084016979654)
,p_event_id=>wwv_flow_api.id(336437549914979652)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.body.scrollTop = document.documentElement.scrollTop = 0;'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(336441475464979654)
,p_name=>'See More Flight Edit Click'
,p_event_sequence=>72
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#myFlightsRegion .edit-flight-btn, #myFlightsRegionMobile .edit-flight-btn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336442017635979654)
,p_event_id=>wwv_flow_api.id(336441475464979654)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(336394347729979601)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336442509448979654)
,p_event_id=>wwv_flow_api.id(336441475464979654)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_TYPE_OF_TRAVEL,P28_DESTINATION_AIRPORT,P28_ARRIVAL_DATE_FROM,P28_ARRIVAL_DATE_TO,P28_PREFERRED_ARRIVAL_TIME,P28_DEPARTURE_AIRPORT,P28_DEPARTURE_DATE_FROM,P28_DEPARTURE_DATE_TO,P28_PREFERRED_DEPARTURE_TIME,P28_REMARKS,P28_I_CONFIRM_NEW'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336442997263979655)
,p_event_id=>wwv_flow_api.id(336441475464979654)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#newShlichimRegion'').hide();',
'$(''#existingShlichimRegion'').hide();',
'var formType = $(this.triggeringElement).data(''form-type'');',
'$s(''P28_SEE_MORE_FORM_TYPE'', formType);',
'var selectedRDS = $(''.apex-rds-selected a'').attr(''href'');',
'var formTitle = '''';',
'//if (selectedRDS == ''#newShlichimRegion'') {',
'if (formType == ''New Shaliach'') {',
'    formTitle = ''Edit Request'';',
'    newShlichim = [];',
'    newShlichim.push({assignmentId: $v(''P28_SEE_MORE_ASSIGNMENT_ID'')});',
'    $(''#newShlichimSubmitMessage'').show();    ',
'    $(''#arrivalDateFieldsContainer'').show();',
'    $(''#existingShlichimFieldsContainer'').hide();',
'    $(''#typeOfTravelContainer'').hide();',
'}',
'//else if (selectedRDS == ''#existingShlichimRegion'') {',
'else if (formType == ''Existing Shaliach'') {',
'    formTitle = ''Edit Request for Existing Shlichim'';',
'    existingShlichim = [];',
'    existingShlichim.push({assignmentId: $v(''P28_SEE_MORE_ASSIGNMENT_ID'')});',
'    $(''#newShlichimSubmitMessage'').hide();',
'    $(''#arrivalDateFieldsContainer'').hide();',
'    $(''#existingShlichimFieldsContainer'').show();',
'    $(''#typeOfTravelContainer'').show();',
'}',
'else if (formType == ''New Shaliach With Departure'') {',
'    formTitle = ''Edit Request'';',
'    newShlichim = [];',
'    newShlichim.push({assignmentId: $v(''P28_SEE_MORE_ASSIGNMENT_ID'')});',
'    $(''#newShlichimSubmitMessage'').show();    ',
'    $(''#arrivalDateFieldsContainer'').show();',
'    $(''#existingShlichimFieldsContainer'').show();',
'    $(''#typeOfTravelContainer'').hide();',
'    $(''#P28_DESTINATION_AIRPORT_CONTAINER'').show();',
'    $(''#P28_DESTINATION_AIRPORT_DISABLED_CONTAINER'').hide();',
'}',
'',
'var shaliachName = $(''.see-more-shaliach-name'').text();',
'var styleAttr = $(''.see-more-shaliach-image .community-photo'').attr(''style'');',
'var startIdx = styleAttr.indexOf(''url('') + 4;',
'styleAttr = styleAttr.substr(startIdx);',
'var endIdx = styleAttr.indexOf('');'');',
'var photoUrl = styleAttr.substr(0, endIdx);',
'var html = ''<div class="community-photo" title="'' + shaliachName + ''" style="width: 69px; height: 69px; border: 1px solid #E84C26; border-radius: 35px; background-color: #D9D9D9; background-image: url('' + photoUrl + ''); background-size: cover; backgr'
||'ound-repeat: no-repeat; background-position: center;"></div>'';',
'$(''.create-form-title'').text(formTitle);',
'$(''.create-shaliach-image'').html(html);',
'$(''.create-shaliach-name'').text(shaliachName);',
'',
'$(''#singleShaliachImageRegion'').show();',
'$(''#multipleShlichimImagesRegion'').hide();',
'',
'var requestId = $(this.triggeringElement).data(''request-id'');',
'$s(''P28_SEE_MORE_REQUEST_ID'', requestId);',
'$s(''P28_ACTION'', ''U'');'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336444470058979655)
,p_event_id=>wwv_flow_api.id(336441475464979654)
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
'           paei.aei_information4,',
'           case when paei.aei_information3 = ''New Shaliach'' then null',
'                when paei.aei_information3 = ''Existing Shaliach'' then paei.aei_information5 end,',
'           case when paei.aei_information3 = ''New Shaliach'' then null',
'                when paei.aei_information3 = ''Existing Shaliach'' then paei.aei_information6 end,',
'           case when paei.aei_information3 = ''New Shaliach'' then null',
'                when paei.aei_information3 = ''Existing Shaliach'' then paei.aei_information7 end,',
'           case when paei.aei_information3 = ''New Shaliach'' then null',
'                when paei.aei_information3 = ''Existing Shaliach'' then paei.aei_information8 end               ',
'    into   :P28_DESTINATION_AIRPORT,',
'           :P28_ARRIVAL_DATE_FROM,',
'           :P28_ARRIVAL_DATE_TO,',
'           :P28_PREFERRED_ARRIVAL_TIME,',
'           :P28_REMARKS,',
'           :P28_TYPE_OF_TRAVEL,',
'           :P28_DEPARTURE_AIRPORT,',
'           :P28_DEPARTURE_DATE_FROM,',
'           :P28_DEPARTURE_DATE_TO,',
'           :P28_PREFERRED_DEPARTURE_TIME',
'    from   PER_ASSIGNMENT_EXTRA_INFO PAEI',
'    where  PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS'' and',
'           PAEI.aei_information1 = :P28_SEE_MORE_REQUEST_ID;',
'',
'',
'    APEX_UTIL.SET_SESSION_STATE(''P28_ACTION'', ''U'');',
'--exception when no_data_found then null;',
'end;'))
,p_attribute_02=>'P28_SEE_MORE_REQUEST_ID,P28_ACTION'
,p_attribute_03=>'P28_SEE_MORE_REQUEST_ID,P28_DESTINATION_AIRPORT,P28_ARRIVAL_DATE_FROM,P28_ARRIVAL_DATE_TO,P28_PREFERRED_ARRIVAL_TIME,P28_REMARKS,P28_TYPE_OF_TRAVEL,P28_DEPARTURE_AIRPORT,P28_DEPARTURE_DATE_FROM,P28_DEPARTURE_DATE_TO,P28_PREFERRED_DEPARTURE_TIME,P28_A'
||'CTION,P28_ACTION'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
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
 p_id=>wwv_flow_api.id(336444028940979655)
,p_event_id=>wwv_flow_api.id(336441475464979654)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1774187146588293319)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336443519340979655)
,p_event_id=>wwv_flow_api.id(336441475464979654)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1787545371364984742)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336445012272979655)
,p_event_id=>wwv_flow_api.id(336441475464979654)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.body.scrollTop = document.documentElement.scrollTop = 0;'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(336445400631979655)
,p_name=>'See More Create Flight Request Click'
,p_event_sequence=>73
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.create-flight-request-btn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336445914875979656)
,p_event_id=>wwv_flow_api.id(336445400631979655)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(336394347729979601)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336447406935979657)
,p_event_id=>wwv_flow_api.id(336445400631979655)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_TYPE_OF_TRAVEL,P28_DESTINATION_AIRPORT,P28_ARRIVAL_DATE_FROM,P28_ARRIVAL_DATE_TO,P28_PREFERRED_ARRIVAL_TIME,P28_DEPARTURE_AIRPORT,P28_DEPARTURE_DATE_FROM,P28_DEPARTURE_DATE_TO,P28_PREFERRED_DEPARTURE_TIME,P28_REMARKS,P28_I_CONFIRM_NEW'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336446931297979656)
,p_event_id=>wwv_flow_api.id(336445400631979655)
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
'    $s(''P28_SEE_MORE_FORM_TYPE'', ''New Shaliach'');',
'    formTitle = ''Create Request'';',
'    newShlichim = [];',
'    newShlichim.push({assignmentId: $v(''P28_SEE_MORE_ASSIGNMENT_ID'')}); ',
'    $(''#newShlichimSubmitMessage'').show();    ',
'    $(''#arrivalDateFieldsContainer'').show();',
'    $(''#existingShlichimFieldsContainer'').hide();',
'    $(''#typeOfTravelContainer'').hide();',
'    ',
'}',
'else if (selectedRDS == ''#existingShlichimRegion'') {',
'    $s(''P28_SEE_MORE_FORM_TYPE'', ''Existing Shaliach'');',
'    formTitle = ''Create Request for Existing Shlichim'';',
'    existingShlichim = [];',
'    existingShlichim.push({assignmentId: $v(''P28_SEE_MORE_ASSIGNMENT_ID'')});',
'    $(''#newShlichimSubmitMessage'').hide();',
'    $(''#arrivalDateFieldsContainer'').hide();',
'    $(''#existingShlichimFieldsContainer'').show();',
'    $(''#typeOfTravelContainer'').show();',
'}',
'$(''.create-form-title'').text(formTitle);',
'',
'var shaliachName = $(''.see-more-shaliach-name'').text();',
'var styleAttr = $(''.see-more-shaliach-image .community-photo'').attr(''style'');',
'var startIdx = styleAttr.indexOf(''url('') + 4;',
'styleAttr = styleAttr.substr(startIdx);',
'var endIdx = styleAttr.indexOf('');'');',
'var photoUrl = styleAttr.substr(0, endIdx);',
'var html = ''<div class="community-photo" title="'' + shaliachName + ''" style="width: 69px; height: 69px; border: 1px solid #E84C26; border-radius: 35px; background-color: #D9D9D9; background-image: url('' + photoUrl + ''); background-size: cover; backgr'
||'ound-repeat: no-repeat; background-position: center;"></div>'';',
'$(''.create-shaliach-image'').html(html);',
'$(''.create-shaliach-name'').text(shaliachName);',
'',
'$(''#singleShaliachImageRegion'').show();',
'$(''#multipleShlichimImagesRegion'').hide();',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336446368291979656)
,p_event_id=>wwv_flow_api.id(336445400631979655)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1774187146588293319)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336448429672979657)
,p_event_id=>wwv_flow_api.id(336445400631979655)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  APEX_UTIL.SET_SESSION_STATE(''P28_ACTION'', ''N'');',
'  APEX_UTIL.SET_SESSION_STATE(''P28_DESTINATION_AIRPORT'', null);',
'  --APEX_UTIL.SET_SESSION_STATE(''P28_DESTINATION_AIRPORT'', :P28_SELECTED_MAIN_AIRPORT); --Add to items to submit!',
'END;'))
,p_attribute_02=>'P28_ACTION'
,p_attribute_03=>'P28_ACTION,P28_DESTINATION_AIRPORT'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336449353724979657)
,p_event_id=>wwv_flow_api.id(336445400631979655)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_DESTINATION_AIRPORT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336448909864979657)
,p_event_id=>wwv_flow_api.id(336445400631979655)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P28_TYPE_OF_TRAVEL_0'').click();',
'$(''#P28_TYPE_OF_TRAVEL_0'').change();'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336447932703979657)
,p_event_id=>wwv_flow_api.id(336445400631979655)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1787545371364984742)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336449933170979658)
,p_event_id=>wwv_flow_api.id(336445400631979655)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.body.scrollTop = document.documentElement.scrollTop = 0;'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(336425178396979647)
,p_name=>'Initialize'
,p_event_sequence=>91
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336425742623979647)
,p_event_id=>wwv_flow_api.id(336425178396979647)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_SEE_MORE_ASSIGNMENT_ID,P28_SELECTED_ASSIG'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    //Initialize page state',
'    sessionStorage.removeItem(''COMMUNITY_NewShlichim'');',
'    sessionStorage.removeItem(''COMMUNITY_ExistingShlichim'');',
'',
'    //$s(''P28_SELECTED_ASSIG'', '''');',
'    //$s(''P28_SEE_MORE_ASSIGNMENT_ID'', '''');',
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
'    if (($(''#newShlichimRegion .nodatafound'').length > 0 && $v(''P28_MODE'') == ''NEW'') ||',
'        ($(''#existingShlichimRegion .nodatafound'').length > 0 && $v(''P28_MODE'') == ''EXISTING'')) {',
'        $(''#createFlightRequestBtn'').hide();',
'    }',
'    else {',
'        $(''#createFlightRequestBtn'').show();',
'    }',
'',
'    if ($v(''P28_LETS_START_CLICK'') == ''Y'') {',
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
 p_id=>wwv_flow_api.id(336427217335979648)
,p_event_id=>wwv_flow_api.id(336425178396979647)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.SET_SESSION_STATE(''P28_MODE'', :P28_MODE);',
'',
':P28_SELECTED_ASSIG := '''';',
':P28_SEE_MORE_ASSIGNMENT_ID := '''';'))
,p_attribute_02=>'P28_MODE,P28_SELECTED_ASSIG,P28_SEE_MORE_ASSIGNMENT_ID'
,p_attribute_03=>'P28_MODE,P28_SELECTED_ASSIG,P28_SEE_MORE_ASSIGNMENT_ID'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336426717877979648)
,p_event_id=>wwv_flow_api.id(336425178396979647)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P28_SELECTED_ASSIG :=null;'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336426178526979647)
,p_event_id=>wwv_flow_api.id(336425178396979647)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_DESTINATION_AIRPORT_DISABLED'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(336428455592979648)
,p_name=>'RDS Click'
,p_event_sequence=>101
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#rds a'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336429443421979649)
,p_event_id=>wwv_flow_api.id(336428455592979648)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_MODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selectedRDS = $(''.apex-rds-selected a'').attr(''href'');',
'var sessionKey = '''';',
'',
'if (selectedRDS == ''#newShlichimRegion'') { ',
'    sessionKey = ''COMMUNITY_NewShlichim'';',
'    $s(''P28_MODE'', ''NEW'');',
'}',
'else if (selectedRDS == ''#existingShlichimRegion'') {',
'    sessionKey = ''COMMUNITY_ExistingShlichim'';',
'    $s(''P28_MODE'', ''EXISTING'');',
'}',
'',
'$(selectedRDS).show();',
'setCreateFlightRequestsButton(sessionKey);',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336428969490979649)
,p_event_id=>wwv_flow_api.id(336428455592979648)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'APEX_UTIL.SET_SESSION_STATE(''P28_MODE'', :P28_MODE);'
,p_attribute_02=>'P28_MODE'
,p_attribute_03=>'P28_MODE'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336429992830979649)
,p_event_id=>wwv_flow_api.id(336428455592979648)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1774187146588293319)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336430479136979649)
,p_event_id=>wwv_flow_api.id(336428455592979648)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($(''#newShlichimRegion .nodatafound'').length > 0 && $v(''P28_MODE'') == ''NEW'') ||',
'    ($(''#existingShlichimRegion .nodatafound'').length > 0 && $v(''P28_MODE'') == ''EXISTING'')) {',
'    $(''#createFlightRequestBtn'').hide();',
'}',
'else {',
'    $(''#createFlightRequestBtn'').show();',
'}',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(336434804555979651)
,p_name=>'Close Create Flight Request Form'
,p_event_sequence=>111
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.close-create-form'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336435328245979651)
,p_event_id=>wwv_flow_api.id(336434804555979651)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selectedRDS = $(''.apex-rds-selected a'').attr(''href'');',
'var sessionKey = '''';',
'',
'if (selectedRDS == ''#newShlichimRegion'') {',
'    sessionKey = ''COMMUNITY_NewShlichim'';',
'    newShlichim = [];',
'}',
'else if (selectedRDS == ''#existingShlichimRegion'') {',
'    sessionKey = ''COMMUNITY_ExistingShlichim'';',
'    existingShlichim = [];',
'}',
'apex.message.clearErrors();',
'apex.region(selectedRDS.substring(1)).refresh();',
'$(selectedRDS).show();',
'setCreateFlightRequestsButton(sessionKey);'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336435800860979652)
,p_event_id=>wwv_flow_api.id(336434804555979651)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1774187146588293319)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336436301780979652)
,p_event_id=>wwv_flow_api.id(336434804555979651)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(336394347729979601)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(336430927915979649)
,p_name=>'Create Flight Request Click'
,p_event_sequence=>121
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(336394347729979601)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336431382397979650)
,p_event_id=>wwv_flow_api.id(336430927915979649)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(336394347729979601)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336434406035979651)
,p_event_id=>wwv_flow_api.id(336430927915979649)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_TYPE_OF_TRAVEL,P28_DESTINATION_AIRPORT,P28_ARRIVAL_DATE_FROM,P28_ARRIVAL_DATE_TO,P28_PREFERRED_ARRIVAL_TIME,P28_DEPARTURE_AIRPORT,P28_DEPARTURE_DATE_FROM,P28_DEPARTURE_DATE_TO,P28_PREFERRED_DEPARTURE_TIME,P28_REMARKS,P28_I_CONFIRM_NEW'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336433409832979651)
,p_event_id=>wwv_flow_api.id(336430927915979649)
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
'    $s(''P28_SEE_MORE_FORM_TYPE'', ''New Shaliach'');',
'    formTitle = ''Create Request'';',
'    selectedShlichim = newShlichim;',
'    $(''#newShlichimSubmitMessage'').show();    ',
'    $(''#arrivalDateFieldsContainer'').show();',
'    $(''#existingShlichimFieldsContainer'').hide();',
'    $(''#typeOfTravelContainer'').hide();',
'}',
'else if (selectedRDS == ''#existingShlichimRegion'') {',
'    $s(''P28_SEE_MORE_FORM_TYPE'', ''Existing Shaliach'');',
'    formTitle = ''Create Request for Existing Shlichim'';',
'    selectedShlichim = existingShlichim;',
'    $(''#newShlichimSubmitMessage'').hide();',
'    $(''#arrivalDateFieldsContainer'').hide();',
'    $(''#existingShlichimFieldsContainer'').show();',
'    $(''#typeOfTravelContainer'').show();',
'}',
'$(''.create-form-title'').text(formTitle);',
'$(''#P28_DESTINATION_AIRPORT_DISABLED_CONTAINER'').hide();',
'$(''#P28_DESTINATION_AIRPORT_CONTAINER'').show();',
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
'        html = html + ''<div class="community-photo" title="'' + selectedShlichim[i].name + ''" style="'' + marginProperty + ''width: 37px; height: 37px; border: 1px solid #E84C26; border-radius: 35px; background-color: #D9D9D9; background-image: url('' + '
||'selectedShlichim[i].photoUrl + ''); background-size: cover; background-repeat: no-repeat; background-position: center;"></div>'';',
'    }',
'    $(''.create-shlichim-images'').html(html);',
'    $(''.create-shlichim-count'').text(selectedShlichim.length + '' Selected Shlichim'');',
'    $(''#multipleShlichimImagesRegion'').show();',
'    $(''#singleShaliachImageRegion'').hide();',
'}',
'else if (selectedShlichim.length === 1) { //Single',
'    var html = ''<div class="community-photo" title="'' + selectedShlichim[0].name + ''" style="width: 69px; height: 69px; border: 1px solid #E84C26; border-radius: 35px; background-color: #D9D9D9; background-image: url('' + selectedShlichim[0].photoUrl '
||'+ ''); background-size: cover; background-repeat: no-repeat; background-position: center;"></div>'';',
'    $(''.create-shaliach-image'').html(html);',
'    $(''.create-shaliach-name'').text(selectedShlichim[0].name);',
'    ',
'    $(''#singleShaliachImageRegion'').show();',
'    $(''#multipleShlichimImagesRegion'').hide();',
'}'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336432885779979650)
,p_event_id=>wwv_flow_api.id(336430927915979649)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1774187146588293319)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336432391248979650)
,p_event_id=>wwv_flow_api.id(336430927915979649)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  APEX_UTIL.SET_SESSION_STATE(''P28_ACTION'', ''N'');',
'  APEX_UTIL.SET_SESSION_STATE(''P28_DESTINATION_AIRPORT'', null);',
'  --APEX_UTIL.SET_SESSION_STATE(''P28_DESTINATION_AIRPORT'', :P28_SELECTED_MAIN_AIRPORT); --Add to items to submit!',
'END;'))
,p_attribute_02=>'P28_ACTION'
,p_attribute_03=>'P28_ACTION,P28_DESTINATION_AIRPORT'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336433903903979651)
,p_event_id=>wwv_flow_api.id(336430927915979649)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_DESTINATION_AIRPORT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336431869879979650)
,p_event_id=>wwv_flow_api.id(336430927915979649)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P28_TYPE_OF_TRAVEL_0'').click();',
'$(''#P28_TYPE_OF_TRAVEL_0'').change();',
'document.body.scrollTop = document.documentElement.scrollTop = 0;'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(336417727942979642)
,p_name=>'I Confirm Change'
,p_event_sequence=>141
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P28_I_CONFIRM_NEW'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336418238106979643)
,p_event_id=>wwv_flow_api.id(336417727942979642)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P28_I_CONFIRM_NEW'') == ''Y'') {',
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
 p_id=>wwv_flow_api.id(336452732403979659)
,p_name=>'Type Of Travel Change'
,p_event_sequence=>151
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P28_TYPE_OF_TRAVEL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336453204410979659)
,p_event_id=>wwv_flow_api.id(336452732403979659)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selectedRDS = $(''.apex-rds-selected a'').attr(''href'');',
'if (selectedRDS == ''#existingShlichimRegion'') {',
'    var selectedValue = $(''input[type="radio"][name="P28_TYPE_OF_TRAVEL"]'').filter(function(i, e) { return $(e).is('':checked''); }).val();',
'    if (selectedValue) { ',
'        if (selectedValue == ''Round Trip'') {',
'            $(''#P28_DESTINATION_AIRPORT_CONTAINER'').show();',
'            $(''#P28_DESTINATION_AIRPORT_DISABLED_CONTAINER'').hide();',
'            $(''#arrivalDateFieldsContainer'').show();',
'        }',
'        else if (selectedValue == ''One Way'') {',
'            $(''#P28_DESTINATION_AIRPORT_CONTAINER'').hide();',
'            $(''#P28_DESTINATION_AIRPORT_DISABLED_CONTAINER'').show();',
'            $(''#arrivalDateFieldsContainer'').hide();',
'        }',
'    }',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(336418550769979644)
,p_name=>'Submit Click'
,p_event_sequence=>161
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(336395943620979603)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336419119953979644)
,p_event_id=>wwv_flow_api.id(336418550769979644)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_SELECTED_ASSIG'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selectedShlichim = $v(''P28_SEE_MORE_FORM_TYPE'') === ''New Shaliach'' ? newShlichim : existingShlichim;',
'var assignmentIds = selectedShlichim.length > 1 ? selectedShlichim.map(function(shliach) { return shliach.assignmentId; }).join('', '') : selectedShlichim[0].assignmentId;',
'$s(''P28_SELECTED_ASSIG'', assignmentIds);',
'',
'document.body.scrollTop = document.documentElement.scrollTop = 0;',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336419585174979644)
,p_event_id=>wwv_flow_api.id(336418550769979644)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'UpdateFlightRequest'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(336450255408979658)
,p_name=>'Lets Start Click'
,p_event_sequence=>171
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(336387391101979587)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336452334284979658)
,p_event_id=>wwv_flow_api.id(336450255408979658)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  APEX_UTIL.SET_SESSION_STATE(''P28_LETS_START_CLICK'', ''Y'');',
'END;'))
,p_attribute_02=>'P28_LETS_START_CLICK'
,p_attribute_03=>'P28_LETS_START_CLICK'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336450758894979658)
,p_event_id=>wwv_flow_api.id(336450255408979658)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1811126439444782914)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336451286570979658)
,p_event_id=>wwv_flow_api.id(336450255408979658)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1811126401408782913)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336451764326979658)
,p_event_id=>wwv_flow_api.id(336450255408979658)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(336389849662979595)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(336436714760979652)
,p_name=>'TEST'
,p_event_sequence=>1810
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#rds'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336437211960979652)
,p_event_id=>wwv_flow_api.id(336436714760979652)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//alert(''rds change!\nselected rds = '' + $(''.apex-rds-selected a'').attr(''href''));',
'    ',
'var selectedRDS = $(''.apex-rds-selected a'').attr(''href'');     ',
'var sessionKey = '''';     ',
'',
'if (selectedRDS == ''#newShlichimRegion'') {          ',
'    sessionKey = ''COMMUNITY_NewShlichim'';         ',
'    $s(''P28_MODE'', ''NEW'');     ',
'}     ',
'else if (selectedRDS == ''#existingShlichimRegion'') {         ',
'    sessionKey = ''COMMUNITY_ExistingShlichim'';         ',
'    $s(''P28_MODE'', ''EXISTING'');     ',
'}      ',
'',
'$(selectedRDS).show();     ',
'setCreateFlightRequestsButton(sessionKey); ',
'',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(336453603833979659)
,p_name=>'Back To General Info Click'
,p_event_sequence=>1820
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(336389849662979595)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336454630254979659)
,p_event_id=>wwv_flow_api.id(336453603833979659)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  APEX_UTIL.SET_SESSION_STATE(''P28_LETS_START_CLICK'', ''N'');',
'END;'))
,p_attribute_02=>'P28_LETS_START_CLICK'
,p_attribute_03=>'P28_LETS_START_CLICK'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336454067320979659)
,p_event_id=>wwv_flow_api.id(336453603833979659)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1811126439444782914)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336455051853979659)
,p_event_id=>wwv_flow_api.id(336453603833979659)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1811126401408782913)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(336455610392979660)
,p_event_id=>wwv_flow_api.id(336453603833979659)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(336389849662979595)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(336417308267979640)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UpdateFlightRequest'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_remarks               varchar2(100) ;',
'   v_rest                  VARCHAR2(1000) := :P28_SELECTED_ASSIG;',
'   l_media_id              NUMBER :=0;',
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
'fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800);  ',
'',
'',
'IF :P28_SEE_MORE_FORM_TYPE LIKE ''New%'' THEN',
'    v_shaliah_type := ''New Shaliach'';',
'ELSE',
'    v_shaliah_type := ''Existing Shaliach'';',
'END IF;',
'',
'IF LENGTH(:P28_REMARKS) > 0 THEN',
'   select fnd_documents_short_text_s.nextval into l_media_id from dual;',
'   insert into fnd_documents_short_text    (media_id, short_text)     values   (l_media_id, :P28_REMARKS);',
'END IF;',
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
'              IF :P28_MODE = ''NEW'' THEN ',
'                 --v_shaliah_type := ''New Shaliach'';',
'                 BEGIN ',
'                  if :P28_ACTION = ''N'' then',
'                     SELECT flight_request_id.NEXTVAL into  v_request_id from dual ; ',
'                 ',
'                     hr_assignment_extra_info_api.create_assignment_extra_info(p_assignment_id      => v_assign_id',
'                                                                              ,p_information_type            => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                              ,p_aei_information_category    => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                              ,p_aei_information1     => v_request_id',
'                                                                              ,p_aei_information2     => :P28_ACTION  --- to check with dror ',
'                                                                              ,p_aei_information3     => ''New Shaliach''',
'                                                                              ,p_aei_information5     => :P28_DESTINATION_AIRPORT',
'                                                                              ,p_aei_information6     => ''Latest Possible''',
'                                                                              ,p_aei_information10    => :P28_DESTINATION_AIRPORT',
'                                                                              ,p_aei_information11    => :P28_ARRIVAL_DATE_FROM',
'                                                                              ,p_aei_information12    => :P28_ARRIVAL_DATE_TO',
'                                                                              ,p_aei_information13    => :P28_PREFERRED_ARRIVAL_TIME',
'                                                                              ,p_aei_information15    => l_media_id',
'                                                                             --Out Parameters',
'                                                                               ,p_assignment_extra_info_id  => v_assi_extra_info_id',
'                                                                               ,p_object_version_number => v_out_ovn);',
'   ',
'                      hr_assignment_extra_info_api.create_assignment_extra_info(p_assignment_id      => v_assign_id',
'                                                                               ,p_information_type            => ''JAFI_HR_FLIGHT_REQUESTS''',
'                                                                               ,p_aei_information_category    => ''JAFI_HR_FLIGHT_REQUESTS''',
'                                                                               ,p_aei_information1     => v_request_id',
'                                                                               ,p_aei_information2     => :P28_ACTION  --- to check with dror ',
'                                                                               ,p_aei_information3     => ''New Shaliach''',
'                                                                               ,p_aei_information5     => :P28_DESTINATION_AIRPORT',
'                                                                               ,p_aei_information6     => ''Latest Possible''',
'                                                                               ,p_aei_information10    => :P28_DESTINATION_AIRPORT',
'                                                                               ,p_aei_information11    => :P28_ARRIVAL_DATE_FROM',
'                                                                               ,p_aei_information12    => :P28_ARRIVAL_DATE_TO',
'                                                                               ,p_aei_information13    => :P28_PREFERRED_ARRIVAL_TIME',
'                                                                               ,p_aei_information15    => l_media_id',
'                                                                               --Out Parameters',
'                                                                               ,p_assignment_extra_info_id  => v_assi_extra_info_id',
'                                                                               ,p_object_version_number => v_out_ovn);',
'',
'                      elsif :P28_ACTION = ''U'' then',
'                                        ',
'                                               SELECT CASE WHEN :P28_DEPARTURE_AIRPORT IS NULL',
'                                                           THEN :P28_DESTINATION_AIRPORT',
'                                                      ELSE :P28_DEPARTURE_AIRPORT',
'                                                            END',
'                                                  INTO v_aei_information5',
'                                                  FROM DUAL;',
'                                                ',
'                                               ',
'                                               SELECT CASE WHEN  :P28_DEPARTURE_DATE_FROM IS NULL',
'                                                           THEN  ''Latest Possible''',
'                                                           ELSE :P28_DEPARTURE_DATE_FROM',
'                                                            END',
'                                                  INTO v_aei_information6',
'                                                  FROM DUAL;',
'                                              ',
'                                                                                          ',
'                             hr_assignment_extra_info_api.create_assignment_extra_info(p_assignment_id      => v_assign_id',
'                                                                                       ,p_information_type            => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                                       ,p_aei_information_category    => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                                       ,p_aei_information1     => :P28_SEE_MORE_REQUEST_ID',
'                                                                                       ,p_aei_information2     => :P28_ACTION  --- to check with dror ',
'                                                                                       ,p_aei_information3     => ''New Shaliach''',
'                                                                                       ,p_aei_information5     => v_aei_information5 ',
'                                                                                       ,p_aei_information6    => v_aei_information6  ',
'                                                                                       ,p_aei_information10    => :P28_DESTINATION_AIRPORT',
'                                                                                       ,p_aei_information11    => :P28_ARRIVAL_DATE_FROM',
'                                                                                       ,p_aei_information12    => :P28_ARRIVAL_DATE_TO',
'                                                                                       ,p_aei_information13    => :P28_PREFERRED_ARRIVAL_TIME',
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
'                                                and pei.aei_information1 =:P28_SEE_MORE_REQUEST_ID',
'                                                AND (INFORMATION_TYPE LIKE ''JAFI_HR_FLIGHT_REQUESTS'');',
'         ',
'                                                               hr_assignment_extra_info_api.update_assignment_extra_info  (p_validate    =>  false',
'                                                                                                                          ,p_assignment_extra_info_id => v_assi_extra_info_id',
'                                                                                                                          ,p_object_version_number => v_object_version_number',
'                                                                                                                          ,p_aei_information1     => :P28_SEE_MORE_REQUEST_ID',
'                                                                                                                          ,p_aei_information2     => :P28_ACTION    --- to check with dror ',
'                                                                                                                          --,p_aei_information3     => ''New Shaliach''',
'                                                                                                                          ,p_aei_information5     => v_aei_information5',
'                                                                                                                          ,p_aei_information6     => v_aei_information6',
'                                                                                                                          ,p_aei_information7     => :P28_DEPARTURE_DATE_TO',
'                                                                                                                          ,p_aei_information8     => :P28_PREFERRED_DEPARTURE_TIME',
'                                                                                                                          ,p_aei_information10    => :P28_DESTINATION_AIRPORT',
'                                                                                                                          ,p_aei_information11    => :P28_ARRIVAL_DATE_FROM',
'                                                                                                                          ,p_aei_information12    => :P28_ARRIVAL_DATE_TO',
'                                                                                                                          ,p_aei_information13    => :P28_PREFERRED_ARRIVAL_TIME',
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
'               if  :P28_TYPE_OF_TRAVEL  = ''One Way'' Then ',
'                   v_dest_airport  := NULL; ',
'               else',
'                   v_dest_airport  := :P28_DESTINATION_AIRPORT ; ',
'               end if;',
'               BEGIN',
'                   if :P28_ACTION = ''N'' then',
'                      SELECT flight_request_id.NEXTVAL into  v_request_id from dual ; ',
'                      hr_assignment_extra_info_api.create_assignment_extra_info(p_assignment_id      => v_assign_id',
'                                                                               ,p_information_type            => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                               ,p_aei_information_category    => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                               ,p_aei_information1     => v_request_id',
'                                                                               ,p_aei_information2     => :P28_ACTION  --- to check with dror ',
'                                                                               ,p_aei_information3     => v_shaliah_type',
'                                                                               ,p_aei_information4     => :P28_TYPE_OF_TRAVEL',
'                                                                               ,p_aei_information5     => :P28_DEPARTURE_AIRPORT',
'                                                                               ,p_aei_information6     => :P28_DEPARTURE_DATE_FROM',
'                                                                               ,p_aei_information7    => :P28_DEPARTURE_DATE_TO',
'                                                                               ,p_aei_information8    => :P28_PREFERRED_DEPARTURE_TIME',
'                                                                               ,p_aei_information10    => v_dest_airport',
'                                                                               ,p_aei_information11    => :P28_ARRIVAL_DATE_FROM',
'                                                                               ,p_aei_information12    => :P28_ARRIVAL_DATE_TO',
'                                                                               ,p_aei_information13    => :P28_PREFERRED_ARRIVAL_TIME',
'                                                                               ,p_aei_information15    => l_media_id',
'                                                                                --Out Parameters',
'                                                                               ,p_assignment_extra_info_id  => v_assi_extra_info_id',
'                                                                               ,p_object_version_number => v_out_ovn);',
'   ',
'                        hr_assignment_extra_info_api.create_assignment_extra_info(p_assignment_id      => v_assign_id',
'                                                                                 ,p_information_type            => ''JAFI_HR_FLIGHT_REQUESTS''',
'                                                                                 ,p_aei_information_category    => ''JAFI_HR_FLIGHT_REQUESTS''',
'                                                                                 ,p_aei_information1     => v_request_id',
'                                                                                 ,p_aei_information2     => :P28_ACTION  --- to check with dror ',
'                                                                                 ,p_aei_information3     => v_shaliah_type',
'                                                                                 ,p_aei_information4     => :P28_TYPE_OF_TRAVEL',
'                                                                                 ,p_aei_information5     => :P28_DEPARTURE_AIRPORT',
'                                                                                 ,p_aei_information6     => :P28_DEPARTURE_DATE_FROM',
'                                                                                 ,p_aei_information7    => :P28_DEPARTURE_DATE_TO',
'                                                                                 ,p_aei_information8    => :P28_PREFERRED_DEPARTURE_TIME',
'                                                                                 ,p_aei_information10    => v_dest_airport',
'                                                                                 ,p_aei_information11    => :P28_ARRIVAL_DATE_FROM',
'                                                                                 ,p_aei_information12    => :P28_ARRIVAL_DATE_TO',
'                                                                                 ,p_aei_information13    => :P28_PREFERRED_ARRIVAL_TIME',
'                                                                                 ,p_aei_information15    => l_media_id',
'                                                                                 --Out Parameters',
'                                                                                 ,p_assignment_extra_info_id  => v_assi_extra_info_id',
'                                                                                 ,p_object_version_number => v_out_ovn);',
'                                                                               ',
'                  elsif :P28_ACTION = ''U'' then',
'                                                                  ',
'                            hr_assignment_extra_info_api.create_assignment_extra_info(p_assignment_id      => v_assign_id',
'                                                                                     ,p_information_type            => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                                     ,p_aei_information_category    => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                                     ,p_aei_information1     => :P28_SEE_MORE_REQUEST_ID',
'                                                                                     ,p_aei_information2     => :P28_ACTION  --- to check with dror ',
'                                                                                     ,p_aei_information3     => v_shaliah_type',
'                                                                                     ,p_aei_information4     => :P28_TYPE_OF_TRAVEL',
'                                                                                     ,p_aei_information5     => :P28_DEPARTURE_AIRPORT',
'                                                                                     ,p_aei_information6     => :P28_DEPARTURE_DATE_FROM',
'                                                                                     ,p_aei_information7    => :P28_DEPARTURE_DATE_TO',
'                                                                                     ,p_aei_information8    => :P28_PREFERRED_DEPARTURE_TIME',
'                                                                                     ,p_aei_information10    => v_dest_airport',
'                                                                                     ,p_aei_information11    => :P28_ARRIVAL_DATE_FROM',
'                                                                                     ,p_aei_information12    => :P28_ARRIVAL_DATE_TO',
'                                                                                     ,p_aei_information13    => :P28_PREFERRED_ARRIVAL_TIME',
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
'                             and pei.aei_information1 = :P28_SEE_MORE_REQUEST_ID',
'                            AND (INFORMATION_TYPE LIKE ''JAFI_HR_FLIGHT_REQUESTS'');',
' ',
' ',
'                             hr_assignment_extra_info_api.update_assignment_extra_info  (p_validate    =>  false',
'                                                                                        ,p_assignment_extra_info_id => v_assi_extra_info_id',
'                                                                                        ,p_object_version_number => v_object_version_number',
'                                                                                        ,p_aei_information1     => :P28_SEE_MORE_REQUEST_ID',
'                                                                                        ,p_aei_information2     => :P28_ACTION   --- to check with dror ',
'                                                                                        --,p_aei_information3     => v_shaliah_type',
'                                                                                        ,p_aei_information4     => :P28_TYPE_OF_TRAVEL',
'                                                                                        ,p_aei_information5     => :P28_DEPARTURE_AIRPORT',
'                                                                                        ,p_aei_information6     => :P28_DEPARTURE_DATE_FROM',
'                                                                                        ,p_aei_information7    => :P28_DEPARTURE_DATE_TO',
'                                                                                        ,p_aei_information8    => :P28_PREFERRED_DEPARTURE_TIME',
'                                                                                        ,p_aei_information10    => v_dest_airport',
'                                                                                        ,p_aei_information11    => :P28_ARRIVAL_DATE_FROM',
'                                                                                        ,p_aei_information12    => :P28_ARRIVAL_DATE_TO',
'                                                                                        ,p_aei_information13    => :P28_PREFERRED_ARRIVAL_TIME',
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
,p_process_when=>'UpdateFlightRequest'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.component_end;
end;
/
