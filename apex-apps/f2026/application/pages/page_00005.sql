prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'Request form'
,p_alias=>'REQUEST-FORM'
,p_step_title=>'Request form'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_IMAGES#select2-extension.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var skillsState;',
'var isMobile;',
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
'function setSkillsIcon(triggeringElement) {',
'    var imagePostfix = ''unselected'';',
'    var img = $(triggeringElement).find(''img'');',
'    var btnType = $(img).data(''type'');',
'',
'    if ((btnType == ''sports'' && $v(''P5_SPORTS'') == ''Y'') ||',
'        (btnType == ''art'' && $v(''P5_ART'') == ''Y'') ||',
'        (btnType == ''multi-media'' && $v(''P5_MULTIMEDIA'') == ''Y'') ||',
'        (btnType == ''dance'' && $v(''P5_DANCE'') == ''Y'') ||',
'        (btnType == ''photography'' && $v(''P5_PHOTOGRAPHY'') == ''Y'')) {',
'        imagePostfix = ''selected'';',
'        $(triggeringElement).addClass(''is-active'');',
'    }',
'    else {',
'        $(triggeringElement).removeClass(''is-active'');',
'    }',
'    $(img).attr(''src'', ''apps/r/220/files/static/v161/'' + btnType + ''-'' + imagePostfix + ''.svg'');',
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
'};',
'',
'function setYesNoQuestion(pageItemId) { ',
'    var controlValue = $v(pageItemId);',
'    var triggeringElementParent = $(''.yes-no-qcard-controls[data-page-item="'' + pageItemId + ''"]'');',
'    if (controlValue == ''Y'') {',
'        $(triggeringElementParent).find(''.yes-no-qcard-control[data-value="Y"] img'').attr(''src'', ''#APP_IMAGES#yes-no-v-checked.svg'');',
'        $(triggeringElementParent).find(''.yes-no-qcard-control[data-value="N"] img'').attr(''src'', ''#APP_IMAGES#yes-no-x-unchecked.svg'');',
'    }',
'    else {',
'        $(triggeringElementParent).find(''.yes-no-qcard-control[data-value="N"] img'').attr(''src'', ''#APP_IMAGES#yes-no-x-checked.svg'');',
'        $(triggeringElementParent).find(''.yes-no-qcard-control[data-value="Y"] img'').attr(''src'', ''#APP_IMAGES#yes-no-v-unchecked.svg'');',
'    }',
'    ',
'    var parentRegionID = '''';',
'    if (pageItemId == ''P5_HAS_EXPERIENCE'') {',
'        parentRegionID = ''prevOrgRegion'';',
'    }',
'    else if (pageItemId == ''P5_ORTHODOX_REQUIRED'') {',
'        parentRegionID = ''orthodoxRegion'';',
'    }',
'',
'    if (parentRegionID != '''') {',
'        if (controlValue == ''Y'') {',
'            $(''#'' + parentRegionID + '' > .container'').show();',
'            //$(triggeringElementParent).css({''justify-content'': ''center'', ''gap'': ''15px''});',
'            $(triggeringElementParent).css({''gap'': ''15px''});',
'            $(triggeringElementParent).find(''.yes-no-qcard-control'').css({''height'': ''50px'', ''width'': ''50px''});',
'            $(triggeringElementParent).find(''.yes-no-qcard-control[data-value="Y"] img'').attr(''src'', ''#APP_IMAGES#yes-no-v-checked-small.svg'');',
'            $(triggeringElementParent).find(''.yes-no-qcard-control[data-value="N"] img'').attr(''src'', ''#APP_IMAGES#yes-no-x-unchecked-small.svg'');',
'        }',
'        else {',
'            $(''#'' + parentRegionID + '' > .container'').hide();',
'            $(triggeringElementParent).css({''gap'': ''10px''});',
'            $(triggeringElementParent).find(''.yes-no-qcard-control'').css({''height'': ''100px'', ''width'': ''100px''});',
'        }',
'    }',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function () {',
'    $("#P5_ORGANIZATION_UPD").select2({',
'        templateResult: formatState_P5_ORGANIZATION_UPD,',
'        templateSelection: formatSelected_P5_ORGANIZATION_UPD,',
'        placeholder: "Search",',
'        closeOnSelect: false',
'    });',
'',
'    function formatSelected_P5_ORGANIZATION_UPD(data) {',
'        if (!data.id) {',
'            return data.text;',
'        }',
'',
'        const selectedValues = $("#P5_ORGANIZATION_UPD").val() || [];',
'        const selectedCount = selectedValues.length;',
'',
'        const options = $("#P5_ORGANIZATION_UPD option").map(function () {',
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
'    function formatState_P5_ORGANIZATION_UPD(state) {',
'        if (!state.id) {',
'            return state.text;',
'        }',
'',
'        var $state = $(''<div class="rf-input-checkbox-wrap"><span class="rf-checkbox-mark"></span> '' + state.text + "</div>");',
'        return $state;',
'    }',
'',
'    $("#P5_ORGANIZATION_UPD").on("change", function () {',
'        $("#P5_ORGANIZATION_UPD option").each(function () {',
'            if ($(this).prop("selected")) {',
'                $(this).siblings(''input[type="checkbox"]'').prop("checked", true);',
'            }',
'        });',
'    });',
'    ',
'    ',
'    ',
'    $("#P5_PREV_ORGANIZATION").select2({',
'        templateResult: formatState_P5_PREV_ORGANIZATION,',
'        templateSelection: formatSelected_P5_PREV_ORGANIZATION,',
'        placeholder: "Search",',
'        maximumSelectionLength: 100,',
'        closeOnSelect: false',
'    });',
'',
'    function formatSelected_P5_PREV_ORGANIZATION(data) {',
'        if (!data.id) {',
'            return data.text;',
'        }',
'',
'        const selectedValues = $("#P5_PREV_ORGANIZATION").val() || [];',
'        const selectedCount = selectedValues.length;',
'',
'        const options = $("#P5_PREV_ORGANIZATION option").map(function () {',
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
'    function formatState_P5_PREV_ORGANIZATION(state) {',
'        if (!state.id) {',
'            return state.text;',
'        }',
'',
'        var $state = $(''<div class="rf-input-checkbox-wrap"><span class="rf-checkbox-mark"></span> '' + state.text + "</div>");',
'        return $state;',
'    }',
'',
'    $("#P5_PREV_ORGANIZATION").on("change", function () {',
'        $("#P5_PREV_ORGANIZATION option").each(function () {',
'            if ($(this).prop("selected")) {',
'                $(this).siblings(''input[type="checkbox"]'').prop("checked", true);',
'            }',
'        });',
'        ',
'        var ele = $(this);',
'        if(ele.val().length==100) {',
'          ele.select2(''close'');',
'        }',
'    });',
'    ',
'    ',
'    ',
'    /*',
'    $(''select.select2-hidden-accessible'').on("change", function() {',
'        var selectedOptionIds = $(''select.select2-hidden-accessible'').val();',
'        var selectedOptions = $(''select.select2-hidden-accessible option'').filter(function(index) {',
'            return $.inArray($(this).attr("value"), selectedOptionIds) !== -1;',
'        }).sort(function(a, b) {',
'            return $(a).text().toUpperCase().localeCompare($(b).text().toUpperCase());',
'        });',
'        $(selectedOptions).remove();',
'        var sortedOptions = $(''select.select2-hidden-accessible option'').sort(function(a, b) {',
'            return $(a).text().toUpperCase().localeCompare($(b).text().toUpperCase());',
'        });',
'        $(''select.select2-hidden-accessible option'').remove();',
'        $(selectedOptions).attr(''data-is-selected'', ''true'');',
'        $(''select.select2-hidden-accessible'').prepend(selectedOptions);',
'        $(''select.select2-hidden-accessible'').append(sortedOptions);',
'',
'        setTimeout(function(){',
'            $(''span.open-select2-no-selection'').remove();',
'            if ($(''.select2-selection__choice__remove'').length > 0) {',
'                $(''.select2-selection__choice__remove'').addClass(''open-select2 fa fa-chevron-down'')',
'                                                       .removeClass(''select2-selection__choice__remove'')',
'                                                       .text('''');',
'            }',
'            else if ($(''select.select2-hidden-accessible'').siblings(''span ul.select2-selection__rendered li.select2-selection__choice'').length == 0) {',
'                if ($(''li.select2-search--inline span.open-select2-no-selection'').length == 0) {',
'                    $(''li.select2-search--inline'').append(''<span class="open-select2-no-selection fa fa-chevron-down"></span>'');',
'                }',
'            }',
'            //$(''.select2-search__field'').attr(''disabled'',''disabled'');',
'        }, 10); ',
'    });',
'    ',
'    $(''select.select2-hidden-accessible'').parents(''.t-Form-fieldContainer'').on("click", function() {',
'        var select2Id = this.id.replace(''_CONTAINER'', '''');',
'        ',
'        setTimeout(() => {',
'            $(''<hr class="select2-divider"/>'').insertAfter(''.select2-results__option[aria-selected="true"]:last''); ',
'            if (!$(''.select2-results__options'').hasClass(''opaque-gradient'')) {',
'                $(''.select2-results__options'').addClass(''opaque-gradient'');',
'                $(''.select2-results__options'').attr("onscroll", "chk_scroll(this)");',
'            };',
'            ',
'            var clearBtnId = ''clearSelectionBtn_'' + select2Id;',
'            if ($(''#'' + clearBtnId).length == 0) {',
'                $(''<div style="width: 100%; height: 48px;">'' +',
'                  ''<button class="t-Button t-orange-btn lto520489891246004103_0" type="button" id="'' + clearBtnId + ''" '' + ',
'                  ''style="height:48px;BACKGROUND-COLOR: TRANSPARENT;BOX-SHADOW: NONE; float: right; padding-right: 10px; padding-bottom: 0;">'' + ',
'                  ''<span class="t-Button-label" style="color: #E84C26;font-size:16px;font-weight:500">Clear All</span></button></div>'')',
'                    .insertAfter(''ul.select2-results__options'');',
'                ',
'                $(''#'' + clearBtnId).on(''click'', function() {',
'                    $(''#select2-'' + select2Id + ''-results li'').attr(''aria-selected'',''false'');',
'                    $(''#'' + select2Id + '' option'').removeAttr(''data-is-selected'');',
'                    $s(select2Id, null);',
'                    $(''#'' + select2Id).trigger(''change'');',
'                });',
'            }',
'            ',
'            $(''.select2-search__field'').on(''keyup'', function() {',
'                if ($(this).val().length > 0) {',
'                    $(this).parent().siblings(''.select2-selection__choice:first-child'').hide();',
'                }',
'                else {',
'                    $(this).parent().siblings(''.select2-selection__choice:first-child'').show();',
'                }',
'            });',
'        }, 25);',
'    });*/',
'    ',
'    ',
'    ',
'    //$(''#view-skills-region .t-Region-body'').append(''<button style="padding:0;background-color:transparent;order:2;box-shadow: none;position: absolute; right: 15px; top: 15px;" class="t-Button edit-cubes-btn" type="button"><img src="apps/r/220/files'
||'/static/v148/ic-edit.png" width="auto" height="16"></button>'');',
'    ',
'    $(''.t-image-cube-btn'').each(function() {',
'        var imagePostfix;',
'        var img = $(this).find(''img'');',
'        var btnType = $(img).data(''type'');',
'        ',
'        if ((btnType == ''sports'' && $v(''P5_SPORTS'') == ''Y'') ||',
'            (btnType == ''art'' && $v(''P5_ART'') == ''Y'') ||',
'            (btnType == ''multi-media'' && $v(''P5_MULTIMEDIA'') == ''Y'') ||',
'            (btnType == ''dance'' && $v(''P5_DANCE'') == ''Y'') ||',
'            (btnType == ''photography'' && $v(''P5_PHOTOGRAPHY'') == ''Y'')) {',
'            $(this).attr(''data-selected'', ''true'').addClass(''is-active'');',
'        }',
'        if ($(this).data(''selected'')) {',
'            imagePostfix = '''';',
'            $(img).attr(''src'', ''apps/r/220/files/static/v161/'' + btnType + ''-'' + ''selected.svg'');',
'        }',
'    });',
'    ',
'    ',
'    $(''#edit-skills-region .t-image-cube-btn'').hover(function() {',
'        if ($(''#edit-skills-region button.is-active'').length < 3) {',
'            var img = $(this).find(''img'');',
'            var btnType = $(img).data(''type'');',
'            $(img).attr(''src'', ''apps/r/220/files/static/v161/'' + btnType + ''-selected.svg'');',
'        }',
'    }, function () {',
'        var imagePostfix = ''unselected'';',
'        var img = $(this).find(''img'');',
'        var btnType = $(img).data(''type'');',
'        ',
'        if ((btnType == ''sports'' && $v(''P5_SPORTS'') == ''Y'') ||',
'            (btnType == ''art'' && $v(''P5_ART'') == ''Y'') ||',
'            (btnType == ''multi-media'' && $v(''P5_MULTIMEDIA'') == ''Y'') ||',
'            (btnType == ''dance'' && $v(''P5_DANCE'') == ''Y'') ||',
'            (btnType == ''photography'' && $v(''P5_PHOTOGRAPHY'') == ''Y'')) {',
'            imagePostfix = ''selected'';',
'        }        ',
'        ',
'        $(img).attr(''src'', ''apps/r/220/files/static/v161/'' + btnType + ''-'' + imagePostfix + ''.svg'');',
'    });',
'    ',
'    isMobile = window.mobileCheck();',
'    ',
'    if (isMobile) {',
'        //Continue if mobile agent',
'',
'        $(''.p5-item'').each(function() {',
'            $(this).find(''.shshCount'').insertBefore($(this).find(''#shshCountLabel''));',
'        });',
'        $(''.select2'').attr(''style'',''width: 100% !important;''); ',
'        ',
'        $(''.yes-no-qcard-container > .container > .row > .col-4'').removeClass(''col-4'');',
'    }',
'});'))
,p_css_file_urls=>'#APP_IMAGES#select2-extension.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Form-error {',
'    background-image: url(#APP_IMAGES#ic-info-orange.png);',
'}',
'',
'.cubes-container .row{',
'    display: flex;',
'    justify-content: center;',
'    gap:15px;',
'}',
'.cubes-container .col{',
'    justify-content: center;',
'    display: flex;',
'}',
'.cubes-container .row .col button{',
'   min-width: 140px !important;',
'}',
'/*',
'.t-image-cube-btn img{',
'    filter: brightness(1.2) saturate(0.2);',
'    opacity: 0.4;',
'}',
'*/',
'',
'.active-btn img{',
'    filter: none;',
'    opacity:1;',
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
'.opaque-gradient {',
'    -webkit-mask-image: -webkit-gradient(linear, left 60%, left bottom, from(rgba(0, 0, 0, 1)), to(rgba(0, 0, 0, 0)));',
'}',
'',
'.marquee {',
'    display: flex;',
'    overflow: hidden;',
'    white-space: nowrap;',
'}',
'',
'.marquee_item {',
'    animation-duration: 20s;',
'    animation-iteration-count: infinite;',
'    animation-name: marquee-content;',
'    animation-timing-function: linear;',
'}',
'',
'.marquee:hover .marquee_item {',
'    animation-play-state: paused;',
'}',
'',
'@keyframes marquee-content {',
'    from {',
'        transform: translateX(0%);',
'    }',
'    to {',
'        transform: translateX(-225%);',
'    }',
'}',
'',
'#edit-shsh-rg {',
'    z-index: 9;',
'    max-height: 260px;',
'    border: 1px solid red;',
'    min-height: 250px !important;',
'}',
'/*',
'#edit-shsh-rg input,',
'#edit-shsh-rg .select2-selection {',
'    width: 100%;',
'}*/',
'',
'li.select2-selection__choice:first-child {',
'    margin-top: 8px !important;',
'    position: relative;',
'}',
'',
'#edit-shsh-rg .container {',
'    overflow: visible;',
'    width: 100%',
'}',
'',
'#closeEditBtn {',
'    position: absolute;',
'    right: 2px;',
'    z-index: 10;',
'    top: -15px;',
'}',
'',
'#closeSkillsEditBtn {',
'    position: absolute;',
'    right: 15px;',
'    z-index: 10;',
'    top: 5px;',
'}',
'',
'',
'#edit-shsh-rg table[role="presentation"] {',
'    position: absolute;',
'    padding-left: 20px;',
'    padding-right: 20px;',
'    bottom: -5px;',
'}',
'/*',
'#saveBtn {',
'    right: 0;',
'}*/',
'',
'#saveBtn, #deleteBtn {',
'    padding: 0;',
'}',
'',
'#deleteBtn span {',
'    font-size: 16px !important;',
'    font-weight:500 !important;',
'}',
'',
'#saveBtn span:hover,',
'#deleteBtn span: hover {',
'    border: none;',
'}',
'',
'.select2 {',
'    background: #F9F7F4;',
'}',
'',
'.select2 .selection,',
'.select2 .select2-selection {',
'    background: transparent !important;',
'    background-color: transparent !important;',
'}',
'',
'.select2-search__field {',
'    margin-top: 0 !important;',
'    width: auto !important;',
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
'.select2-container {',
'    width: 100% !important;',
'    font-family: Roboto;',
'    color: #172B54;',
'}',
'',
'/*',
'.select2-container input::placeholder {',
'    font-weight: 400;',
'    font-size: 16px;',
'    color:#172B54;',
'}',
'',
'',
'',
'input[type="search"]::before {',
'    content: "\f109";',
'}*/',
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
'#edit-skills-region .t-Region-body,',
'#total-shlichim-region .t-Region-body {',
'    padding-bottom: 0;',
'}',
'#total-shlichim-region .t-Region-body {',
'    padding-top: 0;',
'}',
'',
'#saveSkills {',
'    position: relative;',
'    bottom: -6px;',
'    padding-left: 0;',
'}',
'',
'#seeAllContainer {',
'    width: 890px;',
'}',
'',
'#seeAllBtn {',
'    float: right;',
'    padding-bottom: 0;',
'    position: relative;',
'    bottom: -10px;',
'}',
'',
'.mobile-br {',
'    display: none;',
'}',
'',
'.home-link {',
'    display: block !important;',
'}',
'',
'.rf-input-checkbox-wrap {',
'    color: #172B54 !important;',
'}',
'',
'',
'',
'',
'',
'',
'',
'.yes-no-qcard-container {',
'    width: 890px;',
'    margin: auto;',
'}',
'',
'.yes-no-qcard-container > .container {',
'    width: 100%;   ',
'}',
'',
'.yes-no-qcard {',
'    width: 100%;',
'    height: 249px;',
'    border-radius: 10px;',
'    background: #FFFFFF;',
'    box-shadow: 0px 4px 20px 0px #0000000D;',
'    display: flex;',
'    flex-flow: column;',
'    justify-content: space-between;',
'    align-items: start;',
'    padding: 30px;',
'    font-weight: 500;',
'    font-size: 16px;',
'    line-height: 22px;',
'    letter-spacing: 0%;',
'}',
'',
'.yes-no-qcard-controls {',
'    display: flex;',
'    width: 100%;',
'    align-items: center;',
'    justify-content: center;',
'    gap: 10px;',
'}',
'',
'.yes-no-qcard-control {',
'    width: 100px;',
'    height: 100px;',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    border-radius: 5px;',
'    background: #F9F7F4;',
'    cursor: pointer;',
'    transition: width 0.5s, height 0.5s;',
'}',
'',
'.yes-no-qcard-control img {',
'    transition: width 0.5s, height 0.5s;',
'}',
'',
'.yes-no-qcard-control:hover {',
'    border: 1px solid #EFE8E0;',
'}',
'',
'#P5_PREV_ORGANIZATION_CONTAINER .select2-container {',
'    height: 40px;',
'    width: 100% !important;',
'}',
'',
'#P5_PREV_ORGANIZATION_CONTAINER .t-Form-labelContainer,',
'#P5_ORTHODOX_AMOUNT_CONTAINER .t-Form-labelContainer {',
'    display: none;',
'}',
'',
'.yes-no-qcard > .container {',
'    width: 100%;',
'}',
'',
'.yes-no-qcard-q {',
'    width: 100%;',
'    text-align: center;',
'}',
'',
'#P5_NO_ORGS_MSG_LABEL {',
'    line-height: 22px;',
'    color: red !important;',
'} ',
'',
'@media (max-width: 640px) {',
'    .mobile-br {',
'        display: block;',
'    }',
'    ',
'    .desktop-br {',
'        display: none;',
'    }',
'    ',
'    .t-Body-contentInner {',
'        padding: 20px;',
'    }',
'',
'    .t-page-title {',
'        width: 330px;',
'        margin-left: auto;',
'        margin-right: auto;',
'        margin-bottom: 35px !important;',
'    }',
'    ',
'    #centerSeeAllContainer,',
'    #seeAllContainer {',
'        width: 100%;',
'    }',
'    ',
'    #seeAllBtn {',
'        padding-right: 0;',
'    }',
'    ',
'    .p5-item {',
'        width: 100% !important;',
'        border-radius: 20px !important;',
'    }',
'    ',
'    .shsh-count-grid {',
'        grid-template-columns: 100% !important;',
'    }',
'    ',
'    .shsh-count-label {',
'        display: grid;',
'        grid-template-columns: 45px auto;',
'    }',
'    ',
'    #shshCountLabel {',
'        position: relative;',
'        bottom: -15px;',
'    }',
'    ',
'    .selectedOrganizations .t-Card {',
'        width: 100% !important;',
'    }',
'    ',
'    #shshRegion_cards .t-Cards-item,',
'    #shshRegion_cards .t-Cards-item a {',
'        width: 100% !important;',
'    }',
'    ',
'    .add-more-btn {',
'        	width: 225px !important;',
'        min-height: 46px !important;',
'        border-radius: 23px !important;',
'        color: white !important;',
'        background-color: #E84C26 !important;',
'        margin: auto;',
'    }',
'    ',
'    .add-more {',
'        color: white !important;',
'    }',
'    ',
'    #shshRegion_cards {',
'        margin-bottom: 10px !important;',
'    }',
'    ',
'    #descriptionViewRegion,',
'    #descriptionEditRegion {',
'        max-width: 240px !important;',
'    }',
'    ',
'    .cubes-container .row::before {',
'        content: none;',
'    }',
'    ',
'    .cubes-container .row:first-child {',
'        display: grid !important;',
'        grid-template-columns: 50% 50%;',
'        margin: 0;',
'        gap: 0 !important;',
'        row-gap: 15px !important;',
'    }',
'    ',
'    .cubes-container .row:first-child .col {',
'        /*max-width: 50% !important;*/',
'        padding: 0;',
'        justify-content: flex-start;',
'    }    ',
'    ',
'    .cubes-container .row:last-child .col {',
'        justify-content: flex-end !important;',
'    }',
'    ',
'    #view-skills-region,',
'    #edit-skills-region,',
'    #total-shlichim-region {',
'       border-radius: 20px !important;',
'    }',
'    ',
'    #view-skills-region .t-Region-body,',
'    #edit-skills-region .t-Region-body{',
'        padding-left: 20px !important;        ',
'        padding-right: 20px !important;',
'    }',
'    ',
'    .t-image-cube-btn {',
'        margin: auto !important;',
'    }',
'    ',
'    #saveSkills {',
'        right: -30px;',
'    }',
'    ',
'    .add-more-container.clicked {',
'        height: 260px;',
'    }',
'    ',
'    #P5_REQUESTED_SHSH_UPD .apex-item-option {',
'        width: 25% !important;',
'    }',
'    ',
'    .yes-no-qcard-container {',
'        width: 100%;',
'    }',
'    ',
'    .yes-no-qcard-container > .container > .row {',
'        display: flex;',
'        flex-flow: column;',
'    }',
'    ',
'    .yes-no-qcard-container .yes-no-qcard {',
'        width: 100%;',
'        margin-bottom: 20px !important;',
'    }',
'    ',
'    #prevOrgRegion > .container {',
'        width: 100%;',
'    }',
'}',
'',
'@media (max-width: 360px) {',
'    #view-skills-region .t-Region-body,',
'    #edit-skills-region .t-Region-body{',
'        padding-left: 0px !important;        ',
'        padding-right: 0px !important;',
'    }',
'    ',
'    #total-shlichim-region .t-Region-body {',
'        padding-left: 0px !important;        ',
'        padding-right: 0px !important;',
'    }',
'    ',
'    ',
'}'))
,p_step_template=>wwv_flow_api.id(29244342218644)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'CHENR'
,p_last_upd_yyyymmddhh24miss=>'20261008072545'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13435081197403352)
,p_plug_name=>'Sub Page Info bold'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="font-weight:700">Before filling out the form, we recommend <br class="mobile-br">making sure that <br class="desktop-br">',
'all organizations are <br class="mobile-br">up to date.',
'<br><br>',
'You can return to the <br class="mobile-br">Community information area at any time<br>to update this information.',
'</span>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(21929934043071546)
,p_name=>'SHSH'
,p_region_name=>'shshRegion'
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Cards--animColorFill:t-Cards--cols:t-Cards--basic'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with ',
'    max_count as (select count(*) as MAX_ORG_COUNT',
'                  from hr_all_organization_units haou,hr_organization_information hoi1',
'                  where haou.organization_id = hoi1.organization_id and ',
'                        haou.business_group_id=4088 and ',
'                        hoi1.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG'' and ',
'                        hoi1.ORG_INFORMATION10=''Y'' and ',
'                        hoi1.organization_id=:P0_ORG_ID)',
'select CARD_TYPE,',
'       ORG_INFORMATION1,',
'       ORG_INFORMATION2,',
'       org_information_id,',
'       SELECTED_ORG_COUNT,',
'       MAX_ORG_COUNT,',
'       org_names',
'    from (select ''SHSH'' CARD_TYPE,',
'        to_number(hoi2.ORG_INFORMATION1) ORG_INFORMATION1, ',
'        hoi2.ORG_INFORMATION2,',
'        hoi2.org_information_id,',
'        REGEXP_COUNT (hoi2.ORG_INFORMATION2, '':'') + 1 SELECTED_ORG_COUNT,',
'        max_count.MAX_ORG_COUNT,',
unistr('        (select listagg(h.ORG_INFORMATION1, ''\2588'') within group (order by h.ORG_INFORMATION1) '),
'         from hr_organization_information h ',
'         where h.org_information_id in (select column_value from table(apex_string.split(hoi2.ORG_INFORMATION2,'':'')))) org_names',
'    from hr_organization_information hoi2,',
'         max_count',
'    where hoi2.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOMER_RF'' and hoi2.org_information3 = :P0_CURRENT_YEAR  and ',
'          hoi2.organization_id= :P0_ORG_ID and hoi2.ORG_INFORMATION4 in (''N'',''U'')  ',
'    order by ORG_INFORMATION1 desc) where rownum <= :P5_END_ROW',
'UNION',
'SELECT ''BLANK_ADD'' CARD_TYPE,',
'     NULL,',
'     NULL,',
'     NULL,',
'     NULL,     ',
'     NULL,',
'     NULL',
'from dual',
'where to_date (fnd_profile.VALUE(''JAFI_SSH_RF_EDIT_END_DATE'')  , ''dd/mm/yyyy'') >= sysdate',
'order by CARD_TYPE desc, ORG_INFORMATION1 desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_ORG_ID,P5_END_ROW'
,p_query_row_template=>wwv_flow_api.id(28027516964493346)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_item=>'P5_MAX_SHSH_ITEMS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21930164066071549)
,p_query_column_id=>1
,p_column_alias=>'CARD_TYPE'
,p_column_display_sequence=>1
,p_column_heading=>'Card Type'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29124663820102947)
,p_query_column_id=>2
,p_column_alias=>'ORG_INFORMATION1'
,p_column_display_sequence=>3
,p_column_heading=>'Org Information1'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29124824900102948)
,p_query_column_id=>3
,p_column_alias=>'ORG_INFORMATION2'
,p_column_display_sequence=>4
,p_column_heading=>'Org Information2'
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
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13937541390796090)
,p_query_column_id=>4
,p_column_alias=>'ORG_INFORMATION_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Org Information Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21930277942071550)
,p_query_column_id=>5
,p_column_alias=>'SELECTED_ORG_COUNT'
,p_column_display_sequence=>5
,p_column_heading=>'Selected Org Count'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21930380895071551)
,p_query_column_id=>6
,p_column_alias=>'MAX_ORG_COUNT'
,p_column_display_sequence=>6
,p_column_heading=>'Max Org Count'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21930527727071552)
,p_query_column_id=>7
,p_column_alias=>'ORG_NAMES'
,p_column_display_sequence=>7
,p_column_heading=>'Org Names'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41492066594067273)
,p_plug_name=>'button container'
,p_parent_plug_id=>wwv_flow_api.id(21929934043071546)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41433559201588548)
,p_plug_name=>'<!-- Skills View--><div class="t-rounded-div-title"> <img  src="#APP_IMAGES#ic_loyalty_48px.svg" ><span>Skills</span></div>'
,p_region_name=>'view-skills-region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:margin-top-md'
,p_plug_template=>wwv_flow_api.id(13537224864650460)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41434341750588555)
,p_plug_name=>'cubes container'
,p_parent_plug_id=>wwv_flow_api.id(41433559201588548)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>20
,p_plug_grid_column_css_classes=>'cubes-container'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41434531682588557)
,p_plug_name=>'description'
,p_region_name=>'descriptionViewRegion'
,p_parent_plug_id=>wwv_flow_api.id(41433559201588548)
,p_region_template_options=>'#DEFAULT#:margin-top-md:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Are there any skills you are looking for in a shaliach?',
'<br>',
'<span style="font-weight:400">Please select up to 3 skills</span>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41491322796067265)
,p_plug_name=>'Total Shlichim'
,p_region_name=>'total-shlichim-region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:margin-top-md'
,p_plug_template=>wwv_flow_api.id(13537224864650460)
,p_plug_display_sequence=>130
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex; flex-direction: column; align-items: center; justify-content: center; color: #E84C26; gap: 20px; min-height: 110px;">',
'    <div style="font-weight: 400; font-size: 16px;">Total Number of Requested Shlichim</div>',
'    <div style="font-family: Oxygen; font-weight: 700; font-size: 45px; line-height: 20px;">&P5_TOTAL_SHLICHIM.</div>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41493136936067283)
,p_plug_name=>'Center Container'
,p_region_name=>'centerSeeAllContainer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>12
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41493419862067286)
,p_plug_name=>'See All Container'
,p_region_name=>'seeAllContainer'
,p_parent_plug_id=>wwv_flow_api.id(41493136936067283)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P5_HAS_NO_ORGS'
,p_plug_display_when_cond2=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45430560986295453)
,p_plug_name=>'Submit Info'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>140
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br><br>',
'Please make sure & click ''Submit Form''<br>',
'to send your request',
'<br>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(510677461677809195)
,p_plug_name=>'<!-- Skills Edit--><div class="t-rounded-div-title"> <img  src="#APP_IMAGES#ic_loyalty_48px.svg" ><span>Skills</span></div>'
,p_region_name=>'edit-skills-region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:margin-top-md'
,p_plug_template=>wwv_flow_api.id(13537224864650460)
,p_plug_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13435238601403353)
,p_plug_name=>'description'
,p_region_name=>'descriptionEditRegion'
,p_parent_plug_id=>wwv_flow_api.id(510677461677809195)
,p_region_template_options=>'#DEFAULT#:margin-top-md:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Are there any skills you are looking for in a shaliach?',
'<br>',
'<span style="font-weight:400">Please select up to 3 skills</span>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13435273344403354)
,p_plug_name=>'cubes container'
,p_parent_plug_id=>wwv_flow_api.id(510677461677809195)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>30
,p_plug_grid_column_css_classes=>'cubes-container'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(523537949289297881)
,p_plug_name=>'edit shsh rf details'
,p_region_name=>'edit-shsh-rg'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(30951025447039767)
,p_plug_display_sequence=>80
,p_plug_grid_column_css_classes=>'center-region '
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(535835975835704765)
,p_plug_name=>'button container'
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>160
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(548224599002996469)
,p_plug_name=>'ButtonRegion'
,p_region_template_options=>'#DEFAULT#:margin-top-lg'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>150
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(632460207893777780)
,p_plug_name=>'Extra Yes\No Questions'
,p_region_css_classes=>'yes-no-qcard-container'
,p_region_template_options=>'#DEFAULT#:margin-top-lg'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(632460255878777781)
,p_plug_name=>'Do the Shinshin need a driver''s license?'
,p_parent_plug_id=>wwv_flow_api.id(632460207893777780)
,p_region_css_classes=>'yes-no-qcard'
,p_region_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="yes-no-qcard-q">Do the Shinshin need a driver''s license?</div>',
'<div class="yes-no-qcard-controls" data-page-item="P5_DRIVERS_LICENSE">',
'    <div class="yes-no-qcard-control" title="Yes" data-value="Y">',
'        <img src="#APP_IMAGES#yes-no-v-unchecked.svg" />',
'    </div>',
'    <div class="yes-no-qcard-control" title="No" data-value="N">',
'        <img src="#APP_IMAGES#yes-no-x-unchecked.svg" />',
'    </div>',
'</div>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(632460344503777782)
,p_plug_name=>'Do the Shinshinim work in pairs?'
,p_parent_plug_id=>wwv_flow_api.id(632460207893777780)
,p_region_css_classes=>'yes-no-qcard'
,p_region_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="yes-no-qcard-q">Do the Shinshinim work in pairs?</div>',
'<div class="yes-no-qcard-controls" data-page-item="P5_WORK_IN_PAIRS">',
'    <div class="yes-no-qcard-control" title="Yes" data-value="Y">',
'        <img src="#APP_IMAGES#yes-no-v-unchecked.svg" />',
'    </div>',
'    <div class="yes-no-qcard-control" title="No" data-value="N">',
'        <img src="#APP_IMAGES#yes-no-x-unchecked.svg" />',
'    </div>',
'</div>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(632460488134777783)
,p_plug_name=>'Is experience in a youth movement required?'
,p_region_name=>'prevOrgRegion'
,p_parent_plug_id=>wwv_flow_api.id(632460207893777780)
,p_region_css_classes=>'yes-no-qcard'
,p_region_template_options=>'#DEFAULT#:margin-top-md:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="yes-no-qcard-q">Is experience in a youth movement required?</div>',
'<div class="yes-no-qcard-controls" data-page-item="P5_HAS_EXPERIENCE">',
'    <div class="yes-no-qcard-control" title="Yes" data-value="Y">',
'        <img src="#APP_IMAGES#yes-no-v-unchecked.svg" />',
'    </div>',
'    <div class="yes-no-qcard-control" title="No" data-value="N">',
'        <img src="#APP_IMAGES#yes-no-x-unchecked.svg" />',
'    </div>',
'</div>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(638824160171557453)
,p_plug_name=>'Are Orthodox Shinshinim required?'
,p_region_name=>'orthodoxRegion'
,p_parent_plug_id=>wwv_flow_api.id(632460207893777780)
,p_region_css_classes=>'yes-no-qcard'
,p_region_template_options=>'#DEFAULT#:margin-top-md:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="yes-no-qcard-q">Are Orthodox Shinshinim required?</div>',
'<div class="yes-no-qcard-controls" data-page-item="P5_ORTHODOX_REQUIRED">',
'    <div class="yes-no-qcard-control" title="Yes" data-value="Y">',
'        <img src="#APP_IMAGES#yes-no-v-unchecked.svg" />',
'    </div>',
'    <div class="yes-no-qcard-control" title="No" data-value="N">',
'        <img src="#APP_IMAGES#yes-no-x-unchecked.svg" />',
'    </div>',
'</div>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1107727272658522095)
,p_plug_name=>'Sub Page Info'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'In this section, we would like to know the <br class="mobile-br">number of SHSH you need <br class="desktop-br">and the <br class="mobile-br">organizations they will volunteer in.',
'<br><br>',
unistr('In order to begin an accurate recruitment <br class="mobile-br">process and tailor the <br class="desktop-br">selection to each <br class="mobile-br">community\2019s specific needs, we will need this<br>information no later than October 31.'),
'<br><Br>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5717943057030464457)
,p_plug_name=>'Title'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(1491988443724117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'SHSH Program - Request form'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41490708755067259)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(510677461677809195)
,p_button_name=>'CloseSkillsEditRG'
,p_button_static_id=>'closeSkillsEditBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_api.id(2910527574307047)
,p_button_image_alt=>'#APP_IMAGES#ic-x-close.png'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31030164402386966)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(535835975835704765)
,p_button_name=>'BACK_TO_MENU'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back to Menu'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:RR,5::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41433769693588550)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(41434341750588555)
,p_button_name=>'Sports_IMG_v'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(10113380236895156)
,p_button_image_alt=>'<img data-type="sports" src="#APP_IMAGES#sports-unselected.svg" style="width: 65px; position: absolute; top: 10px;" /> <span style="position: absolute; bottom: 20px;">Sports</span>'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41492237042067274)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(41492066594067273)
,p_button_name=>'SHOW_MORE_BTN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'Show more'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41493243157067285)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(41493419862067286)
,p_button_name=>'P5_SEE_ALL'
,p_button_static_id=>'seeAllBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'See All (&P5_COUNT_ROWS.)'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13459749033603476)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(13435273344403354)
,p_button_name=>'Sports_IMG'
,p_button_static_id=>'sportBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(10113380236895156)
,p_button_image_alt=>'<img data-type="sports" src="#APP_IMAGES#sports-unselected.svg" style="width: 65px; position: absolute; top: 10px;" /> <span style="position: absolute; bottom: 20px;">Sports</span>'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(29122312700089670)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(523537949289297881)
,p_button_name=>'CloseEditRG'
,p_button_static_id=>'closeEditBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_api.id(2910527574307047)
,p_button_image_alt=>'#APP_IMAGES#ic-x-close.png'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41433878529588551)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(41434341750588555)
,p_button_name=>'Art_IMG_v'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(10113380236895156)
,p_button_image_alt=>'<img data-type="art" src="#APP_IMAGES#art-unselected.svg" style="width: 65px; position: absolute; top: 10px;" /><span style="position: absolute; bottom: 20px;">Art</span>'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13459408171603475)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(13435273344403354)
,p_button_name=>'Art_IMG'
,p_button_static_id=>'artBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(10113380236895156)
,p_button_image_alt=>'<img data-type="art" src="#APP_IMAGES#art-unselected.svg" style="width: 65px; position: absolute; top: 10px;" /><span style="position: absolute; bottom: 20px;">Art</span>'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41433955447588552)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(41434341750588555)
,p_button_name=>'Multimedia_IMG_v'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(10113380236895156)
,p_button_image_alt=>'<img data-type="multi-media" src="#APP_IMAGES#multi-media-unselected.svg" style="width: 65px; position: absolute; top: 10px;" /><span style="position: absolute; bottom: 20px;">Multi-media</span>'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13460146660603476)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(13435273344403354)
,p_button_name=>'Multimedia_IMG'
,p_button_static_id=>'multimediaBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(10113380236895156)
,p_button_image_alt=>'<img data-type="multi-media" src="#APP_IMAGES#multi-media-unselected.svg" style="width: 65px; position: absolute; top: 10px;" /><span style="position: absolute; bottom: 20px;">Musical instruments</span>'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41434051186588553)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(41434341750588555)
,p_button_name=>'Dance_IMG_v'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(10113380236895156)
,p_button_image_alt=>'<img data-type="dance" src="#APP_IMAGES#dance-unselected.svg" style="width: 25px; position: absolute; top: 25px;" /><span style="position: absolute; bottom: 20px;">Dance</span>'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13460594249603476)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(13435273344403354)
,p_button_name=>'Dance_IMG'
,p_button_static_id=>'danceBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(10113380236895156)
,p_button_image_alt=>'<img data-type="dance" src="#APP_IMAGES#dance-unselected.svg" style="width: 25px; position: absolute; top: 25px;" /><span style="position: absolute; bottom: 20px;">Dance</span>'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41434230638588554)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(41434341750588555)
,p_button_name=>'Photography_IMG_v'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(10113380236895156)
,p_button_image_alt=>'<img data-type="photography" src="#APP_IMAGES#photography-unselected.svg" style="width: 45px; position: absolute; top: 30px;" /><span style="position: absolute; bottom: 20px;">Photography</span>'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13461038940603476)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(13435273344403354)
,p_button_name=>'Photography_IMG'
,p_button_static_id=>'photographyBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(10113380236895156)
,p_button_image_alt=>'<img data-type="photography" src="#APP_IMAGES#photography-unselected.svg" style="width: 45px; position: absolute; top: 30px;" /><span style="position: absolute; bottom: 20px;">Photography</span>'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13476049702603495)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(548224599002996469)
,p_button_name=>'SubmitForm'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2938281857134305)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Form'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41436176719588574)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(13435273344403354)
,p_button_name=>'Save_Skills'
,p_button_static_id=>'saveSkills'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(5843813714039240)
,p_button_image_alt=>'Save Changes'
,p_button_position=>'BODY'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21931895628071566)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(523537949289297881)
,p_button_name=>'Delete'
,p_button_static_id=>'deleteBtn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'Delete'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P5_HAS_NO_ORGS'
,p_button_condition2=>'N'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(29121934020089645)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(523537949289297881)
,p_button_name=>'Save'
,p_button_static_id=>'saveBtn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(5843813714039240)
,p_button_image_alt=>'Save Changes'
,p_button_position=>'BOTTOM'
,p_button_condition=>'P5_HAS_NO_ORGS'
,p_button_condition2=>'N'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(666161785416744363)
,p_branch_name=>'Navigate to Organizations Management'
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'ORGS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13461797338603478)
,p_name=>'P5_SELECTED_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(510677461677809195)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13937590041796091)
,p_name=>'P5_REQUESTED_SHSH_UPD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(523537949289297881)
,p_prompt=>'Requested SHSH'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:1;1,2;2,3;3,4;4,5;5,6;6'
,p_colspan=>12
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_css_classes=>'black-label'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'6'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13937720780796092)
,p_name=>'P5_ORGANIZATION_UPD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(523537949289297881)
,p_prompt=>'Organization'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select hoi.ORG_INFORMATION1  d,',
'       hoi.org_information_id r',
'from hr_organization_information hoi',
'where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG'' and hoi.ORG_INFORMATION10 = ''Y'' and ',
'      hoi.organization_id =  :P0_ORG_ID',
'order by hoi.ORG_INFORMATION1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Search'
,p_grid_column_css_classes=>'black-label rf-select2-filter'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'MULTI'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21931581159071563)
,p_name=>'P5_ORGANIZATION_CODES_UPD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(523537949289297881)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21934276406071590)
,p_name=>'P5_SPORTS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(13435273344403354)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21934435894071591)
,p_name=>'P5_ART'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(13435273344403354)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21934487507071592)
,p_name=>'P5_MULTIMEDIA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(13435273344403354)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33029901321138062)
,p_name=>'P5_ORG_INFO_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(523537949289297881)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41433112673588543)
,p_name=>'P5_DANCE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(13435273344403354)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41433193418588544)
,p_name=>'P5_PHOTOGRAPHY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(13435273344403354)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41491351328067266)
,p_name=>'P5_TOTAL_SHLICHIM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(41491322796067265)
,p_item_default=>'0'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41491574702067268)
,p_name=>'P5_END_ROW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(21929934043071546)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41491938532067271)
,p_name=>'P5_COUNT_ROWS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(21929934043071546)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41492713345067279)
,p_name=>'P5_MAX_SHSH_ITEMS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(21929934043071546)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(632460576445777784)
,p_name=>'P5_DRIVERS_LICENSE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(632460255878777781)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(632460669567777785)
,p_name=>'P5_WORK_IN_PAIRS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(632460344503777782)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(632460828759777786)
,p_name=>'P5_HAS_EXPERIENCE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(632460488134777783)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(632460880672777787)
,p_name=>'P5_PREV_ORGANIZATION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(632460488134777783)
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_YOUTH_MOVEMENTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select flv.lookup_code r, flv.meaning d',
'from fnd_lookup_values flv',
'where flv.lookup_type = ''JAFI_HR_SSH_RF_YOUTH_MOVMENTS'' and flv.language = ''US''',
'order by d'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Search'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'MULTI'
,p_attribute_08=>'CIC'
,p_attribute_10=>'100%'
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
 p_id=>wwv_flow_api.id(638824266215557454)
,p_name=>'P5_ORTHODOX_REQUIRED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(638824160171557453)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(638824404188557455)
,p_name=>'P5_ORTHODOX_AMOUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(638824160171557453)
,p_prompt=>'Orthodox Amount'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:1;1,2;2,3;3,4;4,5;5,6;6,7;7,8;8,9;9,10;10,11;11,12;12,13;13,14;14,15;15,16;16,17;17,18;18,19;19,20;20'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Search'
,p_cHeight=>1
,p_grid_column_css_classes=>'black-label rf-select2-filter'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(666161055876744356)
,p_name=>'P5_NO_ORGS_MSG'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(523537949289297881)
,p_prompt=>'In order to proceed with completing the form, you must first fill in the <a id="orgsLink" href="#"><u>Organizations</u></a>.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P5_HAS_NO_ORGS'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(666161399824744359)
,p_name=>'P5_HAS_NO_ORGS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(523537949289297881)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(41491485930067267)
,p_computation_sequence=>10
,p_computation_item=>'P5_TOTAL_SHLICHIM'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'FUNCTION_BODY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_sum number := 0;',
'begin',
'    begin',
'        select sum(to_number(hoi2.ORG_INFORMATION1)) into v_sum',
'        from hr_organization_information hoi2',
'        where hoi2.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOMER_RF'' and hoi2.org_information3 = :P0_CURRENT_YEAR and ',
'              hoi2.organization_id= :P0_ORG_ID and hoi2.ORG_INFORMATION4 in (''N'',''U'');',
'',
'        exception when others then v_sum := 0;',
'    end;',
'    return v_sum;',
'end;'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(65366165304161361)
,p_computation_sequence=>20
,p_computation_item=>'P5_REQUESTED_SHSH_UPD'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'1'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(666161513379744360)
,p_computation_sequence=>30
,p_computation_item=>'P5_HAS_NO_ORGS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'FUNCTION_BODY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count pls_integer;',
'begin',
'    select count(*) into v_count',
'    from hr_organization_information hoi',
'    where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG'' and hoi.ORG_INFORMATION10 = ''Y'' and hoi.organization_id =  :P0_ORG_ID;',
'    ',
'    if v_count = 0 then return ''Y'';',
'    end if;',
'    return ''N'';',
'    ',
'    exception when no_data_found then return ''N'';',
'end;'))
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(21933577974071583)
,p_validation_name=>'organization is not null'
,p_validation_sequence=>10
,p_validation=>'P5_ORGANIZATION_UPD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'This field is required.'
,p_when_button_pressed=>wwv_flow_api.id(29121934020089645)
,p_associated_item=>wwv_flow_api.id(13937720780796092)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13489157648603528)
,p_name=>'show other question'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_OTHER'
,p_condition_element=>'P5_OTHER'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13489662078603528)
,p_event_id=>wwv_flow_api.id(13489157648603528)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_OTHER_DESC'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13490667603603529)
,p_event_id=>wwv_flow_api.id(13489157648603528)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_OTHER_DESC'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13490202966603529)
,p_event_id=>wwv_flow_api.id(13489157648603528)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_SELECTED_TYPE'
,p_attribute_01=>'apex.item("P5_SELECTED_TYPE").setValue(null);'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(21930628951071553)
,p_name=>'show edit region'
,p_event_sequence=>230
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.edit-btn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21932026606071567)
,p_event_id=>wwv_flow_api.id(21930628951071553)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(21931895628071566)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21930697124071554)
,p_event_id=>wwv_flow_api.id(21930628951071553)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//Show all edit buttons and then hide the triggering button',
'apex.message.clearErrors();',
'$(''.edit-btn'').show();',
'$(''.add-more'').show();',
'$(this.triggeringElement).hide();',
'',
'//Set values',
'var selectedOrganizationsDelimited = $(this.triggeringElement).data(''selected-orgs'').toString();',
'var selectedOrganizations = [];',
'if (selectedOrganizationsDelimited.indexOf(":") >= 0) {',
'    selectedOrganizations = selectedOrganizationsDelimited.split('':'');',
'}',
'else if (selectedOrganizationsDelimited.length > 0) {',
'    selectedOrganizations.push(selectedOrganizationsDelimited);',
'}',
'',
'$(''#P5_ORGANIZATION_UPD'').val(selectedOrganizations);',
'$(''#P5_ORGANIZATION_UPD'').trigger(''change'');',
'',
'$s(''P5_REQUESTED_SHSH_UPD'', $(this.triggeringElement).data(''requested-shsh'').toString());',
'$s(''P5_ORG_INFO_ID'', $(this.triggeringElement).data(''org-information-id''));',
'',
'//Display editable region',
'$(''#edit-shsh-rg'').parent().css({"height":0});',
'var pos = $(this.triggeringElement).parents(''li.t-Cards-item'').offset();',
'$(''#edit-shsh-rg'').css({"display":"flex"});',
'$(''#edit-shsh-rg'').offset({ top: pos.top, left: pos.left });',
'$(''#edit-shsh-rg'').show();',
'',
'/*',
'alert(''P5_ORG_INFO_ID = '' + $v(''P5_ORG_INFO_ID'') +',
'      ''\nP5_REQUESTED_SHSH_UPD = '' + $v(''P5_REQUESTED_SHSH_UPD'') +',
'      ''\nP5_ORGANIZATION_CODES_UPD = '' + $v(''P5_ORGANIZATION_CODES_UPD''));*/'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(33030351766138067)
,p_name=>'show new region'
,p_event_sequence=>240
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.add-more-link'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33031392708138077)
,p_event_id=>wwv_flow_api.id(33030351766138067)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_ORG_INFO_ID,P5_REQUESTED_SHSH_UPD,P5_ORGANIZATION_UPD,P5_ORGANIZATION_CODES_UPD'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21932075019071568)
,p_event_id=>wwv_flow_api.id(33030351766138067)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(21931895628071566)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33030521512138068)
,p_event_id=>wwv_flow_api.id(33030351766138067)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//Show all edit buttons and then hide the triggering button',
'$(''.edit-btn'').show();',
'$(''.add-more'').hide();',
'',
'if (isMobile && !$(''.add-more-container'').hasClass(''clicked'')) {',
'    $(''.add-more-container'').addClass(''clicked'');',
'}',
'',
'$s(''P5_REQUESTED_SHSH_UPD'', ''1'');',
'',
'//Set values',
'//var selectedOrganizationsDelimited = $(this.triggeringElement).data(''selected-orgs'');',
'//var selectedOrganizations = selectedOrganizationsDelimited.split('':'');',
'//$(''#P5_ORGANIZATION_UPD'').val(selectedOrganizations);',
'//$(''#P5_ORGANIZATION_UPD'').trigger(''change'');',
'',
'//$s(''P5_REQUESTED_SHSH_UPD'', $(this.triggeringElement).data(''requested-shsh'').toString());',
'//$s(''P5_ORG_INFO_ID'', $(this.triggeringElement).data(''org-information-id''));',
'',
'//Display editable region',
'$(''#edit-shsh-rg'').parent().css({"height":0});',
'var pos = $(this.triggeringElement).parents(''li.t-Cards-item'').offset();',
'$(''#edit-shsh-rg'').css({"display":"flex"});',
'$(''#edit-shsh-rg'').offset({ top: pos.top, left: pos.left });',
'$(''#edit-shsh-rg'').show();',
'',
'/*',
'alert(''P5_ORG_INFO_ID = '' + $v(''P5_ORG_INFO_ID'') +',
'      ''\nP5_REQUESTED_SHSH_UPD = '' + $v(''P5_REQUESTED_SHSH_UPD'') +',
'      ''\nP5_ORGANIZATION_CODES_UPD = '' + $v(''P5_ORGANIZATION_CODES_UPD''));*/'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(21930745434071555)
,p_name=>'hide edit region'
,p_event_sequence=>250
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#closeEditBtn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21930908788071556)
,p_event_id=>wwv_flow_api.id(21930745434071555)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#edit-shsh-rg'').hide();',
'$(''.edit-btn'').show();',
'$(''.add-more-container'').removeClass(''clicked'');',
'$(''.add-more'').show();'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41490797285067260)
,p_name=>'hide skills edit region'
,p_event_sequence=>260
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#closeSkillsEditBtn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41436014457588572)
,p_event_id=>wwv_flow_api.id(41490797285067260)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(510677461677809195)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41490888496067261)
,p_event_id=>wwv_flow_api.id(41490797285067260)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#edit-skills-region'').hide();',
'$(''#view-skills-region'').show();'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(21931706900071564)
,p_name=>'organization upd change'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_ORGANIZATION_UPD'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21931795945071565)
,p_event_id=>wwv_flow_api.id(21931706900071564)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_ORGANIZATION_CODES_UPD'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(''#P5_ORGANIZATION_UPD'').val().toString().replaceAll(/\,/g, '':'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21932162139071569)
,p_event_id=>wwv_flow_api.id(21931706900071564)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selectedOptionIds = $(''#P5_ORGANIZATION_UPD'').val();',
'var selectedOptions = $(''#P5_ORGANIZATION_UPD option'').filter(function(index) {',
'    return $.inArray($(this).attr("value"), selectedOptionIds) !== -1;',
'}).sort(function(a, b) {',
'   return $(a).text().toUpperCase().localeCompare($(b).text().toUpperCase());',
'});',
'$(selectedOptions).remove();',
'var sortedOptions = $(''#P5_ORGANIZATION_UPD option'').sort(function(a, b) {',
'   return $(a).text().toUpperCase().localeCompare($(b).text().toUpperCase());',
'});',
'$(''#P5_ORGANIZATION_UPD option'').remove();',
'$(selectedOptions).attr(''data-is-selected'', ''true'');',
'$(''#P5_ORGANIZATION_UPD'').prepend(selectedOptions);',
'$(''#P5_ORGANIZATION_UPD'').append(sortedOptions);',
'',
'setTimeout(function(){',
'    $(''span.open-select2-no-selection'').remove();',
'    if ($(''.select2-selection__choice__remove'').length > 0) {',
'        $(''.select2-selection__choice__remove'').addClass(''open-select2 fa fa-chevron-down'')',
'                                               .removeClass(''select2-selection__choice__remove'')',
'                                               .text('''');',
'    }',
'    else if ($(''#P5_ORGANIZATION_UPD_CONTAINER ul.select2-selection__rendered li.select2-selection__choice'').length == 0) {',
'        if ($(''li.select2-search--inline span.open-select2-no-selection'').length == 0) {',
'            $(''li.select2-search--inline'').append(''<span class="open-select2-no-selection fa fa-chevron-down"></span>'');',
'        }',
'    }',
'    //$(''.select2-search__field'').attr(''disabled'',''disabled'');',
'}, 10);'))
,p_da_action_comment=>'NOT ACTIVE!'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(21932295793071570)
,p_name=>'organization upd click'
,p_event_sequence=>280
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#P5_ORGANIZATION_UPD_CONTAINER'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21932396090071571)
,p_event_id=>wwv_flow_api.id(21932295793071570)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*setTimeout(() => {',
'    $(''<hr class="select2-divider"/>'').insertAfter(''.select2-results__option[aria-selected="true"]:last''); ',
'    if (!$(''.select2-results__options'').hasClass(''opaque-gradient'')) {',
'        $(''.select2-results__options'').addClass(''opaque-gradient'');',
'        $(''.select2-results__options'').attr("onscroll", "chk_scroll(this)");',
'    };',
'    ',
'    if ($(''#clearSelectionBtn'').length == 0) {',
'        $(''<div style="width: 100%; height: 48px;">'' +',
'          ''<button class="t-Button t-orange-btn lto520489891246004103_0" type="button" id="clearSelectionBtn" '' + ',
'          ''style="height:48px;BACKGROUND-COLOR: TRANSPARENT;BOX-SHADOW: NONE; float: right; padding-right: 10px; padding-bottom: 0;">'' + ',
'          ''<span class="t-Button-label" style="color: #E84C26;font-size:16px;font-weight:500">Clear All</span></button></div>'')',
'            .insertAfter(''ul.select2-results__options'');',
'    }',
'}, 25);*/'))
,p_da_action_comment=>'NOT ACTIVE!'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(21933307093071580)
,p_name=>'clear selection btn click'
,p_event_sequence=>290
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#clearSelectionBtn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21933435923071581)
,p_event_id=>wwv_flow_api.id(21933307093071580)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_ORGANIZATION_UPD,P5_ORGANIZATION_CODES_UPD'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21933542151071582)
,p_event_id=>wwv_flow_api.id(21933307093071580)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#select2-P5_ORGANIZATION_UPD-results li'').attr(''aria-selected'',''false'');',
'$(''#P5_ORGANIZATION_UPD option'').removeAttr(''data-is-selected'');',
'$(''#P5_ORGANIZATION_UPD'').trigger(''change'');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(21934059013071588)
,p_name=>'select2 search key release'
,p_event_sequence=>300
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.select2-search__field'
,p_bind_type=>'live'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21934223131071589)
,p_event_id=>wwv_flow_api.id(21934059013071588)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(this.triggeringElement).val().length > 0) {',
'    $(this.triggeringElement).parent().siblings(''.select2-selection__choice:first-child'').hide();',
'}',
'else {',
'    $(this.triggeringElement).parent().siblings(''.select2-selection__choice:first-child'').show();',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41435645739588569)
,p_name=>'edit skills btn'
,p_event_sequence=>310
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.edit-cubes-btn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41491030139067262)
,p_event_id=>wwv_flow_api.id(41435645739588569)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P5_SPORTS'', skillsState.P5_SPORTS);',
'$s(''P5_ART'', skillsState.P5_ART);',
'$s(''P5_MULTIMEDIA'', skillsState.P5_MULTIMEDIA);',
'$s(''P5_DANCE'', skillsState.P5_DANCE);',
'$s(''P5_PHOTOGRAPHY'', skillsState.P5_PHOTOGRAPHY);',
'',
'setSkillsIcon($(''#sportBtn''));',
'setSkillsIcon($(''#artBtn''));',
'setSkillsIcon($(''#multimediaBtn''));',
'setSkillsIcon($(''#danceBtn''));',
'setSkillsIcon($(''#photographyBtn''));',
'',
'',
'',
'',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41436045530588573)
,p_event_id=>wwv_flow_api.id(41435645739588569)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(41433559201588548)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41435757546588570)
,p_event_id=>wwv_flow_api.id(41435645739588569)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(510677461677809195)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41436310450588575)
,p_event_id=>wwv_flow_api.id(41435645739588569)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#edit-shsh-rg'').css("padding","0 !important");'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41435877611588571)
,p_name=>'set skills state'
,p_event_sequence=>320
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41491104526067263)
,p_event_id=>wwv_flow_api.id(41435877611588571)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'skillsState = {',
'    "P5_SPORTS": $v(''P5_SPORTS''),',
'    "P5_ART": $v(''P5_ART''),',
'    "P5_MULTIMEDIA": $v(''P5_MULTIMEDIA''),',
'    "P5_DANCE": $v(''P5_DANCE''),',
'    "P5_PHOTOGRAPHY": $v(''P5_PHOTOGRAPHY'')',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41436536294588577)
,p_name=>'sports click'
,p_event_sequence=>330
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(13459749033603476)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#edit-skills-region button.is-active'').length < 3 ||',
'$(this.triggeringElement).hasClass(''is-active'')'))
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41436605688588578)
,p_event_id=>wwv_flow_api.id(41436536294588577)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_SPORTS'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P5_SPORTS is null then',
'    return ''Y'';',
'end if;',
'return null;'))
,p_attribute_07=>'P5_SPORTS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41489378938067246)
,p_event_id=>wwv_flow_api.id(41436536294588577)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''#edit-skills-region button.is-active'').length < 3) {',
'    setSkillsIcon(this.triggeringElement);',
'}'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74930432266660679)
,p_event_id=>wwv_flow_api.id(41436536294588577)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'l_ovn pls_integer;',
'l_org_information_id Pls_Integer;',
'l_shsh_lts           varchar(200);',
'l_ret_val            number;',
'begin',
'',
'  --XX_MY_UTILS.add_msg('' 220 Page 5 P5_ORGANIZATION_CODES_UPD ''|| :P5_ORGANIZATION_CODES_UPD);  ',
'    fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800);  ',
' begin',
' ',
'         select  hoi.object_version_number, hoi.org_information_id',
'         Into  l_ovn, l_org_information_id ',
'          from hr_organization_information hoi',
'         where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'           and hoi.organization_id = :P0_ORG_ID;',
'',
'    hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                                               ,p_object_version_number => l_ovn',
'                                                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'                                                               ,p_org_information_id => l_org_information_id',
'                                                               ,p_org_information1 => :P5_ART',
'                                                               ,p_org_information2 => :P5_DANCE',
'                                                               ,p_org_information3 => :P5_MULTIMEDIA',
'                                                               ,p_org_information4 => :P5_PHOTOGRAPHY',
'                                                               ,p_org_information5 => :P5_SPORTS  ',
'                                                               ); ',
'   ',
'     EXCEPTION when no_data_found then ',
'                                            ',
'      XX_MY_UTILS.add_msg(''ERROR 220 Page Community Information Organizations Insert ''||SQLERRM);  ',
'                                           ',
'      hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                               ,p_object_version_number => l_ovn',
'                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'                               ,p_org_information_id => l_org_information_id',
'                               ,p_org_information1 => :P5_ART',
'                               ,p_org_information2 => :P5_DANCE',
'                               ,p_org_information3 => :P5_MULTIMEDIA',
'                               ,p_org_information4 => :P5_PHOTOGRAPHY',
'                               ,p_org_information5 => :P5_SPORTS  ',
'                               ,p_organization_id   => :P0_ORG_ID);  ',
'                                                           ',
'      commit;',
'End;',
'',
'exception  when others then',
'    XX_MY_UTILS.add_msg(''Main ERROR 220 Page 5 Save Skills ''||SQLERRM); ',
'    apex_error.add_error (',
'              p_message          => ''Failed to update Save Skill =>''||SQLERRM,   p_display_location => apex_error.c_inline_in_notification );',
'    ',
'    ',
'end;'))
,p_attribute_02=>'P0_ORG_ID,P5_ART,P5_DANCE,P5_MULTIMEDIA,P5_PHOTOGRAPHY,P5_SPORTS'
,p_attribute_03=>'P5_ART,P5_DANCE,P5_MULTIMEDIA,P5_PHOTOGRAPHY,P5_SPORTS'
,p_attribute_04=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41436776636588580)
,p_name=>'art click'
,p_event_sequence=>340
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(13459408171603475)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#edit-skills-region button.is-active'').length < 3 ||',
'$(this.triggeringElement).hasClass(''is-active'')'))
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41436914221588581)
,p_event_id=>wwv_flow_api.id(41436776636588580)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_ART'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P5_ART is null then',
'    return ''Y'';',
'end if;',
'return null;'))
,p_attribute_07=>'P5_ART'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41489735775067249)
,p_event_id=>wwv_flow_api.id(41436776636588580)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setSkillsIcon(this.triggeringElement);'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(85646783048634244)
,p_event_id=>wwv_flow_api.id(41436776636588580)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'l_ovn pls_integer;',
'l_org_information_id Pls_Integer;',
'l_shsh_lts           varchar(200);',
'l_ret_val            number;',
'begin',
'',
'  --XX_MY_UTILS.add_msg('' 220 Page 5 P5_ORGANIZATION_CODES_UPD ''|| :P5_ORGANIZATION_CODES_UPD);  ',
'    fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800);  ',
' begin',
' ',
'         select  hoi.object_version_number, hoi.org_information_id',
'         Into  l_ovn, l_org_information_id ',
'          from hr_organization_information hoi',
'         where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'           and hoi.organization_id = :P0_ORG_ID;',
'',
'    hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                                               ,p_object_version_number => l_ovn',
'                                                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'                                                               ,p_org_information_id => l_org_information_id',
'                                                               ,p_org_information1 => :P5_ART',
'                                                               ,p_org_information2 => :P5_DANCE',
'                                                               ,p_org_information3 => :P5_MULTIMEDIA',
'                                                               ,p_org_information4 => :P5_PHOTOGRAPHY',
'                                                               ,p_org_information5 => :P5_SPORTS  ',
'                                                               ); ',
'   ',
'     EXCEPTION when no_data_found then ',
'                                            ',
'      XX_MY_UTILS.add_msg(''ERROR 220 Page Community Information Organizations Insert ''||SQLERRM);  ',
'                                           ',
'      hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                               ,p_object_version_number => l_ovn',
'                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'                               ,p_org_information_id => l_org_information_id',
'                               ,p_org_information1 => :P5_ART',
'                               ,p_org_information2 => :P5_DANCE',
'                               ,p_org_information3 => :P5_MULTIMEDIA',
'                               ,p_org_information4 => :P5_PHOTOGRAPHY',
'                               ,p_org_information5 => :P5_SPORTS  ',
'                               ,p_organization_id   => :P0_ORG_ID);  ',
'                                                           ',
'      commit;',
'End;',
'',
'exception  when others then',
'    XX_MY_UTILS.add_msg(''Main ERROR 220 Page 5 Save Skills ''||SQLERRM); ',
'    apex_error.add_error (',
'              p_message          => ''Failed to update Save Skill =>''||SQLERRM,   p_display_location => apex_error.c_inline_in_notification );',
'    ',
'    ',
'end;'))
,p_attribute_02=>'P0_ORG_ID,P5_ART,P5_DANCE,P5_MULTIMEDIA,P5_PHOTOGRAPHY,P5_SPORTS'
,p_attribute_03=>'P5_ART,P5_DANCE,P5_MULTIMEDIA,P5_PHOTOGRAPHY,P5_SPORTS'
,p_attribute_04=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41436952239588582)
,p_name=>'multimedia click'
,p_event_sequence=>350
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(13460146660603476)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#edit-skills-region button.is-active'').length < 3 ||',
'$(this.triggeringElement).hasClass(''is-active'')'))
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41437119949588583)
,p_event_id=>wwv_flow_api.id(41436952239588582)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_MULTIMEDIA'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P5_MULTIMEDIA is null then',
'    return ''Y'';',
'end if;',
'return null;'))
,p_attribute_07=>'P5_MULTIMEDIA'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
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
 p_id=>wwv_flow_api.id(41489974544067252)
,p_event_id=>wwv_flow_api.id(41436952239588582)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setSkillsIcon(this.triggeringElement);'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(85646720738634243)
,p_event_id=>wwv_flow_api.id(41436952239588582)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'l_ovn pls_integer;',
'l_org_information_id Pls_Integer;',
'l_shsh_lts           varchar(200);',
'l_ret_val            number;',
'begin',
'',
'  --XX_MY_UTILS.add_msg('' 220 Page 5 P5_ORGANIZATION_CODES_UPD ''|| :P5_ORGANIZATION_CODES_UPD);  ',
'    fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800);  ',
' begin',
' ',
'         select  hoi.object_version_number, hoi.org_information_id',
'         Into  l_ovn, l_org_information_id ',
'          from hr_organization_information hoi',
'         where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'           and hoi.organization_id = :P0_ORG_ID;',
'',
'    hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                                               ,p_object_version_number => l_ovn',
'                                                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'                                                               ,p_org_information_id => l_org_information_id',
'                                                               ,p_org_information1 => :P5_ART',
'                                                               ,p_org_information2 => :P5_DANCE',
'                                                               ,p_org_information3 => :P5_MULTIMEDIA',
'                                                               ,p_org_information4 => :P5_PHOTOGRAPHY',
'                                                               ,p_org_information5 => :P5_SPORTS  ',
'                                                               ); ',
'   ',
'     EXCEPTION when no_data_found then ',
'                                            ',
'      XX_MY_UTILS.add_msg(''ERROR 220 Page Community Information Organizations Insert ''||SQLERRM);  ',
'                                           ',
'      hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                               ,p_object_version_number => l_ovn',
'                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'                               ,p_org_information_id => l_org_information_id',
'                               ,p_org_information1 => :P5_ART',
'                               ,p_org_information2 => :P5_DANCE',
'                               ,p_org_information3 => :P5_MULTIMEDIA',
'                               ,p_org_information4 => :P5_PHOTOGRAPHY',
'                               ,p_org_information5 => :P5_SPORTS  ',
'                               ,p_organization_id   => :P0_ORG_ID);  ',
'                                                           ',
'      commit;',
'End;',
'',
'exception  when others then',
'    XX_MY_UTILS.add_msg(''Main ERROR 220 Page 5 Save Skills ''||SQLERRM); ',
'    apex_error.add_error (',
'              p_message          => ''Failed to update Save Skill =>''||SQLERRM,   p_display_location => apex_error.c_inline_in_notification );',
'    ',
'    ',
'end;'))
,p_attribute_02=>'P0_ORG_ID,P5_ART,P5_DANCE,P5_MULTIMEDIA,P5_PHOTOGRAPHY,P5_SPORTS'
,p_attribute_03=>'P5_ART,P5_DANCE,P5_MULTIMEDIA,P5_PHOTOGRAPHY,P5_SPORTS'
,p_attribute_04=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41437225467588584)
,p_name=>'dance click'
,p_event_sequence=>360
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(13460594249603476)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#edit-skills-region button.is-active'').length < 3 ||',
'$(this.triggeringElement).hasClass(''is-active'')'))
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41437296981588585)
,p_event_id=>wwv_flow_api.id(41437225467588584)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_DANCE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P5_DANCE is null then',
'    return ''Y'';',
'end if;',
'return null;'))
,p_attribute_07=>'P5_DANCE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41490312118067255)
,p_event_id=>wwv_flow_api.id(41437225467588584)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setSkillsIcon(this.triggeringElement);'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(85646889860634245)
,p_event_id=>wwv_flow_api.id(41437225467588584)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'l_ovn pls_integer;',
'l_org_information_id Pls_Integer;',
'l_shsh_lts           varchar(200);',
'l_ret_val            number;',
'begin',
'',
'  --XX_MY_UTILS.add_msg('' 220 Page 5 P5_ORGANIZATION_CODES_UPD ''|| :P5_ORGANIZATION_CODES_UPD);  ',
'    fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800);  ',
' begin',
' ',
'         select  hoi.object_version_number, hoi.org_information_id',
'         Into  l_ovn, l_org_information_id ',
'          from hr_organization_information hoi',
'         where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'           and hoi.organization_id = :P0_ORG_ID;',
'',
'    hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                                               ,p_object_version_number => l_ovn',
'                                                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'                                                               ,p_org_information_id => l_org_information_id',
'                                                               ,p_org_information1 => :P5_ART',
'                                                               ,p_org_information2 => :P5_DANCE',
'                                                               ,p_org_information3 => :P5_MULTIMEDIA',
'                                                               ,p_org_information4 => :P5_PHOTOGRAPHY',
'                                                               ,p_org_information5 => :P5_SPORTS  ',
'                                                               ); ',
'   ',
'     EXCEPTION when no_data_found then ',
'                                            ',
'      XX_MY_UTILS.add_msg(''ERROR 220 Page Community Information Organizations Insert ''||SQLERRM);  ',
'                                           ',
'      hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                               ,p_object_version_number => l_ovn',
'                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'                               ,p_org_information_id => l_org_information_id',
'                               ,p_org_information1 => :P5_ART',
'                               ,p_org_information2 => :P5_DANCE',
'                               ,p_org_information3 => :P5_MULTIMEDIA',
'                               ,p_org_information4 => :P5_PHOTOGRAPHY',
'                               ,p_org_information5 => :P5_SPORTS  ',
'                               ,p_organization_id   => :P0_ORG_ID);  ',
'                                                           ',
'      commit;',
'End;',
'',
'exception  when others then',
'    XX_MY_UTILS.add_msg(''Main ERROR 220 Page 5 Save Skills ''||SQLERRM); ',
'    apex_error.add_error (',
'              p_message          => ''Failed to update Save Skill =>''||SQLERRM,   p_display_location => apex_error.c_inline_in_notification );',
'    ',
'    ',
'end;'))
,p_attribute_02=>'P0_ORG_ID,P5_ART,P5_DANCE,P5_MULTIMEDIA,P5_PHOTOGRAPHY,P5_SPORTS'
,p_attribute_03=>'P5_ART,P5_DANCE,P5_MULTIMEDIA,P5_PHOTOGRAPHY,P5_SPORTS'
,p_attribute_04=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41437398976588586)
,p_name=>'photography click'
,p_event_sequence=>370
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(13461038940603476)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#edit-skills-region button.is-active'').length < 3 ||',
'$(this.triggeringElement).hasClass(''is-active'')'))
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41437446374588587)
,p_event_id=>wwv_flow_api.id(41437398976588586)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_PHOTOGRAPHY'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P5_PHOTOGRAPHY is null then',
'    return ''Y'';',
'end if;',
'return null;'))
,p_attribute_07=>'P5_PHOTOGRAPHY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41490641206067258)
,p_event_id=>wwv_flow_api.id(41437398976588586)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setSkillsIcon(this.triggeringElement);'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(85646954033634246)
,p_event_id=>wwv_flow_api.id(41437398976588586)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'l_ovn pls_integer;',
'l_org_information_id Pls_Integer;',
'l_shsh_lts           varchar(200);',
'l_ret_val            number;',
'begin',
'',
'  --XX_MY_UTILS.add_msg('' 220 Page 5 P5_ORGANIZATION_CODES_UPD ''|| :P5_ORGANIZATION_CODES_UPD);  ',
'    fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800);  ',
' begin',
' ',
'         select  hoi.object_version_number, hoi.org_information_id',
'         Into  l_ovn, l_org_information_id ',
'          from hr_organization_information hoi',
'         where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'           and hoi.organization_id = :P0_ORG_ID;',
'',
'    hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                                               ,p_object_version_number => l_ovn',
'                                                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'                                                               ,p_org_information_id => l_org_information_id',
'                                                               ,p_org_information1 => :P5_ART',
'                                                               ,p_org_information2 => :P5_DANCE',
'                                                               ,p_org_information3 => :P5_MULTIMEDIA',
'                                                               ,p_org_information4 => :P5_PHOTOGRAPHY',
'                                                               ,p_org_information5 => :P5_SPORTS  ',
'                                                               ); ',
'   ',
'     EXCEPTION when no_data_found then ',
'                                            ',
'      XX_MY_UTILS.add_msg(''ERROR 220 Page Community Information Organizations Insert ''||SQLERRM);  ',
'                                           ',
'      hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                               ,p_object_version_number => l_ovn',
'                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'                               ,p_org_information_id => l_org_information_id',
'                               ,p_org_information1 => :P5_ART',
'                               ,p_org_information2 => :P5_DANCE',
'                               ,p_org_information3 => :P5_MULTIMEDIA',
'                               ,p_org_information4 => :P5_PHOTOGRAPHY',
'                               ,p_org_information5 => :P5_SPORTS  ',
'                               ,p_organization_id   => :P0_ORG_ID);  ',
'                                                           ',
'      commit;',
'End;',
'',
'exception  when others then',
'    XX_MY_UTILS.add_msg(''Main ERROR 220 Page 5 Save Skills ''||SQLERRM); ',
'    apex_error.add_error (',
'              p_message          => ''Failed to update Save Skill =>''||SQLERRM,   p_display_location => apex_error.c_inline_in_notification );',
'    ',
'    ',
'end;'))
,p_attribute_02=>'P0_ORG_ID,P5_ART,P5_DANCE,P5_MULTIMEDIA,P5_PHOTOGRAPHY,P5_SPORTS'
,p_attribute_03=>'P5_ART,P5_DANCE,P5_MULTIMEDIA,P5_PHOTOGRAPHY,P5_SPORTS'
,p_attribute_04=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41491720954067269)
,p_name=>'end row change'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_END_ROW'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41491836519067270)
,p_event_id=>wwv_flow_api.id(41491720954067269)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(21929934043071546)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41492436148067276)
,p_name=>'show more rows'
,p_event_sequence=>390
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(41492237042067274)
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41492505335067277)
,p_event_id=>wwv_flow_api.id(41492436148067276)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_END_ROW'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_NUMBER(:P5_END_ROW) + 6'
,p_attribute_07=>'P5_END_ROW'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41492824213067280)
,p_name=>'show hide show more btn'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_END_ROW'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'Number($v("P5_END_ROW")) >= Number($v("P5_COUNT_ROWS"))'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41492894635067281)
,p_event_id=>wwv_flow_api.id(41492824213067280)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(41492237042067274)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41492965970067282)
,p_event_id=>wwv_flow_api.id(41492824213067280)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(41492237042067274)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41493555529067288)
,p_name=>'set rows to max'
,p_event_sequence=>410
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(41493243157067285)
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41493675787067289)
,p_event_id=>wwv_flow_api.id(41493555529067288)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_END_ROW'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P5_COUNT_ROWS'
,p_attribute_07=>'P5_COUNT_ROWS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45429816920295445)
,p_name=>'shsh after refresh'
,p_event_sequence=>420
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(21929934043071546)
,p_bind_type=>'live'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45429603937295443)
,p_event_id=>wwv_flow_api.id(45429816920295445)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (window.mobileCheck()) {',
'    //Continue if mobile agent',
'',
'    $(''.p5-item'').each(function() {',
'        $(this).find(''.shshCount'').insertBefore($(this).find(''#shshCountLabel''));',
'    });',
'    $(''.select2'').attr(''style'',''width: 100% !important;'');   ',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47526214503811646)
,p_name=>'Check Date for Edit Button'
,p_event_sequence=>430
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47526323505811647)
,p_event_id=>wwv_flow_api.id(47526214503811646)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var dateString = $v(''P0_END_DATE'') ; // "31/10/2025";',
'var dateParts = dateString.split("/");',
'var day = parseInt(dateParts[0]);',
'var month = parseInt(dateParts[1]) - 1; // Month is 0-indexed in JavaScript',
'var year = parseInt(dateParts[2]);',
'var targetDate = new Date(year, month, day);',
'',
'var currentDate = new Date();',
'',
'if (currentDate < targetDate) {',
'    // Show the button if date is before October 1, 2025',
'    $(''.edit-btn'').show();',
'  ',
'  ',
'} else {',
'    // Hide the button if date is >= October 1, 2025',
'    $(''.edit-btn'').hide();',
'',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(62526359843121655)
,p_name=>'Check Date to Hide Edit Button '
,p_event_sequence=>440
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_display_when_cond=>'sysdate >= to_date(:P0_END_DATE, ''DD/MM/YYYY'')'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(62526623350121657)
,p_event_id=>wwv_flow_api.id(62526359843121655)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.edit-btn'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(59242571958244589)
,p_name=>'disable submit '
,p_event_sequence=>450
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P5_TOTAL_SHLICHIM'
,p_display_when_cond2=>'0'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(59242723192244590)
,p_event_id=>wwv_flow_api.id(59242571958244589)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(13476049702603495)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(62525774310121649)
,p_name=>'Check Date for Edit Button after refresh '
,p_event_sequence=>460
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(21929934043071546)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_display_when_cond=>'sysdate >= to_date(:P0_END_DATE, ''DD/MM/YYYY'')'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(62527222012121663)
,p_event_id=>wwv_flow_api.id(62525774310121649)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.edit-btn'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(632461038098777788)
,p_name=>'Yes\No Control Click'
,p_event_sequence=>470
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.yes-no-qcard-control'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(632461129673777789)
,p_event_id=>wwv_flow_api.id(632461038098777788)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var pageItemId = $(this.triggeringElement).parent().data(''page-item'');',
'var controlValue = $(this.triggeringElement).data(''value'');',
'$s(pageItemId, controlValue);',
'',
'if (controlValue == ''Y'') {',
'    $(this.triggeringElement).parent().find(''.yes-no-qcard-control[data-value="Y"] img'').attr(''src'', ''#APP_IMAGES#yes-no-v-checked.svg'');',
'    $(this.triggeringElement).parent().find(''.yes-no-qcard-control[data-value="N"] img'').attr(''src'', ''#APP_IMAGES#yes-no-x-unchecked.svg'');',
'}',
'else {',
'    $(this.triggeringElement).parent().find(''.yes-no-qcard-control[data-value="N"] img'').attr(''src'', ''#APP_IMAGES#yes-no-x-checked.svg'');',
'    $(this.triggeringElement).parent().find(''.yes-no-qcard-control[data-value="Y"] img'').attr(''src'', ''#APP_IMAGES#yes-no-v-unchecked.svg'');',
'}',
'',
'var parentRegionID = '''';',
'if (pageItemId == ''P5_HAS_EXPERIENCE'') {',
'    parentRegionID = ''prevOrgRegion'';',
'}',
'else if (pageItemId == ''P5_ORTHODOX_REQUIRED'') {',
'    parentRegionID = ''orthodoxRegion'';',
'}',
'',
'if (parentRegionID != '''') {',
'    if (controlValue == ''Y'') {',
'        $(''#'' + parentRegionID + '' > .container'').show();',
'        $(this.triggeringElement).parent().css({''gap'': ''15px''});',
'        $(this.triggeringElement).parent().find(''.yes-no-qcard-control'').css({''height'': ''50px'', ''width'': ''50px''});',
'        $(this.triggeringElement).parent().find(''.yes-no-qcard-control[data-value="Y"] img'').attr(''src'', ''#APP_IMAGES#yes-no-v-checked-small.svg'');',
'        $(this.triggeringElement).parent().find(''.yes-no-qcard-control[data-value="N"] img'').attr(''src'', ''#APP_IMAGES#yes-no-x-unchecked-small.svg'');',
'    }',
'    else {',
'        $(''#'' + parentRegionID + '' > .container'').hide();',
'        $(this.triggeringElement).parent().css({''gap'': ''10px''});',
'        $(this.triggeringElement).parent().find(''.yes-no-qcard-control'').css({''height'': ''100px'', ''width'': ''100px''});',
'    }',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(638823158757557443)
,p_name=>'Init Yes\No Questions'
,p_event_sequence=>480
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(638823282232557444)
,p_event_id=>wwv_flow_api.id(638823158757557443)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    setYesNoQuestion(''P5_DRIVERS_LICENSE'');',
'    setYesNoQuestion(''P5_WORK_IN_PAIRS'');',
'    setYesNoQuestion(''P5_HAS_EXPERIENCE'');   ',
'    setYesNoQuestion(''P5_ORTHODOX_REQUIRED''); ',
'});'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(638823393601557445)
,p_name=>'Prev Organization Change'
,p_event_sequence=>490
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_PREV_ORGANIZATION'
,p_condition_element=>'P5_PREV_ORGANIZATION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(638823623208557447)
,p_event_id=>wwv_flow_api.id(638823393601557445)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_ovn pls_integer;',
'l_org_information_id Pls_Integer;',
'l_shsh_lts           varchar(200);',
'l_ret_val            number;',
'begin',
'  --XX_MY_UTILS.add_msg('' 220 Page 5 P5_ORGANIZATION_CODES_UPD ''|| :P5_ORGANIZATION_CODES_UPD);  ',
'    fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800);  ',
' begin',
'         select  hoi.object_version_number, hoi.org_information_id',
'         Into  l_ovn, l_org_information_id ',
'          from hr_organization_information hoi',
'         where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'           and hoi.organization_id = :P0_ORG_ID;',
'',
'    hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                                               ,p_object_version_number => l_ovn',
'                                                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'                                                               ,p_org_information_id => l_org_information_id',
'                                                               ,p_org_information9 => :P5_PREV_ORGANIZATION); ',
'   ',
'     EXCEPTION when no_data_found then ',
'                                            ',
'      XX_MY_UTILS.add_msg(''ERROR 220 Page Community Information Organizations Insert ''||SQLERRM);  ',
'                                           ',
'      hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                               ,p_object_version_number => l_ovn',
'                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'                               ,p_org_information_id => l_org_information_id',
'                               ,p_org_information9 => :P5_PREV_ORGANIZATION',
'                               ,p_organization_id   => :P0_ORG_ID);  ',
'                                                           ',
'      commit;',
'End;',
'',
'exception  when others then',
'    XX_MY_UTILS.add_msg(''Main ERROR 220 Page 5 Save Skills ''||SQLERRM); ',
'    apex_error.add_error(p_message => ''Failed to update Save Skill =>''||SQLERRM, p_display_location => apex_error.c_inline_in_notification);',
'end;'))
,p_attribute_02=>'P5_PREV_ORGANIZATION'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(638824533154557456)
,p_name=>'Orthodox Amount Change'
,p_event_sequence=>500
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_ORTHODOX_AMOUNT'
,p_condition_element=>'P5_ORTHODOX_AMOUNT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(638824585067557457)
,p_event_id=>wwv_flow_api.id(638824533154557456)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_ovn pls_integer;',
'l_org_information_id Pls_Integer;',
'l_shsh_lts           varchar(200);',
'l_ret_val            number;',
'begin',
'  --XX_MY_UTILS.add_msg('' 220 Page 5 P5_ORGANIZATION_CODES_UPD ''|| :P5_ORGANIZATION_CODES_UPD);  ',
'    fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800);  ',
' begin',
'         select  hoi.object_version_number, hoi.org_information_id',
'         Into  l_ovn, l_org_information_id ',
'          from hr_organization_information hoi',
'         where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'           and hoi.organization_id = :P0_ORG_ID;',
'',
'    hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                                               ,p_object_version_number => l_ovn',
'                                                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'                                                               ,p_org_information_id => l_org_information_id',
'                                                               ,p_org_information11 => :P5_ORTHODOX_AMOUNT); ',
'   ',
'     EXCEPTION when no_data_found then ',
'                                            ',
'      XX_MY_UTILS.add_msg(''ERROR 220 Page Community Information Organizations Insert ''||SQLERRM);  ',
'                                           ',
'      hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                               ,p_object_version_number => l_ovn',
'                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'                               ,p_org_information_id => l_org_information_id',
'                               ,p_org_information11 => :P5_ORTHODOX_AMOUNT',
'                               ,p_organization_id   => :P0_ORG_ID);  ',
'                                                           ',
'      commit;',
'End;',
'',
'exception  when others then',
'    XX_MY_UTILS.add_msg(''Main ERROR 220 Page 5 Save Orthodox ''||SQLERRM); ',
'    apex_error.add_error(p_message => ''Failed to update Save Orthodox =>''||SQLERRM, p_display_location => apex_error.c_inline_in_notification);',
'end;'))
,p_attribute_02=>'P5_ORTHODOX_AMOUNT'
,p_attribute_03=>'P5_ORTHODOX_AMOUNT'
,p_attribute_04=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(638824702840557458)
,p_name=>'Drivers License Change'
,p_event_sequence=>510
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_DRIVERS_LICENSE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(638824937439557460)
,p_event_id=>wwv_flow_api.id(638824702840557458)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_ovn pls_integer;',
'l_org_information_id Pls_Integer;',
'l_shsh_lts           varchar(200);',
'l_ret_val            number;',
'begin',
'  --XX_MY_UTILS.add_msg('' 220 Page 5 P5_ORGANIZATION_CODES_UPD ''|| :P5_ORGANIZATION_CODES_UPD);  ',
'    fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800);  ',
' begin ',
'         select  hoi.object_version_number, hoi.org_information_id',
'         Into  l_ovn, l_org_information_id ',
'          from hr_organization_information hoi',
'         where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'           and hoi.organization_id = :P0_ORG_ID;',
'',
'    hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                                               ,p_object_version_number => l_ovn',
'                                                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'                                                               ,p_org_information_id => l_org_information_id',
'                                                               ,p_org_information6 => :P5_DRIVERS_LICENSE); ',
'   ',
'     EXCEPTION when no_data_found then ',
'                                            ',
'      XX_MY_UTILS.add_msg(''ERROR 220 Page Community Information Organizations Insert ''||SQLERRM);  ',
'                                           ',
'      hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                               ,p_object_version_number => l_ovn',
'                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'                               ,p_org_information_id => l_org_information_id',
'                               ,p_org_information6 => :P5_DRIVERS_LICENSE',
'                               ,p_organization_id   => :P0_ORG_ID);  ',
'                                                           ',
'      commit;',
'End;',
'',
'exception  when others then',
'    XX_MY_UTILS.add_msg(''Main ERROR 220 Page 5 Save Skills ''||SQLERRM); ',
'    apex_error.add_error(p_message => ''Failed to update Save Skill =>''||SQLERRM, p_display_location => apex_error.c_inline_in_notification);',
'end;'))
,p_attribute_02=>'P5_DRIVERS_LICENSE'
,p_attribute_03=>'P5_DRIVERS_LICENSE'
,p_attribute_04=>'Y'
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(638824980326557461)
,p_name=>'Work In Pairs Change'
,p_event_sequence=>520
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_WORK_IN_PAIRS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(638825145608557463)
,p_event_id=>wwv_flow_api.id(638824980326557461)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_ovn pls_integer;',
'l_org_information_id Pls_Integer;',
'l_shsh_lts           varchar(200);',
'l_ret_val            number;',
'begin',
'  --XX_MY_UTILS.add_msg('' 220 Page 5 P5_ORGANIZATION_CODES_UPD ''|| :P5_ORGANIZATION_CODES_UPD);  ',
'    fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800);  ',
' begin ',
'         select  hoi.object_version_number, hoi.org_information_id',
'         Into  l_ovn, l_org_information_id ',
'          from hr_organization_information hoi',
'         where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'           and hoi.organization_id = :P0_ORG_ID;',
'',
'    hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                                               ,p_object_version_number => l_ovn',
'                                                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'                                                               ,p_org_information_id => l_org_information_id',
'                                                               ,p_org_information7 => :P5_WORK_IN_PAIRS); ',
'   ',
'     EXCEPTION when no_data_found then ',
'                                            ',
'      XX_MY_UTILS.add_msg(''ERROR 220 Page Community Information Organizations Insert ''||SQLERRM);  ',
'                                           ',
'      hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                               ,p_object_version_number => l_ovn',
'                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'                               ,p_org_information_id => l_org_information_id',
'                               ,p_org_information7 => :P5_WORK_IN_PAIRS',
'                               ,p_organization_id   => :P0_ORG_ID);  ',
'                                                           ',
'      commit;',
'End;',
'',
'exception  when others then',
'    XX_MY_UTILS.add_msg(''Main ERROR 220 Page 5 Save Skills ''||SQLERRM); ',
'    apex_error.add_error(p_message => ''Failed to update Save Skill =>''||SQLERRM, p_display_location => apex_error.c_inline_in_notification);',
'end;'))
,p_attribute_02=>'P5_WORK_IN_PAIRS'
,p_attribute_03=>'P5_WORK_IN_PAIRS'
,p_attribute_04=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(638825275695557464)
,p_name=>'Has Experience Change'
,p_event_sequence=>530
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_HAS_EXPERIENCE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(638825455415557466)
,p_event_id=>wwv_flow_api.id(638825275695557464)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_ovn pls_integer;',
'l_org_information_id Pls_Integer;',
'l_shsh_lts           varchar(200);',
'l_ret_val            number;',
'begin',
'  --XX_MY_UTILS.add_msg('' 220 Page 5 P5_ORGANIZATION_CODES_UPD ''|| :P5_ORGANIZATION_CODES_UPD);  ',
'    fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800);  ',
' begin',
'     if :P5_HAS_EXPERIENCE is null or :P5_HAS_EXPERIENCE = ''N'' then',
'         :P5_PREV_ORGANIZATION := null;',
'     end if;',
' ',
'         select  hoi.object_version_number, hoi.org_information_id',
'         Into  l_ovn, l_org_information_id ',
'          from hr_organization_information hoi',
'         where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'           and hoi.organization_id = :P0_ORG_ID;',
'',
'    hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                                               ,p_object_version_number => l_ovn',
'                                                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'                                                               ,p_org_information_id => l_org_information_id',
'                                                               ,p_org_information8 => :P5_HAS_EXPERIENCE',
'                                                               ,p_org_information9 => :P5_PREV_ORGANIZATION); ',
'   ',
'     EXCEPTION when no_data_found then ',
'                                            ',
'      XX_MY_UTILS.add_msg(''ERROR 220 Page Community Information Organizations Insert ''||SQLERRM);  ',
'                                           ',
'      hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                               ,p_object_version_number => l_ovn',
'                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'                               ,p_org_information_id => l_org_information_id',
'                               ,p_org_information8 => :P5_HAS_EXPERIENCE',
'                               ,p_org_information9 => :P5_PREV_ORGANIZATION',
'                               ,p_organization_id   => :P0_ORG_ID);  ',
'                                                           ',
'      commit;',
'End;',
'',
'exception  when others then',
'    XX_MY_UTILS.add_msg(''Main ERROR 220 Page 5 Save Skills ''||SQLERRM); ',
'    apex_error.add_error(p_message => ''Failed to update Save Skill =>''||SQLERRM, p_display_location => apex_error.c_inline_in_notification);',
'end;'))
,p_attribute_02=>'P5_HAS_EXPERIENCE,P5_PREV_ORGANIZATION'
,p_attribute_03=>'P5_HAS_EXPERIENCE,P5_PREV_ORGANIZATION'
,p_attribute_04=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(638825593638557467)
,p_name=>'Orthodox Required Change'
,p_event_sequence=>540
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_ORTHODOX_REQUIRED'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(638825743761557469)
,p_event_id=>wwv_flow_api.id(638825593638557467)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_ovn pls_integer;',
'l_org_information_id Pls_Integer;',
'l_shsh_lts           varchar(200);',
'l_ret_val            number;',
'begin',
'  --XX_MY_UTILS.add_msg('' 220 Page 5 P5_ORGANIZATION_CODES_UPD ''|| :P5_ORGANIZATION_CODES_UPD);  ',
'    fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800);  ',
' begin',
'     if :P5_ORTHODOX_REQUIRED is null or :P5_ORTHODOX_REQUIRED = ''N'' then',
'         :P5_ORTHODOX_AMOUNT := null;',
'     end if;',
' ',
'         select  hoi.object_version_number, hoi.org_information_id',
'         Into  l_ovn, l_org_information_id ',
'          from hr_organization_information hoi',
'         where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'           and hoi.organization_id = :P0_ORG_ID;',
'',
'    hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                                               ,p_object_version_number => l_ovn',
'                                                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'                                                               ,p_org_information_id => l_org_information_id',
'                                                               ,p_org_information10 => :P5_ORTHODOX_REQUIRED',
'                                                               ,p_org_information11 => :P5_ORTHODOX_AMOUNT); ',
'   ',
'     EXCEPTION when no_data_found then ',
'                                            ',
'      XX_MY_UTILS.add_msg(''ERROR 220 Page Community Information Organizations Insert ''||SQLERRM);  ',
'                                           ',
'      hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                               ,p_object_version_number => l_ovn',
'                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'                               ,p_org_information_id => l_org_information_id',
'                               ,p_org_information10 => :P5_ORTHODOX_REQUIRED',
'                               ,p_org_information11 => :P5_ORTHODOX_AMOUNT',
'                               ,p_organization_id   => :P0_ORG_ID);  ',
'                                                           ',
'      commit;',
'End;',
'',
'exception  when others then',
'    XX_MY_UTILS.add_msg(''Main ERROR 220 Page 5 Save Skills ''||SQLERRM); ',
'    apex_error.add_error(p_message => ''Failed to update Save Skill =>''||SQLERRM, p_display_location => apex_error.c_inline_in_notification);',
'end;'))
,p_attribute_02=>'P5_ORTHODOX_REQUIRED,P5_ORTHODOX_AMOUNT'
,p_attribute_03=>'P5_ORTHODOX_REQUIRED,P5_ORTHODOX_AMOUNT'
,p_attribute_04=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(666161564328744361)
,p_name=>'New'
,p_event_sequence=>550
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#orgsLink'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(666161732001744362)
,p_event_id=>wwv_flow_api.id(666161564328744361)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ORGS'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29126907501102969)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'save organization'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'l_ovn pls_integer;',
'l_org_information_id Pls_Integer;',
'l_shsh_lts   varchar(200);',
'l_ret_val                number;',
'begin',
'',
'fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800);  ',
'',
'--  XX_MY_UTILS.add_msg('' 220 Page 5 P5_ORGANIZATION_CODES_UPD ''|| :P5_ORGANIZATION_CODES_UPD);  ',
'',
' ',
' Begin    ',
' ',
'    Select t.object_version_number, org_information_id',
'      Into l_ovn, l_org_information_id ',
'      From Hr_Organization_Information t',
'     Where t.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOMER_RF''',
'       and t.ORGANIZATION_ID = :P0_ORG_ID',
'       and t.org_information_id = :P5_ORG_INFO_ID;',
' ',
'   ',
'  --  XX_MY_UTILS.add_msg('' 220 Page  5 P5_ORG_INFO_ID ''|| :P5_ORG_INFO_ID);  ',
'                  ',
'               hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                                           ,p_object_version_number => l_ovn',
'                                                           ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_RF''',
'                                                           ,p_org_information_id => l_org_information_id',
'                                                           ,p_org_information1 => :P5_REQUESTED_SHSH_UPD',
'                                                           ,p_org_information2 => :P5_ORGANIZATION_CODES_UPD',
'                                                           ,p_org_information4 => ''U'');  ',
'                                                           ',
'                                             ',
'     EXCEPTION when no_data_found then ',
'                                            ',
'      XX_MY_UTILS.add_msg(''APP 220 Create Community Information Organizations Insert P0_CURRENT_YEAR ''|| :P0_CURRENT_YEAR);  ',
'                                           ',
'                                     hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                                                           ,p_object_version_number => l_ovn',
'                                                           ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_RF''',
'                                                           ,p_org_information_id => l_org_information_id',
'                                                           ,p_org_information1 => :P5_REQUESTED_SHSH_UPD',
'                                                           ,p_org_information2 => :P5_ORGANIZATION_CODES_UPD',
'                                                           ,p_org_information3 => :P0_CURRENT_YEAR',
'                                                           ,p_org_information4 => ''N''',
'                                                           ,p_organization_id   => :P0_ORG_ID);  ',
'                                                           ',
' End;',
' ',
' -----',
' -- check if vacancy is created and we need only update ith out click on Submit button ',
'  JAFI_COMMUNITY_APEX_UTILS.check_vacancy_exist(:P0_ORG_ID, l_ret_val);',
' ',
'  if l_ret_val = 1 then ',
'     -- this function for update vacancy. in this procedure we have action for :create and update ',
'     JAFI_COMMUNITY_APEX_UTILS.create_vacancy(:P0_ORG_ID, l_ret_val);',
'  end if;    ',
'',
'     ',
'',
'exception  when others then',
'    XX_MY_UTILS.add_msg(''Main ERROR 220 Page 5 Community Information Organizations ''||SQLERRM); ',
'    apex_error.add_error (',
'              p_message          => ''Failed to update Community Information Organizations =>''||SQLERRM,   p_display_location => apex_error.c_inline_in_notification );',
'    ',
'    ',
'end;',
' ',
'                 '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(29121934020089645)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33032317150138086)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'save skilss'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'l_ovn pls_integer;',
'l_org_information_id Pls_Integer;',
'l_shsh_lts           varchar(200);',
'l_ret_val            number;',
'begin',
'',
'  --XX_MY_UTILS.add_msg('' 220 Page 5 P5_ORGANIZATION_CODES_UPD ''|| :P5_ORGANIZATION_CODES_UPD);  ',
'    fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800);  ',
' begin',
' ',
'         select  hoi.object_version_number, hoi.org_information_id',
'         Into  l_ovn, l_org_information_id ',
'          from hr_organization_information hoi',
'         where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'           and hoi.organization_id = :P0_ORG_ID;',
'',
'    hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                                               ,p_object_version_number => l_ovn',
'                                                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'                                                               ,p_org_information_id => l_org_information_id',
'                                                               ,p_org_information1 => :P5_ART',
'                                                               ,p_org_information2 => :P5_DANCE',
'                                                               ,p_org_information3 => :P5_MULTIMEDIA',
'                                                               ,p_org_information4 => :P5_PHOTOGRAPHY',
'                                                               ,p_org_information5 => :P5_SPORTS  ',
'                                                               ); ',
'   ',
'     EXCEPTION when no_data_found then ',
'                                            ',
'      XX_MY_UTILS.add_msg(''ERROR 220 Page Community Information Organizations Insert ''||SQLERRM);  ',
'                                           ',
'      hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                               ,p_object_version_number => l_ovn',
'                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'                               ,p_org_information_id => l_org_information_id',
'                               ,p_org_information1 => :P5_ART',
'                               ,p_org_information2 => :P5_DANCE',
'                               ,p_org_information3 => :P5_MULTIMEDIA',
'                               ,p_org_information4 => :P5_PHOTOGRAPHY',
'                               ,p_org_information5 => :P5_SPORTS  ',
'                               ,p_organization_id   => :P0_ORG_ID);  ',
'                                                           ',
'      commit;',
'End;',
'',
'exception  when others then',
'    XX_MY_UTILS.add_msg(''Main ERROR 220 Page 5 Save Skills ''||SQLERRM); ',
'    apex_error.add_error (',
'              p_message          => ''Failed to update Save Skill =>''||SQLERRM,   p_display_location => apex_error.c_inline_in_notification );',
'    ',
'    ',
'end;',
' ',
'                 '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13476049702603495)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33030272206138066)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SubmitPorcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'l_ovn pls_integer;',
'l_org_information_id Pls_Integer;',
'l_ret_val                number;',
'begin',
'',
'    ',
'     fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800);  ',
'     ',
'  -- l_ret_val return 1 susccsesfyly  or 0 error  ',
'     JAFI_COMMUNITY_APEX_UTILS.create_vacancy(:P0_ORG_ID, l_ret_val);',
'',
'     if l_ret_val = 1 then ',
'          -- At the end of your submit process',
'            apex_util.redirect_url(',
'                p_url => apex_util.prepare_url( p_url => ''f?p='' || :APP_ID || '':6:'' || :APP_SESSION   ));',
'      end if;',
'',
'exception  when others then',
'   XX_MY_UTILS.add_msg(''Main ERROR 220 Page 5 Vacancy Submit ''||SQLERRM); ',
'    apex_error.add_error (',
'              p_message          => ''Failed to create or update vacancy  =>''||SQLERRM,   p_display_location => apex_error.c_inline_in_notification );',
'      ',
'end;',
' ',
'                 '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13476049702603495)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33031669102138080)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'l_ovn pls_integer;',
'l_org_information_id Pls_Integer;',
'l_ret_val                number;',
'begin',
'',
' fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800);  ',
' ',
'    Select t.object_version_number, org_information_id',
'      Into l_ovn, l_org_information_id ',
'      From Hr_Organization_Information t',
'     Where t.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOMER_RF''',
'       and t.ORGANIZATION_ID = :P0_ORG_ID',
'       and t.org_information_id = :P5_ORG_INFO_ID;',
' ',
'   ',
'       XX_MY_UTILS.add_msg('' 220 Page  5 DELETE P5_ORG_INFO_ID ''|| l_org_information_id);  ',
'                  ',
'               hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                                           ,p_object_version_number => l_ovn',
'                                                           ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTOMER_RF''',
'                                                           ,p_org_information_id => l_org_information_id',
'                                                           ,p_org_information4 => ''D'');  ',
'                                                           ',
'      ',
'     -----',
'     -- check if vacancy is created and we need only update ith out click on Submit button ',
'      JAFI_COMMUNITY_APEX_UTILS.check_vacancy_exist(:P0_ORG_ID, l_ret_val);',
'',
'      if l_ret_val = 1 then ',
'         -- this function for update vacancy. in this procedure we have action for :create and update (update include delete )',
'         JAFI_COMMUNITY_APEX_UTILS.create_vacancy(:P0_ORG_ID, l_ret_val);',
'      end if;    ',
'',
'   commit;',
'',
'exception  when others then',
'    XX_MY_UTILS.add_msg(''Main ERROR 220 Page 5 Community Information Organizations ''||SQLERRM); ',
'    apex_error.add_error (',
'              p_message          => ''Failed to update Community Information Organizations =>''||SQLERRM,   p_display_location => apex_error.c_inline_in_notification );',
'    ',
'    ',
'end;',
' '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(21931895628071566)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13477643856603520)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Session Sate'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13478934534603521)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set items'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    :P5_END_ROW := 5;',
'    ',
'    select count(*),',
'           count(*) + 1 ',
'    into :P5_COUNT_ROWS,',
'         :P5_MAX_SHSH_ITEMS',
'    from hr_organization_information hoi2',
'    where hoi2.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOMER_RF'' and hoi2.org_information3 = :P0_CURRENT_YEAR and ',
'          hoi2.organization_id= :P0_ORG_ID and hoi2.ORG_INFORMATION4 in (''N'',''U'');',
'          ',
'    exception when no_data_found then :P5_COUNT_ROWS := 0;',
'end;',
'',
'begin    ',
'    select hoi.ORG_INFORMATION12 CARD_TEXT',
'    into :P5_SELECTED_TYPE',
'      from hr_organization_information hoi',
'     where hoi.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL''',
'       AND hoi.org_information12 is not null',
'       and hoi.organization_id = :P0_ORG_ID;',
'',
'    exception when no_data_found then :P5_SELECTED_TYPE := null;',
'end;',
'',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41433276717588545)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set skill buttons'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select ORG_INFORMATION1, ORG_INFORMATION2, ORG_INFORMATION3, ORG_INFORMATION4, ORG_INFORMATION5,',
'           ORG_INFORMATION6, ORG_INFORMATION7, ORG_INFORMATION8, case when ORG_INFORMATION8 is not null and ORG_INFORMATION8 = ''Y'' then ORG_INFORMATION9 end,',
'           ORG_INFORMATION10, case when ORG_INFORMATION10 is not null and ORG_INFORMATION10 = ''Y'' then ORG_INFORMATION11 end',
'    into :P5_ART, :P5_DANCE, :P5_MULTIMEDIA, :P5_PHOTOGRAPHY, :P5_SPORTS,',
'         :P5_DRIVERS_LICENSE, :P5_WORK_IN_PAIRS, :P5_HAS_EXPERIENCE, :P5_PREV_ORGANIZATION,',
'         :P5_ORTHODOX_REQUIRED, :P5_ORTHODOX_AMOUNT',
'    from hr_organization_information ',
'    where organization_id = :P0_ORG_ID and org_information_context = ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL'';',
'    ',
'    if :P5_HAS_EXPERIENCE = ''Y'' and :P5_PREV_ORGANIZATION is null or length(:P5_PREV_ORGANIZATION) = 0 then',
'        :P5_HAS_EXPERIENCE := ''N'';',
'        ',
'        update hr_organization_information',
'        set ORG_INFORMATION8 = ''N'', ORG_INFORMATION9 = null',
'        where organization_id = :P0_ORG_ID and org_information_context = ''JAFI_HR_SHLICHUT_CUSTOMER_SKIL'';',
'        ',
'        commit;',
'    end if;',
'    ',
'    exception when no_data_found then null;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
