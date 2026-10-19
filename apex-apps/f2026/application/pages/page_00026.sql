prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
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
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'Community Flight Request'
,p_alias=>'COMMUNITY-FLIGHT-REQUEST'
,p_step_title=>'Community Flight Request'
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
'#backToGeneralInfoLink {',
'    display: none;',
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
'#P26_ARRIVAL_DATE_TO_CONTAINER,',
'#P26_DEPARTURE_DATE_TO_CONTAINER,',
'#P26_ESTIMATED_RETURN_DATE_TO_CONTAINER {',
'    float: right; ',
'    margin-right: 0;',
'}',
'',
'.hour-col {',
'    max-width: 116px;',
'}',
'',
'#P26_ARRIVAL_TIME_FROM_CONTAINER .t-input-standard-optional,',
'#P26_ARRIVAL_TIME_TO_CONTAINER .t-input-standard-optional {',
'    padding-right: 0;',
'    padding-left: 0;',
'    margin-left: 8px;',
'}',
'',
'#P26_ARRIVAL_TIME_FROM_AMPM_CONTAINER .t-input-standard-optional,',
'#P26_ARRIVAL_TIME_TO_AMPM_CONTAINER .t-input-standard-optional {',
'    padding-left: 0;',
'    padding-right: 0;',
'    margin-right: 8px;',
'}',
'',
'#P26_ARRIVAL_TIME_FROM,',
'#P26_ARRIVAL_TIME_TO {',
'    border-top-right-radius: 0;',
'    border-bottom-right-radius: 0;',
'}',
'',
'#P26_ARRIVAL_TIME_FROM_AMPM,',
'#P26_ARRIVAL_TIME_TO_AMPM {',
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
'#P26_I_CONFIRM_NEW,',
'#P26_I_CONFIRM_EXISTING {',
'    padding-top: 0;',
'}',
'',
'label[for="P26_I_CONFIRM_NEW_0"],',
'label[for="P26_I_CONFIRM_EXISTING_0"] {',
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
,p_last_upd_yyyymmddhh24miss=>'20260811132954'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(959808675061090758)
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
 p_id=>wwv_flow_api.id(311307182887603268)
,p_name=>'My Requests'
,p_region_name=>'myRequestsRegionMobile'
,p_parent_plug_id=>wwv_flow_api.id(959808675061090758)
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
'where   pav.organization_id = :P0_ORG_ID',
'		and paaf.assignment_id= :P26_SEE_MORE_ASSIGNMENT_ID',
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
,p_ajax_items_to_submit=>'P26_SEE_MORE_ASSIGNMENT_ID'
,p_query_row_template=>wwv_flow_api.id(314207920041627445)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(311307493812603271)
,p_query_column_id=>1
,p_column_alias=>'CARD_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Card Type'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(311308047157603277)
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
 p_id=>wwv_flow_api.id(311307260777603269)
,p_query_column_id=>3
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Request Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(311307588345603272)
,p_query_column_id=>4
,p_column_alias=>'ESTIMATED_ARRIVAL_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Estimated Arrival Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(311307651163603273)
,p_query_column_id=>5
,p_column_alias=>'ARRIVAL_AIRPORT'
,p_column_display_sequence=>5
,p_column_heading=>'Arrival Airport'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(311307785216603274)
,p_query_column_id=>6
,p_column_alias=>'ESTIMATED_RETURN_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Estimated Return Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(311307898098603275)
,p_query_column_id=>7
,p_column_alias=>'RETURN_AIRPORT'
,p_column_display_sequence=>7
,p_column_heading=>'Return Airport'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(311307352628603270)
,p_query_column_id=>8
,p_column_alias=>'STATUS'
,p_column_display_sequence=>2
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(311308012772603276)
,p_query_column_id=>9
,p_column_alias=>'STATUS_COLOR'
,p_column_display_sequence=>8
,p_column_heading=>'Status Color'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(311308216220603278)
,p_name=>'My Flights'
,p_region_name=>'myFlightsRegionMobile'
,p_parent_plug_id=>wwv_flow_api.id(959808675061090758)
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
'        case when :P26_MODE = ''EXISTING'' and paei.aei_information3 = ''New Shaliach'' then ''New Shaliach With Departure'' else paei.aei_information3 end FORM_TYPE,',
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
'AND PAV.ATTRIBUTE_CATEGORY = ''LTS''',
'and past.assignment_status_type_id = paaf.assignment_status_type_id',
'and past.assignment_status_type_id = ias.assignment_status_type_id',
'and ias.status_change_date = (select max(status_change_date)',
'                              from irc_assignment_statuses ias1',
'                              where ias.assignment_id = ias1.assignment_id)',
'and PAEI.ASSIGNMENT_ID = paaf.assignment_id',
'and last_flight.assgt_id= :P26_SEE_MORE_ASSIGNMENT_ID',
'and PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS''',
'AND last_flight.assgt_id = paaf.assignment_id',
'AND LAST_FLIGHT.REQUEST_ID=PAEI.AEI_INFORMATION1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P26_SEE_MORE_ASSIGNMENT_ID,P26_MODE'
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
 p_id=>wwv_flow_api.id(311308824228603284)
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
 p_id=>wwv_flow_api.id(311308258762603279)
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
 p_id=>wwv_flow_api.id(311309205485603288)
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
 p_id=>wwv_flow_api.id(311308359076603280)
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
 p_id=>wwv_flow_api.id(311308843839603285)
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
 p_id=>wwv_flow_api.id(311308522066603281)
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
 p_id=>wwv_flow_api.id(311308563727603282)
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
 p_id=>wwv_flow_api.id(311308739154603283)
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
 p_id=>wwv_flow_api.id(311309062958603287)
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
 p_id=>wwv_flow_api.id(311309038078603286)
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
 p_id=>wwv_flow_api.id(959808739226090759)
,p_plug_name=>'Single Shaliach Image'
,p_region_name=>'singleShaliachImageRegion'
,p_parent_plug_id=>wwv_flow_api.id(959808675061090758)
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
 p_id=>wwv_flow_api.id(959809251289090764)
,p_name=>'My Requests'
,p_region_name=>'myRequestsRegion'
,p_parent_plug_id=>wwv_flow_api.id(959808675061090758)
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
'                  when paei.aei_information3 = ''New Shaliach'' then ',
'                  case when  paei.aei_information6 is null and paei.AEI_INFORMATION7 is null',
'                    then ''Latest Possible'' ',
'                   when  paei.aei_information7 is null then paei.aei_information6 ',
'                   else paei.aei_information6 || '' - '' || paei.AEI_INFORMATION7 end end ESTIMATED_RETURN_DATE,',
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
'		and paaf.assignment_id= :P26_SEE_MORE_ASSIGNMENT_ID',
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
,p_ajax_items_to_submit=>'P26_SEE_MORE_ASSIGNMENT_ID'
,p_query_row_template=>wwv_flow_api.id(195424393306232318)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(275315512004609688)
,p_query_column_id=>1
,p_column_alias=>'CARD_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Card Type'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(275317865612609690)
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
 p_id=>wwv_flow_api.id(275314678136609687)
,p_query_column_id=>3
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Request Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(275315853408609688)
,p_query_column_id=>4
,p_column_alias=>'ESTIMATED_ARRIVAL_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Estimated Arrival Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(275316322338609688)
,p_query_column_id=>5
,p_column_alias=>'ARRIVAL_AIRPORT'
,p_column_display_sequence=>4
,p_column_heading=>'Arrival Airport'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(275316691951609689)
,p_query_column_id=>6
,p_column_alias=>'ESTIMATED_RETURN_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Estimated Return Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(275317047101609689)
,p_query_column_id=>7
,p_column_alias=>'RETURN_AIRPORT'
,p_column_display_sequence=>6
,p_column_heading=>'Return Airport'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(275315107720609687)
,p_query_column_id=>8
,p_column_alias=>'STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(275317487490609689)
,p_query_column_id=>9
,p_column_alias=>'STATUS_COLOR'
,p_column_display_sequence=>7
,p_column_heading=>'Status Color'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(962073007031739422)
,p_name=>'My Flights'
,p_region_name=>'myFlightsRegion'
,p_parent_plug_id=>wwv_flow_api.id(959808675061090758)
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
'        case when :P26_MODE = ''EXISTING'' and paei.aei_information3 = ''New Shaliach'' then ''New Shaliach With Departure'' else paei.aei_information3 end FORM_TYPE,',
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
'AND PAV.ATTRIBUTE_CATEGORY = ''LTS''',
'and past.assignment_status_type_id = paaf.assignment_status_type_id',
'and past.assignment_status_type_id = ias.assignment_status_type_id',
'and ias.status_change_date = (select max(status_change_date)',
'                              from irc_assignment_statuses ias1',
'                              where ias.assignment_id = ias1.assignment_id)',
'and PAEI.ASSIGNMENT_ID = paaf.assignment_id',
'and last_flight.assgt_id= :P26_SEE_MORE_ASSIGNMENT_ID',
'and PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS''',
'AND last_flight.assgt_id = paaf.assignment_id',
'AND LAST_FLIGHT.REQUEST_ID=PAEI.AEI_INFORMATION1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P26_SEE_MORE_ASSIGNMENT_ID,P26_MODE'
,p_query_row_template=>wwv_flow_api.id(215029999485580748)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(275320870650609693)
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
 p_id=>wwv_flow_api.id(275318941934609692)
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
 p_id=>wwv_flow_api.id(275322507700609694)
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
 p_id=>wwv_flow_api.id(275319308093609692)
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
 p_id=>wwv_flow_api.id(275321306819609693)
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
 p_id=>wwv_flow_api.id(275319663880609692)
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
 p_id=>wwv_flow_api.id(275320065452609692)
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
 p_id=>wwv_flow_api.id(275320540066609693)
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
 p_id=>wwv_flow_api.id(275322053102609694)
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
 p_id=>wwv_flow_api.id(275321708970609693)
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
 p_id=>wwv_flow_api.id(972445429350713770)
,p_plug_name=>'Create Flight Request Container'
,p_region_name=>'CreateFlightRequestContainerID'
,p_parent_plug_id=>wwv_flow_api.id(959808675061090758)
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
 p_id=>wwv_flow_api.id(983389705104888929)
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
 p_id=>wwv_flow_api.id(946449400377399324)
,p_plug_name=>'Create Button Container'
,p_region_name=>'createButtonContainer'
,p_parent_plug_id=>wwv_flow_api.id(983389705104888929)
,p_region_template_options=>'#DEFAULT#:margin-top-lg'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(946450450284399335)
,p_plug_name=>'<img class="create-form-icon" src="#APP_IMAGES#departure-create.svg" /><span class="create-form-title">Create Request</span><img class="close-create-form" src="#APP_IMAGES#close-icon.svg"#" />'
,p_region_name=>'createRequestFormRegion'
,p_parent_plug_id=>wwv_flow_api.id(983389705104888929)
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
 p_id=>wwv_flow_api.id(946452271664399353)
,p_plug_name=>'Multiple Shlichim Images'
,p_region_name=>'multipleShlichimImagesRegion'
,p_parent_plug_id=>wwv_flow_api.id(946450450284399335)
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
 p_id=>wwv_flow_api.id(946452361876399354)
,p_plug_name=>'Form'
,p_parent_plug_id=>wwv_flow_api.id(946450450284399335)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(950217300265313531)
,p_plug_name=>'Container'
,p_parent_plug_id=>wwv_flow_api.id(946452361876399354)
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
 p_id=>wwv_flow_api.id(950217777315313536)
,p_plug_name=>'Submit Container'
,p_region_name=>'submitContainer'
,p_parent_plug_id=>wwv_flow_api.id(946452361876399354)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(950219054007313549)
,p_plug_name=>'Existing Shlichim Fields Container'
,p_region_name=>'existingShlichimFieldsContainer'
,p_parent_plug_id=>wwv_flow_api.id(946452361876399354)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(950219376484313552)
,p_plug_name=>'Estimated Departure Date'
,p_parent_plug_id=>wwv_flow_api.id(950219054007313549)
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
 p_id=>wwv_flow_api.id(950219760623313556)
,p_plug_name=>'Estimated Departure Time'
,p_parent_plug_id=>wwv_flow_api.id(950219054007313549)
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
 p_id=>wwv_flow_api.id(983392963061888962)
,p_plug_name=>'Departure Airport'
,p_parent_plug_id=>wwv_flow_api.id(950219054007313549)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(988665230678413822)
,p_plug_name=>'Destination Airport'
,p_parent_plug_id=>wwv_flow_api.id(950219054007313549)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(950219161095313550)
,p_plug_name=>'Arrival Date Fields Container'
,p_region_name=>'arrivalDateFieldsContainer'
,p_parent_plug_id=>wwv_flow_api.id(946452361876399354)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(946453782324399368)
,p_plug_name=>'Preferred Arrival Date'
,p_parent_plug_id=>wwv_flow_api.id(950219161095313550)
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
 p_id=>wwv_flow_api.id(950216548895313524)
,p_plug_name=>'Estimated Arrival Time'
,p_parent_plug_id=>wwv_flow_api.id(950219161095313550)
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
 p_id=>wwv_flow_api.id(950219275279313551)
,p_plug_name=>'Destination Airport'
,p_parent_plug_id=>wwv_flow_api.id(950219161095313550)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(950220232260313561)
,p_plug_name=>'Type Of Travel'
,p_region_name=>'typeOfTravelContainer'
,p_parent_plug_id=>wwv_flow_api.id(946452361876399354)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(950218143241313540)
,p_plug_name=>'Single Shaliach Image'
,p_region_name=>'singleShaliachImageRegion'
,p_parent_plug_id=>wwv_flow_api.id(946450450284399335)
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
 p_id=>wwv_flow_api.id(952388551561383949)
,p_plug_name=>'RDS'
,p_region_name=>'rds'
,p_parent_plug_id=>wwv_flow_api.id(983389705104888929)
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
 p_id=>wwv_flow_api.id(1446520411519568654)
,p_name=>'New Shlichim'
,p_region_name=>'newShlichimRegion'
,p_parent_plug_id=>wwv_flow_api.id(983389705104888929)
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
'from (select jafi_hr_pkg.get_org_name (paaf.organization_id),',
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
'    CASE WHEN PJ.job_id in (''46484'',''84464'') THEN ''Young Shlichut (Ofek)''',
'         WHEN PJ.job_id in (''46482'',''46480'') then ''Senior Shlichut (Shahar/Bina)''',
'  END MASLUL,',
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
'where pav.organization_id =:P0_ORG_ID  ',
'    and papf.person_id = paaf.person_id  ',
'    and paaf.vacancy_id = pav.vacancy_id  ',
'    and ias.assignment_id = paaf.assignment_id  ',
'    and ias.assignment_status_type_id IN (47358,23357,23358,6,279)',
'    and trunc(sysdate) between papf.effective_start_date and papf.effective_end_date  ',
'    and trunc(sysdate) between paaf.effective_start_date and  paaf.effective_end_date  ',
'    and paaf.business_group_id = 4088  ',
'    and pav.attribute11 = ''N''  ',
'    and PAV.ATTRIBUTE_CATEGORY =''LTS''',
'    and paaf.job_id=pj.job_id',
'    and pj.job_id in (''46480'',''46484'',''84464'',''46482'')',
'    and past.assignment_status_type_id =paaf.assignment_status_type_id  ',
'    and past.assignment_status_type_id =ias.assignment_status_type_id  ',
'    and ias.status_change_date = (select max(status_change_date)  ',
'                      from irc_assignment_statuses ias1  ',
'                      where ias.assignment_id = ias1.assignment_id) ',
'   and hoi.organization_id=paaf.organization_id',
'    and hoi.org_information_context =''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'    and hoi.org_information1 IN (''SSH'',''COMM'')                  ',
'                      ',
'                      ',
'                      ',
'UNION',
'',
'select jafi_hr_pkg.get_org_name (paaf.organization_id),',
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
'''Israel Fellow'' MASLUL,',
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
'   per_jobs pj/*,',
'   hr_organization_information hoi*/ ---Meitav 11/08/2026',
'where pav.organization_id =:P0_ORG_ID  ',
'    and papf.person_id = paaf.person_id  ',
'    and paaf.vacancy_id = pav.vacancy_id  ',
'    and ias.assignment_id = paaf.assignment_id  ',
'    and ias.assignment_status_type_id IN (47358,23357,23358,6,279)',
'    and trunc(sysdate) between papf.effective_start_date and papf.effective_end_date  ',
'    and trunc(sysdate) between paaf.effective_start_date and  paaf.effective_end_date  ',
'    and paaf.business_group_id = 4088  ',
'    and pav.attribute11 = ''N''  ',
'    and PAV.ATTRIBUTE_CATEGORY =''LTS''',
'    and paaf.job_id=pj.job_id',
'    and pj.job_id in (''46476'',''46472'',''46478'',''57462'')',
'    and past.assignment_status_type_id =paaf.assignment_status_type_id  ',
'    and past.assignment_status_type_id =ias.assignment_status_type_id  ',
'    and ias.status_change_date = (select max(status_change_date)  ',
'                      from irc_assignment_statuses ias1  ',
'                      where ias.assignment_id = ias1.assignment_id) ',
'                      ',
'     /*                     ',
'    and hoi.organization_id=paaf.organization_id',
'    and hoi.org_information_context =''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'    and hoi.org_information1=''AMI''*/ ---Meitav 11/08/2026',
'',
'',
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
 p_id=>wwv_flow_api.id(275292336693609659)
,p_query_column_id=>1
,p_column_alias=>'CARD_TYPE_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Card Type Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(275293451886609660)
,p_query_column_id=>2
,p_column_alias=>'ASSIGNMENT_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Assignment Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(275293877059609660)
,p_query_column_id=>3
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>6
,p_column_heading=>'Person Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(275292727632609660)
,p_query_column_id=>4
,p_column_alias=>'PHOTO'
,p_column_display_sequence=>2
,p_column_heading=>'Photo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(275291935627609658)
,p_query_column_id=>5
,p_column_alias=>'NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(275293118226609660)
,p_query_column_id=>6
,p_column_alias=>'REQUESTS_COUNT'
,p_column_display_sequence=>4
,p_column_heading=>'Requests Count'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(266736317999899965)
,p_query_column_id=>7
,p_column_alias=>'MASLUL'
,p_column_display_sequence=>7
,p_column_heading=>'Maslul'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(266736438427899966)
,p_query_column_id=>8
,p_column_alias=>'MARITAL_STATUS'
,p_column_display_sequence=>8
,p_column_heading=>'Marital Status'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1446521634455568667)
,p_name=>'Existing Shlichim'
,p_region_name=>'existingShlichimRegion'
,p_parent_plug_id=>wwv_flow_api.id(983389705104888929)
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
'     and PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS'') as REQUESTS_COUNT,',
'    CASE WHEN PJ.job_id in (''46484'',''84464'') THEN ''Young Shlichut (Ofek)''',
'         WHEN PJ.job_id in (''46482'',''46480'') then ''Senior Shlichut (Shahar/Bina)''',
'  END MASLUL,',
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
'where pav.organization_id =:P0_ORG_ID  ',
'  and papf.person_id = paaf.person_id  ',
'  and paaf.vacancy_id = pav.vacancy_id  ',
'  and ias.assignment_id = paaf.assignment_id  ',
'  and ias.assignment_status_type_id IN (1)',
'  and trunc(sysdate) between papf.effective_start_date and papf.effective_end_date  ',
'  and trunc(sysdate) between paaf.effective_start_date and  paaf.effective_end_date  ',
'  and paaf.business_group_id = 4088  ',
'  and pav.attribute11 = ''N''  ',
'  and PAV.ATTRIBUTE_CATEGORY =''LTS''',
'  and paaf.job_id=pj.job_id',
'  and pj.job_id in (''46480'',''46484'',''84464'',''46482'')',
'  and past.assignment_status_type_id =paaf.assignment_status_type_id  ',
'  and past.assignment_status_type_id =ias.assignment_status_type_id  ',
'  and ias.status_change_date = (select max(status_change_date)  ',
'                  from irc_assignment_statuses ias1  ',
'                  where ias.assignment_id = ias1.assignment_id)',
'   and hoi.organization_id=paaf.organization_id',
'    and hoi.org_information_context =''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'    and hoi.org_information1 IN (''SSH'',''COMM'')  ',
'                  ',
'                  ',
'UNION ',
'',
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
'     and PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS'') as REQUESTS_COUNT,',
'    ''Israel Fellow'' MASLUL,',
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
'where pav.organization_id =:P0_ORG_ID  ',
'  and papf.person_id = paaf.person_id  ',
'  and paaf.vacancy_id = pav.vacancy_id  ',
'  and ias.assignment_id = paaf.assignment_id  ',
'  and ias.assignment_status_type_id IN (1)',
'  and trunc(sysdate) between papf.effective_start_date and papf.effective_end_date  ',
'  and trunc(sysdate) between paaf.effective_start_date and  paaf.effective_end_date  ',
'  and paaf.business_group_id = 4088  ',
'  and pav.attribute11 = ''N''  ',
'  and PAV.ATTRIBUTE_CATEGORY =''LTS''',
'  and paaf.job_id=pj.job_id',
'  and pj.job_id in (''46476'',''46472'',''46478'',''57462'')',
'  and past.assignment_status_type_id =paaf.assignment_status_type_id  ',
'  and past.assignment_status_type_id =ias.assignment_status_type_id  ',
'  and ias.status_change_date = (select max(status_change_date)  ',
'                  from irc_assignment_statuses ias1  ',
'                  where ias.assignment_id = ias1.assignment_id)',
'   and hoi.organization_id=paaf.organization_id',
'    and hoi.org_information_context =''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'    and hoi.org_information1 IN (''AMI'')  ',
' ',
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
 p_id=>wwv_flow_api.id(275309434334609680)
,p_query_column_id=>1
,p_column_alias=>'CARD_TYPE_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Card Type Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(275310983515609682)
,p_query_column_id=>2
,p_column_alias=>'ASSIGNMENT_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Assignment Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(275311353121609682)
,p_query_column_id=>3
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>6
,p_column_heading=>'Person Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(275310166408609681)
,p_query_column_id=>4
,p_column_alias=>'PHOTO'
,p_column_display_sequence=>3
,p_column_heading=>'Photo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(275309820771609681)
,p_query_column_id=>5
,p_column_alias=>'NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(275310608815609681)
,p_query_column_id=>6
,p_column_alias=>'REQUESTS_COUNT'
,p_column_display_sequence=>4
,p_column_heading=>'Requests Count'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(266736533034899967)
,p_query_column_id=>7
,p_column_alias=>'MASLUL'
,p_column_display_sequence=>7
,p_column_heading=>'Maslul'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(266736552842899968)
,p_query_column_id=>8
,p_column_alias=>'MARITAL_STATUS'
,p_column_display_sequence=>8
,p_column_heading=>'Marital Status'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1494788022438050252)
,p_plug_name=>'Sub Page Info'
,p_parent_plug_id=>wwv_flow_api.id(983389705104888929)
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
 p_id=>wwv_flow_api.id(983389743140888930)
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
 p_id=>wwv_flow_api.id(983389920943888931)
,p_plug_name=>'Sub Page Info'
,p_parent_plug_id=>wwv_flow_api.id(983389743140888930)
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
 p_id=>wwv_flow_api.id(983389972223888932)
,p_plug_name=>'Info Cards'
,p_region_name=>'infoCardsRegion'
,p_parent_plug_id=>wwv_flow_api.id(983389743140888930)
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
 p_id=>wwv_flow_api.id(983390156114888934)
,p_plug_name=>'Lets Start Container'
,p_region_name=>'letsStartContainer'
,p_parent_plug_id=>wwv_flow_api.id(983389743140888930)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2697174615846356603)
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
 p_id=>wwv_flow_api.id(2697175040579357721)
,p_plug_name=>'Prograss Bar'
,p_region_name=>'progressBar'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall:t-Form--noPadding:margin-top-md:margin-bottom-lg'
,p_component_template_options=>'#DEFAULT#:t-Tabs--simple'
,p_plug_template=>wwv_flow_api.id(1572085619207170)
,p_plug_display_sequence=>20
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(336469927973999876)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(2125342479223692)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2716183328245029774)
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
 p_id=>wwv_flow_api.id(275294592252609662)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(946449400377399324)
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
 p_id=>wwv_flow_api.id(275312967350609684)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(983390156114888934)
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
 p_id=>wwv_flow_api.id(275297208164609670)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(950217777315313536)
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
 p_id=>wwv_flow_api.id(275324587798609696)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(2716183328245029774)
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
 p_id=>wwv_flow_api.id(275324235763609696)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(2716183328245029774)
,p_button_name=>'BACK_TO_MENU'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back to Menu'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RR,:P26_LETS_START_CLICK:N'
,p_grid_column_attributes=>'style="display: flex; justify-content: center;"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(275296187928609666)
,p_name=>'P26_REMARKS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(950217300265313531)
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
 p_id=>wwv_flow_api.id(275296556159609669)
,p_name=>'P26_I_CONFIRM_NEW'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(950217300265313531)
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
 p_id=>wwv_flow_api.id(275298210019609671)
,p_name=>'P26_DEPARTURE_AIRPORT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(983392963061888962)
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
 p_id=>wwv_flow_api.id(275298843205609672)
,p_name=>'P26_DESTINATION_AIRPORT_DISABLED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(988665230678413822)
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
 p_id=>wwv_flow_api.id(275299615974609673)
,p_name=>'P26_DEPARTURE_DATE_MIN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(950219376484313552)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(275299975268609674)
,p_name=>'P26_DEPARTURE_DATE_FROM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(950219376484313552)
,p_prompt=>'From'
,p_placeholder=>'Select Date'
,p_format_mask=>'Month DD, YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cattributes_element=>'style="padding-right: 0;"'
,p_tag_css_classes=>'disallow-user-input'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_02=>'&P26_DEPARTURE_DATE_MIN.'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'2026:3000'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(275300416590609674)
,p_name=>'P26_DEPARTURE_DATE_TO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(950219376484313552)
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
,p_attribute_02=>'&P26_DEPARTURE_DATE_MIN.'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'2026:3000'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(275301052246609674)
,p_name=>'P26_PREFERRED_DEPARTURE_TIME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(950219760623313556)
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
 p_id=>wwv_flow_api.id(275302117302609675)
,p_name=>'P26_ARRIVAL_DATE_MIN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(946453782324399368)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(275302492925609676)
,p_name=>'P26_ARRIVAL_DATE_FROM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(946453782324399368)
,p_prompt=>'From'
,p_placeholder=>'Select Date'
,p_format_mask=>'Month DD, YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cattributes_element=>'style="padding-right: 0;"'
,p_tag_css_classes=>'disallow-user-input'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_02=>'&P26_ARRIVAL_DATE_MIN.'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'2026:3000'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(275302889452609676)
,p_name=>'P26_ARRIVAL_DATE_TO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(946453782324399368)
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
,p_attribute_02=>'&P26_ARRIVAL_DATE_MIN.'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'2026:3000'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(275303605826609676)
,p_name=>'P26_PREFERRED_ARRIVAL_TIME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(950216548895313524)
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
 p_id=>wwv_flow_api.id(275304320515609677)
,p_name=>'P26_DESTINATION_AIRPORT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(950219275279313551)
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
 p_id=>wwv_flow_api.id(275304948660609678)
,p_name=>'P26_TYPE_OF_TRAVEL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(950220232260313561)
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
 p_id=>wwv_flow_api.id(275305988458609678)
,p_name=>'P26_MODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(952388551561383949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(275306399762609679)
,p_name=>'P26_ACTION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(952388551561383949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(275306798738609679)
,p_name=>'P26_SELECTED_ASSIG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(952388551561383949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(275307175596609679)
,p_name=>'P26_SEE_MORE_ASSIGNMENT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(952388551561383949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(275307557625609679)
,p_name=>'P26_SEE_MORE_REQUEST_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(952388551561383949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(275307973305609679)
,p_name=>'P26_SEE_MORE_TICKET_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(952388551561383949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(275308415160609680)
,p_name=>'P26_SEE_MORE_FORM_TYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(952388551561383949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(275313372588609685)
,p_name=>'P26_LETS_START_CLICK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(983390156114888934)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(275323142948609695)
,p_name=>'P26_SELECTED_MAIN_AIRPORT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2697174615846356603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(275325050520609717)
,p_computation_sequence=>10
,p_computation_item=>'P26_ARRIVAL_DATE_MIN'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation=>'to_char(sysdate, ''Month DD, YYYY'')'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(275325467318609717)
,p_computation_sequence=>30
,p_computation_item=>'P26_SELECTED_MAIN_AIRPORT'
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
 p_id=>wwv_flow_api.id(275325892054609717)
,p_computation_sequence=>40
,p_computation_item=>'P26_DEPARTURE_DATE_MIN'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation=>'to_char(sysdate, ''Month DD, YYYY'')'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(275326245634609718)
,p_validation_name=>'Arrival Date From Is Not Null'
,p_validation_sequence=>10
,p_validation=>':P26_ARRIVAL_DATE_FROM is not null'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and (:P26_SEE_MORE_FORM_TYPE = ''New Shaliach'' OR :P26_TYPE_OF_TRAVEL = ''Round Trip'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(275302492925609676)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(275326676179609718)
,p_validation_name=>'Arrival Date To Is Not Null'
,p_validation_sequence=>30
,p_validation=>':P26_ARRIVAL_DATE_TO is not null'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and (:P26_SEE_MORE_FORM_TYPE = ''New Shaliach'' OR :P26_TYPE_OF_TRAVEL = ''Round Trip'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(275302889452609676)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(275327489679609718)
,p_validation_name=>'Arrival Date From Is Bigger Than To'
,p_validation_sequence=>50
,p_validation=>'to_date(:P26_ARRIVAL_DATE_FROM, ''Month DD, YYYY'') <= to_date(:P26_ARRIVAL_DATE_TO, ''Month DD, YYYY'')'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Please select a date prior to &P26_ARRIVAL_DATE_TO.'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and (:P26_SEE_MORE_FORM_TYPE = ''New Shaliach'' OR :P26_TYPE_OF_TRAVEL = ''Round Trip'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(275302492925609676)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(275327063032609718)
,p_validation_name=>'Destination Airport Is Not Null'
,p_validation_sequence=>70
,p_validation=>':P26_DESTINATION_AIRPORT is not null'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and (:P26_SEE_MORE_FORM_TYPE = ''New Shaliach'' OR :P26_TYPE_OF_TRAVEL = ''Round Trip'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(275304320515609677)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(275327870315609719)
,p_validation_name=>'Departure Date From Is Not Null'
,p_validation_sequence=>80
,p_validation=>':P26_DEPARTURE_DATE_FROM is not null'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P26_SEE_MORE_FORM_TYPE in (''Existing Shaliach'', ''New Shaliach With Departure'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(275299975268609674)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(275328251412609719)
,p_validation_name=>'Departure Date To Is Not Null'
,p_validation_sequence=>90
,p_validation=>':P26_DEPARTURE_DATE_TO is not null'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P26_SEE_MORE_FORM_TYPE in (''Existing Shaliach'', ''New Shaliach With Departure'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(275300416590609674)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(275328735257609719)
,p_validation_name=>'Departure Date From Is Bigger Than To'
,p_validation_sequence=>100
,p_validation=>'to_date(:P26_DEPARTURE_DATE_FROM, ''Month DD, YYYY'') <= to_date(:P26_DEPARTURE_DATE_TO, ''Month DD, YYYY'')'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Please select a date prior to &P26_DEPARTURE_DATE_TO.'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P26_SEE_MORE_FORM_TYPE in (''Existing Shaliach'', ''New Shaliach With Departure'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(275299975268609674)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(275329508824609719)
,p_validation_name=>'Departure Date From Is Bigger Than Departure Date To'
,p_validation_sequence=>110
,p_validation=>'to_date(:P26_DEPARTURE_DATE_FROM, ''Month DD, YYYY'') >= to_date(:P26_ARRIVAL_DATE_TO, ''Month DD, YYYY'')'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Please select a date later than &P26_ARRIVAL_DATE_TO.'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P26_SEE_MORE_FORM_TYPE in (''Existing Shaliach'', ''New Shaliach With Departure'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(275299975268609674)
,p_error_display_location=>'INLINE_WITH_FIELD'
,p_validation_comment=>'add by Vita '
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(275329136266609719)
,p_validation_name=>'Departure Airport Is Not Null'
,p_validation_sequence=>120
,p_validation=>':P26_DEPARTURE_AIRPORT is not null'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P26_SEE_MORE_FORM_TYPE in (''Existing Shaliach'', ''New Shaliach With Departure'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(275298210019609671)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(275332498068609724)
,p_name=>'Hide Show More On Max Rows Change'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P26_MAX_ROWS'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'parseInt($v(''P26_MAX_ROWS'')) >= parseInt($v(''P26_ROWS_COUNT''))',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(275332901941609724)
,p_name=>'New Shlichim Select\Unselect Click'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#newShlichimRegion .check-icon'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275333404647609725)
,p_event_id=>wwv_flow_api.id(275332901941609724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setSelectedShalich(this.triggeringElement, ''COMMUNITY_NewShlichim'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(275339050688609728)
,p_name=>'Existing Shlichim Select\Unselect Click'
,p_event_sequence=>60
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#existingShlichimRegion .check-icon'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275339594017609728)
,p_event_id=>wwv_flow_api.id(275339050688609728)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setSelectedShalich(this.triggeringElement, ''COMMUNITY_ExistingShlichim'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(275333757185609725)
,p_name=>'See More Click'
,p_event_sequence=>70
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.see-more'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275334303262609725)
,p_event_id=>wwv_flow_api.id(275333757185609725)
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
'$s(''P26_SEE_MORE_ASSIGNMENT_ID'', assignmentId);',
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
 p_id=>wwv_flow_api.id(275334817775609725)
,p_event_id=>wwv_flow_api.id(275333757185609725)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(959809251289090764)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(311309307424603289)
,p_event_id=>wwv_flow_api.id(275333757185609725)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(311307182887603268)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275336294085609726)
,p_event_id=>wwv_flow_api.id(275333757185609725)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(962073007031739422)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(311309426887603290)
,p_event_id=>wwv_flow_api.id(275333757185609725)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(311308216220603278)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275335266015609726)
,p_event_id=>wwv_flow_api.id(275333757185609725)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(959808675061090758)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275335751654609726)
,p_event_id=>wwv_flow_api.id(275333757185609725)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P26_MODE'') == ''NEW'') {',
'    $(''#CreateFlightRequestContainerID'').hide();',
'} else {',
'    $(''#CreateFlightRequestContainerID'').show();',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(275349557835609732)
,p_name=>'See More Request Edit Click'
,p_event_sequence=>71
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#myRequestsRegion .edit-request-btn[data-status="Pending"], #myRequestsRegion .edit-flight-btn, #myRequestsRegionMobile .edit-request-btn[data-status="Pending"], #myRequestsRegionMobile .edit-flight-btn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275350132492609733)
,p_event_id=>wwv_flow_api.id(275349557835609732)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(275294592252609662)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275350625217609733)
,p_event_id=>wwv_flow_api.id(275349557835609732)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_TYPE_OF_TRAVEL,P26_DESTINATION_AIRPORT,P26_ARRIVAL_DATE_FROM,P26_ARRIVAL_DATE_TO,P26_PREFERRED_ARRIVAL_TIME,P26_DEPARTURE_AIRPORT,P26_DEPARTURE_DATE_FROM,P26_DEPARTURE_DATE_TO,P26_PREFERRED_DEPARTURE_TIME,P26_REMARKS,P26_I_CONFIRM_NEW'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275351083289609733)
,p_event_id=>wwv_flow_api.id(275349557835609732)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#newShlichimRegion'').hide();',
'$(''#existingShlichimRegion'').hide();',
'var formType = $(this.triggeringElement).data(''form-type'');',
'$s(''P26_SEE_MORE_FORM_TYPE'', formType);',
'var selectedRDS = $(''.apex-rds-selected a'').attr(''href'');',
'var formTitle = '''';',
'',
'if (formType == ''New Shaliach'') {',
'    formTitle = ''Edit Request'';',
'    newShlichim = [];',
'    newShlichim.push({assignmentId: $v(''P26_SEE_MORE_ASSIGNMENT_ID'')});',
'    $(''#newShlichimSubmitMessage'').show();    ',
'    $(''#arrivalDateFieldsContainer'').show();',
'    $(''#existingShlichimFieldsContainer'').hide();',
'    $(''#typeOfTravelContainer'').hide();',
'}',
'else if (formType == ''Existing Shaliach'') {',
'    formTitle = ''Edit Request for Existing Shlichim'';',
'    existingShlichim = [];',
'    existingShlichim.push({assignmentId: $v(''P26_SEE_MORE_ASSIGNMENT_ID'')});',
'    $(''#newShlichimSubmitMessage'').hide();',
'    $(''#arrivalDateFieldsContainer'').hide();',
'    $(''#existingShlichimFieldsContainer'').show();',
'    $(''#typeOfTravelContainer'').show();',
'}',
'else if (formType == ''New Shaliach With Departure'') {',
'    formTitle = ''Edit Request'';',
'    newShlichim = [];',
'    newShlichim.push({assignmentId: $v(''P26_SEE_MORE_ASSIGNMENT_ID'')});',
'    $(''#newShlichimSubmitMessage'').show();    ',
'    $(''#arrivalDateFieldsContainer'').show();',
'    $(''#existingShlichimFieldsContainer'').show();',
'    $(''#P26_DESTINATION_AIRPORT_CONTAINER'').show();',
'    $(''#P26_DESTINATION_AIRPORT_DISABLED_CONTAINER'').hide();',
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
'$s(''P26_SEE_MORE_REQUEST_ID'', requestId);',
'$s(''P26_ACTION'', ''U'');'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275352641084609734)
,p_event_id=>wwv_flow_api.id(275349557835609732)
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
'    into   :P26_DESTINATION_AIRPORT,',
'           :P26_ARRIVAL_DATE_FROM,',
'           :P26_ARRIVAL_DATE_TO,',
'           :P26_PREFERRED_ARRIVAL_TIME,',
'           :P26_REMARKS,',
'           :P26_TYPE_OF_TRAVEL,',
'           :P26_DEPARTURE_AIRPORT,',
'           :P26_DEPARTURE_DATE_FROM,',
'           :P26_DEPARTURE_DATE_TO,',
'           :P26_PREFERRED_DEPARTURE_TIME',
'         ',
'    from   PER_ASSIGNMENT_EXTRA_INFO PAEI',
'    where  PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS'' and',
'           PAEI.aei_information1 = :P26_SEE_MORE_REQUEST_ID;',
'           ',
'    APEX_UTIL.SET_SESSION_STATE(''P26_ACTION'', ''U'');',
'end;'))
,p_attribute_02=>'P26_SEE_MORE_REQUEST_ID,P26_ACTION'
,p_attribute_03=>'P26_SEE_MORE_REQUEST_ID,P26_DESTINATION_AIRPORT,P26_ARRIVAL_DATE_FROM,P26_ARRIVAL_DATE_TO,P26_PREFERRED_ARRIVAL_TIME,P26_REMARKS,P26_TYPE_OF_TRAVEL,P26_DEPARTURE_AIRPORT,P26_DEPARTURE_DATE_FROM,P26_DEPARTURE_DATE_TO,P26_PREFERRED_DEPARTURE_TIME,P26_A'
||'CTION'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275351604148609733)
,p_event_id=>wwv_flow_api.id(275349557835609732)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(946450450284399335)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275352136207609733)
,p_event_id=>wwv_flow_api.id(275349557835609732)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(959808675061090758)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(319969686202897458)
,p_event_id=>wwv_flow_api.id(275349557835609732)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.body.scrollTop = document.documentElement.scrollTop = 0;'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(275353492038609734)
,p_name=>'See More Flight Edit Click'
,p_event_sequence=>72
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#myFlightsRegion .edit-flight-btn, #myFlightsRegionMobile .edit-flight-btn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275353968778609734)
,p_event_id=>wwv_flow_api.id(275353492038609734)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(275294592252609662)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275354498352609735)
,p_event_id=>wwv_flow_api.id(275353492038609734)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_TYPE_OF_TRAVEL,P26_DESTINATION_AIRPORT,P26_ARRIVAL_DATE_FROM,P26_ARRIVAL_DATE_TO,P26_PREFERRED_ARRIVAL_TIME,P26_DEPARTURE_AIRPORT,P26_DEPARTURE_DATE_FROM,P26_DEPARTURE_DATE_TO,P26_PREFERRED_DEPARTURE_TIME,P26_REMARKS,P26_I_CONFIRM_NEW'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275354988404609735)
,p_event_id=>wwv_flow_api.id(275353492038609734)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#newShlichimRegion'').hide();',
'$(''#existingShlichimRegion'').hide();',
'var formType = $(this.triggeringElement).data(''form-type'');',
'$s(''P26_SEE_MORE_FORM_TYPE'', formType);',
'var selectedRDS = $(''.apex-rds-selected a'').attr(''href'');',
'var formTitle = '''';',
'//if (selectedRDS == ''#newShlichimRegion'') {',
'if (formType == ''New Shaliach'') {',
'    formTitle = ''Edit Request'';',
'    newShlichim = [];',
'    newShlichim.push({assignmentId: $v(''P26_SEE_MORE_ASSIGNMENT_ID'')});',
'    $(''#newShlichimSubmitMessage'').show();    ',
'    $(''#arrivalDateFieldsContainer'').show();',
'    $(''#existingShlichimFieldsContainer'').hide();',
'    $(''#typeOfTravelContainer'').hide();',
'}',
'//else if (selectedRDS == ''#existingShlichimRegion'') {',
'else if (formType == ''Existing Shaliach'') {',
'    formTitle = ''Edit Request for Existing Shlichim'';',
'    existingShlichim = [];',
'    existingShlichim.push({assignmentId: $v(''P26_SEE_MORE_ASSIGNMENT_ID'')});',
'    $(''#newShlichimSubmitMessage'').hide();',
'    $(''#arrivalDateFieldsContainer'').hide();',
'    $(''#existingShlichimFieldsContainer'').show();',
'    $(''#typeOfTravelContainer'').show();',
'}',
'else if (formType == ''New Shaliach With Departure'') {',
'    formTitle = ''Edit Request'';',
'    newShlichim = [];',
'    newShlichim.push({assignmentId: $v(''P26_SEE_MORE_ASSIGNMENT_ID'')});',
'    $(''#newShlichimSubmitMessage'').show();    ',
'    $(''#arrivalDateFieldsContainer'').show();',
'    $(''#existingShlichimFieldsContainer'').show();',
'    $(''#typeOfTravelContainer'').hide();',
'    $(''#P26_DESTINATION_AIRPORT_CONTAINER'').show();',
'    $(''#P26_DESTINATION_AIRPORT_DISABLED_CONTAINER'').hide();',
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
'$s(''P26_SEE_MORE_REQUEST_ID'', requestId);',
'$s(''P26_ACTION'', ''U'');'))
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
 p_id=>wwv_flow_api.id(275356467481609735)
,p_event_id=>wwv_flow_api.id(275353492038609734)
,p_event_result=>'TRUE'
,p_action_sequence=>50
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
'    into   :P26_DESTINATION_AIRPORT,',
'           :P26_ARRIVAL_DATE_FROM,',
'           :P26_ARRIVAL_DATE_TO,',
'           :P26_PREFERRED_ARRIVAL_TIME,',
'           :P26_REMARKS,',
'           :P26_TYPE_OF_TRAVEL,',
'           :P26_DEPARTURE_AIRPORT,',
'           :P26_DEPARTURE_DATE_FROM,',
'           :P26_DEPARTURE_DATE_TO,',
'           :P26_PREFERRED_DEPARTURE_TIME',
'    from   PER_ASSIGNMENT_EXTRA_INFO PAEI',
'    where  PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS'' and',
'           PAEI.aei_information1 = :P26_SEE_MORE_REQUEST_ID;',
'',
'',
'    APEX_UTIL.SET_SESSION_STATE(''P26_ACTION'', ''U'');',
'--exception when no_data_found then null;',
'end;'))
,p_attribute_02=>'P26_SEE_MORE_REQUEST_ID,P26_ACTION'
,p_attribute_03=>'P26_SEE_MORE_REQUEST_ID,P26_DESTINATION_AIRPORT,P26_ARRIVAL_DATE_FROM,P26_ARRIVAL_DATE_TO,P26_PREFERRED_ARRIVAL_TIME,P26_REMARKS,P26_TYPE_OF_TRAVEL,P26_DEPARTURE_AIRPORT,P26_DEPARTURE_DATE_FROM,P26_DEPARTURE_DATE_TO,P26_PREFERRED_DEPARTURE_TIME,P26_A'
||'CTION,P26_ACTION'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275355993672609735)
,p_event_id=>wwv_flow_api.id(275353492038609734)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(946450450284399335)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275355481071609735)
,p_event_id=>wwv_flow_api.id(275353492038609734)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(959808675061090758)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(319969898825897460)
,p_event_id=>wwv_flow_api.id(275353492038609734)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.body.scrollTop = document.documentElement.scrollTop = 0;'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(275357383178609736)
,p_name=>'See More Create Flight Request Click'
,p_event_sequence=>73
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.create-flight-request-btn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275357870200609736)
,p_event_id=>wwv_flow_api.id(275357383178609736)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(275294592252609662)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275359408226609737)
,p_event_id=>wwv_flow_api.id(275357383178609736)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_TYPE_OF_TRAVEL,P26_DESTINATION_AIRPORT,P26_ARRIVAL_DATE_FROM,P26_ARRIVAL_DATE_TO,P26_PREFERRED_ARRIVAL_TIME,P26_DEPARTURE_AIRPORT,P26_DEPARTURE_DATE_FROM,P26_DEPARTURE_DATE_TO,P26_PREFERRED_DEPARTURE_TIME,P26_REMARKS,P26_I_CONFIRM_NEW'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275358880080609737)
,p_event_id=>wwv_flow_api.id(275357383178609736)
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
'    $s(''P26_SEE_MORE_FORM_TYPE'', ''New Shaliach'');',
'    formTitle = ''Create Request'';',
'    newShlichim = [];',
'    newShlichim.push({assignmentId: $v(''P26_SEE_MORE_ASSIGNMENT_ID'')}); ',
'    $(''#newShlichimSubmitMessage'').show();    ',
'    $(''#arrivalDateFieldsContainer'').show();',
'    $(''#existingShlichimFieldsContainer'').hide();',
'    $(''#typeOfTravelContainer'').hide();',
'    ',
'}',
'else if (selectedRDS == ''#existingShlichimRegion'') {',
'    $s(''P26_SEE_MORE_FORM_TYPE'', ''Existing Shaliach'');',
'    formTitle = ''Create Request for Existing Shlichim'';',
'    existingShlichim = [];',
'    existingShlichim.push({assignmentId: $v(''P26_SEE_MORE_ASSIGNMENT_ID'')});',
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
 p_id=>wwv_flow_api.id(275358349829609736)
,p_event_id=>wwv_flow_api.id(275357383178609736)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(946450450284399335)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275360404903609737)
,p_event_id=>wwv_flow_api.id(275357383178609736)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  APEX_UTIL.SET_SESSION_STATE(''P26_ACTION'', ''N'');',
'  APEX_UTIL.SET_SESSION_STATE(''P26_DESTINATION_AIRPORT'', :P26_SELECTED_MAIN_AIRPORT);',
'END;'))
,p_attribute_02=>'P26_ACTION,P26_SELECTED_MAIN_AIRPORT'
,p_attribute_03=>'P26_ACTION,P26_DESTINATION_AIRPORT'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275361894281609738)
,p_event_id=>wwv_flow_api.id(275357383178609736)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_DESTINATION_AIRPORT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275361360309609737)
,p_event_id=>wwv_flow_api.id(275357383178609736)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P26_TYPE_OF_TRAVEL_0'').click();',
'$(''#P26_TYPE_OF_TRAVEL_0'').change();'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275359857570609737)
,p_event_id=>wwv_flow_api.id(275357383178609736)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(959808675061090758)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(319969826107897459)
,p_event_id=>wwv_flow_api.id(275357383178609736)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.body.scrollTop = document.documentElement.scrollTop = 0;'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(275336680042609726)
,p_name=>'Initialize'
,p_event_sequence=>91
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275337212140609727)
,p_event_id=>wwv_flow_api.id(275336680042609726)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_SEE_MORE_ASSIGNMENT_ID,P26_SELECTED_ASSIG'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    //Initialize page state',
'    sessionStorage.removeItem(''COMMUNITY_NewShlichim'');',
'    sessionStorage.removeItem(''COMMUNITY_ExistingShlichim'');',
'',
'    //$s(''P26_SELECTED_ASSIG'', '''');',
'    //$s(''P26_SEE_MORE_ASSIGNMENT_ID'', '''');',
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
'    if (($(''#newShlichimRegion .nodatafound'').length > 0 && $v(''P26_MODE'') == ''NEW'') ||',
'        ($(''#existingShlichimRegion .nodatafound'').length > 0 && $v(''P26_MODE'') == ''EXISTING'')) {',
'        $(''#createFlightRequestBtn'').hide();',
'    }',
'    else {',
'        $(''#createFlightRequestBtn'').show();',
'    }',
'',
'    if ($v(''P26_LETS_START_CLICK'') == ''Y'') {',
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
 p_id=>wwv_flow_api.id(275338697879609728)
,p_event_id=>wwv_flow_api.id(275336680042609726)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.SET_SESSION_STATE(''P26_MODE'', :P26_MODE);',
'',
':P26_SELECTED_ASSIG := '''';',
':P26_SEE_MORE_ASSIGNMENT_ID := '''';'))
,p_attribute_02=>'P26_MODE,P26_SELECTED_ASSIG,P26_SEE_MORE_ASSIGNMENT_ID'
,p_attribute_03=>'P26_MODE,P26_SELECTED_ASSIG,P26_SEE_MORE_ASSIGNMENT_ID'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275338226763609727)
,p_event_id=>wwv_flow_api.id(275336680042609726)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P26_SELECTED_ASSIG :=null;'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275337657207609727)
,p_event_id=>wwv_flow_api.id(275336680042609726)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_DESTINATION_AIRPORT_DISABLED'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(275339997955609728)
,p_name=>'RDS Click'
,p_event_sequence=>101
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#rds a'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275340472825609728)
,p_event_id=>wwv_flow_api.id(275339997955609728)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_MODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selectedRDS = $(''.apex-rds-selected a'').attr(''href'');',
'var sessionKey = '''';',
'',
'if (selectedRDS == ''#newShlichimRegion'') { ',
'    sessionKey = ''COMMUNITY_NewShlichim'';',
'    $s(''P26_MODE'', ''NEW'');',
'}',
'else if (selectedRDS == ''#existingShlichimRegion'') {',
'    sessionKey = ''COMMUNITY_ExistingShlichim'';',
'    $s(''P26_MODE'', ''EXISTING'');',
'}',
'',
'$(selectedRDS).show();',
'setCreateFlightRequestsButton(sessionKey);',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275341948884609729)
,p_event_id=>wwv_flow_api.id(275339997955609728)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'APEX_UTIL.SET_SESSION_STATE(''P26_MODE'', :P26_MODE);'
,p_attribute_02=>'P26_MODE'
,p_attribute_03=>'P26_MODE'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275341007976609729)
,p_event_id=>wwv_flow_api.id(275339997955609728)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(946450450284399335)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275341519852609729)
,p_event_id=>wwv_flow_api.id(275339997955609728)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($(''#newShlichimRegion .nodatafound'').length > 0 && $v(''P26_MODE'') == ''NEW'') ||',
'    ($(''#existingShlichimRegion .nodatafound'').length > 0 && $v(''P26_MODE'') == ''EXISTING'')) {',
'    $(''#createFlightRequestBtn'').hide();',
'}',
'else {',
'    $(''#createFlightRequestBtn'').show();',
'}',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(275346798981609731)
,p_name=>'Close Create Flight Request Form'
,p_event_sequence=>111
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.close-create-form'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275347305816609732)
,p_event_id=>wwv_flow_api.id(275346798981609731)
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
 p_id=>wwv_flow_api.id(275347838770609732)
,p_event_id=>wwv_flow_api.id(275346798981609731)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(946450450284399335)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275348257994609732)
,p_event_id=>wwv_flow_api.id(275346798981609731)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(275294592252609662)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(275342345350609729)
,p_name=>'Create Flight Request Click'
,p_event_sequence=>121
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(275294592252609662)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275342861454609729)
,p_event_id=>wwv_flow_api.id(275342345350609729)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(275294592252609662)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275346364301609731)
,p_event_id=>wwv_flow_api.id(275342345350609729)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_TYPE_OF_TRAVEL,P26_DESTINATION_AIRPORT,P26_ARRIVAL_DATE_FROM,P26_ARRIVAL_DATE_TO,P26_PREFERRED_ARRIVAL_TIME,P26_DEPARTURE_AIRPORT,P26_DEPARTURE_DATE_FROM,P26_DEPARTURE_DATE_TO,P26_PREFERRED_DEPARTURE_TIME,P26_REMARKS,P26_I_CONFIRM_NEW'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275344917710609731)
,p_event_id=>wwv_flow_api.id(275342345350609729)
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
'    $s(''P26_SEE_MORE_FORM_TYPE'', ''New Shaliach'');',
'    formTitle = ''Create Request'';',
'    selectedShlichim = newShlichim;',
'    $(''#newShlichimSubmitMessage'').show();    ',
'    $(''#arrivalDateFieldsContainer'').show();',
'    $(''#existingShlichimFieldsContainer'').hide();',
'    $(''#typeOfTravelContainer'').hide();',
'}',
'else if (selectedRDS == ''#existingShlichimRegion'') {',
'    $s(''P26_SEE_MORE_FORM_TYPE'', ''Existing Shaliach'');',
'    formTitle = ''Create Request for Existing Shlichim'';',
'    selectedShlichim = existingShlichim;',
'    $(''#newShlichimSubmitMessage'').hide();',
'    $(''#arrivalDateFieldsContainer'').hide();',
'    $(''#existingShlichimFieldsContainer'').show();',
'    $(''#typeOfTravelContainer'').show();',
'}',
'$(''.create-form-title'').text(formTitle);',
'$(''#P26_DESTINATION_AIRPORT_DISABLED_CONTAINER'').hide();',
'$(''#P26_DESTINATION_AIRPORT_CONTAINER'').show();',
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
 p_id=>wwv_flow_api.id(275344350697609730)
,p_event_id=>wwv_flow_api.id(275342345350609729)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(946450450284399335)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275343921704609730)
,p_event_id=>wwv_flow_api.id(275342345350609729)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  APEX_UTIL.SET_SESSION_STATE(''P26_ACTION'', ''N'');',
'  APEX_UTIL.SET_SESSION_STATE(''P26_DESTINATION_AIRPORT'', :P26_SELECTED_MAIN_AIRPORT);',
'END;'))
,p_attribute_02=>'P26_ACTION,P26_SELECTED_MAIN_AIRPORT'
,p_attribute_03=>'P26_ACTION,P26_DESTINATION_AIRPORT'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275345875182609731)
,p_event_id=>wwv_flow_api.id(275342345350609729)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_DESTINATION_AIRPORT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275343412089609730)
,p_event_id=>wwv_flow_api.id(275342345350609729)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P26_TYPE_OF_TRAVEL_0'').click();',
'$(''#P26_TYPE_OF_TRAVEL_0'').change();',
'document.body.scrollTop = document.documentElement.scrollTop = 0;'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(275330161524609722)
,p_name=>'I Confirm Change'
,p_event_sequence=>141
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P26_I_CONFIRM_NEW'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275330711968609723)
,p_event_id=>wwv_flow_api.id(275330161524609722)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P26_I_CONFIRM_NEW'') == ''Y'') {',
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
 p_id=>wwv_flow_api.id(275364713474609739)
,p_name=>'Type Of Travel Change'
,p_event_sequence=>151
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P26_TYPE_OF_TRAVEL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275365165265609739)
,p_event_id=>wwv_flow_api.id(275364713474609739)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selectedRDS = $(''.apex-rds-selected a'').attr(''href'');',
'if (selectedRDS == ''#existingShlichimRegion'') {',
'    var selectedValue = $(''input[type="radio"][name="P26_TYPE_OF_TRAVEL"]'').filter(function(i, e) { return $(e).is('':checked''); }).val();',
'    if (selectedValue) { ',
'        if (selectedValue == ''Round Trip'') {',
'            $(''#P26_DESTINATION_AIRPORT_CONTAINER'').show();',
'            $(''#P26_DESTINATION_AIRPORT_DISABLED_CONTAINER'').hide();',
'            $(''#arrivalDateFieldsContainer'').show();',
'        }',
'        else if (selectedValue == ''One Way'') {',
'            $(''#P26_DESTINATION_AIRPORT_CONTAINER'').hide();',
'            $(''#P26_DESTINATION_AIRPORT_DISABLED_CONTAINER'').show();',
'            $(''#arrivalDateFieldsContainer'').hide();',
'        }',
'    }',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(275331083834609724)
,p_name=>'Submit Click'
,p_event_sequence=>161
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(275297208164609670)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275331579938609724)
,p_event_id=>wwv_flow_api.id(275331083834609724)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_SELECTED_ASSIG'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selectedShlichim = $v(''P26_SEE_MORE_FORM_TYPE'') === ''New Shaliach'' || $v(''P26_SEE_MORE_FORM_TYPE'') === ''New Shaliach With Departure'' ? newShlichim : existingShlichim;',
'var assignmentIds = selectedShlichim.length > 1 ? selectedShlichim.map(function(shliach) { return shliach.assignmentId; }).join('', '') : selectedShlichim[0].assignmentId;',
'$s(''P26_SELECTED_ASSIG'', assignmentIds);',
'',
'document.body.scrollTop = document.documentElement.scrollTop = 0;',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275332092238609724)
,p_event_id=>wwv_flow_api.id(275331083834609724)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'UpdateFlightRequest'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(275362299856609738)
,p_name=>'Lets Start Click'
,p_event_sequence=>171
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(275312967350609684)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275364253922609738)
,p_event_id=>wwv_flow_api.id(275362299856609738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  APEX_UTIL.SET_SESSION_STATE(''P26_LETS_START_CLICK'', ''Y'');',
'END;'))
,p_attribute_02=>'P26_LETS_START_CLICK'
,p_attribute_03=>'P26_LETS_START_CLICK'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275362753012609738)
,p_event_id=>wwv_flow_api.id(275362299856609738)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(983389743140888930)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275363252601609738)
,p_event_id=>wwv_flow_api.id(275362299856609738)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(983389705104888929)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275363837009609738)
,p_event_id=>wwv_flow_api.id(275362299856609738)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(275324587798609696)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(275348693549609732)
,p_name=>'TEST'
,p_event_sequence=>1810
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#rds'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(275349169157609732)
,p_event_id=>wwv_flow_api.id(275348693549609732)
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
'    $s(''P26_MODE'', ''NEW'');     ',
'}     ',
'else if (selectedRDS == ''#existingShlichimRegion'') {         ',
'    sessionKey = ''COMMUNITY_ExistingShlichim'';         ',
'    $s(''P26_MODE'', ''EXISTING'');     ',
'}      ',
'',
'$(selectedRDS).show();     ',
'setCreateFlightRequestsButton(sessionKey); ',
'',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(266738103845899983)
,p_name=>'Back To General Info Click'
,p_event_sequence=>1820
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(275324587798609696)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(266738315738899985)
,p_event_id=>wwv_flow_api.id(266738103845899983)
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
 p_id=>wwv_flow_api.id(266738397422899986)
,p_event_id=>wwv_flow_api.id(266738103845899983)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(983389743140888930)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(266738504257899987)
,p_event_id=>wwv_flow_api.id(266738103845899983)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(983389705104888929)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(266738603935899988)
,p_event_id=>wwv_flow_api.id(266738103845899983)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(275324587798609696)
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
 p_id=>wwv_flow_api.id(275329759455609719)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UpdateFlightRequest'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_remarks               varchar2(100) ;',
'   v_rest                  VARCHAR2(1000) := :P26_SELECTED_ASSIG;',
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
'IF :P26_SEE_MORE_FORM_TYPE LIKE ''New%'' THEN',
'    v_shaliah_type := ''New Shaliach'';',
'ELSE',
'    v_shaliah_type := ''Existing Shaliach'';',
'END IF;',
'',
'IF LENGTH(:P26_REMARKS) > 0 THEN',
'   select fnd_documents_short_text_s.nextval into l_media_id from dual;',
'   insert into fnd_documents_short_text    (media_id, short_text)     values   (l_media_id, :P26_REMARKS);',
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
'              IF :P26_MODE = ''NEW'' THEN ',
'                 --v_shaliah_type := ''New Shaliach'';',
'                 BEGIN ',
'                  if :P26_ACTION = ''N'' then',
'                     SELECT flight_request_id.NEXTVAL into  v_request_id from dual ; ',
'                 ',
'                     hr_assignment_extra_info_api.create_assignment_extra_info(p_assignment_id      => v_assign_id',
'                                                                              ,p_information_type            => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                              ,p_aei_information_category    => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                              ,p_aei_information1     => v_request_id',
'                                                                              ,p_aei_information2     => :P26_ACTION  --- to check with dror ',
'                                                                              ,p_aei_information3     => ''New Shaliach''',
'                                                                              ,p_aei_information5     => :P26_DESTINATION_AIRPORT',
'                                                                              ,p_aei_information6     => ''Latest Possible''',
'                                                                              ,p_aei_information10    => :P26_DESTINATION_AIRPORT',
'                                                                              ,p_aei_information11    => :P26_ARRIVAL_DATE_FROM',
'                                                                              ,p_aei_information12    => :P26_ARRIVAL_DATE_TO',
'                                                                              ,p_aei_information13    => :P26_PREFERRED_ARRIVAL_TIME',
'                                                                              ,p_aei_information15    => l_media_id',
'                                                                             --Out Parameters',
'                                                                               ,p_assignment_extra_info_id  => v_assi_extra_info_id',
'                                                                               ,p_object_version_number => v_out_ovn);',
'   ',
'                      hr_assignment_extra_info_api.create_assignment_extra_info(p_assignment_id      => v_assign_id',
'                                                                               ,p_information_type            => ''JAFI_HR_FLIGHT_REQUESTS''',
'                                                                               ,p_aei_information_category    => ''JAFI_HR_FLIGHT_REQUESTS''',
'                                                                               ,p_aei_information1     => v_request_id',
'                                                                               ,p_aei_information2     => :P26_ACTION  --- to check with dror ',
'                                                                               ,p_aei_information3     => ''New Shaliach''',
'                                                                               ,p_aei_information5     => :P26_DESTINATION_AIRPORT',
'                                                                               ,p_aei_information6     => ''Latest Possible''',
'                                                                               ,p_aei_information10    => :P26_DESTINATION_AIRPORT',
'                                                                               ,p_aei_information11    => :P26_ARRIVAL_DATE_FROM',
'                                                                               ,p_aei_information12    => :P26_ARRIVAL_DATE_TO',
'                                                                               ,p_aei_information13    => :P26_PREFERRED_ARRIVAL_TIME',
'                                                                               ,p_aei_information15    => l_media_id',
'                                                                               --Out Parameters',
'                                                                               ,p_assignment_extra_info_id  => v_assi_extra_info_id',
'                                                                               ,p_object_version_number => v_out_ovn);',
'',
'                      elsif :P26_ACTION = ''U'' then',
'                                        ',
'                                               SELECT CASE WHEN :P26_DEPARTURE_AIRPORT IS NULL',
'                                                           THEN :P26_DESTINATION_AIRPORT',
'                                                      ELSE :P26_DEPARTURE_AIRPORT',
'                                                            END',
'                                                  INTO v_aei_information5',
'                                                  FROM DUAL;',
'                                                ',
'                                               ',
'                                               SELECT CASE WHEN  :P26_DEPARTURE_DATE_FROM IS NULL',
'                                                           THEN  ''Latest Possible''',
'                                                           ELSE :P26_DEPARTURE_DATE_FROM',
'                                                            END',
'                                                  INTO v_aei_information6',
'                                                  FROM DUAL;',
'                                              ',
'                                                                                          ',
'                             hr_assignment_extra_info_api.create_assignment_extra_info(p_assignment_id      => v_assign_id',
'                                                                                       ,p_information_type            => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                                       ,p_aei_information_category    => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                                       ,p_aei_information1     => :P26_SEE_MORE_REQUEST_ID',
'                                                                                       ,p_aei_information2     => :P26_ACTION  --- to check with dror ',
'                                                                                       ,p_aei_information3     => ''New Shaliach''',
'                                                                                       ,p_aei_information5     => v_aei_information5 ',
'                                                                                       ,p_aei_information6    => v_aei_information6  ',
'                                                                                       ,p_aei_information10    => :P26_DESTINATION_AIRPORT',
'                                                                                       ,p_aei_information11    => :P26_ARRIVAL_DATE_FROM',
'                                                                                       ,p_aei_information12    => :P26_ARRIVAL_DATE_TO',
'                                                                                       ,p_aei_information13    => :P26_PREFERRED_ARRIVAL_TIME',
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
'                                                and pei.aei_information1 =:P26_SEE_MORE_REQUEST_ID',
'                                                AND (INFORMATION_TYPE LIKE ''JAFI_HR_FLIGHT_REQUESTS'');',
'         ',
'                                                               hr_assignment_extra_info_api.update_assignment_extra_info  (p_validate    =>  false',
'                                                                                                                          ,p_assignment_extra_info_id => v_assi_extra_info_id',
'                                                                                                                          ,p_object_version_number => v_object_version_number',
'                                                                                                                          ,p_aei_information1     => :P26_SEE_MORE_REQUEST_ID',
'                                                                                                                          ,p_aei_information2     => :P26_ACTION    --- to check with dror ',
'                                                                                                                          --,p_aei_information3     => ''New Shaliach''',
'                                                                                                                          ,p_aei_information5     => v_aei_information5',
'                                                                                                                          ,p_aei_information6     => v_aei_information6',
'                                                                                                                          ,p_aei_information7     => :P26_DEPARTURE_DATE_TO',
'                                                                                                                          ,p_aei_information8     => :P26_PREFERRED_DEPARTURE_TIME',
'                                                                                                                          ,p_aei_information10    => :P26_DESTINATION_AIRPORT',
'                                                                                                                          ,p_aei_information11    => :P26_ARRIVAL_DATE_FROM',
'                                                                                                                          ,p_aei_information12    => :P26_ARRIVAL_DATE_TO',
'                                                                                                                          ,p_aei_information13    => :P26_PREFERRED_ARRIVAL_TIME',
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
'               /*if  :P26_TYPE_OF_TRAVEL  = ''One Way'' Then ',
'                   v_dest_airport  := NULL; ',
'               else',
'                   v_dest_airport  := :P26_DESTINATION_AIRPORT ; ',
'               end if;*/',
'               BEGIN',
'                   if :P26_ACTION = ''N'' then',
'                      SELECT flight_request_id.NEXTVAL into  v_request_id from dual ; ',
'                      hr_assignment_extra_info_api.create_assignment_extra_info(p_assignment_id      => v_assign_id',
'                                                                               ,p_information_type            => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                               ,p_aei_information_category    => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                               ,p_aei_information1     => v_request_id',
'                                                                               ,p_aei_information2     => :P26_ACTION  --- to check with dror ',
'                                                                               ,p_aei_information3     => v_shaliah_type',
'                                                                               ,p_aei_information4     => :P26_TYPE_OF_TRAVEL',
'                                                                               ,p_aei_information5     => :P26_DEPARTURE_AIRPORT',
'                                                                               ,p_aei_information6     => :P26_DEPARTURE_DATE_FROM',
'                                                                               ,p_aei_information7    => :P26_DEPARTURE_DATE_TO',
'                                                                               ,p_aei_information8    => :P26_PREFERRED_DEPARTURE_TIME',
'                                                                               ,p_aei_information10    => :P26_DESTINATION_AIRPORT',
'                                                                               ,p_aei_information11    => :P26_ARRIVAL_DATE_FROM',
'                                                                               ,p_aei_information12    => :P26_ARRIVAL_DATE_TO',
'                                                                               ,p_aei_information13    => :P26_PREFERRED_ARRIVAL_TIME',
'                                                                               ,p_aei_information15    => l_media_id',
'                                                                                --Out Parameters',
'                                                                               ,p_assignment_extra_info_id  => v_assi_extra_info_id',
'                                                                               ,p_object_version_number => v_out_ovn);',
'   ',
'                        hr_assignment_extra_info_api.create_assignment_extra_info(p_assignment_id      => v_assign_id',
'                                                                                 ,p_information_type            => ''JAFI_HR_FLIGHT_REQUESTS''',
'                                                                                 ,p_aei_information_category    => ''JAFI_HR_FLIGHT_REQUESTS''',
'                                                                                 ,p_aei_information1     => v_request_id',
'                                                                                 ,p_aei_information2     => :P26_ACTION  --- to check with dror ',
'                                                                                 ,p_aei_information3     => v_shaliah_type',
'                                                                                 ,p_aei_information4     => :P26_TYPE_OF_TRAVEL',
'                                                                                 ,p_aei_information5     => :P26_DEPARTURE_AIRPORT',
'                                                                                 ,p_aei_information6     => :P26_DEPARTURE_DATE_FROM',
'                                                                                 ,p_aei_information7    => :P26_DEPARTURE_DATE_TO',
'                                                                                 ,p_aei_information8    => :P26_PREFERRED_DEPARTURE_TIME',
'                                                                                 ,p_aei_information10    => :P26_DESTINATION_AIRPORT',
'                                                                                 ,p_aei_information11    => :P26_ARRIVAL_DATE_FROM',
'                                                                                 ,p_aei_information12    => :P26_ARRIVAL_DATE_TO',
'                                                                                 ,p_aei_information13    => :P26_PREFERRED_ARRIVAL_TIME',
'                                                                                 ,p_aei_information15    => l_media_id',
'                                                                                 --Out Parameters',
'                                                                                 ,p_assignment_extra_info_id  => v_assi_extra_info_id',
'                                                                                 ,p_object_version_number => v_out_ovn);',
'                                                                               ',
'                  elsif :P26_ACTION = ''U'' then',
'                                                                  ',
'                            hr_assignment_extra_info_api.create_assignment_extra_info(p_assignment_id      => v_assign_id',
'                                                                                     ,p_information_type            => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                                     ,p_aei_information_category    => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                                     ,p_aei_information1     => :P26_SEE_MORE_REQUEST_ID',
'                                                                                     ,p_aei_information2     => :P26_ACTION  --- to check with dror ',
'                                                                                     ,p_aei_information3     => v_shaliah_type',
'                                                                                     ,p_aei_information4     => :P26_TYPE_OF_TRAVEL',
'                                                                                     ,p_aei_information5     => :P26_DEPARTURE_AIRPORT',
'                                                                                     ,p_aei_information6     => :P26_DEPARTURE_DATE_FROM',
'                                                                                     ,p_aei_information7    => :P26_DEPARTURE_DATE_TO',
'                                                                                     ,p_aei_information8    => :P26_PREFERRED_DEPARTURE_TIME',
'                                                                                     ,p_aei_information10    => :P26_DESTINATION_AIRPORT',
'                                                                                     ,p_aei_information11    => :P26_ARRIVAL_DATE_FROM',
'                                                                                     ,p_aei_information12    => :P26_ARRIVAL_DATE_TO',
'                                                                                     ,p_aei_information13    => :P26_PREFERRED_ARRIVAL_TIME',
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
'                             and pei.aei_information1 = :P26_SEE_MORE_REQUEST_ID',
'                            AND (INFORMATION_TYPE LIKE ''JAFI_HR_FLIGHT_REQUESTS'');',
' ',
' ',
'                             hr_assignment_extra_info_api.update_assignment_extra_info  (p_validate    =>  false',
'                                                                                        ,p_assignment_extra_info_id => v_assi_extra_info_id',
'                                                                                        ,p_object_version_number => v_object_version_number',
'                                                                                        ,p_aei_information1     => :P26_SEE_MORE_REQUEST_ID',
'                                                                                        ,p_aei_information2     => :P26_ACTION   --- to check with dror ',
'                                                                                        --,p_aei_information3     => v_shaliah_type',
'                                                                                        ,p_aei_information4     => :P26_TYPE_OF_TRAVEL',
'                                                                                        ,p_aei_information5     => :P26_DEPARTURE_AIRPORT',
'                                                                                        ,p_aei_information6     => :P26_DEPARTURE_DATE_FROM',
'                                                                                        ,p_aei_information7    => :P26_DEPARTURE_DATE_TO',
'                                                                                        ,p_aei_information8    => :P26_PREFERRED_DEPARTURE_TIME',
'                                                                                        ,p_aei_information10    => :P26_DESTINATION_AIRPORT',
'                                                                                        ,p_aei_information11    => :P26_ARRIVAL_DATE_FROM',
'                                                                                        ,p_aei_information12    => :P26_ARRIVAL_DATE_TO',
'                                                                                        ,p_aei_information13    => :P26_PREFERRED_ARRIVAL_TIME',
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
null;
wwv_flow_api.component_end;
end;
/
