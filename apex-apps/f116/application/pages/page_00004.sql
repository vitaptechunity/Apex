prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>503
,p_default_id_offset=>2556963023090302471
,p_default_owner=>'APPS'
);
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(119978609050743808)
,p_name=>'New Flights Management'
,p_alias=>'NEW-FLIGHTS-MANAGEMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Flights Management'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'https://unpkg.com/jspdf@latest/dist/jspdf.umd.min.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//var legsObj = { "legs": [] };',
'var legsEditObj = { "legs": [] };',
'var lSpinner$;',
'',
'function isValidDate(fieldName, d, currentLegIndex) {',
'    try {',
'        currentLegIndex = currentLegIndex == null ? legsEditObj.legs.length - 1 : currentLegIndex;',
'        var day, month, year;',
'        var today = new Date();',
'        ',
'        //Correct Format Check',
'        if (d.length == 10 && d.indexOf(''/'') != -1) {',
'            var dateParts = d.split(''/'');',
'            if (dateParts.length != 3)',
'                return false;',
'',
'            day = parseInt(dateParts[0]);',
'            month = parseInt(dateParts[1]);',
'            year = parseInt(dateParts[2]);',
'        }',
'        else {',
'            if (d.length == 9 && d.indexOf(''-'') != -1) { //10-FEB-26',
'                var dateParts = d.split(''-'');',
'                if (dateParts.length != 3)',
'                    return false;',
'',
'                day = parseInt(dateParts[0]);',
'                month = getMonthAsNum(dateParts[1]);',
'                year = parseInt(dateParts[2]);',
'            }',
'            else if (d.length == 7 && d.indexOf(''-'') == -1) { //10FEB26 ',
'                day = parseInt(d.substring(2, 0));',
'                month = getMonthAsNum(d.substring(5, 2));',
'                year = parseInt(d.substring(7, 5)) + 2000;',
'            }',
'            else if (d.length == 9 && d.indexOf(''-'') == -1) { //10FEB2026',
'                day = parseInt(d.substring(2, 0));',
'                month = getMonthAsNum(d.substring(5, 2));',
'                year = parseInt(d.substring(9, 5));',
'            }',
'        }',
'        ',
'        if (1 <= day && day <= 31 && 1 <= month && month <= 12 && today.getFullYear() <= year && year <= 3000) {',
'            day = day < 10 ? ''0'' + day : day;',
'            month = month < 10 ? ''0'' + month : month;',
'            var valueToSet = day + ''/'' + month + ''/'' + year;',
'            ',
'            if (fieldName == "DEPARTURE_DATE")',
'                legsEditObj.legs[currentLegIndex].departure_date = valueToSet;',
'            else if (fieldName == "ARRIVAL_DATE")',
'                legsEditObj.legs[currentLegIndex].arrival_date = valueToSet;',
'            ',
'            return true;',
'        }',
'    }',
'    catch(e) { }',
'    return false;',
'}',
'',
'function isValidTime(fieldName, t, currentLegIndex) {',
'    try {',
'        currentLegIndex = currentLegIndex == null ? legsEditObj.legs.length - 1 : currentLegIndex;',
'        var hour, min;',
'        if (t.length == 5 && t.indexOf('':'') != -1) {',
'            hour = parseInt(t.substring(0,2));',
'            min = parseInt(t.substring(3,5));',
'        }',
'        else if (t.length == 4) {',
'            hour = parseInt(t.substring(0,2));',
'            min = parseInt(t.substring(2,4));',
'        }',
'        if (0 <= hour && hour <= 23 && 0 <= min && min <= 59) {',
'            hour = hour < 10 ? ''0'' + hour : hour;',
'            min = min < 10 ? ''0'' + min : min;',
'            var valueToSet = hour + '':'' + min;',
'',
'            if (fieldName == "DEPARTURE_TIME")',
'                legsEditObj.legs[currentLegIndex].departure_time = valueToSet; ',
'            else if (fieldName == "ARRIVAL_TIME")',
'                legsEditObj.legs[currentLegIndex].arrival_time = valueToSet;',
'            ',
'            return true;',
'        }',
'    }',
'    catch(e) { }',
'    return false;',
'',
'}',
'',
'function getMonthAsNum(m) {',
'    m = m.toLowerCase();',
'    ',
'    if (m == ''jan'') return 1;',
'    else if (m == ''feb'') return 2;',
'    else if (m == ''mar'') return 3;',
'    else if (m == ''apr'') return 4;',
'    else if (m == ''may'') return 5;',
'    else if (m == ''jun'') return 6;',
'    else if (m == ''jul'') return 7;',
'    else if (m == ''aug'') return 8;',
'    else if (m == ''sep'') return 9;',
'    else if (m == ''oct'') return 10;',
'    else if (m == ''nov'') return 11;',
'    else if (m == ''dec'') return 12;',
'    ',
'    return -1;',
'}',
'',
'function convertDateTextFormat(element) {',
'    var day, month, year;',
'    var today = new Date();',
'    var d = $v(element);',
'',
'    //Correct Format Check',
'    if (d.length == 10 && d.indexOf(''/'') != -1) {',
'        var dateParts = d.split(''/'');',
'        if (dateParts.length != 3)',
'            return false;',
'',
'        day = parseInt(dateParts[0]);',
'        month = parseInt(dateParts[1]);',
'        year = parseInt(dateParts[2]);',
'    }',
'    else {',
'        if (d.length == 9 && d.indexOf(''-'') != -1) { //10-FEB-26',
'            var dateParts = d.split(''-'');',
'            if (dateParts.length != 3)',
'                return false;',
'',
'            day = parseInt(dateParts[0]);',
'            month = getMonthAsNum(dateParts[1]);',
'            year = parseInt(dateParts[2]);',
'        }',
'        else if (d.length == 7 && d.indexOf(''-'') == -1) { //10FEB26 ',
'            day = parseInt(d.substring(2, 0));',
'            month = getMonthAsNum(d.substring(5, 2));',
'            year = parseInt(d.substring(7, 5)) + 2000;',
'        }',
'        else if (d.length == 9 && d.indexOf(''-'') == -1) { //10FEB2026',
'            day = parseInt(d.substring(2, 0));',
'            month = getMonthAsNum(d.substring(5, 2));',
'            year = parseInt(d.substring(9, 5));',
'        }',
'    }',
'',
'    if (1 <= day <= 31 && 1 <= month <= 12 && today.getFullYear() <= year && year <= 3000) {',
'        var currentLegIndex = legsEditObj.legs.length - 1;',
'        day = day < 10 ? ''0'' + day : day;',
'        month = month < 10 ? ''0'' + month : month;',
'',
'        return day + ''/'' + month + ''/'' + year;',
'    }',
'    return d;',
'}',
'',
'function convertTimeTextFormat(element) {',
'    var hour, min;',
'    var t = $v(element);',
'    if (t.length == 5 && t.indexOf('':'') != -1) {',
'        hour = parseInt(t.substring(0,2));',
'        min = parseInt(t.substring(3,5));',
'    }',
'    else if (t.length == 4) {',
'        hour = parseInt(t.substring(0,2));',
'        min = parseInt(t.substring(2,4));',
'    }',
'    if (0 <= hour && hour <= 23 && 0 <= min && min <= 59) {',
'        var currentLegIndex = legsEditObj.legs.length - 1;',
'        hour = hour < 10 ? ''0'' + hour : hour;',
'        min = min < 10 ? ''0'' + min : min;',
'        var valueToSet = hour + '':'' + min;',
'',
'        return valueToSet; ',
'    }',
'    return t;',
'}',
'',
'function composeDate(d, t) {',
'    if (!d || !t) return null;',
'    ',
'    var day, month, year, hour, min;;',
'',
'    //Correct Format Check',
'    if (d.length == 10 && d.indexOf(''/'') != -1 && t.length == 5 && t.indexOf('':'') != -1) {',
'        var dateParts = d.split(''/'');',
'        if (dateParts.length != 3)',
'            return null;',
'',
'        day = parseInt(dateParts[0]);',
'        month = parseInt(dateParts[1]);',
'        year = parseInt(dateParts[2]);',
'        hour = parseInt(t.substring(0,2));',
'        min = parseInt(t.substring(3,5));',
'        ',
'        return new Date(year, month - 1, day, hour, min);',
'    }',
'    return null;',
'}',
'',
'function markMismatchedFields() {',
'    var isGrid = $(''#flightLegsGrid'').length > 0;',
'    var isReport = $(''#flightLegsReport'').length > 0;',
'',
'    if (isGrid === true) {',
'        markMismatchedFieldsGrid();',
'    }',
'    else if (isReport === true) {',
'        markMismatchedFieldsReport();',
'    }',
'}',
'    ',
'function markMismatchedFieldsGrid() {',
'    if ($(''#flightLegsGrid'').length == 0)',
'        return;',
'    ',
'    var widget = apex.region("flightLegsGrid").widget();',
'    var model = widget.interactiveGrid("getViews").grid.model;',
'    var inboundMinIdx = -1, outboundMaxIdx = -1;',
'    var legs = [];',
'    $($(''#flightLegsGrid_ig_grid_vc .a-GV-bdy table td'')).css({''background-color'':''#ecf3ff''});',
'    ',
'    $.each(model._data, function(key, flightLeg) {',
'        var leg = {',
'            "id": flightLeg[13],',
'            "assignment_id": $v(''P4_ASSIGNMENT_ID''),',
'            "person_id": $v(''P4_PERSON_ID''),',
'            "direction": flightLeg[0].v,',
'            "leg": flightLeg[1].v,',
'            "airline": flightLeg[2].v,',
'            "flight_number": flightLeg[3].toUpperCase(),',
'            "departure_airport": flightLeg[4].v,',
'            "departure_airport_desc": flightLeg[4].d.substr(6),',
'            "departure_date": flightLeg[6],',
'            "departure_time": flightLeg[7],',
'            "destination_airport": flightLeg[5].v,',
'            "destination_airport_desc": flightLeg[5].d.substr(6),',
'            "arrival_date": flightLeg[8],',
'            "arrival_time": flightLeg[9],',
'            "meal": flightLeg[10].v,',
'            "mealDesc": flightLeg[10].d',
'        };',
'        ',
'        var deletedRecord = model._changes.filter((r) => r.deleted === true && r.record[13] == leg.id);',
'        if (deletedRecord.length == 0) {',
'            legs.push(leg);',
'        }',
'    });',
'    ',
'    legs.sort(function(a, b) {',
'        //Primary sort',
'        if (a.direction == ''O'' && b.direction == ''I'') return -1;',
'        if (a.direction == ''I'' && b.direction == ''O'') return 1;',
'',
'        //Secondary sort',
'        return parseInt(a.leg) - parseInt(b.leg); //Ascending numerical sort',
'    });',
'    ',
'    $.each(legs, function(key, row) {',
'        if (row.direction == ''I'' && inboundMinIdx == -1) {',
'            inboundMinIdx = key;',
'        }',
'        ',
'        if (row.direction == ''O'') {',
'            outboundMaxIdx = key;',
'        }',
'        ',
'        if (row.mealDesc == '''' || $(''td[headers="MEAL"]'').text() == row.mealDesc.substr(4)) {',
'            $($(''#flightLegsGrid_ig_grid_vc .a-GV-bdy table tr[data-id='' + row.id + ''] td'')[10]).css({''background-color'':''#ecf3ff''});',
'        }',
'        else {',
'            ',
'            $($(''#flightLegsGrid_ig_grid_vc .a-GV-bdy table tr[data-id='' + row.id + ''] td'')[10]).css({''background-color'':''yellow''});',
'        }',
'    });',
'    ',
'    //Outbound',
'    if (outboundMaxIdx != -1) {',
'        var lastOutboundLeg = legs[outboundMaxIdx];',
'        if ($(''.requestedFlightInfo .t-fht-tbody td[headers="MAIN_AIRPORT"] div'').data(''code'') == lastOutboundLeg.destination_airport ||',
'            $(''.requestedFlightInfo .t-fht-tbody td[headers="SEC_AIRPORT"] div'').data(''code'') == lastOutboundLeg.destination_airport) {',
'            $($(''#flightLegsGrid_ig_grid_vc .a-GV-bdy table tr[data-id='' + lastOutboundLeg.id + ''] td'')[7]).css({''background-color'':''#ecf3ff''});',
'        }',
'        else {',
'            $($(''#flightLegsGrid_ig_grid_vc .a-GV-bdy table tr[data-id='' + lastOutboundLeg.id + ''] td'')[7]).css({''background-color'':''yellow''});',
'        }',
'        ',
'        if ($(''td[headers="INDIVIDUAL_ARRIVAL_DATE"]'').text() == lastOutboundLeg.arrival_date) {',
'            $($(''#flightLegsGrid_ig_grid_vc .a-GV-bdy table tr[data-id='' + lastOutboundLeg.id + ''] td'')[8]).css({''background-color'':''#ecf3ff''});',
'        }',
'        else {',
'            $($(''#flightLegsGrid_ig_grid_vc .a-GV-bdy table tr[data-id='' + lastOutboundLeg.id + ''] td'')[8]).css({''background-color'':''yellow''});',
'        }',
'    }',
'           ',
'    //Inbound',
'    if (inboundMinIdx != -1) {',
'        var firstInboundLeg = legs[inboundMinIdx];',
'        if ($(''.requestedFlightInfo .t-fht-tbody td[headers="REQUESTED_RETURN_DATE"]'').text() == firstInboundLeg.departure_date) {',
'            $($(''#flightLegsGrid_ig_grid_vc .a-GV-bdy table tr[data-id='' + firstInboundLeg.id + ''] td'')[5]).css({''background-color'':''#ecf3ff''});',
'        }',
'        else {',
'            $($(''#flightLegsGrid_ig_grid_vc .a-GV-bdy table tr[data-id='' + firstInboundLeg.id + ''] td'')[5]).css({''background-color'':''yellow''});',
'        }',
'    }',
'    ',
'    legsEditObj.legs = legs;',
'}',
'',
'function markMismatchedFieldsReport() {',
'    if ($(''#flightLegsReport'').length == 0)',
'        return;',
'    ',
'    var inboundMinIdx = -1, outboundMaxIdx = -1;',
'    var legs = [];',
'    $($(''#flightLegsReport .t-fht-tbody table td'')).css({''background-color'':''white''});',
'    ',
'    $.each($(''#flightLegsReport .t-fht-tbody table tr''), function(key, row) {',
'        if (key > 0) {',
'            var $directionElement = $(row).find(''td[headers="DIRECTION"] div'');',
'            var id_val = $directionElement.data(''idx'');',
'            var direction_val = $directionElement.data(''code'');',
'            var leg_val = $(row).find(''td[headers="LEG"] div'').data(''code'');',
'            var airline_val = $(row).find(''td[headers="AIRLINE"] div'').data(''code'');',
'            var flight_number_val = $(row).find(''td[headers="FLIGHT_NUMBER"]'').text().toUpperCase();',
'            var departure_airport_val = $(row).find(''td[headers="DEPARTURE_AIRPORT"] div'').data(''code'');',
'            var departure_date_val = $(row).find(''td[headers="DEPARTURE_DATE"] div'').text();',
'            var departure_time_val = $(row).find(''td[headers="DEPARTURE_TIME"] div'').text();',
'            var destination_airport_val = $(row).find(''td[headers="DESTINATION_AIRPORT"] div'').data(''code'');',
'            var arrival_date_val = $(row).find(''td[headers="ARRIVAL_DATE"] div'').text();',
'            var arrival_time_val = $(row).find(''td[headers="ARRIVAL_TIME"] div'').text();',
'            var meal_val = $(row).find(''td[headers="MEAL"] div'').data(''code'');',
'            var meal_desc = $(row).find(''td[headers="MEAL"] div'').text();',
'',
'            var leg = {',
'                "id": id_val,',
'                "assignment_id": $v(''P4_ASSIGNMENT_ID''),',
'                "person_id": $v(''P4_PERSON_ID''),',
'                "direction": direction_val,',
'                "leg": leg_val,',
'                "airline": airline_val,',
'                "flight_number": flight_number_val,',
'                "departure_airport": departure_airport_val,',
'                "departure_date": departure_date_val,',
'                "departure_time": departure_time_val,',
'                "destination_airport": destination_airport_val,',
'                "arrival_date": arrival_date_val,',
'                "arrival_time": arrival_time_val,',
'                "meal": meal_val,',
'                "mealDesc": meal_desc',
'            };',
'',
'            legs.push(leg);',
'        }',
'    });',
'    ',
'    legs.sort(function(a, b) {',
'        //Primary sort',
'        if (a.direction == ''O'' && b.direction == ''I'') return -1;',
'        if (a.direction == ''I'' && b.direction == ''O'') return 1;',
'',
'        //Secondary sort',
'        return parseInt(a.leg) - parseInt(b.leg); //Ascending numerical sort',
'    });',
'    ',
'    $.each(legs, function(key, row) {',
'        if (row.direction == ''I'' && inboundMinIdx == -1) {',
'            inboundMinIdx = key;',
'        }',
'        ',
'        if (row.direction == ''O'') {',
'            outboundMaxIdx = key;',
'        }',
'        ',
'        if (row.mealDesc == '''' || $(''.requestedFlightInfo .t-fht-tbody td[headers="MEAL"]'').text() == row.mealDesc) {',
'            $(''#flightLegsReport .t-fht-tbody table td[headers="MEAL"] div[data-idx="'' + row.id + ''"]'').parent().css({''background-color'':''white''});',
'        }',
'        else {',
'            $(''#flightLegsReport .t-fht-tbody table td[headers="MEAL"] div[data-idx="'' + row.id + ''"]'').parent().css({''background-color'':''yellow''});',
'        }',
'    });',
'    ',
'    ',
'    ',
'    //Outbound',
'    if (outboundMaxIdx != -1) {',
'        var lastOutboundLeg = legs[outboundMaxIdx];',
'        if ($(''.requestedFlightInfo .t-fht-tbody td[headers="MAIN_AIRPORT"] div'').data(''code'') == lastOutboundLeg.destination_airport ||',
'            $(''.requestedFlightInfo .t-fht-tbody td[headers="SEC_AIRPORT"] div'').data(''code'') == lastOutboundLeg.destination_airport) {',
'            $(''#flightLegsReport .t-fht-tbody table td[headers="DESTINATION_AIRPORT"] div[data-idx="'' + lastOutboundLeg.id + ''"]'').parent().css({''background-color'':''white''});',
'        }',
'        else {',
'            $(''#flightLegsReport .t-fht-tbody table td[headers="DESTINATION_AIRPORT"] div[data-idx="'' + lastOutboundLeg.id + ''"]'').parent().css({''background-color'':''yellow''});',
'        }',
'        ',
'        if ($(''.requestedFlightInfo .t-fht-tbody td[headers="INDIVIDUAL_ARRIVAL_DATE"]'').text() == lastOutboundLeg.arrival_date) {',
'            $(''#flightLegsReport .t-fht-tbody table td[headers="ARRIVAL_DATE"] div[data-idx="'' + lastOutboundLeg.id + ''"]'').parent().css({''background-color'':''white''});',
'        }',
'        else {',
'            $(''#flightLegsReport .t-fht-tbody table td[headers="ARRIVAL_DATE"] div[data-idx="'' + lastOutboundLeg.id + ''"]'').parent().css({''background-color'':''yellow''});',
'        }',
'    }',
'           ',
'    //Inbound',
'    if (inboundMinIdx != -1) {',
'        var firstInboundLeg = legs[inboundMinIdx];',
'        if ($(''.requestedFlightInfo .t-fht-tbody td[headers="REQUESTED_RETURN_DATE"]'').text() == firstInboundLeg.departure_date) {',
'            $(''#flightLegsReport .t-fht-tbody table td[headers="DEPARTURE_DATE"] div[data-idx="'' + firstInboundLeg.id + ''"]'').parent().css({''background-color'':''white''});',
'        }',
'        else {',
'            $(''#flightLegsReport .t-fht-tbody table td[headers="DEPARTURE_DATE"] div[data-idx="'' + firstInboundLeg.id + ''"]'').parent().css({''background-color'':''yellow''});',
'        }',
'    }',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''.ui-dialog-title'',parent ? parent.document : document).html(''<span class="fa fa-plane" style="top: 4px !important; margin-right: 4px !important;"></span> Flights Management'');',
'',
'$(document).ready(function() {',
'    var statusHtml = $v(''P4_STATUS_HTML'');',
'    if (statusHtml.length > 0) {',
'        $(''#current-status'').html(statusHtml);',
'    }',
'    ',
'    if ($v(''P4_SEQ'') == '''') {',
'        if ($(''#P4_DATE_APPROVED_FROM_CONTAINER'').length > 0) {',
'            $(''#P4_DATE_APPROVED_FROM_CONTAINER .t-Form-labelContainer'').removeClass(''col'').removeClass(''col-2'');',
'            $(''#P4_DATE_APPROVED_FROM_CONTAINER .t-Form-inputContainer'').removeClass(''col'').removeClass(''col-4'');',
'            $(''#P4_DATE_APPROVED_TO_CONTAINER .t-Form-labelContainer'').removeClass(''col'').removeClass(''col-2'');',
'            $(''#P4_DATE_APPROVED_TO_CONTAINER .t-Form-inputContainer'').removeClass(''col'').removeClass(''col-4'');',
'            ',
'        }',
'    }',
'    else {',
'        if ($(''#P4_HANDLING_AGENT_CONTAINER'').length > 0) {',
'            var handlingAgentHtml = $(''#P4_HANDLING_AGENT_CONTAINER'').parent().html().replace(''col-2'', ''col-5'').replace(''col-10'', ''col-7'');',
'            $($(''#P4_HANDLING_AGENT'').parents(''.container'')[0]).remove();',
'            $(''.header-c'').html(handlingAgentHtml);',
'        }',
'    }',
'    ',
'    if ($v(''P4_IS_ACTIVE'') == ''1'' || $v(''P4_IS_ACTIVE'') == '''') {',
'        if ($v(''P4_STATUS'') == ''6''/* || ($v(''P4_USER_TYPE'') == ''M''&& ($v(''P4_STATUS'') == ''2'' || $v(''P4_STATUS'') == ''3''))*/) {',
'            $(''#editFlightLegsBtn'').show();',
'        }',
'        if (($v(''P4_USER_TYPE'') == ''T'' && $v(''P4_STATUS'') == ''5'' || $v(''P4_STATUS'') == ''6'') || ',
'            ($v(''P4_USER_TYPE'') == ''M'' && $v(''P4_STATUS'') == ''6'')) {',
'            //$(''<label for="P4_INVOICE" class="invoice-upload t-Button t-Button--icon t-Button--iconLeft t-Button--hot" title="Upload New Invoice">Upload New Invoice</label>'').insertBefore(''#saveBtn'');',
'            $(''<label for="P4_TICKET" class="ticket-upload t-Button t-Button--icon t-Button--iconLeft t-Button--hot" title="Upload New Ticket"><span class="t-Icon t-Icon--left fa fa-upload" aria-hidden="true"></span><span class="t-Button-label">Uploa'
||'d New Ticket</span><span class="t-Icon t-Icon--right fa fa-upload" aria-hidden="true"></span></label>'').insertBefore(''#saveBtn'');',
'',
'',
'            //<button class="t-Button t-Button--icon t-Button--iconLeft lto1061126551717211208_0 t-Button--hot" onclick="void(0);" type="button" id="downloadImportTemplateBtn"><span class="t-Icon t-Icon--left fa fa-upload" aria-hidden="true"></span><'
||'span class="t-Button-label">Download Import Template</span><span class="t-Icon t-Icon--right fa fa-upload" aria-hidden="true"></span></button>',
'        }',
'    }',
'    ',
'    markMismatchedFields();',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'@keyframes pulse {',
'    0% {',
'        transform: scale(1);',
'    }',
'    50% {',
'        transform: scale(1.1);',
'    }',
'    100% {',
'        transform: scale(1);',
'    }',
'}',
'',
'.inactive-header {',
'    flex-grow: 1;',
'    text-align: center;',
'    font-weight: 700;',
'    color: red;',
'    animation: pulse 2s infinite;',
'}',
'',
'td[headers="SET_ARRIVAL_DATE"] {',
'    background-color: #d6ffe7 !important;',
'}',
'',
'.t-Button--iconLeft .t-Icon {',
'    margin-right: 10px;',
'}',
'',
'.t-Dialog-body {',
'    padding: 0;    ',
'}',
'',
'.flight-leg {',
'    display: none;',
'}',
'',
'#cancelBtn, #cancelBtnB, #holdFlightBtn {',
'    background-color: red !important;',
'}',
'',
'.select2 {',
'    width: 100% !important;',
'    height: 24px !important;',
'}',
'',
'.select2-selection,',
'.select2-selection__arrow {',
'    height: 24px !important;',
'}',
'',
'.select2-selection__rendered {',
'    line-height: 22px !important;',
'}',
'',
'.select2-selection__clear {',
'    top: -1px !important;',
'}',
'',
'input, textarea {',
'    border-radius: 5px;',
'    background-color: white !important;',
'}',
'',
'.select2-container--default .select2-selection--single {',
'    border-color: #dfdfdf !important;',
'}',
'',
'#bookedFlightRegion .apex_disabled {',
'    opacity: 1 !important;',
'}',
'#bookedFlightRegion .apex_disabled:hover {',
'    cursor: not-allowed !important;',
'}',
'',
'#addLegBtn {',
'    margin-bottom: 10px;',
'}',
'',
'#a_Collapsible2_flightRequestRegion_content {',
'    padding-top: 10px !important;',
'}',
'',
'#flightLegsGrid .a-Toolbar-groupContainer--start .a-Toolbar-group:nth-child(5),',
'#flightLegsGrid .a-GV-footer {',
'    display: none !important;',
'}',
'',
'#flightLegsGrid #flightLegsGrid_ig_grid_vc .js-stickyWidget-placeholder:last-child {',
'    height: 0 !important;',
'}',
'',
'#flightRequestRegion .t-Region-headerItems--title {',
'    padding-top: 0;',
'    padding-bottom: 0;',
'}',
'',
'#flightLegsGrid_ig_grid_vc .js-stickyWidget-placeholder:nth-child(5),',
'#flightLegsGrid_ig_grid_vc .js-stickyWidget-placeholder:nth-child(6) {',
'    display: none;',
'}',
'',
'.view-remarks-col {',
'    height: 176px;',
'    overflow: hidden;',
'}',
'',
'.view-remarks-col .t-Form-itemWrapper {',
'    height: 152px;',
'    overflow: scroll;',
'}',
'',
'#title-space {',
'    flex-grow: 1;',
'}',
'',
'#viewPassportBtn {',
'    float: right;',
'    margin-right: 4px;',
'}',
'',
'.a-IRR-noDataMsg {',
'    padding: 10px 0;',
'}',
'',
'#flightRequestRegion .t-Region-body {',
'    padding-top: 8px;',
'    padding-bottom: 10px;',
'}',
'',
'#P4_TICKET,',
'#P4_INVOICE {',
'    z-index: -1;',
'    position: relative;',
'}',
'',
'#P4_TICKET_CONTAINER .t-Form-labelContainer,',
'#P4_INVOICE_CONTAINER .t-Form-labelContainer {',
'    display: none;',
'}',
'',
'#P4_TICKET_CONTAINER .t-Form-inputContainer,',
'#P4_INVOICE_CONTAINER .t-Form-inputContainer {',
'    padding-top: 20px;',
'}',
'',
'.ticket-upload,',
'.invoice-upload {',
'    max-width: 260px;',
'}',
'',
'.header-c {',
'    width: 400px;',
'}',
'',
'#P4_DATE_APPROVED_FROM_CONTAINER .t-Form-inputContainer,',
'#P4_DATE_APPROVED_TO_CONTAINER .t-Form-inputContainer {',
'    max-width: 150px;',
'}',
'',
'',
'#P4_HANDLING_AGENT_LABEL,',
'#P4_DATE_APPROVED_FROM_LABEL,',
'#P4_DATE_APPROVED_TO_LABEL {',
'    font-size: 16px;',
'    font-weight: 400;',
'}',
'',
'#P4_DATE_APPROVED_FROM_LABEL,',
'#P4_DATE_APPROVED_TO_LABEL {',
'    padding-top: 5px;',
'}',
'',
'#P4_HANDLING_AGENT,',
'#P4_DATE_APPROVED_FROM,',
'#P4_DATE_APPROVED_TO {',
'    font-size: 14px;',
'}',
'',
'#P4_DATE_APPROVED_FROM,',
'#P4_DATE_APPROVED_TO {',
'    height: 28px;',
'    text-align: end;',
'    padding-right: 5px;',
'}',
'',
'#flightsInfoRegion .t-Region-headerItems--title {',
'    padding-top: 8px;',
'    padding-bottom: 8px;',
'}',
'',
'#a_Collapsible1_flightsInfoRegion_content {',
'    padding-bottom: 0;',
'}',
'',
'#fieldsRegion .t-Form-labelContainer {',
'    padding-top: 3px !important;',
'}',
'',
'#fieldsRegion .t-Form-inputContainer {',
'    padding-bottom: 3px !important;',
'}',
'',
'#P4_DATE_APPROVED_FROM_CONTAINER .ui-datepicker-trigger,',
'#P4_DATE_APPROVED_TO_CONTAINER .ui-datepicker-trigger {',
'    padding-top: 4px;',
'    padding-bottom: 0;',
'    padding-left: 5px;',
'}'))
,p_page_css_classes=>'flights-management'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_dialog_attributes=>'close: function(event, ui) { apex.navigation.dialog.close(true, { ''dialogPageId'': 4 });}'
,p_dialog_css_classes=>'flights-management-dialog'
,p_dialog_chained=>'N'
,p_last_updated_by=>'DRORA'
,p_last_upd_yyyymmddhh24miss=>'20261004124745'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1522594770516642247)
,p_plug_name=>'Offer Status: <div id="current-status" style="margin-left: 10px;"><span class="status-cell" data-assignment-id="&P4_ASSIGNMENT_ID." data-person-id="&4_PERSON_ID.">Not Started</span></div><div class="header-c"></div><div id="title-space"></div>'
,p_region_name=>'flightsInfoRegion'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--noBorder:t-Region--scrollBody:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(119978609050743294)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1538070031765182330)
,p_plug_name=>'General Information Items'
,p_region_name=>'generalInfoContainer'
,p_parent_plug_id=>wwv_flow_api.id(1522594770516642247)
,p_region_template_options=>'#DEFAULT#:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1443673931813738248)
,p_plug_name=>'Requested Flight Info SC'
,p_parent_plug_id=>wwv_flow_api.id(1538070031765182330)
,p_region_css_classes=>'requestedFlightInfo'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:margin-top-sm:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(119978609050743302)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--GET GENERAL INFORMATION',
'select MAIN_AIRPORT_CODE, MAIN_AIRPORT,',
'       case when MAIN_AIRPORT_CODE is not null then MAIN_AIRPORT_CODE || '' - '' || MAIN_AIRPORT',
'            when MAIN_AIRPORT is not null then MAIN_AIRPORT else '''' end as MAIN_AIRPORT_FORMATTED,',
'       SEC_AIRPORT_CODE, SEC_AIRPORT,',
'       case when SEC_AIRPORT_CODE is not null then SEC_AIRPORT_CODE || '' - '' || SEC_AIRPORT ',
'            when SEC_AIRPORT is not null then SEC_AIRPORT else '''' end as SEC_AIRPORT_FORMATTED,',
'       case when DEPARTURE_AIRPORT_CODE is not null then DEPARTURE_AIRPORT_CODE || '' - '' || DEPARTURE_AIRPORT else DEPARTURE_AIRPORT end DEPARTURE_AIRPORT,',
'       INDIVIDUAL_ARRIVAL_DATE,',
'       CAMP_ARRIVAL_TIME,',
'       CAMP_ARRIVAL_DATE,',
'       REQUESTED_RETURN_DATE,',
'       MEAL,',
'       case when flight_remarks_applicant is not null and length(flight_remarks_applicant) > 0 ',
'             then ''<span class="fa fa-comment-o remarks-span" title="'' || flight_remarks_applicant || ''"></span>''',
'             else ''''',
'        end flight_remarks_applicant,',
'        case when flights_remarks_maslul is not null and length(flights_remarks_maslul) > 0 ',
'             then ''<span class="fa fa-comment-o remarks-span" title="'' || flights_remarks_maslul || ''"></span>''',
'             else ''''',
'        end flights_remarks_maslul,',
'        decode(maslul_short_name, ''SC'', nvl(TO_CHAR(TO_DATE(v.CAMP_ARRIVAL_TIME, ''HH AM''), ''HH24:MI''), ''''), v.CAMP_ARRIVAL_TIME) AS DEPARTURE_TIME,',
'        INDIVIDUAL_DEPARTURE_DATE SHLICHUT_END_DATE,',
'        CAMP_NAME,',
'        COUNTRY,',
'        STATE,',
'        CITY,',
'        PREFERRED_ARRIVAL_TIME,',
'        case when maslul_short_name = ''LTS'' and ARRIVAL_DATE_APPROVED = ''Y'' then ''Yes'' ',
'             when maslul_short_name = ''LTS'' and ARRIVAL_DATE_APPROVED = ''N'' then ''No'' else '''' end ARRIVAL_DATE_APPROVED,',
'        case when maslul_short_name = ''LTS'' and ARRIVAL_DATE_APPROVED = ''N'' then REQUESTED_ARRIVAL_DATE || chr(10) || CHANGE_DATE_REASON end ARRIVAL_DATE_APPROVED_TITLE,',
'        case when maslul_short_name = ''LTS'' then REQUESTED_ARRIVAL_DATE end REQUESTED_ARRIVAL_DATE,',
'        case when maslul_short_name = ''LTS'' then CHANGE_DATE_REASON end CHANGE_DATE_REASON,',
'        case when maslul_short_name = ''LTS'' then LUGGAGE end LUGGAGE,',
'        case when maslul_short_name = ''LTS'' and JOINING = ''Y'' then ''Yes'' ',
'             when maslul_short_name = ''LTS'' and JOINING = ''N'' then ''No'' else '''' end JOINING,',
'        case when maslul_short_name = ''LTS'' then JOINING_DATE end JOINING_DATE,',
'        case when maslul_short_name = ''LTS'' then COUNT_PETS end COUNT_PETS,         ',
'        case when maslul_short_name = ''LTS'' then REPLACE(PET1_INFO,''"'', ''&quot;'') end PET1_INFO,',
'        case when maslul_short_name = ''LTS'' then REPLACE(PET2_INFO,''"'', ''&quot;'') end PET2_INFO,',
'        case when maslul_short_name = ''LTS'' then REPLACE(PET3_INFO,''"'', ''&quot;'') end PET3_INFO,',
'        maslul_short_name',
'from JAFI_FLIGHT_PASSPORT_INFO_MV v',
'where v.ASSIGNMENT_ID = :P4_ASSIGNMENT_ID and  v.PERSON_ID = :P4_PERSON_ID   and (NVL(:P4_REQUEST_ID,1) = 1  OR :P4_REQUEST_ID = v.request_id);'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P4_ASSIGNMENT_ID,P4_PERSON_ID,P4_REQUEST_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P4_PROCESS_STARTED = ''N'' and :P4_MASLUL not in (''SSH'',''LTS'')'
,p_plug_header=>'<p style="font-weight: bold; color: red; font-size: 14px; margin: 0;">Requested Flight Info</p>'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(1443673560628738244)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_show_detail_link=>'N'
,p_owner=>'DRORA'
,p_internal_uid=>1113289462461564227
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1443673464829738243)
,p_db_column_name=>'MAIN_AIRPORT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Main Airport'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'MAIN_AIRPORT'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>503
,p_default_id_offset=>2556963023090302471
,p_default_owner=>'APPS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1443673356659738242)
,p_db_column_name=>'PET1_INFO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Pet1 Info'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1443673296607738241)
,p_db_column_name=>'PET2_INFO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Pet2 Info'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1443673153264738240)
,p_db_column_name=>'PET3_INFO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Pet3 Info'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1443673030835738239)
,p_db_column_name=>'ARRIVAL_DATE_APPROVED_TITLE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Arrival Date Approved Title'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1443673014450738238)
,p_db_column_name=>'MASLUL_SHORT_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Maslul Short Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1443672833632738237)
,p_db_column_name=>'MAIN_AIRPORT_CODE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Main Airport Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1443672818979738236)
,p_db_column_name=>'MAIN_AIRPORT_FORMATTED'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Main Airport'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1443672706398738235)
,p_db_column_name=>'SEC_AIRPORT_CODE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Sec Airport Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1443672580625738234)
,p_db_column_name=>'SEC_AIRPORT_FORMATTED'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Sec Airport'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1443672494747738233)
,p_db_column_name=>'SEC_AIRPORT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Sec Airport'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'SEC_AIRPORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1443672335519738232)
,p_db_column_name=>'DEPARTURE_AIRPORT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Departure Airport'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'DEPARTURE_AIRPORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1443672264917738231)
,p_db_column_name=>'CAMP_ARRIVAL_TIME'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Camp Arrival Time'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1443672202442738230)
,p_db_column_name=>'CAMP_ARRIVAL_DATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Camp Arrival Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1443672087250738229)
,p_db_column_name=>'MEAL'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Meal'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'MEAL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1443671973453738228)
,p_db_column_name=>'FLIGHT_REMARKS_APPLICANT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Applicant Remarks'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1443671853627738227)
,p_db_column_name=>'FLIGHTS_REMARKS_MASLUL'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Maslul Remarks'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1443671770855738226)
,p_db_column_name=>'CAMP_NAME'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Camp'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1443671675934738225)
,p_db_column_name=>'SHLICHUT_END_DATE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Shlichut End Date'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'SHLICHUT_END_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1443671556781738224)
,p_db_column_name=>'DEPARTURE_TIME'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Departure Time'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'DEPARTURE_TIME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1443671463949738223)
,p_db_column_name=>'COUNTRY'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Country'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1443671422877738222)
,p_db_column_name=>'STATE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'State'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1443671238322738221)
,p_db_column_name=>'CITY'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'City'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1435039658280122770)
,p_db_column_name=>'PREFERRED_ARRIVAL_TIME'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Preferred Arrival Time'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1435039580680122769)
,p_db_column_name=>'INDIVIDUAL_ARRIVAL_DATE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Arrival Date'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1435039494329122768)
,p_db_column_name=>'REQUESTED_RETURN_DATE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Requested Return Date'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1435039405456122767)
,p_db_column_name=>'ARRIVAL_DATE_APPROVED'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Arrival Date Approved'
,p_column_html_expression=>'<span class="arrival-date-approved-span" style="width: 100%; line-height: 35px; display: block;" title="#ARRIVAL_DATE_APPROVED_TITLE#">#ARRIVAL_DATE_APPROVED#</span>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>':P4_MASLUL = ''LTS'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1435039310434122766)
,p_db_column_name=>'REQUESTED_ARRIVAL_DATE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Requested Arrival Date'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1435039166428122765)
,p_db_column_name=>'CHANGE_DATE_REASON'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Change Date Reason'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1435039024498122764)
,p_db_column_name=>'LUGGAGE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Luggage'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>':P4_MASLUL = ''LTS'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1435039004740122763)
,p_db_column_name=>'JOINING'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Separated'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>':P4_MASLUL = ''LTS'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1435038855264122762)
,p_db_column_name=>'JOINING_DATE'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Joining Date'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>':P4_MASLUL = ''LTS'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1435038746034122761)
,p_db_column_name=>'COUNT_PETS'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Pets'
,p_column_html_expression=>'<span class="pets-span" style="width: 100%; line-height: 35px; display: block;" title="#PET1_INFO#&#013;&#013;#PET2_INFO#&#013;&#013;#PET3_INFO#">#COUNT_PETS#</span>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>':P4_MASLUL = ''LTS'''
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1433098240356598300)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'11238648'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CAMP_NAME:MAIN_AIRPORT_FORMATTED:SEC_AIRPORT_FORMATTED:INDIVIDUAL_ARRIVAL_DATE:PREFERRED_ARRIVAL_TIME:DEPARTURE_AIRPORT:REQUESTED_RETURN_DATE:DEPARTURE_TIME:MEAL:SHLICHUT_END_DATE:COUNTRY:STATE:CITY:FLIGHT_REMARKS_APPLICANT:FLIGHTS_REMARKS_MASLUL:ARR'
||'IVAL_DATE_APPROVED:LUGGAGE:JOINING:JOINING_DATE:COUNT_PETS:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1435038244849122756)
,p_plug_name=>'Additional Info SSH & LTS'
,p_parent_plug_id=>wwv_flow_api.id(1538070031765182330)
,p_region_css_classes=>'requestedFlightInfo'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:margin-top-none:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(119978609050743302)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--GET ADDITIONAL INFORMATION',
'select case when flight_remarks_applicant is not null and length(flight_remarks_applicant) > 0 ',
'             then ''<span class="fa fa-comment-o remarks-span" title="'' || flight_remarks_applicant || ''"></span>''',
'             else ''''',
'        end flight_remarks_applicant,',
'        case when flights_remarks_maslul is not null and length(flights_remarks_maslul) > 0 ',
'             then ''<span class="fa fa-comment-o remarks-span" title="'' || flights_remarks_maslul || ''"></span>''',
'             else ''''',
'        end flights_remarks_maslul,',
'        COUNTRY,',
'        STATE,',
'        CITY,',
'        CHANGE_DATE_REASON,',
'        LUGGAGE,',
'        case when JOINING = ''Y'' then ''Yes'' ',
'             when JOINING = ''N'' then ''No'' ',
'             else '''' end JOINING,',
'        JOINING_DATE,',
'        COUNT_PETS,         ',
'        case when PET1_INFO is not null then REPLACE(PET1_INFO,''"'', ''&quot;'') end PET1_INFO,',
'        case when PET2_INFO is not null then REPLACE(PET2_INFO,''"'', ''&quot;'') end PET2_INFO,',
'        case when PET3_INFO is not null then REPLACE(PET3_INFO,''"'', ''&quot;'') end PET3_INFO,',
'        INDIVIDUAL_DEPARTURE_DATE SHLICHUT_END_DATE,',
'        case when ARRIVAL_DATE_APPROVED = ''Y'' then ''Yes'' ',
'             when ARRIVAL_DATE_APPROVED = ''N'' then ''No'' end ARRIVAL_DATE_APPROVED,',
'        case when ARRIVAL_DATE_APPROVED = ''N'' then REQUESTED_ARRIVAL_DATE || chr(10) || CHANGE_DATE_REASON end ARRIVAL_DATE_APPROVED_TITLE',
'from JAFI_FLIGHT_PASSPORT_INFO_MV v',
'where v.ASSIGNMENT_ID = :P4_ASSIGNMENT_ID and  v.PERSON_ID = :P4_PERSON_ID   and (NVL(:P4_REQUEST_ID,1) = 1  OR :P4_REQUEST_ID = v.request_id);'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P4_ASSIGNMENT_ID,P4_PERSON_ID,P4_REQUEST_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P4_PROCESS_STARTED = ''N'' and :P4_MASLUL in (''SSH'', ''LTS'')'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(1435037852775122752)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_show_detail_link=>'N'
,p_owner=>'DRORA'
,p_internal_uid=>1121925170315179719
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1435037628565122750)
,p_db_column_name=>'PET1_INFO'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Pet1 Info'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1435037572435122749)
,p_db_column_name=>'PET2_INFO'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Pet2 Info'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1435037423673122748)
,p_db_column_name=>'PET3_INFO'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Pet3 Info'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1435036235051122736)
,p_db_column_name=>'FLIGHT_REMARKS_APPLICANT'
,p_display_order=>160
,p_column_identifier=>'D'
,p_column_label=>'Applicant Remarks'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1435036153775122735)
,p_db_column_name=>'FLIGHTS_REMARKS_MASLUL'
,p_display_order=>170
,p_column_identifier=>'E'
,p_column_label=>'Maslul Remarks'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1435035766445122731)
,p_db_column_name=>'COUNTRY'
,p_display_order=>210
,p_column_identifier=>'F'
,p_column_label=>'Country'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1435035702476122730)
,p_db_column_name=>'STATE'
,p_display_order=>220
,p_column_identifier=>'G'
,p_column_label=>'State'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1435035592651122729)
,p_db_column_name=>'CITY'
,p_display_order=>230
,p_column_identifier=>'H'
,p_column_label=>'City'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1435035015052122723)
,p_db_column_name=>'CHANGE_DATE_REASON'
,p_display_order=>290
,p_column_identifier=>'I'
,p_column_label=>'Change Date Reason'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1435034834871122722)
,p_db_column_name=>'LUGGAGE'
,p_display_order=>300
,p_column_identifier=>'J'
,p_column_label=>'Luggage'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>':P4_MASLUL = ''LTS'' or 1=1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1435034748822122721)
,p_db_column_name=>'JOINING'
,p_display_order=>310
,p_column_identifier=>'K'
,p_column_label=>'Separated'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>':P4_MASLUL = ''LTS'' or 1=1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434539273188498470)
,p_db_column_name=>'JOINING_DATE'
,p_display_order=>320
,p_column_identifier=>'L'
,p_column_label=>'Joining Date'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>':P4_MASLUL = ''LTS'' or 1=1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434539132042498469)
,p_db_column_name=>'COUNT_PETS'
,p_display_order=>330
,p_column_identifier=>'M'
,p_column_label=>'Pets'
,p_column_html_expression=>'<span class="pets-span" style="width: 100%; line-height: 35px; display: block;" title="#PET1_INFO#&#013;&#013;#PET2_INFO#&#013;&#013;#PET3_INFO#">#COUNT_PETS#</span>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>':P4_MASLUL = ''LTS'' or 1=1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434538833973498466)
,p_db_column_name=>'SHLICHUT_END_DATE'
,p_display_order=>340
,p_column_identifier=>'N'
,p_column_label=>'Shlichut End Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434538735856498465)
,p_db_column_name=>'ARRIVAL_DATE_APPROVED'
,p_display_order=>350
,p_column_identifier=>'O'
,p_column_label=>'Arrival Date Approved'
,p_column_html_expression=>'<span class="arrival-date-approved-span" style="width: 100%; line-height: 35px; display: block;" title="#ARRIVAL_DATE_APPROVED_TITLE#">#ARRIVAL_DATE_APPROVED#</span>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434538631681498464)
,p_db_column_name=>'ARRIVAL_DATE_APPROVED_TITLE'
,p_display_order=>360
,p_column_identifier=>'P'
,p_column_label=>'Arrival Date Approved Title'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1434529877910473051)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'11224332'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COUNTRY:STATE:CITY:ARRIVAL_DATE_APPROVED:JOINING:JOINING_DATE:LUGGAGE:COUNT_PETS:FLIGHT_REMARKS_APPLICANT:FLIGHTS_REMARKS_MASLUL:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(667352803313199580)
,p_plug_name=>'Personal Info'
,p_parent_plug_id=>wwv_flow_api.id(1538070031765182330)
,p_region_template_options=>'#DEFAULT#:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(119978609050743302)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--GET GENERAL INFORMATION',
'select NATIONAL_ID,',
'       LAST_NAME,',
'       FIRST_NAME,',
'       GENDER,',
'       to_char(to_date(DATE_OF_BIRTH, ''DD-MON-YY''), ''DD/MM/YYYY'') DATE_OF_BIRTH,',
'       --CITY_OF_BIRTH,',
'       --COUNTRY_OF_BIRTH,',
'       MOBILE,',
'       EMAIL_ADDRESS,',
'       case when IS_US_OR_CA_CITIZEN = ''US'' then ''<img width="38" src="#APP_IMAGES#us.svg" />''',
'            when IS_US_OR_CA_CITIZEN = ''CA'' then ''<img width="38" src="#APP_IMAGES#ca.svg" />''',
'            else IS_US_OR_CA_CITIZEN',
'       end IS_US_OR_CA_CITIZEN,',
'       PASSPORT_NUMBER,',
'       PASSPORT_EXPIRATION,',
'       MASLUL,',
'       COORDINATOR_NAME,',
'       J1_PERMIT_END_DATE,',
'       head_of_family_tz MAIN_FAMILY_MEMBER_ID,',
'       case when exists (',
'            select 1 from JAFI_FLIGHT_PASSPORT_INFO_MV d',
'            where d.national_id != v.NATIONAL_ID and (d.national_id = v.head_of_family_tz or d.head_of_family_tz = v.NATIONAL_ID)) ',
'        then ''<span class="fa fa-users" title="Yes"></span>'' else '''' end is_family,',
'       INDIVIDUAL_DEPARTURE_DATE SHLICHUT_END_DATE',
'from JAFI_FLIGHT_PASSPORT_INFO_MV v',
'where v.ASSIGNMENT_ID = :P4_ASSIGNMENT_ID and v.PERSON_ID = :P4_PERSON_ID  and (NVL(:P4_REQUEST_ID,1) = 1  OR :P4_REQUEST_ID = v.request_id);'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P4_ASSIGNMENT_ID,P4_PERSON_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Personal Info'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(667352889170199581)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_show_detail_link=>'N'
,p_owner=>'DRORA'
,p_internal_uid=>898319954461131605
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(667353007619199582)
,p_db_column_name=>'NATIONAL_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Israeli ID Number'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(667353125784199583)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(667353153599199584)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'First Name'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(667353245533199585)
,p_db_column_name=>'GENDER'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Gender'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(667353422752199586)
,p_db_column_name=>'DATE_OF_BIRTH'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Date Of Birth'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(667353654441199589)
,p_db_column_name=>'MOBILE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Mobile'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(667353777498199590)
,p_db_column_name=>'EMAIL_ADDRESS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Email Address'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>503
,p_default_id_offset=>2556963023090302471
,p_default_owner=>'APPS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(667353918188199591)
,p_db_column_name=>'PASSPORT_NUMBER'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Passport Number'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(667353986709199592)
,p_db_column_name=>'PASSPORT_EXPIRATION'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Passport Expiration'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(667354059624199593)
,p_db_column_name=>'MASLUL'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Maslul'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(667354257714199595)
,p_db_column_name=>'COORDINATOR_NAME'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Coordinator'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(667354365199199596)
,p_db_column_name=>'J1_PERMIT_END_DATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'J1 Permit End Date'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(667357256616199625)
,p_db_column_name=>'IS_US_OR_CA_CITIZEN'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Other Citizenship'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(721157839142152678)
,p_db_column_name=>'MAIN_FAMILY_MEMBER_ID'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Main Family Member ID'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1435038656749122760)
,p_db_column_name=>'IS_FAMILY'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Is Family'
,p_column_html_expression=>'#IS_FAMILY#'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1435038561813122759)
,p_db_column_name=>'SHLICHUT_END_DATE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Shlichut End Date'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(673555155572263055)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9045223'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LAST_NAME:FIRST_NAME:GENDER:DATE_OF_BIRTH:MASLUL:IS_FAMILY:MAIN_FAMILY_MEMBER_ID:PASSPORT_NUMBER:PASSPORT_EXPIRATION:J1_PERMIT_END_DATE:SHLICHUT_END_DATE:IS_US_OR_CA_CITIZEN:COORDINATOR_NAME:NATIONAL_ID:EMAIL_ADDRESS:MOBILE:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(790559611271989385)
,p_plug_name=>'Requested Flight Info SSH & LTS'
,p_parent_plug_id=>wwv_flow_api.id(1538070031765182330)
,p_region_css_classes=>'requestedFlightInfo'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:margin-top-sm:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(119978609050743302)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--GET GENERAL INFORMATION',
'select MAIN_AIRPORT_CODE, ',
'       MAIN_AIRPORT,',
'       case when MAIN_AIRPORT_CODE is not null then MAIN_AIRPORT_CODE || '' - '' || MAIN_AIRPORT',
'            when MAIN_AIRPORT is not null then MAIN_AIRPORT else '''' end as MAIN_AIRPORT_FORMATTED,',
'       SEC_AIRPORT_CODE, ',
'       SEC_AIRPORT,',
'       case when SEC_AIRPORT_CODE is not null then SEC_AIRPORT_CODE || '' - '' || SEC_AIRPORT ',
'            when SEC_AIRPORT is not null then SEC_AIRPORT else '''' end as SEC_AIRPORT_FORMATTED,',
'       case when DEPARTURE_AIRPORT_CODE is not null then DEPARTURE_AIRPORT_CODE || '' - '' || DEPARTURE_AIRPORT else DEPARTURE_AIRPORT end DEPARTURE_AIRPORT,',
'       case when INDIVIDUAL_ARRIVAL_DATE != ''-'' then INDIVIDUAL_ARRIVAL_DATE end INDIVIDUAL_ARRIVAL_DATE,',
'       CAMP_ARRIVAL_TIME,',
'       case when CAMP_ARRIVAL_DATE != ''-'' then CAMP_ARRIVAL_DATE end CAMP_ARRIVAL_DATE,',
'       case when REQUESTED_RETURN_DATE != ''-'' then REQUESTED_RETURN_DATE end REQUESTED_RETURN_DATE,',
'       MEAL,',
'       decode(maslul_short_name, ''SC'', nvl(TO_CHAR(TO_DATE(v.CAMP_ARRIVAL_TIME, ''HH AM''), ''HH24:MI''), ''''), v.CAMP_ARRIVAL_TIME) AS DEPARTURE_TIME,',
'       CAMP_NAME,',
'       PREFERRED_ARRIVAL_TIME,',
'       maslul_short_name,',
'       case when OUTBOUND_DEP_AIRPORT is not null then OUTBOUND_DEP_AIRPORT || '' - '' || HR_GENERAL.DECODE_LOOKUP(''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'', OUTBOUND_DEP_AIRPORT) end OUTBOUND_DEP_AIRPORT,',
'       case when INBOUND_ARR_AIRPORT is not null then INBOUND_ARR_AIRPORT || '' - '' || HR_GENERAL.DECODE_LOOKUP(''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'', INBOUND_ARR_AIRPORT) end INBOUND_ARR_AIRPORT',
'from JAFI_FLIGHT_PASSPORT_INFO_MV v',
'where v.ASSIGNMENT_ID = :P4_ASSIGNMENT_ID and  v.PERSON_ID = :P4_PERSON_ID   and (NVL(:P4_REQUEST_ID,1) = 1  OR :P4_REQUEST_ID = v.request_id);'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P4_ASSIGNMENT_ID,P4_PERSON_ID,P4_REQUEST_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P4_PROCESS_STARTED = ''N'' and :P4_MASLUL in (''SSH'', ''LTS'')'
,p_plug_header=>'<p style="font-weight: bold; color: red; font-size: 14px; margin: 0;">Requested Flight Info</p>'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(790559673484989386)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_show_detail_link=>'N'
,p_owner=>'DRORA'
,p_internal_uid=>1021526738775921410
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(790559752323989387)
,p_db_column_name=>'MAIN_AIRPORT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Main Airport'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'MAIN_AIRPORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(790559915132989388)
,p_db_column_name=>'SEC_AIRPORT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Sec Airport'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'SEC_AIRPORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(790559994680989389)
,p_db_column_name=>'DEPARTURE_AIRPORT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Inbound Departure Airport'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'DEPARTURE_AIRPORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(790560156758989391)
,p_db_column_name=>'CAMP_ARRIVAL_TIME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Camp Arrival Time'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(790560275740989392)
,p_db_column_name=>'CAMP_ARRIVAL_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Camp Arrival Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(790560525061989394)
,p_db_column_name=>'MEAL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Meal'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'MEAL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(790560821545989397)
,p_db_column_name=>'CAMP_NAME'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Customer'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(790561008594989399)
,p_db_column_name=>'DEPARTURE_TIME'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Inbound Departure Time'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'DEPARTURE_TIME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(801860923750360498)
,p_db_column_name=>'PREFERRED_ARRIVAL_TIME'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Outbound Arrival Time'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(993888031214261407)
,p_db_column_name=>'INDIVIDUAL_ARRIVAL_DATE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Outbound Arrival Date'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(960299641543389756)
,p_db_column_name=>'REQUESTED_RETURN_DATE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Inbound Departure Date'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(960295942472389719)
,p_db_column_name=>'MASLUL_SHORT_NAME'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Maslul Short Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(960295250982389712)
,p_db_column_name=>'MAIN_AIRPORT_CODE'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Main Airport Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(960295090227389711)
,p_db_column_name=>'MAIN_AIRPORT_FORMATTED'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Outbound Arrival Airport - Main'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(960295038640389710)
,p_db_column_name=>'SEC_AIRPORT_CODE'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Sec Airport Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(960294917269389709)
,p_db_column_name=>'SEC_AIRPORT_FORMATTED'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Outbound Arrival Airport - Sec'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1435038424302122758)
,p_db_column_name=>'OUTBOUND_DEP_AIRPORT'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Outbound Departure Airport'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1435038404416122757)
,p_db_column_name=>'INBOUND_ARR_AIRPORT'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Inbound Arrival Airport'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(795364372480612166)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'10263315'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CAMP_NAME:OUTBOUND_DEP_AIRPORT:MAIN_AIRPORT_FORMATTED:SEC_AIRPORT_FORMATTED:INDIVIDUAL_ARRIVAL_DATE:PREFERRED_ARRIVAL_TIME:DEPARTURE_AIRPORT:INBOUND_ARR_AIRPORT:REQUESTED_RETURN_DATE:DEPARTURE_TIME:MEAL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1538070378063182334)
,p_plug_name=>'Manage Flight Data'
,p_region_name=>'flightRequestRegion'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(119978609050743305)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P4_PROCESS_STARTED'
,p_plug_display_when_cond2=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1434538207389498459)
,p_plug_name=>'Requested Flight Info SSH & LTS'
,p_parent_plug_id=>wwv_flow_api.id(1538070378063182334)
,p_region_css_classes=>'requestedFlightInfo'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:margin-top-sm:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(119978609050743302)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--GET GENERAL INFORMATION',
'select MAIN_AIRPORT_CODE, ',
'       MAIN_AIRPORT,',
'       case when MAIN_AIRPORT_CODE is not null then MAIN_AIRPORT_CODE || '' - '' || MAIN_AIRPORT',
'            when MAIN_AIRPORT is not null then MAIN_AIRPORT else '''' end as MAIN_AIRPORT_FORMATTED,',
'       SEC_AIRPORT_CODE, ',
'       SEC_AIRPORT,',
'       case when SEC_AIRPORT_CODE is not null then SEC_AIRPORT_CODE || '' - '' || SEC_AIRPORT ',
'            when SEC_AIRPORT is not null then SEC_AIRPORT else '''' end as SEC_AIRPORT_FORMATTED,',
'       case when DEPARTURE_AIRPORT_CODE is not null then DEPARTURE_AIRPORT_CODE || '' - '' || DEPARTURE_AIRPORT else DEPARTURE_AIRPORT end DEPARTURE_AIRPORT,',
'       case when INDIVIDUAL_ARRIVAL_DATE != ''-'' then INDIVIDUAL_ARRIVAL_DATE end INDIVIDUAL_ARRIVAL_DATE,',
'       CAMP_ARRIVAL_TIME,',
'       case when CAMP_ARRIVAL_DATE != ''-'' then CAMP_ARRIVAL_DATE end CAMP_ARRIVAL_DATE,',
'       case when REQUESTED_RETURN_DATE != ''-'' then REQUESTED_RETURN_DATE end REQUESTED_RETURN_DATE,',
'       MEAL,',
'       decode(maslul_short_name, ''SC'', nvl(TO_CHAR(TO_DATE(v.CAMP_ARRIVAL_TIME, ''HH AM''), ''HH24:MI''), ''''), v.CAMP_ARRIVAL_TIME) AS DEPARTURE_TIME,',
'       CAMP_NAME,',
'       PREFERRED_ARRIVAL_TIME,',
'       maslul_short_name,',
'       case when OUTBOUND_DEP_AIRPORT is not null then OUTBOUND_DEP_AIRPORT || '' - '' || HR_GENERAL.DECODE_LOOKUP(''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'', OUTBOUND_DEP_AIRPORT) end OUTBOUND_DEP_AIRPORT,',
'       case when INBOUND_ARR_AIRPORT is not null then INBOUND_ARR_AIRPORT || '' - '' || HR_GENERAL.DECODE_LOOKUP(''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'', INBOUND_ARR_AIRPORT) end INBOUND_ARR_AIRPORT',
'from JAFI_FLIGHT_PASSPORT_INFO_MV v',
'where v.ASSIGNMENT_ID = :P4_ASSIGNMENT_ID and  v.PERSON_ID = :P4_PERSON_ID   and (NVL(:P4_REQUEST_ID,1) = 1  OR :P4_REQUEST_ID = v.request_id);'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P4_ASSIGNMENT_ID,P4_PERSON_ID,P4_REQUEST_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P4_PROCESS_STARTED = ''Y'' and :P4_MASLUL in (''SSH'', ''LTS'')'
,p_plug_header=>'<p style="font-weight: bold; color: red; font-size: 14px; margin: 0;">Requested Flight Info</p>'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(1434537726373498455)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_show_detail_link=>'N'
,p_owner=>'DRORA'
,p_internal_uid=>1122425296716804016
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434537689821498454)
,p_db_column_name=>'MAIN_AIRPORT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Main Airport'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'MAIN_AIRPORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434537533955498453)
,p_db_column_name=>'MASLUL_SHORT_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Maslul Short Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434537523086498452)
,p_db_column_name=>'MAIN_AIRPORT_CODE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Main Airport Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434537420635498451)
,p_db_column_name=>'MAIN_AIRPORT_FORMATTED'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Outbound Arrival Airport - Main'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434537226960498450)
,p_db_column_name=>'SEC_AIRPORT_CODE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Sec Airport Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434537191714498449)
,p_db_column_name=>'SEC_AIRPORT_FORMATTED'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Outbound Arrival Airport - Sec'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434537104942498448)
,p_db_column_name=>'OUTBOUND_DEP_AIRPORT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Outbound Departure Airport'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434536973530498447)
,p_db_column_name=>'INBOUND_ARR_AIRPORT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Inbound Arrival Airport'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434536835180498446)
,p_db_column_name=>'SEC_AIRPORT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Sec Airport'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'SEC_AIRPORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434536784065498445)
,p_db_column_name=>'DEPARTURE_AIRPORT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Inbound Departure Airport'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'DEPARTURE_AIRPORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434536629096498444)
,p_db_column_name=>'CAMP_ARRIVAL_TIME'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Camp Arrival Time'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434536588991498443)
,p_db_column_name=>'CAMP_ARRIVAL_DATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Camp Arrival Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434536432153498442)
,p_db_column_name=>'MEAL'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Meal'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'MEAL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434536365644498441)
,p_db_column_name=>'CAMP_NAME'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Customer'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434536319494498440)
,p_db_column_name=>'DEPARTURE_TIME'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Inbound Departure Time'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'DEPARTURE_TIME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434536170880498439)
,p_db_column_name=>'PREFERRED_ARRIVAL_TIME'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Outbound Arrival Time'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434536085030498438)
,p_db_column_name=>'INDIVIDUAL_ARRIVAL_DATE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Outbound Arrival Date'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434535973856498437)
,p_db_column_name=>'REQUESTED_RETURN_DATE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Inbound Departure Date'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1433039744076571411)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'11239233'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CAMP_NAME:OUTBOUND_DEP_AIRPORT:MAIN_AIRPORT_FORMATTED:SEC_AIRPORT_FORMATTED:INDIVIDUAL_ARRIVAL_DATE:PREFERRED_ARRIVAL_TIME:DEPARTURE_AIRPORT:INBOUND_ARR_AIRPORT:REQUESTED_RETURN_DATE:DEPARTURE_TIME:MEAL:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1434535863387498436)
,p_plug_name=>'Additional Info SSH & LTS'
,p_parent_plug_id=>wwv_flow_api.id(1538070378063182334)
,p_region_css_classes=>'requestedFlightInfo'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:margin-top-none:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(119978609050743302)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--GET ADDITIONAL INFORMATION',
'select case when flight_remarks_applicant is not null and length(flight_remarks_applicant) > 0 ',
'             then ''<span class="fa fa-comment-o remarks-span" title="'' || flight_remarks_applicant || ''"></span>''',
'             else ''''',
'        end flight_remarks_applicant,',
'        case when flights_remarks_maslul is not null and length(flights_remarks_maslul) > 0 ',
'             then ''<span class="fa fa-comment-o remarks-span" title="'' || flights_remarks_maslul || ''"></span>''',
'             else ''''',
'        end flights_remarks_maslul,',
'        COUNTRY,',
'        STATE,',
'        CITY,',
'        CHANGE_DATE_REASON,',
'        LUGGAGE,',
'        case when JOINING = ''Y'' then ''Yes'' ',
'             when JOINING = ''N'' then ''No'' ',
'             else '''' end JOINING,',
'        JOINING_DATE,',
'        COUNT_PETS,         ',
'        case when PET1_INFO is not null then REPLACE(PET1_INFO,''"'', ''&quot;'') end PET1_INFO,',
'        case when PET2_INFO is not null then REPLACE(PET2_INFO,''"'', ''&quot;'') end PET2_INFO,',
'        case when PET3_INFO is not null then REPLACE(PET3_INFO,''"'', ''&quot;'') end PET3_INFO,',
'        INDIVIDUAL_DEPARTURE_DATE SHLICHUT_END_DATE,',
'        case when ARRIVAL_DATE_APPROVED = ''Y'' then ''Yes'' ',
'             when ARRIVAL_DATE_APPROVED = ''N'' then ''No'' end ARRIVAL_DATE_APPROVED,',
'        case when ARRIVAL_DATE_APPROVED = ''N'' then REQUESTED_ARRIVAL_DATE || chr(10) || CHANGE_DATE_REASON end ARRIVAL_DATE_APPROVED_TITLE',
'from JAFI_FLIGHT_PASSPORT_INFO_MV v',
'where v.ASSIGNMENT_ID = :P4_ASSIGNMENT_ID and  v.PERSON_ID = :P4_PERSON_ID   and (NVL(:P4_REQUEST_ID,1) = 1  OR :P4_REQUEST_ID = v.request_id);'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P4_ASSIGNMENT_ID,P4_PERSON_ID,P4_REQUEST_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P4_PROCESS_STARTED = ''Y'' and :P4_MASLUL in (''SSH'', ''LTS'')'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(1434535802532498435)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_show_detail_link=>'N'
,p_owner=>'DRORA'
,p_internal_uid=>1122427220557804036
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434535668208498434)
,p_db_column_name=>'PET1_INFO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Pet1 Info'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434535524336498433)
,p_db_column_name=>'PET2_INFO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Pet2 Info'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434535457359498432)
,p_db_column_name=>'PET3_INFO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Pet3 Info'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434535329895498431)
,p_db_column_name=>'FLIGHT_REMARKS_APPLICANT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Applicant Remarks'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>503
,p_default_id_offset=>2556963023090302471
,p_default_owner=>'APPS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434535277580498430)
,p_db_column_name=>'FLIGHTS_REMARKS_MASLUL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Maslul Remarks'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434535154394498429)
,p_db_column_name=>'COUNTRY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Country'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434535044169498428)
,p_db_column_name=>'STATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'State'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434534941270498427)
,p_db_column_name=>'CITY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'City'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434534853857498426)
,p_db_column_name=>'CHANGE_DATE_REASON'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Change Date Reason'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434534745608498425)
,p_db_column_name=>'LUGGAGE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Luggage'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>':P4_MASLUL = ''LTS'' or 1=1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434534650822498424)
,p_db_column_name=>'JOINING'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Separated'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>':P4_MASLUL = ''LTS'' or 1=1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434534617790498423)
,p_db_column_name=>'JOINING_DATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Joining Date'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>':P4_MASLUL = ''LTS'' or 1=1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434534434788498422)
,p_db_column_name=>'COUNT_PETS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Pets'
,p_column_html_expression=>'<span class="pets-span" style="width: 100%; line-height: 35px; display: block;" title="#PET1_INFO#&#013;&#013;#PET2_INFO#&#013;&#013;#PET3_INFO#">#COUNT_PETS#</span>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>':P4_MASLUL = ''LTS'' or 1=1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1434534361247498421)
,p_db_column_name=>'ARRIVAL_DATE_APPROVED_TITLE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Arrival Date Approved Title'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433138575739610270)
,p_db_column_name=>'SHLICHUT_END_DATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Shlichut End Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433138450369610269)
,p_db_column_name=>'ARRIVAL_DATE_APPROVED'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Arrival Date Approved'
,p_column_html_expression=>'<span class="arrival-date-approved-span" style="width: 100%; line-height: 35px; display: block;" title="#ARRIVAL_DATE_APPROVED_TITLE#">#ARRIVAL_DATE_APPROVED#</span>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1433039133155571404)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'11239239'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COUNTRY:STATE:CITY:ARRIVAL_DATE_APPROVED:JOINING:JOINING_DATE:LUGGAGE:COUNT_PETS:FLIGHT_REMARKS_APPLICANT:FLIGHTS_REMARKS_MASLUL:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1433138361902610268)
,p_plug_name=>'Requested Flight Info SC'
,p_parent_plug_id=>wwv_flow_api.id(1538070378063182334)
,p_region_css_classes=>'requestedFlightInfo'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:margin-top-sm:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(119978609050743302)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--GET GENERAL INFORMATION',
'select MAIN_AIRPORT_CODE, MAIN_AIRPORT,',
'       case when MAIN_AIRPORT_CODE is not null then MAIN_AIRPORT_CODE || '' - '' || MAIN_AIRPORT',
'            when MAIN_AIRPORT is not null then MAIN_AIRPORT else '''' end as MAIN_AIRPORT_FORMATTED,',
'       SEC_AIRPORT_CODE, SEC_AIRPORT,',
'       case when SEC_AIRPORT_CODE is not null then SEC_AIRPORT_CODE || '' - '' || SEC_AIRPORT ',
'            when SEC_AIRPORT is not null then SEC_AIRPORT else '''' end as SEC_AIRPORT_FORMATTED,',
'       case when DEPARTURE_AIRPORT_CODE is not null then DEPARTURE_AIRPORT_CODE || '' - '' || DEPARTURE_AIRPORT else DEPARTURE_AIRPORT end DEPARTURE_AIRPORT,',
'       INDIVIDUAL_ARRIVAL_DATE,',
'       CAMP_ARRIVAL_TIME,',
'       CAMP_ARRIVAL_DATE,',
'       REQUESTED_RETURN_DATE,',
'       MEAL,',
'       case when flight_remarks_applicant is not null and length(flight_remarks_applicant) > 0 ',
'             then ''<span class="fa fa-comment-o remarks-span" title="'' || flight_remarks_applicant || ''"></span>''',
'             else ''''',
'        end flight_remarks_applicant,',
'        case when flights_remarks_maslul is not null and length(flights_remarks_maslul) > 0 ',
'             then ''<span class="fa fa-comment-o remarks-span" title="'' || flights_remarks_maslul || ''"></span>''',
'             else ''''',
'        end flights_remarks_maslul,',
'        decode(maslul_short_name, ''SC'', nvl(TO_CHAR(TO_DATE(v.CAMP_ARRIVAL_TIME, ''HH AM''), ''HH24:MI''), ''''), v.CAMP_ARRIVAL_TIME) AS DEPARTURE_TIME,',
'        INDIVIDUAL_DEPARTURE_DATE SHLICHUT_END_DATE,',
'        CAMP_NAME,',
'        COUNTRY,',
'        STATE,',
'        CITY,',
'        PREFERRED_ARRIVAL_TIME,',
'        case when maslul_short_name = ''LTS'' and ARRIVAL_DATE_APPROVED = ''Y'' then ''Yes'' ',
'             when maslul_short_name = ''LTS'' and ARRIVAL_DATE_APPROVED = ''N'' then ''No'' else '''' end ARRIVAL_DATE_APPROVED,',
'        case when maslul_short_name = ''LTS'' and ARRIVAL_DATE_APPROVED = ''N'' then REQUESTED_ARRIVAL_DATE || chr(10) || CHANGE_DATE_REASON end ARRIVAL_DATE_APPROVED_TITLE,',
'        case when maslul_short_name = ''LTS'' then REQUESTED_ARRIVAL_DATE end REQUESTED_ARRIVAL_DATE,',
'        case when maslul_short_name = ''LTS'' then CHANGE_DATE_REASON end CHANGE_DATE_REASON,',
'        case when maslul_short_name = ''LTS'' then LUGGAGE end LUGGAGE,',
'        case when maslul_short_name = ''LTS'' and JOINING = ''Y'' then ''Yes'' ',
'             when maslul_short_name = ''LTS'' and JOINING = ''N'' then ''No'' else '''' end JOINING,',
'        case when maslul_short_name = ''LTS'' then JOINING_DATE end JOINING_DATE,',
'        case when maslul_short_name = ''LTS'' then COUNT_PETS end COUNT_PETS,         ',
'        case when maslul_short_name = ''LTS'' then REPLACE(PET1_INFO,''"'', ''&quot;'') end PET1_INFO,',
'        case when maslul_short_name = ''LTS'' then REPLACE(PET2_INFO,''"'', ''&quot;'') end PET2_INFO,',
'        case when maslul_short_name = ''LTS'' then REPLACE(PET3_INFO,''"'', ''&quot;'') end PET3_INFO,',
'        maslul_short_name',
'from JAFI_FLIGHT_PASSPORT_INFO_MV v',
'where v.ASSIGNMENT_ID = :P4_ASSIGNMENT_ID and  v.PERSON_ID = :P4_PERSON_ID   and (NVL(:P4_REQUEST_ID,1) = 1  OR :P4_REQUEST_ID = v.request_id);'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P4_ASSIGNMENT_ID,P4_PERSON_ID,P4_REQUEST_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P4_PROCESS_STARTED = ''Y'' and :P4_MASLUL not in (''SSH'',''LTS'')'
,p_plug_header=>'<p style="font-weight: bold; color: red; font-size: 14px; margin: 0;">Requested Flight Info</p>'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(1433138311981610267)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_show_detail_link=>'N'
,p_owner=>'DRORA'
,p_internal_uid=>1123824711108692204
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433138147472610266)
,p_db_column_name=>'MAIN_AIRPORT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Main Airport'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'MAIN_AIRPORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433138058639610265)
,p_db_column_name=>'ARRIVAL_DATE_APPROVED'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Arrival Date Approved'
,p_column_html_expression=>'<span class="arrival-date-approved-span" style="width: 100%; line-height: 35px; display: block;" title="#ARRIVAL_DATE_APPROVED_TITLE#">#ARRIVAL_DATE_APPROVED#</span>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>':P4_MASLUL = ''LTS'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433137967917610264)
,p_db_column_name=>'REQUESTED_ARRIVAL_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Requested Arrival Date'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433137835995610263)
,p_db_column_name=>'CHANGE_DATE_REASON'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Change Date Reason'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433137724144610262)
,p_db_column_name=>'LUGGAGE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Luggage'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>':P4_MASLUL = ''LTS'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433137638490610261)
,p_db_column_name=>'JOINING'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Separated'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>':P4_MASLUL = ''LTS'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433137616904610260)
,p_db_column_name=>'JOINING_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Joining Date'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>':P4_MASLUL = ''LTS'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433137438503610259)
,p_db_column_name=>'COUNT_PETS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Pets'
,p_column_html_expression=>'<span class="pets-span" style="width: 100%; line-height: 35px; display: block;" title="#PET1_INFO#&#013;&#013;#PET2_INFO#&#013;&#013;#PET3_INFO#">#COUNT_PETS#</span>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>':P4_MASLUL = ''LTS'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433137394478610258)
,p_db_column_name=>'PET1_INFO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Pet1 Info'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433137227263610257)
,p_db_column_name=>'PET2_INFO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Pet2 Info'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433137213901610256)
,p_db_column_name=>'PET3_INFO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Pet3 Info'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433137060031610255)
,p_db_column_name=>'ARRIVAL_DATE_APPROVED_TITLE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Arrival Date Approved Title'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433136987541610254)
,p_db_column_name=>'MASLUL_SHORT_NAME'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Maslul Short Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433136911851610253)
,p_db_column_name=>'MAIN_AIRPORT_CODE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Main Airport Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433136762187610252)
,p_db_column_name=>'MAIN_AIRPORT_FORMATTED'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Main Airport'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433136637112610251)
,p_db_column_name=>'SEC_AIRPORT_CODE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Sec Airport Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433136561491610250)
,p_db_column_name=>'SEC_AIRPORT_FORMATTED'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Sec Airport'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433136468976610249)
,p_db_column_name=>'SEC_AIRPORT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Sec Airport'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'SEC_AIRPORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433136394690610248)
,p_db_column_name=>'DEPARTURE_AIRPORT'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Departure Airport'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'DEPARTURE_AIRPORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433136300949610247)
,p_db_column_name=>'CAMP_ARRIVAL_TIME'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Camp Arrival Time'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433136130905610246)
,p_db_column_name=>'CAMP_ARRIVAL_DATE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Camp Arrival Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433136085923610245)
,p_db_column_name=>'MEAL'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Meal'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'MEAL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433135975235610244)
,p_db_column_name=>'FLIGHT_REMARKS_APPLICANT'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Applicant Remarks'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433135915340610243)
,p_db_column_name=>'FLIGHTS_REMARKS_MASLUL'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Maslul Remarks'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433135783531610242)
,p_db_column_name=>'CAMP_NAME'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Camp'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433135677717610241)
,p_db_column_name=>'SHLICHUT_END_DATE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Shlichut End Date'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'SHLICHUT_END_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433135570548610240)
,p_db_column_name=>'DEPARTURE_TIME'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Departure Time'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'DEPARTURE_TIME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433135473571610239)
,p_db_column_name=>'COUNTRY'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Country'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433135404729610238)
,p_db_column_name=>'STATE'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'State'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433135235958610237)
,p_db_column_name=>'CITY'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'City'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433135171030610236)
,p_db_column_name=>'PREFERRED_ARRIVAL_TIME'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Preferred Arrival Time'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433135066364610235)
,p_db_column_name=>'INDIVIDUAL_ARRIVAL_DATE'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Arrival Date'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1433134956531610234)
,p_db_column_name=>'REQUESTED_RETURN_DATE'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Requested Return Date'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1433099017219601434)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'11238641'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CAMP_NAME:ARRIVAL_DATE_APPROVED:MAIN_AIRPORT_FORMATTED:SEC_AIRPORT_FORMATTED:LUGGAGE:JOINING:JOINING_DATE:COUNT_PETS:INDIVIDUAL_ARRIVAL_DATE:PREFERRED_ARRIVAL_TIME:DEPARTURE_AIRPORT:REQUESTED_RETURN_DATE:DEPARTURE_TIME:MEAL:SHLICHUT_END_DATE:COUNTRY:'
||'STATE:CITY:FLIGHT_REMARKS_APPLICANT:FLIGHTS_REMARKS_MASLUL:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(667357409013199626)
,p_plug_name=>'Flight Legs'
,p_region_name=>'flightLegsGrid'
,p_parent_plug_id=>wwv_flow_api.id(1538070378063182334)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(119978609050743302)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--GET FLIGHT DATA',
'select  ROWNUM idx,',
'        ac.n001 assignment_id,',
'        ac.n002 person_id,',
'        ac.c001 direction_code,',
'        ac.c002 Leg_code,',
'        ac.c001 direction,',
'        ac.c002 Leg,',
'        ac.c003 airline, ',
'        ac.c004 flight_number, ',
'        ac.c005 departure_airport, ',
'        ac.c006 departure_date, ',
'        ac.c007 departure_time, ',
'        ac.c008 destination_airport, ',
'        ac.c009 arrival_date, ',
'        ac.c010 arrival_time, ',
'        ac.c011 meal',
'from    apex_collections ac ',
'where   ac.collection_name = ''FLIGHT_LEGS'' and ac.n001 = :P4_ASSIGNMENT_ID and ac.n002 = :P4_PERSON_ID; ',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P4_ASSIGNMENT_ID,P4_PERSON_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'(:P4_USER_TYPE = ''T'' and :P4_STATUS in (''1'',''4'')) or :P4_EDIT_FLIGHT_LEGS = ''Y'''
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Flight Legs'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_plug_header=>'<p style="font-weight: bold; color: red; font-size: 14px; margin: 0;">Offer for Requested Flight</p>'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(674151849198946699)
,p_name=>'DIRECTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DIRECTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Direction'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'direction-col'
,p_stretch=>'N'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Outbound;O,Inbound;I'
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(674152001779946700)
,p_name=>'LEG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Leg'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'leg-col'
,p_stretch=>'N'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:1st Leg;1,2nd Leg;2,3rd Leg;3,4th Leg;4'
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(674152057275946701)
,p_name=>'DEPARTURE_AIRPORT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPARTURE_AIRPORT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Departure Airport'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(642249824757209932)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(674152179429946702)
,p_name=>'DESTINATION_AIRPORT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESTINATION_AIRPORT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Destination Airport'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(642249824757209932)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(674152249784946703)
,p_name=>'FLIGHT_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLIGHT_NUMBER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Flight Number'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>503
,p_default_id_offset=>2556963023090302471
,p_default_owner=>'APPS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(674152412680946704)
,p_name=>'AIRLINE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AIRLINE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Airline'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(642149691990218569)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(674152501338946705)
,p_name=>'DEPARTURE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPARTURE_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Departure Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_02=>'&P4_TODAY.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_format_mask=>'DD/MM/YYYY'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(674152618093946706)
,p_name=>'DEPARTURE_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPARTURE_TIME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Departure Time'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(674152716720946707)
,p_name=>'ARRIVAL_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ARRIVAL_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Arrival Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attribute_02=>'&P4_TODAY.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_format_mask=>'DD/MM/YYYY'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(674152781449946708)
,p_name=>'ARRIVAL_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ARRIVAL_TIME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Arrival Time'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(674152893526946709)
,p_name=>'MEAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MEAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Meal'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(642349643917984329)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(674153058667946711)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_display_condition_type=>'NEVER'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(674153151994946712)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_03=>'Y'
,p_display_condition_type=>'NEVER'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(674153520598946715)
,p_name=>'PERSON_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERSON_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(674153604984946716)
,p_name=>'ASSIGNMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASSIGNMENT_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(685650374929334277)
,p_name=>'IDX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IDX'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(729764329696698294)
,p_name=>'DELETE'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'CENTER'
,p_attribute_01=>'<span class="fa fa-trash-o delete-leg" data-idx="&IDX." data-direction="&DIRECTION_CODE." data-leg="&LEG_CODE."></span>'
,p_static_id=>'DELETE_LINK'
,p_use_as_row_header=>false
,p_enable_hide=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(729764407107698295)
,p_name=>'DIRECTION_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DIRECTION_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(729764521501698296)
,p_name=>'LEG_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEG_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(674151685047946697)
,p_internal_uid=>905118750338878721
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_no_data_found_message=>'No Flight Legs Defined'
,p_show_toolbar=>true
,p_toolbar_buttons=>null
,p_add_button_label=>'Add Flight Leg'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*function(config) {',
'    config.initActions = function(actions) {',
'        // Save the original add-row action',
'        var originalAddRow = actions.lookup("selection-add-row").action;',
'',
'        // Replace the action with a custom function',
'        actions.lookup("selection-add-row").action = function(event, element) {',
'            var widget = apex.region("flightLegsGrid").widget();',
'            var model = widget.interactiveGrid("getViews").grid.model;',
'            var outboundCount = model._data.filter((leg) => leg[0].v == ''O'').length;',
'            var inboundCount = model._data.filter((leg) => leg[0].v == ''I'').length;',
'            var errorFound = false;',
'            if (outboundCount + inboundCount == 8) {',
'                apex.message.alert("Cannot add more than 8 legs");',
'                errorFound = true;',
'            }',
'            ',
'            if (errorFound === true) return;',
'            else originalAddRow(event, element);',
'        };',
'    };',
'    return config;',
'}*/',
'',
'function(config) {',
'    config.initActions = function(actions) {',
'        // Save the original add-row action',
'        var originalAddRow = actions.lookup("selection-add-row").action;',
'',
'        // Replace the action with a custom function',
'        actions.lookup("selection-add-row").action = function(event, element) {',
'            var widget = apex.region("flightLegsGrid").widget();',
'            var grid = widget.interactiveGrid("getViews").grid;',
'            var model = grid.model;',
'            var lastRow$ = grid.view$.find(".a-GV-row").last();',
'            grid.view$.grid("setSelection", lastRow$);',
'            var outboundCount = model._data.filter((leg) => leg[0].v == ''O'').length;',
'            var inboundCount = model._data.filter((leg) => leg[0].v == ''I'').length;',
'            var errorFound = false;',
'            if (outboundCount + inboundCount == 8) {',
'                apex.message.alert("Cannot add more than 8 legs");',
'                errorFound = true;',
'            }',
'            ',
'            if (errorFound === true) return;',
'            else originalAddRow(event, element);',
'        };',
'    };',
'    return config;',
'}'))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(681550812604519219)
,p_interactive_grid_id=>wwv_flow_api.id(674151685047946697)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(681550904227519219)
,p_report_id=>wwv_flow_api.id(681550812604519219)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(681551846729519209)
,p_view_id=>wwv_flow_api.id(681550904227519219)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(674151849198946699)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(681552386339519206)
,p_view_id=>wwv_flow_api.id(681550904227519219)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(674152001779946700)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>65
,p_sort_order=>2
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(681552905782519204)
,p_view_id=>wwv_flow_api.id(681550904227519219)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(674152057275946701)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>262
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(681553415243519201)
,p_view_id=>wwv_flow_api.id(681550904227519219)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(674152179429946702)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>253
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(681553840274519198)
,p_view_id=>wwv_flow_api.id(681550904227519219)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(674152249784946703)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(681554393858519195)
,p_view_id=>wwv_flow_api.id(681550904227519219)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(674152412680946704)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>245
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(681554908216519193)
,p_view_id=>wwv_flow_api.id(681550904227519219)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(674152501338946705)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(681555427620519190)
,p_view_id=>wwv_flow_api.id(681550904227519219)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(674152618093946706)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(681555925945519188)
,p_view_id=>wwv_flow_api.id(681550904227519219)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(674152716720946707)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(681556414658519186)
,p_view_id=>wwv_flow_api.id(681550904227519219)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(674152781449946708)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(681556838826519183)
,p_view_id=>wwv_flow_api.id(681550904227519219)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(674152893526946709)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(681563491838508870)
,p_view_id=>wwv_flow_api.id(681550904227519219)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(674153058667946711)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(681652525174488732)
,p_view_id=>wwv_flow_api.id(681550904227519219)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(674153520598946715)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(681850714648405597)
,p_view_id=>wwv_flow_api.id(681550904227519219)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(674153604984946716)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(685656407026334076)
,p_view_id=>wwv_flow_api.id(681550904227519219)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(685650374929334277)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(730557266188204722)
,p_view_id=>wwv_flow_api.id(681550904227519219)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(729764329696698294)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(730957606761178184)
,p_view_id=>wwv_flow_api.id(681550904227519219)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(729764407107698295)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(730958061872178178)
,p_view_id=>wwv_flow_api.id(681550904227519219)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(729764521501698296)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(721158097711152680)
,p_plug_name=>'Flight Legs'
,p_region_name=>'flightLegsReport'
,p_parent_plug_id=>wwv_flow_api.id(1538070378063182334)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(119978609050743302)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--GET FLIGHT DATA',
'select  ROWNUM idx,',
'        ac.n001 assignment_id,',
'        ac.n002 person_id,',
'        case when ac.c001 = ''O'' then ''Outbound'' when ac.c001 = ''I'' then ''Inbound'' end direction,',
'        ac.c001 direction_code,',
'        case when ac.c002 = ''1'' then ''1st Leg'' when ac.c002 = ''2'' then ''2nd Leg''',
'             when ac.c002 = ''3'' then ''3rd Leg'' when ac.c002 = ''4'' then ''4th Leg''',
'        end leg,',
'        ac.c002 leg_code,',
'        HR_GENERAL.DECODE_LOOKUP(''JAFI_HR_SC_AIRLINES'',ac.c003) airline, ',
'        ac.c003 airline_code,',
'        ac.c004 flight_number, ',
'        --ac.c005 || '' - '' || HR_GENERAL.DECODE_LOOKUP(''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'',ac.c005) departure_airport, ',
'        ac.c005 departure_airport,',
'        ac.c005 departure_airport_code,',
'        ac.c006 departure_date, ',
'        ac.c007 departure_time, ',
'        --ac.c008 || '' - '' || HR_GENERAL.DECODE_LOOKUP(''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'',ac.c008) destination_airport, ',
'        ac.c008 destination_airport,',
'        ac.c008 destination_airport_code, ',
'        ac.c009 arrival_date, ',
'        ac.c010 arrival_time, ',
'        HR_GENERAL.DECODE_LOOKUP(''JAFI_HR_SC_MEAL_FA'',ac.c011) meal,',
'        ac.c011 meal_code',
'from    apex_collections ac ',
'where   ac.collection_name = ''FLIGHT_LEGS'' and ac.n001 = :P4_ASSIGNMENT_ID and ac.n002 = :P4_PERSON_ID  ',
'order by ac.c001 desc, ac.c002 asc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P4_ASSIGNMENT_ID,P4_PERSON_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'(:P4_USER_TYPE = ''M'' or (:P4_USER_TYPE = ''T'' and :P4_STATUS not in (''1'',''4''))) and :P4_EDIT_FLIGHT_LEGS is null'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Flight Legs'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex; align-items: end;">',
'    <p style="font-weight: bold; color: red; font-size: 14px; margin: 0;">Offer for Requested Flight</p>',
'    <span style="flex-grow: 1;"></span>',
'    <button class="t-Button t-Button--icon t-Button--iconLeft lto1134360046385065013_0 t-Button--hot" onclick="void(0);" type="button" id="editFlightLegsBtn" style="display: none; margin-bottom: 7px;">',
'        <span class="t-Icon t-Icon--left fa fa-pencil" aria-hidden="true"></span>',
'        <span class="t-Button-label">Edit Flight Legs</span>',
'        <span class="t-Icon t-Icon--right fa fa-pencil" aria-hidden="true"></span>',
'    </button>',
'</div>',
'',
''))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(721159958886152699)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'Waiting for agency offer...'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_owner=>'DRORA'
,p_internal_uid=>952127024177084723
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(721160100759152700)
,p_db_column_name=>'IDX'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Idx'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(721160192123152701)
,p_db_column_name=>'ASSIGNMENT_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Assignment Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(721160268036152702)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Person Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(801862008690360509)
,p_db_column_name=>'DIRECTION_CODE'
,p_display_order=>40
,p_column_identifier=>'O'
,p_column_label=>'Direction Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(721160388347152703)
,p_db_column_name=>'DIRECTION'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Direction'
,p_column_html_expression=>'<div data-idx="#IDX#" data-code="#DIRECTION_CODE#">#DIRECTION#</div>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'DIRECTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(801862074342360510)
,p_db_column_name=>'LEG_CODE'
,p_display_order=>60
,p_column_identifier=>'P'
,p_column_label=>'Leg Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(721160525011152704)
,p_db_column_name=>'LEG'
,p_display_order=>70
,p_column_identifier=>'E'
,p_column_label=>'Leg'
,p_column_html_expression=>'<div data-idx="#IDX#" data-code="#LEG_CODE#">#LEG#</div>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'LEG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(801862152987360511)
,p_db_column_name=>'AIRLINE_CODE'
,p_display_order=>80
,p_column_identifier=>'Q'
,p_column_label=>'Airline Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(721160555434152705)
,p_db_column_name=>'AIRLINE'
,p_display_order=>90
,p_column_identifier=>'F'
,p_column_label=>'Airline'
,p_column_html_expression=>'<div data-idx="#IDX#" data-code="#AIRLINE_CODE#">#AIRLINE#</div>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'AIRLINE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(721160647484152706)
,p_db_column_name=>'FLIGHT_NUMBER'
,p_display_order=>100
,p_column_identifier=>'G'
,p_column_label=>'Flight Number'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'FLIGHT_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(801862243656360512)
,p_db_column_name=>'DEPARTURE_AIRPORT_CODE'
,p_display_order=>110
,p_column_identifier=>'R'
,p_column_label=>'Departure Airport Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(721160803785152707)
,p_db_column_name=>'DEPARTURE_AIRPORT'
,p_display_order=>120
,p_column_identifier=>'H'
,p_column_label=>'Departure Airport'
,p_column_html_expression=>'<div data-idx="#IDX#" data-code="#DEPARTURE_AIRPORT_CODE#">#DEPARTURE_AIRPORT#</div>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'DEPARTURE_AIRPORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(721160839935152708)
,p_db_column_name=>'DEPARTURE_DATE'
,p_display_order=>130
,p_column_identifier=>'I'
,p_column_label=>'Departure Date'
,p_column_html_expression=>'<div data-idx="#IDX#">#DEPARTURE_DATE#</div>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'DEPARTURE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(721160950825152709)
,p_db_column_name=>'DEPARTURE_TIME'
,p_display_order=>140
,p_column_identifier=>'J'
,p_column_label=>'Departure Time'
,p_column_html_expression=>'<div data-idx="#IDX#">#DEPARTURE_TIME#</div>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'DEPARTURE_TIME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(801862389102360513)
,p_db_column_name=>'DESTINATION_AIRPORT_CODE'
,p_display_order=>150
,p_column_identifier=>'S'
,p_column_label=>'Destination Airport Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(721161097444152710)
,p_db_column_name=>'DESTINATION_AIRPORT'
,p_display_order=>160
,p_column_identifier=>'K'
,p_column_label=>'Destination Airport'
,p_column_html_expression=>'<div data-idx="#IDX#" data-code="#DESTINATION_AIRPORT_CODE#">#DESTINATION_AIRPORT#</div>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'DESTINATION_AIRPORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(721161142990152711)
,p_db_column_name=>'ARRIVAL_DATE'
,p_display_order=>170
,p_column_identifier=>'L'
,p_column_label=>'Arrival Date'
,p_column_html_expression=>'<div data-idx="#IDX#">#ARRIVAL_DATE#</div>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'ARRIVAL_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(721161267363152712)
,p_db_column_name=>'ARRIVAL_TIME'
,p_display_order=>180
,p_column_identifier=>'M'
,p_column_label=>'Arrival Time'
,p_column_html_expression=>'<div data-idx="#IDX#">#ARRIVAL_TIME#</div>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'ARRIVAL_TIME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(801862494396360514)
,p_db_column_name=>'MEAL_CODE'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>'Meal Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(721161367644152713)
,p_db_column_name=>'MEAL'
,p_display_order=>200
,p_column_identifier=>'N'
,p_column_label=>'Meal'
,p_column_html_expression=>'<div data-idx="#IDX#" data-code="#MEAL_CODE#">#MEAL#</div>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'MEAL'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(722962014482869082)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9539291'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IDX:ASSIGNMENT_ID:PERSON_ID:DIRECTION:LEG:AIRLINE:FLIGHT_NUMBER:DEPARTURE_AIRPORT:DEPARTURE_DATE:DEPARTURE_TIME:DESTINATION_AIRPORT:ARRIVAL_DATE:ARRIVAL_TIME:MEAL:DIRECTION_CODE:LEG_CODE:AIRLINE_CODE:DEPARTURE_AIRPORT_CODE:DESTINATION_AIRPORT_CODE:ME'
||'AL_CODE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1540869485045099020)
,p_plug_name=>'Flight Info'
,p_parent_plug_id=>wwv_flow_api.id(1538070378063182334)
,p_region_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1560103174128378846)
,p_plug_name=>'Fields'
,p_region_name=>'fieldsRegion'
,p_parent_plug_id=>wwv_flow_api.id(1540869485045099020)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1546777611227147004)
,p_plug_name=>'Buttons and Actions'
,p_region_name=>'buttonsRegion'
,p_parent_plug_id=>wwv_flow_api.id(1538070378063182334)
,p_region_template_options=>'#DEFAULT#:margin-top-sm'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1659931909726341531)
,p_plug_name=>'&nbsp;'
,p_region_name=>'remarksDialog'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_api.id(119978609050743300)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY_1'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1863488623870215008)
,p_plug_name=>'Import Template'
,p_region_name=>'importTemplateIR'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="display: none"'
,p_plug_template=>wwv_flow_api.id(119978609050743302)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    vf.last_name || '' '' || vf.first_name AS Name,',
'    vf.camp_name camp_customer,',
'    vf.national_id,',
'    (select ATTRIBUTE4 from FND_LOOKUP_VALUES m',
'     where m.LOOKUP_TYPE= ''JAFI_SHLICHUT_FLIGHTS_USERS'' and m.LANGUAGE = ''US'' and ATTRIBUTE1 = ''T'' and lookup_code = f.agent_name) handling_agent,',
'    f.OFFERTIME offer_expiration_in_hours,',
'    f.pnr_number pnr_number,',
'    f.flight_cost flight_cost,',
'    f.BOOKING_FEE booking_fee,',
'    case when :P4_USER_TYPE = ''M'' then f.MARKUP else null end markup_cost,',
'    case when :P4_USER_TYPE = ''M'' then (',
'        case when f.flight_cost_for_billing is not null then to_number(f.flight_cost_for_billing) else nvl(f.flight_cost, 0) + nvl(f.MARKUP, 0) + nvl(f.BOOKING_FEE, 18) end',
'    ) else null end flight_cost_for_billing,',
'    f.PASSANGERS_COST passengers_cost,',
'    '''' agency_remarks,',
'    ',
'    f.to_seg1_airline outbound1_airline,',
'    f.to_seg1_flight_number outbound1_flight_number,',
'    f.to_seg1_departure_airport outbound1_departure_airport,',
'    f.to_seg1_departure_date outbound1_departure_date,',
'    f.to_seg1_departure_time outbound1_departure_time,',
'    f.to_seg1_destination_airport outbound1_destination_airport,',
'    f.to_seg1_arrival_date outbound1_arrival_date,',
'    f.to_seg1_arrival_time outbound1_arrival_time,',
'    --f.to_seg1_meal outbound1_meal,',
'    ',
'    f.to_seg2_airline outbound2_airline,',
'    f.to_seg2_flight_number outbound2_flight_number,',
'    f.to_seg2_departure_airport outbound2_departure_airport,',
'    f.to_seg2_departure_date outbound2_departure_date,',
'    f.to_seg2_departure_time outbound2_departure_time,',
'    f.to_seg2_destination_airport outbound2_destination_airport,',
'    f.to_seg2_arrival_date outbound2_arrival_date,',
'    f.to_seg2_arrival_time outbound2_arrival_time,',
'    --f.to_seg2_meal outbound2_meal,',
'    ',
'    f.to_seg3_airline outbound3_airline,',
'    f.to_seg3_flight_number outbound3_flight_number,',
'    f.to_seg3_departure_airport outbound3_departure_airport,',
'    f.to_seg3_departure_date outbound3_departure_date,',
'    f.to_seg3_departure_time outbound3_departure_time,',
'    f.to_seg3_destination_airport outbound3_destination_airport,',
'    f.to_seg3_arrival_date outbound3_arrival_date,',
'    f.to_seg3_arrival_time outbound3_arrival_time,',
'    --f.to_seg3_meal outbound3_meal,',
'    ',
'    f.to_seg4_airline outbound4_airline,',
'    f.to_seg4_flight_number outbound4_flight_number,',
'    f.to_seg4_departure_airport outbound4_departure_airport,',
'    f.to_seg4_departure_date outbound4_departure_date,',
'    f.to_seg4_departure_time outbound4_departure_time,',
'    f.to_seg4_destination_airport outbound4_destination_airport,',
'    f.to_seg4_arrival_date outbound4_arrival_date,',
'    f.to_seg4_arrival_time outbound4_arrival_time,',
'    --f.to_seg4_meal outbound4_meal,',
'    ',
'	f.from_seg1_airline inbound1_airline,',
'    f.from_seg1_flight_number inbound1_flight_number,',
'    f.from_seg1_departure_airport inbound1_departure_airport,',
'    f.from_seg1_departure_date inbound1_departure_date,',
'    f.from_seg1_departure_time inbound1_departure_time,',
'    f.from_seg1_destination_airport inbound1_destination_airport,',
'    f.from_seg1_arrival_date inbound1_arrival_date,',
'    f.from_seg1_arrival_time inbound1_arrival_time,',
'    --f.from_seg1_meal inbound1_meal,',
'    ',
'    f.from_seg2_airline inbound2_airline,',
'    f.from_seg2_flight_number inbound2_flight_number,',
'    f.from_seg2_departure_airport inbound2_departure_airport,',
'    f.from_seg2_departure_date inbound2_departure_date,',
'    f.from_seg2_departure_time inbound2_departure_time,',
'    f.from_seg2_destination_airport inbound2_destination_airport,',
'    f.from_seg2_arrival_date inbound2_arrival_date,',
'    f.from_seg2_arrival_time inbound2_arrival_time,',
'    --f.from_seg2_meal inbound2_meal,',
'    ',
'    f.from_seg3_airline inbound3_airline,',
'    f.from_seg3_flight_number inbound3_flight_number,',
'    f.from_seg3_departure_airport inbound3_departure_airport,',
'    f.from_seg3_departure_date inbound3_departure_date,',
'    f.from_seg3_departure_time inbound3_departure_time,',
'    f.from_seg3_destination_airport inbound3_destination_airport,',
'    f.from_seg3_arrival_date inbound3_arrival_date,',
'    f.from_seg3_arrival_time inbound3_arrival_time,',
'    --f.from_seg3_meal inbound3_meal,',
'    ',
'    f.from_seg4_airline inbound4_airline,',
'    f.from_seg4_flight_number inbound4_flight_number,',
'    f.from_seg4_departure_airport inbound4_departure_airport,',
'    f.from_seg4_departure_date inbound4_departure_date,',
'    f.from_seg4_departure_time inbound4_departure_time,',
'    f.from_seg4_destination_airport inbound4_destination_airport,',
'    f.from_seg4_arrival_date inbound4_arrival_date,',
'    f.from_seg4_arrival_time inbound4_arrival_time--',
'    ---f.from_seg4_meal inbound4_meal',
'from JAFI_FLIGHT_PASSPORT_INFO_MV vf,',
'     jafi_apex_shlichut_flights f',
'where :P4_ASSIGNMENT_ID = vf.assignment_id AND :P4_PERSON_ID = vf.person_id AND ',
'      vf.assignment_id = f.assgt_id and vf.person_id = f.person_id and ',
'      (vf.request_id is null or vf.request_id = f.request_id) and f.status != ''7'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P4_USER_MASLULIM,P4_ASSIGNMENT_ID,P4_PERSON_ID,P4_USER_TYPE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Import Template'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>503
,p_default_id_offset=>2556963023090302471
,p_default_owner=>'APPS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(1863488788058215009)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_csv_output_separator=>','
,p_owner=>'DRORA'
,p_internal_uid=>2094455853349147033
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830659077015922435)
,p_db_column_name=>'NAME'
,p_display_order=>50
,p_column_identifier=>'A'
,p_column_label=>'Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830659422239922433)
,p_db_column_name=>'NATIONAL_ID'
,p_display_order=>120
,p_column_identifier=>'B'
,p_column_label=>'National Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830659816508922432)
,p_db_column_name=>'CAMP_CUSTOMER'
,p_display_order=>130
,p_column_identifier=>'C'
,p_column_label=>'Camp Customer'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830660572276922430)
,p_db_column_name=>'PNR_NUMBER'
,p_display_order=>150
,p_column_identifier=>'E'
,p_column_label=>'Pnr Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830660987131922430)
,p_db_column_name=>'FLIGHT_COST'
,p_display_order=>160
,p_column_identifier=>'F'
,p_column_label=>'Flight Cost'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830662960268922428)
,p_db_column_name=>'OUTBOUND1_AIRLINE'
,p_display_order=>210
,p_column_identifier=>'K'
,p_column_label=>'Outbound1 Airline'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830663394170922427)
,p_db_column_name=>'OUTBOUND1_FLIGHT_NUMBER'
,p_display_order=>220
,p_column_identifier=>'L'
,p_column_label=>'Outbound1 Flight Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830663800597922427)
,p_db_column_name=>'OUTBOUND1_DEPARTURE_AIRPORT'
,p_display_order=>230
,p_column_identifier=>'M'
,p_column_label=>'Outbound1 Departure Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830664179080922427)
,p_db_column_name=>'OUTBOUND1_DEPARTURE_DATE'
,p_display_order=>240
,p_column_identifier=>'N'
,p_column_label=>'Outbound1 Departure Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830664608599922426)
,p_db_column_name=>'OUTBOUND1_DEPARTURE_TIME'
,p_display_order=>250
,p_column_identifier=>'O'
,p_column_label=>'Outbound1 Departure Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830664940448922425)
,p_db_column_name=>'OUTBOUND1_DESTINATION_AIRPORT'
,p_display_order=>260
,p_column_identifier=>'P'
,p_column_label=>'Outbound1 Destination Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830665386875922425)
,p_db_column_name=>'OUTBOUND1_ARRIVAL_DATE'
,p_display_order=>270
,p_column_identifier=>'Q'
,p_column_label=>'Outbound1 Arrival Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830665759644922425)
,p_db_column_name=>'OUTBOUND1_ARRIVAL_TIME'
,p_display_order=>280
,p_column_identifier=>'R'
,p_column_label=>'Outbound1 Arrival Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830666621721922424)
,p_db_column_name=>'OUTBOUND2_AIRLINE'
,p_display_order=>300
,p_column_identifier=>'T'
,p_column_label=>'Outbound2 Airline'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830666965666922423)
,p_db_column_name=>'OUTBOUND2_FLIGHT_NUMBER'
,p_display_order=>310
,p_column_identifier=>'U'
,p_column_label=>'Outbound2 Flight Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830667408732922423)
,p_db_column_name=>'OUTBOUND2_DEPARTURE_AIRPORT'
,p_display_order=>320
,p_column_identifier=>'V'
,p_column_label=>'Outbound2 Departure Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830667805401922423)
,p_db_column_name=>'OUTBOUND2_DEPARTURE_DATE'
,p_display_order=>330
,p_column_identifier=>'W'
,p_column_label=>'Outbound2 Departure Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830668147639922422)
,p_db_column_name=>'OUTBOUND2_DEPARTURE_TIME'
,p_display_order=>340
,p_column_identifier=>'X'
,p_column_label=>'Outbound2 Departure Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830668565724922422)
,p_db_column_name=>'OUTBOUND2_DESTINATION_AIRPORT'
,p_display_order=>350
,p_column_identifier=>'Y'
,p_column_label=>'Outbound2 Destination Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830668961820922422)
,p_db_column_name=>'OUTBOUND2_ARRIVAL_DATE'
,p_display_order=>360
,p_column_identifier=>'Z'
,p_column_label=>'Outbound2 Arrival Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830669384277922421)
,p_db_column_name=>'OUTBOUND2_ARRIVAL_TIME'
,p_display_order=>370
,p_column_identifier=>'AA'
,p_column_label=>'Outbound2 Arrival Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830670177359922420)
,p_db_column_name=>'OUTBOUND3_AIRLINE'
,p_display_order=>390
,p_column_identifier=>'AC'
,p_column_label=>'Outbound3 Airline'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830670543082922420)
,p_db_column_name=>'OUTBOUND3_FLIGHT_NUMBER'
,p_display_order=>400
,p_column_identifier=>'AD'
,p_column_label=>'Outbound3 Flight Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830671007642922420)
,p_db_column_name=>'OUTBOUND3_DEPARTURE_AIRPORT'
,p_display_order=>410
,p_column_identifier=>'AE'
,p_column_label=>'Outbound3 Departure Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830671398737922419)
,p_db_column_name=>'OUTBOUND3_DEPARTURE_DATE'
,p_display_order=>420
,p_column_identifier=>'AF'
,p_column_label=>'Outbound3 Departure Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830671783613922419)
,p_db_column_name=>'OUTBOUND3_DEPARTURE_TIME'
,p_display_order=>430
,p_column_identifier=>'AG'
,p_column_label=>'Outbound3 Departure Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830672234361922419)
,p_db_column_name=>'OUTBOUND3_DESTINATION_AIRPORT'
,p_display_order=>440
,p_column_identifier=>'AH'
,p_column_label=>'Outbound3 Destination Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830672582582922418)
,p_db_column_name=>'OUTBOUND3_ARRIVAL_DATE'
,p_display_order=>450
,p_column_identifier=>'AI'
,p_column_label=>'Outbound3 Arrival Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830672994072922418)
,p_db_column_name=>'OUTBOUND3_ARRIVAL_TIME'
,p_display_order=>460
,p_column_identifier=>'AJ'
,p_column_label=>'Outbound3 Arrival Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830673827981922417)
,p_db_column_name=>'OUTBOUND4_AIRLINE'
,p_display_order=>480
,p_column_identifier=>'AL'
,p_column_label=>'Outbound4 Airline'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830674228264922417)
,p_db_column_name=>'OUTBOUND4_FLIGHT_NUMBER'
,p_display_order=>490
,p_column_identifier=>'AM'
,p_column_label=>'Outbound4 Flight Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830674633396922416)
,p_db_column_name=>'OUTBOUND4_DEPARTURE_AIRPORT'
,p_display_order=>500
,p_column_identifier=>'AN'
,p_column_label=>'Outbound4 Departure Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830675016333922416)
,p_db_column_name=>'OUTBOUND4_DEPARTURE_DATE'
,p_display_order=>510
,p_column_identifier=>'AO'
,p_column_label=>'Outbound4 Departure Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830675344639922416)
,p_db_column_name=>'OUTBOUND4_DEPARTURE_TIME'
,p_display_order=>520
,p_column_identifier=>'AP'
,p_column_label=>'Outbound4 Departure Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830675754082922415)
,p_db_column_name=>'OUTBOUND4_DESTINATION_AIRPORT'
,p_display_order=>530
,p_column_identifier=>'AQ'
,p_column_label=>'Outbound4 Destination Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830676182501922415)
,p_db_column_name=>'OUTBOUND4_ARRIVAL_DATE'
,p_display_order=>540
,p_column_identifier=>'AR'
,p_column_label=>'Outbound4 Arrival Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830676619506922415)
,p_db_column_name=>'OUTBOUND4_ARRIVAL_TIME'
,p_display_order=>550
,p_column_identifier=>'AS'
,p_column_label=>'Outbound4 Arrival Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830677392265922414)
,p_db_column_name=>'INBOUND1_AIRLINE'
,p_display_order=>570
,p_column_identifier=>'AU'
,p_column_label=>'Inbound1 Airline'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830677779484922414)
,p_db_column_name=>'INBOUND1_FLIGHT_NUMBER'
,p_display_order=>580
,p_column_identifier=>'AV'
,p_column_label=>'Inbound1 Flight Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830678184730922413)
,p_db_column_name=>'INBOUND1_DEPARTURE_AIRPORT'
,p_display_order=>590
,p_column_identifier=>'AW'
,p_column_label=>'Inbound1 Departure Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830678615071922413)
,p_db_column_name=>'INBOUND1_DEPARTURE_DATE'
,p_display_order=>600
,p_column_identifier=>'AX'
,p_column_label=>'Inbound1 Departure Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830678988509922412)
,p_db_column_name=>'INBOUND1_DEPARTURE_TIME'
,p_display_order=>610
,p_column_identifier=>'AY'
,p_column_label=>'Inbound1 Departure Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830679362356922412)
,p_db_column_name=>'INBOUND1_DESTINATION_AIRPORT'
,p_display_order=>620
,p_column_identifier=>'AZ'
,p_column_label=>'Inbound1 Destination Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830679774022922412)
,p_db_column_name=>'INBOUND1_ARRIVAL_DATE'
,p_display_order=>630
,p_column_identifier=>'BA'
,p_column_label=>'Inbound1 Arrival Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830680179166922411)
,p_db_column_name=>'INBOUND1_ARRIVAL_TIME'
,p_display_order=>640
,p_column_identifier=>'BB'
,p_column_label=>'Inbound1 Arrival Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830681033339922410)
,p_db_column_name=>'INBOUND2_AIRLINE'
,p_display_order=>660
,p_column_identifier=>'BD'
,p_column_label=>'Inbound2 Airline'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830681385876922410)
,p_db_column_name=>'INBOUND2_FLIGHT_NUMBER'
,p_display_order=>670
,p_column_identifier=>'BE'
,p_column_label=>'Inbound2 Flight Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830681766316922410)
,p_db_column_name=>'INBOUND2_DEPARTURE_AIRPORT'
,p_display_order=>680
,p_column_identifier=>'BF'
,p_column_label=>'Inbound2 Departure Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830682205043922409)
,p_db_column_name=>'INBOUND2_DEPARTURE_DATE'
,p_display_order=>690
,p_column_identifier=>'BG'
,p_column_label=>'Inbound2 Departure Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830682556680922409)
,p_db_column_name=>'INBOUND2_DEPARTURE_TIME'
,p_display_order=>700
,p_column_identifier=>'BH'
,p_column_label=>'Inbound2 Departure Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830682966418922409)
,p_db_column_name=>'INBOUND2_DESTINATION_AIRPORT'
,p_display_order=>710
,p_column_identifier=>'BI'
,p_column_label=>'Inbound2 Destination Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830683397068922408)
,p_db_column_name=>'INBOUND2_ARRIVAL_DATE'
,p_display_order=>720
,p_column_identifier=>'BJ'
,p_column_label=>'Inbound2 Arrival Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830683819028922408)
,p_db_column_name=>'INBOUND2_ARRIVAL_TIME'
,p_display_order=>730
,p_column_identifier=>'BK'
,p_column_label=>'Inbound2 Arrival Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830684630092922408)
,p_db_column_name=>'INBOUND3_AIRLINE'
,p_display_order=>750
,p_column_identifier=>'BM'
,p_column_label=>'Inbound3 Airline'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830684948225922407)
,p_db_column_name=>'INBOUND3_FLIGHT_NUMBER'
,p_display_order=>760
,p_column_identifier=>'BN'
,p_column_label=>'Inbound3 Flight Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830685379572922407)
,p_db_column_name=>'INBOUND3_DEPARTURE_AIRPORT'
,p_display_order=>770
,p_column_identifier=>'BO'
,p_column_label=>'Inbound3 Departure Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830685750994922407)
,p_db_column_name=>'INBOUND3_DEPARTURE_DATE'
,p_display_order=>780
,p_column_identifier=>'BP'
,p_column_label=>'Inbound3 Departure Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830686200959922406)
,p_db_column_name=>'INBOUND3_DEPARTURE_TIME'
,p_display_order=>790
,p_column_identifier=>'BQ'
,p_column_label=>'Inbound3 Departure Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830686546170922406)
,p_db_column_name=>'INBOUND3_DESTINATION_AIRPORT'
,p_display_order=>800
,p_column_identifier=>'BR'
,p_column_label=>'Inbound3 Destination Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830686965538922406)
,p_db_column_name=>'INBOUND3_ARRIVAL_DATE'
,p_display_order=>810
,p_column_identifier=>'BS'
,p_column_label=>'Inbound3 Arrival Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830687392052922405)
,p_db_column_name=>'INBOUND3_ARRIVAL_TIME'
,p_display_order=>820
,p_column_identifier=>'BT'
,p_column_label=>'Inbound3 Arrival Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830688136680922405)
,p_db_column_name=>'INBOUND4_AIRLINE'
,p_display_order=>840
,p_column_identifier=>'BV'
,p_column_label=>'Inbound4 Airline'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830688562656922404)
,p_db_column_name=>'INBOUND4_FLIGHT_NUMBER'
,p_display_order=>850
,p_column_identifier=>'BW'
,p_column_label=>'Inbound4 Flight Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830689010740922404)
,p_db_column_name=>'INBOUND4_DEPARTURE_AIRPORT'
,p_display_order=>860
,p_column_identifier=>'BX'
,p_column_label=>'Inbound4 Departure Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830689392100922404)
,p_db_column_name=>'INBOUND4_DEPARTURE_DATE'
,p_display_order=>870
,p_column_identifier=>'BY'
,p_column_label=>'Inbound4 Departure Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830689827980922403)
,p_db_column_name=>'INBOUND4_DEPARTURE_TIME'
,p_display_order=>880
,p_column_identifier=>'BZ'
,p_column_label=>'Inbound4 Departure Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830690228896922403)
,p_db_column_name=>'INBOUND4_DESTINATION_AIRPORT'
,p_display_order=>890
,p_column_identifier=>'CA'
,p_column_label=>'Inbound4 Destination Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830690632427922402)
,p_db_column_name=>'INBOUND4_ARRIVAL_DATE'
,p_display_order=>900
,p_column_identifier=>'CB'
,p_column_label=>'Inbound4 Arrival Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830690990998922402)
,p_db_column_name=>'INBOUND4_ARRIVAL_TIME'
,p_display_order=>910
,p_column_identifier=>'CC'
,p_column_label=>'Inbound4 Arrival Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830159093775279180)
,p_db_column_name=>'OFFER_EXPIRATION_IN_HOURS'
,p_display_order=>930
,p_column_identifier=>'CF'
,p_column_label=>'Offer Expiration In Hours'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830159191824279181)
,p_db_column_name=>'BOOKING_FEE'
,p_display_order=>940
,p_column_identifier=>'CG'
,p_column_label=>'Booking Fee'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830159246487279182)
,p_db_column_name=>'MARKUP_COST'
,p_display_order=>950
,p_column_identifier=>'CH'
,p_column_label=>'Markup'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830159410007279183)
,p_db_column_name=>'PASSENGERS_COST'
,p_display_order=>960
,p_column_identifier=>'CI'
,p_column_label=>'Passengers Payment'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830160544764279195)
,p_db_column_name=>'AGENCY_REMARKS'
,p_display_order=>970
,p_column_identifier=>'CJ'
,p_column_label=>'Agency Remarks'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(884526871826354383)
,p_db_column_name=>'FLIGHT_COST_FOR_BILLING'
,p_display_order=>980
,p_column_identifier=>'CL'
,p_column_label=>'Flight Cost For Billing'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(884527862792354393)
,p_db_column_name=>'HANDLING_AGENT'
,p_display_order=>990
,p_column_identifier=>'CM'
,p_column_label=>'Handling Agent'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1884684623900412731)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'10616588'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NAME:CAMP_CUSTOMER:NATIONAL_ID:HANDLING_AGENT:OFFER_EXPIRATION_IN_HOURS:PNR_NUMBER:FLIGHT_COST:BOOKING_FEE:MARKUP_COST:FLIGHT_COST_FOR_BILLING:PASSENGERS_COST:AGENCY_REMARKS:OUTBOUND1_AIRLINE:OUTBOUND1_FLIGHT_NUMBER:OUTBOUND1_DEPARTURE_AIRPORT:OUTBOU'
||'ND1_DEPARTURE_DATE:OUTBOUND1_DEPARTURE_TIME:OUTBOUND1_DESTINATION_AIRPORT:OUTBOUND1_ARRIVAL_DATE:OUTBOUND1_ARRIVAL_TIME:OUTBOUND2_AIRLINE:OUTBOUND2_FLIGHT_NUMBER:OUTBOUND2_DEPARTURE_AIRPORT:OUTBOUND2_DEPARTURE_DATE:OUTBOUND2_DEPARTURE_TIME:OUTBOUND2_'
||'DESTINATION_AIRPORT:OUTBOUND2_ARRIVAL_DATE:OUTBOUND2_ARRIVAL_TIME:OUTBOUND3_AIRLINE:OUTBOUND3_FLIGHT_NUMBER:OUTBOUND3_DEPARTURE_AIRPORT:OUTBOUND3_DEPARTURE_DATE:OUTBOUND3_DEPARTURE_TIME:OUTBOUND3_DESTINATION_AIRPORT:OUTBOUND3_ARRIVAL_DATE:OUTBOUND3_A'
||'RRIVAL_TIME:OUTBOUND4_AIRLINE:OUTBOUND4_FLIGHT_NUMBER:OUTBOUND4_DEPARTURE_AIRPORT:OUTBOUND4_DEPARTURE_DATE:OUTBOUND4_DEPARTURE_TIME:OUTBOUND4_DESTINATION_AIRPORT:OUTBOUND4_ARRIVAL_DATE:OUTBOUND4_ARRIVAL_TIME:INBOUND1_AIRLINE:INBOUND1_FLIGHT_NUMBER:IN'
||'BOUND1_DEPARTURE_AIRPORT:INBOUND1_DEPARTURE_DATE:INBOUND1_DEPARTURE_TIME:INBOUND1_DESTINATION_AIRPORT:INBOUND1_ARRIVAL_DATE:INBOUND1_ARRIVAL_TIME:INBOUND2_AIRLINE:INBOUND2_FLIGHT_NUMBER:INBOUND2_DEPARTURE_AIRPORT:INBOUND2_DEPARTURE_DATE:INBOUND2_DEPA'
||'RTURE_TIME:INBOUND2_DESTINATION_AIRPORT:INBOUND2_ARRIVAL_DATE:INBOUND2_ARRIVAL_TIME:INBOUND3_AIRLINE:INBOUND3_FLIGHT_NUMBER:INBOUND3_DEPARTURE_AIRPORT:INBOUND3_DEPARTURE_DATE:INBOUND3_DEPARTURE_TIME:INBOUND3_DESTINATION_AIRPORT:INBOUND3_ARRIVAL_DATE:'
||'INBOUND3_ARRIVAL_TIME:INBOUND4_AIRLINE:INBOUND4_FLIGHT_NUMBER:INBOUND4_DEPARTURE_AIRPORT:INBOUND4_DEPARTURE_DATE:INBOUND4_DEPARTURE_TIME:INBOUND4_DESTINATION_AIRPORT:INBOUND4_ARRIVAL_DATE:INBOUND4_ARRIVAL_TIME:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(673390442135304233)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1546777611227147004)
,p_button_name=>'Make_Offer'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&P4_TXT_MAKE_OFFER.'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P4_BTN_MAKE_OFFER'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-plus'
,p_button_cattributes=>'data-status="1" action-btn'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(673392530622304231)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1546777611227147004)
,p_button_name=>'Maslul_Approval'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&P4_TXT_MASLUL_APPROVAL.'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P4_BTN_MASLUL_APPROVAL'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-edit'
,p_button_cattributes=>'data-status="2" action-btn'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(673390843605304233)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1546777611227147004)
,p_button_name=>'Customer_Approval'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&P4_TXT_CUSTOMER_APPROVAL.'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P4_BTN_CUSTOMER_APPROVAL'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-envelope-o'
,p_button_cattributes=>'data-status="3" action-btn'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(673391241414304232)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(1546777611227147004)
,p_button_name=>'Fix'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&P4_TXT_FIX.'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P4_BTN_FIX'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-tools'
,p_button_cattributes=>'data-status="4" action-btn'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(903394941424133009)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(1546777611227147004)
,p_button_name=>'Approve'
,p_button_static_id=>'holdFlightBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&P4_TXT_APPROVE.'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P4_BTN_APPROVE'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-pause'
,p_button_cattributes=>'data-status="5" action-btn'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(673392111051304231)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(1546777611227147004)
,p_button_name=>'Book_Flight'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&P4_TXT_BOOK_FLIGHT.'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P4_BTN_BOOK_FLIGHT'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-plane'
,p_button_cattributes=>'data-status="6" action-btn'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(673389679432304233)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(1546777611227147004)
,p_button_name=>'Save'
,p_button_static_id=>'saveBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Changes'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P4_STATUS in (''1'', ''4'', ''5'', ''6'')'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_icon_css_classes=>'fa-save'
,p_button_cattributes=>' action-btn="save"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(673390035554304233)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(1546777611227147004)
,p_button_name=>'Close'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(119978609050743280)
,p_button_image_alt=>'Close'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(673392903014304231)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(1546777611227147004)
,p_button_name=>'Cancel'
,p_button_static_id=>'cancelBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&P4_TXT_CANCEL.'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P4_BTN_CANCEL'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-trash-o'
,p_button_cattributes=>'data-status="7"  action-btn'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(673391659676304232)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(1546777611227147004)
,p_button_name=>'Hold_Flight'
,p_button_static_id=>'holdFlightBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&P4_TXT_HOLD_FLIGHT.'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P4_BTN_HOLD_FLIGHT'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-pause'
,p_button_cattributes=>'data-status="8" action-btn'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(903393948437132999)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(1546777611227147004)
,p_button_name=>'Release_Flight'
,p_button_static_id=>'releaseFlightBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Release Flight'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P4_STATUS'
,p_button_condition2=>'8'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-unlock'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1717456712262844964)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1522594770516642247)
,p_button_name=>'Load_From_AI'
,p_button_static_id=>'loadFromAIBtn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Load From AI'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RR,::'
,p_button_condition=>':P4_USER_TYPE = ''T'' AND :P4_STATUS in (''1'', ''4'')'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_button_css_classes=>'header-button'
,p_icon_css_classes=>'fa-database'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(830159486426279184)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1522594770516642247)
,p_button_name=>'Download_Import_Template'
,p_button_static_id=>'downloadImportTemplateBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download Import Template'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P4_SEQ'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'header-button'
,p_icon_css_classes=>'fa-download'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(830159624470279185)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1522594770516642247)
,p_button_name=>'Download_Import_Template_Hidden'
,p_button_static_id=>'downloadImportTemplateHiddenBtn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download Import Template'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.:IR[importTemplateIR]_CSV:&DEBUG.:::'
,p_icon_css_classes=>'fa-download'
,p_button_cattributes=>'style="display: none;"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(740229937358543801)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1522594770516642247)
,p_button_name=>'View_Ticket'
,p_button_static_id=>'viewTicketBtn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Ticket'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6_DOC_ID:&P4_TICKET_DOC_ID.'
,p_button_condition=>':P4_TICKET_DOC_ID IS NOT NULL AND :P4_PROCESS_STARTED = ''Y'''
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_button_css_classes=>'header-button'
,p_icon_css_classes=>'fa-image'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(790562479052989414)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(1522594770516642247)
,p_button_name=>'View_Invoice'
,p_button_static_id=>'viewInvoicetBtn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Invoice'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6_DOC_ID:&P4_INVOICE_DOC_ID.'
,p_button_condition=>':P4_INVOICE_DOC_ID IS NOT NULL AND :P4_PROCESS_STARTED = ''Y'' and 1=2'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_button_css_classes=>'header-button'
,p_icon_css_classes=>'fa-image'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>503
,p_default_id_offset=>2556963023090302471
,p_default_owner=>'APPS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(673441534019304201)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(1522594770516642247)
,p_button_name=>'View_Passport'
,p_button_static_id=>'viewPassportBtn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Passport'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::P5_PERSON_ID:&P4_PERSON_ID.'
,p_button_css_classes=>'header-button'
,p_icon_css_classes=>'fa-image'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(673441096848304201)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(1522594770516642247)
,p_button_name=>'Start_Process_New'
,p_button_static_id=>'startBtn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Start Process'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_execute_validations=>'N'
,p_button_condition=>':P4_PROCESS_STARTED = ''N'' and :P4_USER_TYPE = ''M'''
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_button_css_classes=>'header-button'
,p_icon_css_classes=>'fa-plane'
,p_button_cattributes=>'action-btn="start"'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1745626050374490562)
,p_name=>'P4_COST_DIFFERENCE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(1560103174128378846)
,p_prompt=>'Cost Difference'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_tag_attributes=>'style="text-align: left !important;"'
,p_colspan=>2
,p_display_when=>'P4_STATUS'
,p_display_when2=>'6'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1745625925216490561)
,p_name=>'P4_FOR_BILLING'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(1560103174128378846)
,p_prompt=>'Include Cost Difference In Billing'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:For Billing;Y'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1745625911297490560)
,p_name=>'P4_REASON_FOR_CHANGE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(1560103174128378846)
,p_prompt=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1745625786325490559)
,p_name=>'P4_TOTAL_FLIGHT_COST'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(1560103174128378846)
,p_prompt=>'Total Flight Cost'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'cost-item'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1698417541716892339)
,p_name=>'P4_DATE_APPROVED_FROM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(790559611271989385)
,p_prompt=>'Date Approved From:'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cattributes_element=>'style="max-width: 340px;"'
,p_display_when=>':P4_SEQ IS NULL AND :P4_MASLUL = ''LTS'' AND :P4_IS_DATE_APPROVED = ''N'''
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_field_template=>wwv_flow_api.id(119978609050743338)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1698417522493892338)
,p_name=>'P4_DATE_APPROVED_TO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(790559611271989385)
,p_prompt=>'To: '
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_display_when=>':P4_SEQ IS NULL AND :P4_MASLUL = ''LTS'' AND :P4_IS_DATE_APPROVED = ''N'''
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_field_template=>wwv_flow_api.id(119978609050743338)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1698416851067892332)
,p_name=>'P4_IS_DATE_APPROVED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(790559611271989385)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>':P4_SEQ IS NULL AND :P4_MASLUL = ''LTS'''
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1698416195514892325)
,p_name=>'P4_IS_ACTIVE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1522594770516642247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(960295702565389717)
,p_name=>'P4_MASLUL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1522594770516642247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(954024492635925003)
,p_name=>'P4_REMARKS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1659931909726341531)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(219263501903926724)
,p_name=>'P4_HANDLING_AGENT_NAME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(1522594770516642247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(219263318182926722)
,p_name=>'P4_TICKET_HTML'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(1522594770516642247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(219162469004210054)
,p_name=>'P4_SELECTED_RDS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(1522594770516642247)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(468944310048370301)
,p_name=>'P4_REQUEST_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(1522594770516642247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(650651086919399291)
,p_name=>'P4_TICKET_DOC_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1560103174128378846)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673393295723304231)
,p_name=>'P4_BTN_MAKE_OFFER'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(1546777611227147004)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673393705608304230)
,p_name=>'P4_BTN_MASLUL_APPROVAL'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(1546777611227147004)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673394104693304230)
,p_name=>'P4_BTN_CUSTOMER_APPROVAL'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(1546777611227147004)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673394505169304230)
,p_name=>'P4_BTN_FIX'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(1546777611227147004)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673394896272304230)
,p_name=>'P4_BTN_APPROVE'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(1546777611227147004)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673395320923304230)
,p_name=>'P4_BTN_BOOK_FLIGHT'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(1546777611227147004)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673395705874304230)
,p_name=>'P4_BTN_CANCEL'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(1546777611227147004)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673396080857304229)
,p_name=>'P4_TXT_MAKE_OFFER'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(1546777611227147004)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673396453923304229)
,p_name=>'P4_TXT_MASLUL_APPROVAL'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(1546777611227147004)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673396898604304229)
,p_name=>'P4_TXT_CUSTOMER_APPROVAL'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(1546777611227147004)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673397270254304229)
,p_name=>'P4_TXT_FIX'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(1546777611227147004)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673397719005304229)
,p_name=>'P4_TXT_APPROVE'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(1546777611227147004)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673398126934304228)
,p_name=>'P4_TXT_BOOK_FLIGHT'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(1546777611227147004)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673398815858304228)
,p_name=>'P4_STATUS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(1540869485045099020)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673399214405304228)
,p_name=>'P4_STATUS_NEXT_STATUSES'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(1540869485045099020)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673399616015304228)
,p_name=>'P4_STATUS_HTML'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(1540869485045099020)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673400256129304227)
,p_name=>'P4_PROPOSAL_YEAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1560103174128378846)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673400659514304227)
,p_name=>'P4_PNR_NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1560103174128378846)
,p_prompt=>'PNR Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>6
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673401046901304227)
,p_name=>'P4_FLIGHT_COST'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(1560103174128378846)
,p_prompt=>'Flight Cost'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_tag_css_classes=>'cost-item'
,p_tag_attributes=>'style="text-align: left !important;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673401444299304226)
,p_name=>'P4_FLIGHT_COST_FOR_BILLING'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(1560103174128378846)
,p_prompt=>'Flight Cost For Billing'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_tag_attributes=>'style="text-align: left !important;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673401920059304226)
,p_name=>'P4_TICKET'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(1560103174128378846)
,p_prompt=>'Ticket'
,p_pre_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<label                    style="display: none"',
'for="P4_TICKET" class="ticket-upload t-Button t-Button--icon t-Button--iconLeft t-Button--hot" title="Upload New Ticket">',
'    Upload New Ticket',
'</label>',
''))
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(:P4_USER_TYPE = ''T'' and :P4_STATUS in (''5'',''6'')) or',
'(:P4_USER_TYPE = ''M'' and :P4_STATUS = ''6'')'))
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_11=>'application/pdf,image/jpeg,image/png'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673402997720304226)
,p_name=>'P4_AGENCY_REMARKS'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(1560103174128378846)
,p_prompt=>'Agency Remarks'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>9
,p_begin_on_new_line=>'N'
,p_display_when=>'P4_USER_TYPE'
,p_display_when2=>'T'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673441891245304200)
,p_name=>'P4_SEQ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1522594770516642247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673442686311304200)
,p_name=>'P4_ASSIGNMENT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1522594770516642247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673443061694304200)
,p_name=>'P4_PERSON_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1522594770516642247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673443534407304200)
,p_name=>'P4_PROCESS_STARTED'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(1522594770516642247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673443900516304199)
,p_name=>'P4_BOOKED_FLIGHT_FOUND'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(1522594770516642247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673444260292304199)
,p_name=>'P4_USER_TYPE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(1522594770516642247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673444733574304199)
,p_name=>'P4_USER_MASLULIM'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(1522594770516642247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673445124523304199)
,p_name=>'P4_USER_STATUSES'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(1522594770516642247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(673445438003304199)
,p_name=>'P4_TXT_CANCEL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(1522594770516642247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(685651506010334288)
,p_name=>'P4_TODAY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(667357409013199626)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(685653556006334309)
,p_name=>'P4_CREATION_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(1560103174128378846)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(721162589121152725)
,p_name=>'P4_MASLUL_REMARKS'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(1560103174128378846)
,p_prompt=>'Maslul Remarks'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>9
,p_begin_on_new_line=>'N'
,p_display_when=>'P4_USER_TYPE'
,p_display_when2=>'M'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(721162699354152726)
,p_name=>'P4_MARKUP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(1560103174128378846)
,p_prompt=>'Markup'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_tag_css_classes=>'cost-item'
,p_tag_attributes=>'style="text-align: left !important;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(729762686729698278)
,p_name=>'P4_BOOKING_FEE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(1560103174128378846)
,p_prompt=>'Booking Fee'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_tag_css_classes=>'cost-item'
,p_tag_attributes=>'style="text-align: left !important;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(729762897355698280)
,p_name=>'P4_PASSANGERS_COST'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(1560103174128378846)
,p_prompt=>'Passengers Payment'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_tag_css_classes=>'cost-item'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(729763063965698282)
,p_name=>'P4_OFFERTIME'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(1560103174128378846)
,p_prompt=>'Offer Expiration (In Hours)'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(729763860815698290)
,p_name=>'P4_VALID_UNTIL'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(1560103174128378846)
,p_prompt=>'Approve Until'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_display_when=>':P4_OFFERTIME IS NOT NULL AND :P4_STATUS != ''1'''
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(729765597132698307)
,p_name=>'P4_MAX_STATUS_UPDATE_DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(1522594770516642247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(729766218854698313)
,p_name=>'P4_AGENCY_REMARKS_V'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(1560103174128378846)
,p_prompt=>'Agency Remarks'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P4_USER_TYPE'
,p_display_when2=>'M'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(729766252629698314)
,p_name=>'P4_MASLUL_REMARKS_V'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(1560103174128378846)
,p_prompt=>'Maslul Remarks'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'view-remarks-col'
,p_display_when=>'P4_USER_TYPE'
,p_display_when2=>'T'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(790562131267989410)
,p_name=>'P4_INVOICE_DOC_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1560103174128378846)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(790562155555989411)
,p_name=>'P4_INVOICE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(1560103174128378846)
,p_prompt=>'Invoice'
,p_pre_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<label           style="display: none"',
' for="P4_INVOICE" class="invoice-upload t-Button t-Button--icon t-Button--iconLeft t-Button--hot" title="Upload New Invoice">',
'    Upload New Invoice',
'</label>',
''))
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'1=2 and (',
'(:P4_USER_TYPE = ''T'' and :P4_STATUS in (''5'',''6'')) or',
'(:P4_USER_TYPE = ''M'' and :P4_STATUS = ''6'')',
')'))
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_11=>'application/pdf,image/jpeg,image/png'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(861962312277190706)
,p_name=>'P4_HANDLING_AGENT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(1522594770516642247)
,p_prompt=>'Handling Agent:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AGENTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LOOKUP_CODE R, ATTRIBUTE4 D from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_SHLICHUT_FLIGHTS_USERS'' and m.LANGUAGE = ''US'' and ATTRIBUTE1 = ''T''',
'order by ATTRIBUTE4'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Not Selected'
,p_cHeight=>1
,p_display_when=>'P4_SEQ'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(119978609050743336)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(884529674361354411)
,p_name=>'P4_FLIGHT_INV_REF'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(1560103174128378846)
,p_prompt=>'Flight Inv Ref'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_display_when=>'P4_STATUS'
,p_display_when2=>'6'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(884529796651354412)
,p_name=>'P4_SUMMARY_INVOICE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(1560103174128378846)
,p_prompt=>'Summary Invoice'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_display_when=>'P4_STATUS'
,p_display_when2=>'6'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(903393515291132994)
,p_name=>'P4_EDIT_FLIGHT_LEGS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(1522594770516642247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(903395134692133010)
,p_name=>'P4_TXT_HOLD_FLIGHT'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(1546777611227147004)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(903395247330133012)
,p_name=>'P4_BTN_HOLD_FLIGHT'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(1546777611227147004)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(685651581676334289)
,p_computation_sequence=>10
,p_computation_item=>'P4_TODAY'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation=>'to_char(sysdate, ''DD-Mon-YY'')'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(729764798217698299)
,p_computation_sequence=>20
,p_computation_item=>'P4_BOOKING_FEE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'18'
,p_compute_when=>':P4_BOOKING_FEE IS NULL AND :P4_MASLUL = ''SC'''
,p_compute_when_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(1754285448624784721)
,p_computation_sequence=>30
,p_computation_item=>'P4_BOOKING_FEE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'14'
,p_compute_when=>':P4_BOOKING_FEE IS NULL AND :P4_MASLUL != ''SC'''
,p_compute_when_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(729764942852698301)
,p_computation_sequence=>40
,p_computation_item=>'P4_PROPOSAL_YEAR'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'extract(year from sysdate)'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(1745625652608490558)
,p_computation_sequence=>50
,p_computation_item=>'P4_TOTAL_FLIGHT_COST'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'TO_NUMBER(nvl(:P4_FLIGHT_COST, 0)) + TO_NUMBER(nvl(:P4_BOOKING_FEE, 0)) + TO_NUMBER(nvl(:P4_COST_DIFFERENCE, 0))'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(685651872559334292)
,p_validation_name=>'PNR Is Valid'
,p_validation_sequence=>10
,p_validation=>'regexp_like(:P4_PNR_NUMBER,''^[[:alnum:]]+$'')'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Invalid value'
,p_always_execute=>'Y'
,p_validation_condition=>':P4_PNR_NUMBER is not null'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(673400659514304227)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(884530006114354414)
,p_validation_name=>'Flight Inv Ref Is Valid'
,p_validation_sequence=>20
,p_validation=>'regexp_like(:P4_FLIGHT_INV_REF,''^[[:alnum:]]+$'')'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Invalid value'
,p_validation_condition=>':P4_FLIGHT_INV_REF is not null and :P4_STATUS != ''5'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(884529674361354411)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(884530108834354415)
,p_validation_name=>'Summary Invoice Is Valid'
,p_validation_sequence=>30
,p_validation=>'regexp_like(:P4_SUMMARY_INVOICE,''^[[:alnum:]]+$'')'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Invalid value'
,p_validation_condition=>':P4_SUMMARY_INVOICE is not null and :P4_STATUS != ''5'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(884529796651354412)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(685652013479334293)
,p_validation_name=>'Flight Cost Is Valid'
,p_validation_sequence=>40
,p_validation=>'P4_FLIGHT_COST'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Invalid value'
,p_always_execute=>'Y'
,p_validation_condition=>':P4_FLIGHT_COST is not null and :P4_STATUS != ''5'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(673401046901304227)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(729762552074698277)
,p_validation_name=>'Markup Is Valid'
,p_validation_sequence=>50
,p_validation=>'P4_MARKUP'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Invalid value'
,p_always_execute=>'Y'
,p_validation_condition=>':P4_MARKUP is not null and :P4_STATUS != ''5'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(721162699354152726)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(729762972946698281)
,p_validation_name=>'Passengers Cost Is Valid'
,p_validation_sequence=>60
,p_validation=>'P4_PASSANGERS_COST'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Invalid value'
,p_always_execute=>'Y'
,p_validation_condition=>':P4_PASSANGERS_COST is not null and :P4_STATUS != ''5'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(729762897355698280)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(729762787895698279)
,p_validation_name=>'Booking Fee Is Valid'
,p_validation_sequence=>70
,p_validation=>'P4_BOOKING_FEE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Invalid value'
,p_always_execute=>'Y'
,p_validation_condition=>':P4_BOOKING_FEE is not null and :P4_STATUS != ''5'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(729762686729698278)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(729763186820698283)
,p_validation_name=>'Offertime Is Valid'
,p_validation_sequence=>80
,p_validation=>'P4_OFFERTIME'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Invalid value'
,p_always_execute=>'Y'
,p_validation_condition=>':P4_OFFERTIME is not null and :P4_STATUS != ''5'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(729763063965698282)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(729766415573698315)
,p_validation_name=>'Offertime Required For Agency Users'
,p_validation_sequence=>90
,p_validation=>'P4_OFFERTIME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Required field'
,p_always_execute=>'Y'
,p_validation_condition=>':P4_USER_TYPE = ''T'' AND :P4_STATUS != ''5'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(729763063965698282)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(721162499986152724)
,p_validation_name=>'Flight Cost For Billing Is Valid'
,p_validation_sequence=>100
,p_validation=>'P4_FLIGHT_COST_FOR_BILLING'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Invalid value'
,p_always_execute=>'Y'
,p_validation_condition=>':P4_FLIGHT_COST_FOR_BILLING IS NOT NULL /*AND :P4_STATUS != ''5''*/'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(673401444299304226)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(830160479203279194)
,p_validation_name=>'Flight Cost Required For Agency Users'
,p_validation_sequence=>110
,p_validation=>'P4_FLIGHT_COST'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Required field'
,p_always_execute=>'Y'
,p_validation_condition=>':P4_USER_TYPE = ''T'' AND :P4_STATUS in (''1'', ''4'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(673401046901304227)
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
,p_default_application_id=>503
,p_default_id_offset=>2556963023090302471
,p_default_owner=>'APPS'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(884527686326354391)
,p_validation_name=>'Handling Agent Is Not Null'
,p_validation_sequence=>120
,p_validation=>'P4_HANDLING_AGENT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please assign flight handling agent'
,p_validation_condition=>':P4_USER_TYPE = ''T'' AND :P4_STATUS in (''1'', ''4'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(861962312277190706)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1698417341669892337)
,p_validation_name=>'Date Approved From Is Not Null'
,p_validation_sequence=>130
,p_validation=>'P4_DATE_APPROVED_FROM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Required field'
,p_validation_condition=>':P4_SEQ IS NULL AND :P4_MASLUL = ''LTS'' AND :P4_IS_DATE_APPROVED = ''N'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_when_button_pressed=>wwv_flow_api.id(673441096848304201)
,p_associated_item=>wwv_flow_api.id(1698417541716892339)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1698417263925892336)
,p_validation_name=>'Date Approved To Is Not Null'
,p_validation_sequence=>140
,p_validation=>'P4_DATE_APPROVED_TO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Required field'
,p_validation_condition=>':P4_SEQ IS NULL AND :P4_MASLUL = ''LTS'' AND :P4_IS_DATE_APPROVED = ''N'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_when_button_pressed=>wwv_flow_api.id(673441096848304201)
,p_associated_item=>wwv_flow_api.id(1698417522493892338)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1698417205436892335)
,p_validation_name=>'Date Approved To Is Later Than From'
,p_validation_sequence=>150
,p_validation=>'to_date(:P4_DATE_APPROVED_FROM, ''DD/MM/YYYY'') <= to_date(:P4_DATE_APPROVED_TO, ''DD/MM/YYYY'')'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Date must be later than ''from'' date'
,p_validation_condition=>':P4_SEQ IS NULL AND :P4_MASLUL = ''LTS'' AND :P4_IS_DATE_APPROVED = ''N'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_when_button_pressed=>wwv_flow_api.id(673441096848304201)
,p_associated_item=>wwv_flow_api.id(1698417522493892338)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(673465189779304167)
,p_name=>'Close Click'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(673390035554304233)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(219264881843926737)
,p_event_id=>wwv_flow_api.id(673465189779304167)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(673466112116304167)
,p_name=>'Set Citizenship Flag Icon'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(673466548162304167)
,p_event_id=>wwv_flow_api.id(673466112116304167)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var citizenship = $(''#P4_IS_US_OR_CA_CITIZEN_DISPLAY'').text();',
'if (citizenship != '''') {',
'    $(''#P4_IS_US_OR_CA_CITIZEN_DISPLAY'').parent().append(''<img src="#APP_IMAGES#'' + citizenship.toLowerCase() + ''.svg" width="27px" style="margin-left: 10px" />'');',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(673464248620304168)
,p_name=>'Add Leg Click'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'button[data-action="selection-add-row"]'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(673464765560304168)
,p_event_id=>wwv_flow_api.id(673464248620304168)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $(''tr.is-inserted:last-child td:first-child'').dblclick();',
'}, 250);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(673471998318304165)
,p_name=>'Cost Change SC'
,p_event_sequence=>85
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.cost-item'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P4_MASLUL'
,p_display_when_cond2=>'SC'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(673472458446304164)
,p_event_id=>wwv_flow_api.id(673471998318304165)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_FLIGHT_COST_FOR_BILLING'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'nvl(:P4_FLIGHT_COST, 0) + nvl(:P4_MARKUP, 0) + nvl(:P4_BOOKING_FEE, 0)'
,p_attribute_07=>'P4_FLIGHT_COST,P4_MARKUP,P4_BOOKING_FEE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1745623146085490533)
,p_name=>'Cost Change SSH'
,p_event_sequence=>95
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.cost-item'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_when_cond=>'P4_MASLUL'
,p_display_when_cond2=>'SC'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1745623062444490532)
,p_event_id=>wwv_flow_api.id(1745623146085490533)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_FLIGHT_COST_FOR_BILLING'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'nvl(:P4_FLIGHT_COST, 0) + nvl(:P4_MARKUP, 0) + nvl(:P4_BOOKING_FEE, 0) + nvl(:P4_COST_DIFFERENCE, 0)'
,p_attribute_07=>'P4_FLIGHT_COST,P4_MARKUP,P4_BOOKING_FEE,P4_COST_DIFFERENCE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(729764619004698297)
,p_name=>'Delete Leg'
,p_event_sequence=>105
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-leg'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(729764646625698298)
,p_event_id=>wwv_flow_api.id(729764619004698297)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var idx = $(this.triggeringElement).data(''idx'');',
'var direction = $(this.triggeringElement).data(''direction'');',
'var leg = $(this.triggeringElement).data(''leg'');',
'',
'//alert(''DELETE\nIDX='' + idx + ''\nDirection='' + direction + ''\nLeg'' + leg);',
'',
'var ig$ = apex.region("flightLegsGrid").widget();',
'var grid = ig$.interactiveGrid("getViews", "grid");',
'var model = grid.model;',
'',
'var record = model.getRecord(idx);',
'if (record && model.allowDelete(record)) ',
'    model.deleteRecords([record]);',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(673473756915304164)
,p_name=>'Set Button Texts'
,p_event_sequence=>115
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(673474273595304164)
,p_event_id=>wwv_flow_api.id(673473756915304164)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description',
'into :P4_TXT_MAKE_OFFER',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_FLIGHT_STATUS'' and LANGUAGE = ''US'' and m.lookup_code = 1;',
'',
'select description',
'into :P4_TXT_MASLUL_APPROVAL',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_FLIGHT_STATUS'' and LANGUAGE = ''US'' and m.lookup_code = 2;',
'',
'select description',
'into :P4_TXT_CUSTOMER_APPROVAL',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_FLIGHT_STATUS'' and LANGUAGE = ''US'' and m.lookup_code = 3;',
'',
'select description',
'into :P4_TXT_FIX',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_FLIGHT_STATUS'' and LANGUAGE = ''US'' and m.lookup_code = 4;',
'',
'select description',
'into :P4_TXT_APPROVE',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_FLIGHT_STATUS'' and LANGUAGE = ''US'' and m.lookup_code = 5;',
'',
'select description',
'into :P4_TXT_BOOK_FLIGHT',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_FLIGHT_STATUS'' and LANGUAGE = ''US'' and m.lookup_code = 6;',
'',
'select description',
'into :P4_TXT_CANCEL',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_FLIGHT_STATUS'' and LANGUAGE = ''US'' and m.lookup_code = 7;',
'',
'select description',
'into :P4_TXT_HOLD_FLIGHT',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_FLIGHT_STATUS'' and LANGUAGE = ''US'' and m.lookup_code = 8;'))
,p_attribute_03=>'P4_TXT_MAKE_OFFER,P4_TXT_MASLUL_APPROVAL,P4_TXT_CUSTOMER_APPROVAL,P4_TXT_FIX,P4_TXT_APPROVE,P4_TXT_BOOK_FLIGHT,P4_TXT_CANCEL,P4_TXT_HOLD_FLIGHT'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(673474745436304163)
,p_event_id=>wwv_flow_api.id(673473756915304164)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''button[data-status="1"] .t-Button-label'').text($v(''P4_TXT_MAKE_OFFER''));',
'$(''button[data-status="2"] .t-Button-label'').text($v(''P4_TXT_MASLUL_APPROVAL''));',
'$(''button[data-status="3"] .t-Button-label'').text($v(''P4_TXT_CUSTOMER_APPROVAL''));',
'$(''button[data-status="4"] .t-Button-label'').text($v(''P4_TXT_FIX''));',
'$(''button[data-status="5"] .t-Button-label'').text($v(''P4_TXT_APPROVE''));',
'$(''button[data-status="6"] .t-Button-label'').text($v(''P4_TXT_BOOK_FLIGHT''));',
'$(''button[data-status="7"] .t-Button-label'').text($v(''P4_TXT_CANCEL''));',
'$(''button[data-status="8"] .t-Button-label'').text($v(''P4_TXT_HOLD_FLIGHT''));',
'',
'//Display the X button',
'$(document).ready(function() {',
'    $(''.flights-management-dialog .ui-dialog-titlebar .ui-dialog-titlebar-close'', parent.document).show();',
'});'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(685651015293334283)
,p_name=>'New Leg Row Init'
,p_event_sequence=>125
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(667357409013199626)
,p_bind_type=>'bind'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|apexbeginrecordedit'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(685651194390334285)
,p_event_id=>wwv_flow_api.id(685651015293334283)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = this.data.model;  ',
'var rec = this.data.record;   ',
'var meta = model.getRecordMetadata(this.data.recordId);',
'',
'var existingLegs = model._data.filter(l => { ',
'    return l[0] && l[0].v != ''''; ',
'});',
'',
'if (meta.inserted && model.getValue(rec,"PERSON_ID") == '''') {',
'    var defaultLeg = { ''v'': ''1'', ''d'': ''1st Leg'' };',
'    var inboundCount = outboundCount = 0;',
'    ',
'    $.each(model._data, function(key, row) {',
'        if (row[0].v == ''I'') inboundCount++;',
'        if (row[0].v == ''O'') outboundCount++;',
'    });',
'    ',
'    var lastDirection = existingLegs.length > 0 ? existingLegs[existingLegs.length - 1][0] : { ''v'': ''O'', ''d'': ''Outbound'' };',
'    var direction = lastDirection;',
'    if (lastDirection.v == ''O'' && outboundCount == 4) {',
'        direction = { ''v'': ''I'', ''d'': ''Inbound'' };',
'    }',
'    if (lastDirection.v == ''I'' && inboundCount == 4) {',
'        direction = { ''v'': ''O'', ''d'': ''Outbound'' };',
'    }',
'    ',
'    var leg = defaultLeg;',
'    ',
'    if (direction.v == ''I'' && 0 < inboundCount && inboundCount < 4) { //Inbound',
'        leg = { ''v'': (inboundCount + 1).toString(), ''d'': inboundCount == 1 ? ''2nd Leg'' : inboundCount == 2 ? ''3rd Leg'' : ''4th Leg'' };',
'    }',
'    else if (direction.v == ''O'' && 0 < outboundCount && outboundCount < 4) { //Outbound',
'        leg = { ''v'': (outboundCount + 1).toString(), ''d'': outboundCount == 1 ? ''2nd Leg'' : outboundCount == 2 ? ''3rd Leg'' : ''4th Leg'' };',
'    }',
'    ',
'    var date = new Date();',
'    var todayFormatted = (date.getDate() < 10 ? "0" + date.getDate() : date.getDate()).toString() + "/" + ',
'                         ((date.getMonth() + 1) < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1).toString() + "/" + ',
'                         date.getUTCFullYear();',
'    ',
'    model.setValue(rec,"ASSIGNMENT_ID", $v(''P4_ASSIGNMENT_ID''));',
'    model.setValue(rec,"PERSON_ID", $v(''P4_PERSON_ID''));',
'    ',
'    if (rec[0].v == '''') model.setValue(rec,"DIRECTION", direction);',
'    if (rec[1].v == '''') model.setValue(rec,"LEG", leg);',
'    if (rec[6] == '''') model.setValue(rec,"DEPARTURE_DATE", todayFormatted);',
'    if (rec[8] == '''') model.setValue(rec,"ARRIVAL_DATE", todayFormatted);',
'    if (rec[7] == '''') model.setValue(rec,"DEPARTURE_TIME", ''00:00'');',
'    if (rec[9] == '''') model.setValue(rec,"ARRIVAL_TIME", ''00:00'');',
'}',
'',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(685651242494334286)
,p_name=>'Direction Change'
,p_event_sequence=>135
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(667357409013199626)
,p_triggering_element=>'DIRECTION'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(685651404918334287)
,p_event_id=>wwv_flow_api.id(685651242494334286)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region("flightLegsGrid").widget();',
'var ig = grid.interactiveGrid("getViews");',
'var model = ig.grid.model; ',
'var rec = grid.interactiveGrid("getViews","grid").view$.grid("getSelectedRecords")[0];   ',
'var defaultLeg = { ''v'': ''1'', ''d'': ''1st Leg'' };',
'var inboundCount = outboundCount = 0;',
'var metaRec = model.getRecordMetadata(rec[13]);',
'if (metaRec && metaRec.deleted) return;',
'',
'$.each(model._data, function(key, row) {',
'    var metaRow = model.getRecordMetadata(row[13]);',
'    if (metaRow && !metaRow.deleted && row[13] != rec[13]) {',
'        if (row[0].v == ''I'') inboundCount++;',
'        if (row[0].v == ''O'') outboundCount++;',
'    }',
'});',
'debugger;',
'var direction = rec[0].v;//$v(this.triggeringElement);',
'var leg = defaultLeg;',
'',
'if (direction == ''I'' && 0 < inboundCount && inboundCount < 4) { //Inbound',
'    leg = { ''v'': (inboundCount + 1).toString(), ''d'': inboundCount == 1 ? ''2nd Leg'' : inboundCount == 2 ? ''3rd Leg'' : ''4th Leg'' };',
'}',
'else if (direction == ''O'' && 0 < outboundCount && outboundCount < 4) { //Outbound',
'    leg = { ''v'': (outboundCount + 1).toString(), ''d'': outboundCount == 1 ? ''2nd Leg'' : outboundCount == 2 ? ''3rd Leg'' : ''4th Leg'' };',
'}',
'',
'model.setValue(rec,"LEG", leg);',
'',
'markMismatchedFields();'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(790561838052989408)
,p_name=>'Leg Change'
,p_event_sequence=>145
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(667357409013199626)
,p_triggering_element=>'LEG'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(790562019025989409)
,p_event_id=>wwv_flow_api.id(790561838052989408)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'markMismatchedFields();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(685652187244334295)
,p_name=>'Departure Date Change'
,p_event_sequence=>155
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(667357409013199626)
,p_triggering_element=>'DEPARTURE_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(685652328613334296)
,p_event_id=>wwv_flow_api.id(685652187244334295)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DEPARTURE_DATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'convertDateTextFormat(this.triggeringElement)'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(790558768824989377)
,p_event_id=>wwv_flow_api.id(685652187244334295)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'markMismatchedFields();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(685652397944334297)
,p_name=>'Arrival Date Change'
,p_event_sequence=>165
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(667357409013199626)
,p_triggering_element=>'ARRIVAL_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(685652464502334298)
,p_event_id=>wwv_flow_api.id(685652397944334297)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ARRIVAL_DATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'convertDateTextFormat(this.triggeringElement)'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(790559017774989379)
,p_event_id=>wwv_flow_api.id(685652397944334297)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'markMismatchedFields();',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(685652605825334299)
,p_name=>'Departure Time Change'
,p_event_sequence=>175
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(667357409013199626)
,p_triggering_element=>'DEPARTURE_TIME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(685652700581334300)
,p_event_id=>wwv_flow_api.id(685652605825334299)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DEPARTURE_TIME'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'convertTimeTextFormat(this.triggeringElement)'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(790558911664989378)
,p_event_id=>wwv_flow_api.id(685652605825334299)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'markMismatchedFields();',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(685652752990334301)
,p_name=>'Arrival Time Change'
,p_event_sequence=>185
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(667357409013199626)
,p_triggering_element=>'ARRIVAL_TIME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(685652892311334302)
,p_event_id=>wwv_flow_api.id(685652752990334301)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ARRIVAL_TIME'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'convertTimeTextFormat(this.triggeringElement)'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(685653372780334307)
,p_name=>'Flight Number Change'
,p_event_sequence=>195
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(667357409013199626)
,p_triggering_element=>'FLIGHT_NUMBER'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(685653451526334308)
,p_event_id=>wwv_flow_api.id(685653372780334307)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'FLIGHT_NUMBER'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$v(this.triggeringElement).toUpperCase()'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(729763971606698291)
,p_name=>'Calculate Offer Expiration'
,p_event_sequence=>205
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_OFFERTIME'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P4_OFFERTIME'') != '''' && /^[0-9]+$/.test($v(''P4_OFFERTIME''))'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(729764049646698292)
,p_event_id=>wwv_flow_api.id(729763971606698291)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_VALID_UNTIL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'to_char(to_date(:P4_MAX_STATUS_UPDATE_DATE, ''DD/MM/YYYY HH24:MI'') + (to_number(:P4_OFFERTIME) / 24), ''DD/MM/YYYY HH24:MI'')'
,p_attribute_07=>'P4_CREATION_DATE,P4_OFFERTIME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(740228091452543782)
,p_name=>'Set Maslul Fields'
,p_event_sequence=>215
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P4_USER_TYPE'
,p_display_when_cond2=>'M'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(740228176593543783)
,p_event_id=>wwv_flow_api.id(740228091452543782)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_OFFERTIME'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(903395613484133015)
,p_event_id=>wwv_flow_api.id(740228091452543782)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P4_BOOKING_FEE'').addClass(''apex_disabled'');'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(861963662083190720)
,p_event_id=>wwv_flow_api.id(740228091452543782)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_PNR_NUMBER,P4_PASSANGERS_COST'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1745622947629490531)
,p_event_id=>wwv_flow_api.id(740228091452543782)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_COST_DIFFERENCE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(884526492048354379)
,p_name=>'Set Maslul Fields On Start Process And Awaiting Offer'
,p_event_sequence=>225
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_display_when_cond=>':P4_USER_TYPE = ''M'' and :P4_STATUS = ''1'''
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(903395686826133016)
,p_event_id=>wwv_flow_api.id(884526492048354379)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P4_FLIGHT_COST_FOR_BILLING'').addClass(''apex_disabled'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(861963909833190722)
,p_name=>'Set Agency Fields'
,p_event_sequence=>235
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P4_USER_TYPE'
,p_display_when_cond2=>'T'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(884526412290354378)
,p_event_id=>wwv_flow_api.id(861963909833190722)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_MARKUP,P4_FLIGHT_COST_FOR_BILLING'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1745622873665490530)
,p_event_id=>wwv_flow_api.id(861963909833190722)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_COST_DIFFERENCE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(740229398667543795)
,p_name=>'SetCostForBillingIfNull'
,p_event_sequence=>245
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P4_FLIGHT_COST_FOR_BILLING'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(740229581497543797)
,p_event_id=>wwv_flow_api.id(740229398667543795)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_FLIGHT_COST_FOR_BILLING'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'nvl(:P4_FLIGHT_COST, 0) + nvl(:P4_MARKUP, 0) + nvl(:P4_BOOKING_FEE, 0)'
,p_attribute_07=>'P4_FLIGHT_COST,P4_MARKUP,P4_BOOKING_FEE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(740230388489543805)
,p_name=>'Enable Buttons After Validation Error'
,p_event_sequence=>255
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'live'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'enable-buttons'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(740230620141543807)
,p_event_id=>wwv_flow_api.id(740230388489543805)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'JAVASCRIPT_EXPRESSION'
,p_affected_elements=>'$(''button[action-btn]'')'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(740230689804543808)
,p_name=>'Ticket Change'
,p_event_sequence=>265
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_TICKET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(740230854191543810)
,p_event_id=>wwv_flow_api.id(740230689804543808)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var originalFilename = $(''#P4_TICKET'').val().replace(''C:\\fakepath\\'','''');',
'var filename = originalFilename;',
'if (filename.length > 35) {',
'    filename = filename.substring(0, 35) + ''...'';',
'}',
'',
'$(''.ticket-upload'').text(filename).attr(''title'', ''Change Ticket To: '' + originalFilename);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(790562307766989412)
,p_name=>'Invoice Change'
,p_event_sequence=>275
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_INVOICE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(790562376179989413)
,p_event_id=>wwv_flow_api.id(790562307766989412)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var originalFilename = $(''#P4_INVOICE'').val().replace(''C:\\fakepath\\'','''');',
'var filename = originalFilename;',
'if (filename.length > 35) {',
'    filename = filename.substring(0, 35) + ''...'';',
'}',
'',
'$(''.invoice-upload'').text(filename).attr(''title'', ''Change Invoice '' + originalFilename);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(740231959208543821)
,p_name=>'Destination Airport Change'
,p_event_sequence=>285
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(667357409013199626)
,p_triggering_element=>'DESTINATION_AIRPORT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(740232284468543824)
,p_event_id=>wwv_flow_api.id(740231959208543821)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'markMismatchedFields();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(790559224118989381)
,p_name=>'Meal Change'
,p_event_sequence=>295
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(667357409013199626)
,p_triggering_element=>'MEAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(790559479878989384)
,p_event_id=>wwv_flow_api.id(790559224118989381)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'markMismatchedFields();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(801859848849360488)
,p_name=>'Leg Row Click'
,p_event_sequence=>305
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#flightLegsGrid table'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(801859946944360489)
,p_event_id=>wwv_flow_api.id(801859848849360488)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'markMismatchedFields();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(801861338855360503)
,p_name=>'Hide Offer Time'
,p_event_sequence=>315
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_display_when_cond=>':P4_USER_TYPE = ''T'' and :P4_STATUS not in (''1'',''4'')'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(801861488690360504)
,p_event_id=>wwv_flow_api.id(801861338855360503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_OFFERTIME'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(903395807867133017)
,p_event_id=>wwv_flow_api.id(801861338855360503)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P4_FLIGHT_COST'').addClass(''apex_disabled'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(801861598076360505)
,p_name=>'Hide Offer Time Expiration When Booked'
,p_event_sequence=>325
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_display_when_cond=>':P4_STATUS = ''6'''
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(801861712542360506)
,p_event_id=>wwv_flow_api.id(801861598076360505)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_OFFERTIME,P4_VALID_UNTIL'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>503
,p_default_id_offset=>2556963023090302471
,p_default_owner=>'APPS'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(830159729854279186)
,p_name=>'Download Import Template Click'
,p_event_sequence=>335
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(830159486426279184)
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(830159808681279187)
,p_event_id=>wwv_flow_api.id(830159729854279186)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#downloadImportTemplateHiddenBtn'').click();',
'',
'setTimeout(() => {',
'    if ($(''.flights-management-dialog'', parent.document).length > 1) {',
'        $(''.flights-management-dialog:last'', parent.document).hide();',
'        ',
'        alert(''Please wait for the file to download...'');',
'        ',
'        $(''.ui-widget-overlay.ui-front:last'', parent.document).remove();',
'        ',
'        setTimeout(() => {',
'            $(''.flights-management-dialog:last'', parent.document).remove();',
'        }, 60000);',
'    }',
'}, 50);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(830160298020279192)
,p_name=>'Set Required Fields For Agency Users'
,p_event_sequence=>345
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_display_when_cond=>':P4_USER_TYPE = ''T'''
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(830160429887279193)
,p_event_id=>wwv_flow_api.id(830160298020279192)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P4_FLIGHT_COST_CONTAINER .t-Form-labelContainer'').append(''<span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>'');',
'$(''#P4_HANDLING_AGENT_CONTAINER .t-Form-labelContainer'').append(''<span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>'');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(861964144984190725)
,p_name=>'Billing Cost Change SC'
,p_event_sequence=>355
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_FLIGHT_COST_FOR_BILLING'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P4_FLIGHT_COST_FOR_BILLING'') == '''''
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P4_MASLUL'
,p_display_when_cond2=>'SC'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(884526253239354377)
,p_event_id=>wwv_flow_api.id(861964144984190725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_FLIGHT_COST_FOR_BILLING'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'nvl(:P4_FLIGHT_COST, 0) + nvl(:P4_MARKUP, 0) + nvl(:P4_BOOKING_FEE, 0)'
,p_attribute_07=>'P4_FLIGHT_COST,P4_MARKUP,P4_BOOKING_FEE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1745623393615490535)
,p_name=>'Billing Cost Change SSH'
,p_event_sequence=>365
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_FLIGHT_COST_FOR_BILLING'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P4_FLIGHT_COST_FOR_BILLING'') == '''''
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_when_cond=>'P4_MASLUL'
,p_display_when_cond2=>'SC'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1745623279440490534)
,p_event_id=>wwv_flow_api.id(1745623393615490535)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_FLIGHT_COST_FOR_BILLING'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'nvl(:P4_FLIGHT_COST, 0) + nvl(:P4_MARKUP, 0) + nvl(:P4_BOOKING_FEE, 0) + nvl(:P4_COST_DIFFERENCE, 0)'
,p_attribute_07=>'P4_FLIGHT_COST,P4_MARKUP,P4_BOOKING_FEE,P4_COST_DIFFERENCE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(903393103907132990)
,p_name=>'Edit Flight Legs Click'
,p_event_sequence=>375
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#editFlightLegsBtn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(903393642031132996)
,p_event_id=>wwv_flow_api.id(903393103907132990)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_EDIT_FLIGHT_LEGS'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(903393383643132993)
,p_event_id=>wwv_flow_api.id(903393103907132990)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'Edit_Flight_Legs'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(685650643586334280)
,p_name=>'Submit Page'
,p_event_sequence=>385
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'button[action-btn]'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(740228462728543786)
,p_event_id=>wwv_flow_api.id(685650643586334280)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'JAVASCRIPT_EXPRESSION'
,p_affected_elements=>'$(''button[action-btn]'')'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(674153974859946720)
,p_event_id=>wwv_flow_api.id(685650643586334280)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var action=$(this.triggeringElement).attr(''action-btn'');',
'if(action==''start''||($v(''P4_USER_TYPE'')==''T''&&$v(''P4_STATUS'')!=''1''&&$v(''P4_STATUS'')!=''4''&&$v(''P4_EDIT_FLIGHT_LEGS'')=='''')||($v(''P4_STATUS'')==''6''&&$v(''P4_EDIT_FLIGHT_LEGS'')=='''')||($v(''P4_USER_TYPE'')==''M''&&$v(''P4_STATUS'')!=''6''))return;',
'var widget=apex.region("flightLegsGrid").widget(),model=widget.interactiveGrid("getViews").grid.model,alphanumericRegex=new RegExp(/^[a-zA-Z0-9]+$/),',
'validationMessage = {"error": "An error occured! Please contact your system administrator.","invalid": "Invalid value","required": "Required field"};',
'if(!model._data||model._data.length==0)widget.interactiveGrid("getActions").invoke("selection-add-row");',
'legsEditObj={"legs":[]};',
'$.each(model._data,function(k,flightLeg){',
'var recordId = flightLeg[13];',
'const deletedRecord = model._changes.filter((r) => r.deleted === true && r.record[13] == recordId);',
'if (deletedRecord.length == 0) {',
'var legToSave = {',
'"id": recordId,',
'"assignment_id": $v(''P4_ASSIGNMENT_ID''),',
'"person_id": $v(''P4_PERSON_ID''),',
'"direction": flightLeg[0].v,',
'"leg": flightLeg[1].v,',
'"airline": flightLeg[2].v,',
'"flight_number": flightLeg[3].toUpperCase(),',
'"departure_airport": flightLeg[4].v,',
'"departure_date": flightLeg[6],',
'"departure_time": flightLeg[7],',
'"destination_airport": flightLeg[5].v,',
'"arrival_date": flightLeg[8],',
'"arrival_time": flightLeg[9],',
'"meal": flightLeg[10].v};',
'legsEditObj.legs.push(legToSave);',
'var isValid=true;',
'if(!legToSave.airline){model.setValidity("error",legToSave.id,"AIRLINE",validationMessage.required);isValid = false;}',
'else model.setValidity("valid",legToSave.id,"AIRLINE");',
'if(!legToSave.flight_number){model.setValidity("error",legToSave.id,"FLIGHT_NUMBER",validationMessage.required);isValid=false;}',
'else if(!alphanumericRegex.test(legToSave.flight_number)){model.setValidity("error",legToSave.id,"FLIGHT_NUMBER",validationMessage.invalid);isValid=false;}',
'else model.setValidity("valid", legToSave.id, "FLIGHT_NUMBER");',
'if(!legToSave.departure_airport){model.setValidity("error",legToSave.id,"DEPARTURE_AIRPORT",validationMessage.required);isValid=false;}',
'else model.setValidity("valid", legToSave.id, "DEPARTURE_AIRPORT");',
'if(!legToSave.departure_date){model.setValidity("error",legToSave.id,"DEPARTURE_DATE",validationMessage.required);isValid=false;}',
'else if(!isValidDate("DEPARTURE_DATE",legToSave.departure_date,k)){model.setValidity("error",legToSave.id,"DEPARTURE_DATE",validationMessage.invalid);isValid=false;}',
'else model.setValidity("valid", legToSave.id, "DEPARTURE_DATE");',
'if(!legToSave.departure_time){model.setValidity("error", legToSave.id, "DEPARTURE_TIME", validationMessage.required);isValid=false;}',
'else if(!isValidTime("DEPARTURE_TIME",legToSave.departure_time,k)){model.setValidity("error",legToSave.id,"DEPARTURE_TIME",validationMessage.invalid);isValid=false;}',
'else model.setValidity("valid", legToSave.id, "DEPARTURE_TIME");',
'if(!legToSave.destination_airport){model.setValidity("error",legToSave.id,"DESTINATION_AIRPORT",validationMessage.required);isValid=false;}',
'else model.setValidity("valid", legToSave.id, "DESTINATION_AIRPORT");',
'if(!legToSave.arrival_date){model.setValidity("error",legToSave.id,"ARRIVAL_DATE",validationMessage.required);isValid=false;}',
'else if(!isValidDate("ARRIVAL_DATE",legToSave.arrival_date,k)){model.setValidity("error", legToSave.id, "ARRIVAL_DATE", validationMessage.invalid);isValid=false;}',
'else model.setValidity("valid",legToSave.id,"ARRIVAL_DATE");',
'if(!legToSave.arrival_time){model.setValidity("error", legToSave.id, "ARRIVAL_TIME", validationMessage.required);isValid = false;}',
'else if(!isValidTime("ARRIVAL_TIME", legToSave.arrival_time,k)) { ',
'model.setValidity("error",legToSave.id,"ARRIVAL_TIME",validationMessage.invalid);isValid=false;}',
'else model.setValidity("valid",legToSave.id,"ARRIVAL_TIME");',
'if(isValid===false){$(''#flightLegsGrid_ig_grid_vc .a-GV-w-scroll'').animate({scrollLeft:1000},500);$(''.t-Dialog-bodyWrapperIn'').scrollTop(0);}}});'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(903394688947133006)
,p_event_id=>wwv_flow_api.id(685650643586334280)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var action = $(this.triggeringElement).attr(''action-btn'');',
'if(action==''start''||($v(''P4_USER_TYPE'')==''T''&&$v(''P4_STATUS'')!=''1''&&$v(''P4_STATUS'')!=''4''&&$v(''P4_EDIT_FLIGHT_LEGS'')=='''')||($v(''P4_STATUS'')==''6''&&$v(''P4_EDIT_FLIGHT_LEGS'')=='''')||($v(''P4_USER_TYPE'')==''M''&&$v(''P4_STATUS'')!=''6''))return;',
'',
'var widget = apex.region("flightLegsGrid").widget(), ',
'    model = widget.interactiveGrid("getViews").grid.model,',
'    alphanumericRegex = new RegExp(/^[a-zA-Z0-9]+$/),',
'    validationMessage = {"error": "An error occured! Please contact your system administrator.","invalid": "Invalid value","required": "Required field"};',
'',
'$.each(legsEditObj.legs,function(key, flightLeg) {',
'    var isValid = true;',
'    ',
'    if (!flightLeg.airline) {',
'        model.setValidity("error", flightLeg.id, "AIRLINE", validationMessage.required);',
'        isValid = false;',
'    }',
'    else model.setValidity("valid",flightLeg.id,"AIRLINE");',
'    ',
'    if (!flightLeg.flight_number) {',
'        model.setValidity("error", flightLeg.id, "FLIGHT_NUMBER", validationMessage.required);',
'        isValid = false;',
'    }',
'    else if (!alphanumericRegex.test(flightLeg.flight_number)) { ',
'        model.setValidity("error", flightLeg.id, "FLIGHT_NUMBER", validationMessage.invalid); ',
'        isValid = false; ',
'    }',
'    else model.setValidity("valid", flightLeg.id, "FLIGHT_NUMBER");',
'    ',
'    if (!flightLeg.departure_airport) { ',
'        model.setValidity("error", flightLeg.id, "DEPARTURE_AIRPORT", validationMessage.required); ',
'        isValid = false; ',
'    }',
'    else model.setValidity("valid", flightLeg.id, "DEPARTURE_AIRPORT");',
'    ',
'    if (!flightLeg.departure_date) { ',
'        model.setValidity("error", flightLeg.id, "DEPARTURE_DATE", validationMessage.required); ',
'        isValid = false; ',
'    }',
'    else if (!isValidDate("DEPARTURE_DATE", flightLeg.departure_date, key)) { ',
'        model.setValidity("error", flightLeg.id, "DEPARTURE_DATE", validationMessage.invalid); ',
'        isValid = false; ',
'    }',
'    else model.setValidity("valid", flightLeg.id, "DEPARTURE_DATE");',
'    ',
'    if (!flightLeg.departure_time) { ',
'        model.setValidity("error", flightLeg.id, "DEPARTURE_TIME", validationMessage.required); ',
'        isValid = false; ',
'    }',
'    else if (!isValidTime("DEPARTURE_TIME", flightLeg.departure_time, key)) { ',
'        model.setValidity("error", flightLeg.id, "DEPARTURE_TIME", validationMessage.invalid); ',
'        isValid = false; ',
'    }',
'    else model.setValidity("valid", flightLeg.id, "DEPARTURE_TIME");',
'    ',
'    if (!flightLeg.destination_airport) { ',
'        model.setValidity("error", flightLeg.id, "DESTINATION_AIRPORT", validationMessage.required); ',
'        isValid = false; ',
'    }',
'    else model.setValidity("valid", flightLeg.id, "DESTINATION_AIRPORT");',
'    ',
'    if (!flightLeg.arrival_date) { ',
'        model.setValidity("error", flightLeg.id, "ARRIVAL_DATE", validationMessage.required); ',
'        isValid = false; ',
'    }',
'    else if (!isValidDate("ARRIVAL_DATE", flightLeg.arrival_date, key)) { ',
'        model.setValidity("error", flightLeg.id, "ARRIVAL_DATE", validationMessage.invalid); ',
'        isValid = false; ',
'    }',
'    else model.setValidity("valid", flightLeg.id, "ARRIVAL_DATE");',
'    ',
'    if (!flightLeg.arrival_time) { ',
'        model.setValidity("error", flightLeg.id, "ARRIVAL_TIME", validationMessage.required); ',
'        isValid = false; ',
'    }',
'    else if (!isValidTime("ARRIVAL_TIME", flightLeg.arrival_time, key)) { ',
'        model.setValidity("error", flightLeg.id, "ARRIVAL_TIME", validationMessage.invalid); ',
'        isValid = false; ',
'    }',
'    else model.setValidity("valid", flightLeg.id, "ARRIVAL_TIME");',
'    ',
'    if (isValid === false) {',
'        $(''#flightLegsGrid_ig_grid_vc .a-GV-w-scroll'').animate({scrollLeft: 1000}, 500);',
'        $(''.t-Dialog-bodyWrapperIn'').scrollTop(0);',
'    }',
'});'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(685652109028334294)
,p_event_id=>wwv_flow_api.id(685650643586334280)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => { if ($(''[aria-invalid="true"]'').length > 0) { apex.event.trigger(document, ''enable-buttons''); }}, 3000);',
'var action = $(this.triggeringElement).attr(''action-btn'');',
'if(action==''start'')return;',
'var request=''Save'';',
'var status = $(this.triggeringElement).data(''status'');',
'if ($v(''P4_EDIT_FLIGHT_LEGS'') == ''Y'' || ($v(''P4_USER_TYPE'') == ''T'' && ($v(''P4_STATUS'') == ''1'' || $v(''P4_STATUS'') == ''4''))) {',
'var widget = apex.region("flightLegsGrid").widget();',
'legsEditObj.legs.sort(function(a, b) {if (a.direction == ''O'' && b.direction == ''I'') return -1;if (a.direction == ''I'' && b.direction == ''O'') return 1;return parseInt(a.leg) - parseInt(b.leg);});',
'var model = widget.interactiveGrid("getViews").grid.model;',
'var previousLeg,outboundCount=0,inboundCount=0;',
'var validationMessage = {',
'"error": "An error occured! Please contact your system administrator.",',
'"arrivalDateSmallerThanDepartureDate": "Arrival date cannot be the same or earlier than Departure date",',
'"departureDateSmallerThanPreviousArrivalDate": "Departure date cannot be the same or earlier than previous leg Arrival date" };',
'$.each(legsEditObj.legs, function(index, currentLeg) {',
'var currentDepartureDatetime = composeDate(currentLeg.departure_date, currentLeg.departure_time);',
'var currentArrivalDatetime = composeDate(currentLeg.arrival_date, currentLeg.arrival_time);',
'if (currentArrivalDatetime <= currentDepartureDatetime) model.setValidity("error", currentLeg.id, "ARRIVAL_DATE", validationMessage.arrivalDateSmallerThanDepartureDate);',
'if (previousLeg) {',
'    var previousArrivalDatetime = composeDate(previousLeg.arrival_date, previousLeg.arrival_time);',
'    if (currentDepartureDatetime <= previousArrivalDatetime) model.setValidity("error", currentLeg.id, "DEPARTURE_DATE", validationMessage.departureDateSmallerThanPreviousArrivalDate);',
'}',
'previousLeg = currentLeg;',
'var legId = currentLeg.direction == ''O'' ? ++outboundCount : ++inboundCount;',
'currentLeg.leg = legId.toString();',
'});',
'if ($v(''P4_HANDLING_AGENT'') != '''') {',
'var isValid = apex.page.validate();',
'if (isValid && legsEditObj.legs.length > 0) {',
'apex.server.process("SET_FLIGHT_LEGS", { p_clob_01: JSON.stringify(legsEditObj) }, {',
'dataType: "json",',
'success: function(pData) {',
'model.clearChanges();',
'if (!action) request = ''Make_Offer'';',
'apex.page.submit({request:request,showWait:true,validate:true});',
'},',
'error: function(e) {',
'alert(validationMessage.error + '' '' + JSON.stringify(e));',
'apex.event.trigger(document, ''enable-buttons'');',
'$(''.t-Dialog-bodyWrapperIn'').scrollTop(0);',
'}});',
'}',
'else {',
'$(''#flightLegsGrid_ig_grid_vc .a-GV-w-scroll'').animate({scrollLeft: 1000}, 500);',
'apex.event.trigger(document, ''enable-buttons'');',
'$(''.t-Dialog-bodyWrapperIn'').scrollTop(0);',
'}}',
'else {',
'apex.message.showErrors([{',
'type:apex.message.TYPE.ERROR,',
'location:[ "inline" ],',
'pageItem:"P4_HANDLING_AGENT",',
'message:"This field is required.",',
'unsafe:false}]);',
'apex.event.trigger(document, ''enable-buttons'');',
'$(''.t-Dialog-bodyWrapperIn'').scrollTop(0);',
'}}',
'else if ($v(''P4_USER_TYPE'') == ''M'') {',
'if (status == ''2'') request = ''Maslul_Approval'';',
'else if (status == ''3'') request = ''Customer_Approval'';',
'else if (status == ''4'') request = ''Fix'';',
'else if (status == ''5'') request = ''Approve'';',
'else if (status == ''6'') request = ''Book_Flight'';',
'else if (status == ''7'') request = ''Cancel'';',
'else if (status == ''8'') request = ''Hold_Flight'';',
'if (apex.page.validate()) {',
'apex.page.submit({request:request,showWait:true,validate:true});',
'$(''.t-Dialog-bodyWrapperIn'').scrollTop(0);',
'}',
'else {',
'apex.event.trigger(document, ''enable-buttons'');',
'$(''.t-Dialog-bodyWrapperIn'').scrollTop(0);',
'}',
'}',
'else if ($v(''P4_USER_TYPE'') == ''T'') {',
'if (status == ''1'') request = ''Make_Offer'';',
'else if (status == ''6'') request = ''Book_Flight'';',
'else if (status == ''7'') request = ''Cancel'';',
'    ',
'if (apex.page.validate()) {',
'apex.page.submit({request:request,showWait:true,validate:true});',
'$(''.t-Dialog-bodyWrapperIn'').scrollTop(0);',
'}',
'else {',
'apex.event.trigger(document, ''enable-buttons'');',
'$(''.t-Dialog-bodyWrapperIn'').scrollTop(0);',
'}',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(903394139083133001)
,p_name=>'Disable all when ON HOLD'
,p_event_sequence=>395
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_display_when_cond=>':P4_STATUS = ''8'''
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(903394241544133002)
,p_event_id=>wwv_flow_api.id(903394139083133001)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_HANDLING_AGENT,P4_PNR_NUMBER,P4_FLIGHT_COST,P4_BOOKING_FEE,P4_MARKUP,P4_FLIGHT_COST_FOR_BILLING,P4_PASSANGERS_COST,P4_OFFERTIME,P4_FLIGHT_INV_REF,P4_SUMMARY_INVOICE,P4_AGENCY_REMARKS,P4_MASLUL_REMARKS'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1698416080917892324)
,p_event_id=>wwv_flow_api.id(903394139083133001)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item(''editFlightLegsBtn'').disable();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1698415945211892323)
,p_name=>'Disable all when INACTIVE'
,p_event_sequence=>405
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_display_when_cond=>':P4_IS_ACTIVE = ''0'''
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1698415857936892322)
,p_event_id=>wwv_flow_api.id(1698415945211892323)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_HANDLING_AGENT,P4_PNR_NUMBER,P4_FLIGHT_COST,P4_BOOKING_FEE,P4_MARKUP,P4_FLIGHT_COST_FOR_BILLING,P4_PASSANGERS_COST,P4_OFFERTIME,P4_FLIGHT_INV_REF,P4_SUMMARY_INVOICE,P4_AGENCY_REMARKS,P4_MASLUL_REMARKS,P4_COST_DIFFERENCE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1698415804879892321)
,p_event_id=>wwv_flow_api.id(1698415945211892323)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#flightsInfoRegion .t-Region-header'').css({ ''background-color'': ''#ebebeb !important'' });',
'$(''[action-btn]'').hide();',
'$(''<div class="inactive-header">This flight is INACTIVE!!!</div>'').insertAfter(''.header-c'');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(903394523928133004)
,p_name=>'Release Flight Click'
,p_event_sequence=>415
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(903393948437132999)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(903394633508133005)
,p_event_id=>wwv_flow_api.id(903394523928133004)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'lSpinner$=apex.util.showSpinner();',
'apex.page.submit(''Release_Flight'');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(673472896706304164)
,p_name=>'Set Status in Session'
,p_event_sequence=>425
,p_condition_element=>'P4_SEQ'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(219263430905926723)
,p_event_id=>wwv_flow_api.id(673472896706304164)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when :P4_TICKET_DOC_ID is not null then ',
'''<a class="fa fa-image show-tickets-btn" title="View Flight Ticket" href="'' ||',
'apex_page.Get_url(',
'    p_page => 6,',
'    p_items => ''P6_DOC_ID,P6_ASSIGNMENT_ID,P6_PERSON_ID,P6_REQUEST_ID'',',
'    p_values => :P4_TICKET_DOC_ID||'',''||:P4_ASSIGNMENT_ID||'',''||:P4_PERSON_ID||'',''||:P4_REQUEST_ID, ',
'    p_clear_cache => ''6'') ||''"></a>'' else '''' end into :P4_TICKET_HTML from dual;'))
,p_attribute_02=>'P4_TICKET_DOC_ID,P4_ASSIGNMENT_ID,P4_PERSON_ID,P4_REQUEST_ID'
,p_attribute_03=>'P4_TICKET_HTML'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(673473422035304164)
,p_event_id=>wwv_flow_api.id(673472896706304164)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var currentFlightState = { ',
'    ''seq'': $v(''P4_SEQ''),',
'    ''assignmentId'': $v(''P4_ASSIGNMENT_ID''),',
'    ''personId'': $v(''P4_PERSON_ID''),',
'    ''requestId'': $v(''P4_REQUEST_ID''),',
'    ''status'': $v(''P4_STATUS''),',
'    ''statusHtml'': $v(''P4_STATUS_HTML''),',
'    ''agent'': $v(''P4_HANDLING_AGENT''),',
'    ''agentName'': $v(''P4_HANDLING_AGENT_NAME''),',
'    ''ticketDocId'': $v(''P4_TICKET_DOC_ID''),',
'    ''ticketHtml'': $v(''P4_TICKET_HTML''),',
'    ''costForBilling'': $v(''P4_FLIGHT_COST_FOR_BILLING''),',
'    ''validUntil'': $v(''P4_VALID_UNTIL'')',
'}',
'sessionStorage.setItem(''currentFlightState'', JSON.stringify(currentFlightState));'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(954024094503922486)
,p_name=>'Remarks Click'
,p_event_sequence=>435
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.remarks-span,.pets-span,.arrival-date-approved-span'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$(this.triggeringElement).attr(''title'').length > 0'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(954023741117922468)
,p_event_id=>wwv_flow_api.id(954024094503922486)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var remark = $(this.triggeringElement).attr(''title'').replaceAll(''\r'',''<br/>'').replaceAll(''\n\t'',''<br/>'').replaceAll(''\n'',''<br/>'').replaceAll(''"'', ''&quot;'');',
'var hasHebrew = /[\u0590-\u05FF]/.test(remark);',
'var direction = hasHebrew ? ''rtl'' : ''ltr'';',
'$(''#remarksDialog'').find(''.t-DialogRegion-body'').html(''<h3 style="direction: '' + direction + '';">'' + remark + ''</h3>'');'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(954023181039922467)
,p_event_id=>wwv_flow_api.id(954024094503922486)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1659931909726341531)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1745625530398490557)
,p_name=>'Cost Difference Change SSH'
,p_event_sequence=>445
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_COST_DIFFERENCE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_display_when_cond=>':P4_MASLUL != ''SC'''
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1745625481383490556)
,p_event_id=>wwv_flow_api.id(1745625530398490557)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_FLIGHT_COST_FOR_BILLING'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_NUMBER(nvl(:P4_FLIGHT_COST, 0)) + TO_NUMBER(nvl(:P4_BOOKING_FEE, 0)) + TO_NUMBER(nvl(:P4_COST_DIFFERENCE, 0))'
,p_attribute_07=>'P4_FLIGHT_COST,P4_BOOKING_FEE,P4_COST_DIFFERENCE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1717453668043844934)
,p_name=>'Load From AI Dialog Close'
,p_event_sequence=>455
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == 9'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1717453602521844933)
,p_event_id=>wwv_flow_api.id(1717453668043844934)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'try {',
'    var ai_result_item = sessionStorage.getItem(''AI_RESULT'');',
'    if (!ai_result_item || ai_result_item.length == 0) ',
'        return;',
'',
'    var ai_result = JSON.parse(ai_result_item);',
'    if (!ai_result || ai_result.import === undefined || ai_result.import === false)',
'        return;',
'    ',
'    var airlines = JSON.parse(sessionStorage.getItem(''Airlines''));',
'    var airports = JSON.parse(sessionStorage.getItem(''Airports''));',
'    ',
'    $s(''P4_PNR_NUMBER'', ai_result.pnr_number);',
'    $s(''P4_FLIGHT_COST'', ai_result.flight_cost);',
'    $s(''P4_AGENCY_REMARKS'', $v(''P4_AGENCY_REMARKS'') + ''\n\n'' + ai_result.input);',
'    ',
'    let igView = apex.region(''flightLegsGrid'').call(''getViews'', ''grid'');',
'    let igModel = igView.model;',
'',
'    igModel.forEach(function(record) {',
'        if (igModel.allowDelete(record)) {',
'            igModel.deleteRecords([record]);',
'        }',
'    });',
'    ',
'    ai_result.legs.forEach(function(leg) {',
'        var newRecordId = igModel.insertNewRecord();',
'        var newRecord   = igModel.getRecord(newRecordId);',
'        ',
'        var legObj = leg.segment_number == 1 ? { d: ''1st Leg'', v: ''1'' } :',
'                     leg.segment_number == 2 ? { d: ''2nd Leg'', v: ''2'' } :',
'                     leg.segment_number == 3 ? { d: ''3rd Leg'', v: ''3'' } :',
'                     { d: ''4th Leg'', v: ''4'' };',
'        var directionObj = leg.direction == ''I'' ? { d: ''Inbound'', v: ''I'' } : { d: ''Outound'', v: ''O'' };',
'        ',
'        var airline = airlines.filter((a) => { return a.v == leg.marketing_carrier; });',
'        var departureAirport = airports.filter((a) => { return a.v == leg.origin; });',
'        var destinationAirport = airports.filter((a) => { return a.v == leg.destination; });',
'',
'        igModel.setValue(newRecord, "DIRECTION", directionObj);',
'        igModel.setValue(newRecord, "LEG", legObj);',
'        igModel.setValue(newRecord, "AIRLINE", airline.length > 0 ? airline[0] : { v: '''', d: ''''});        ',
'        igModel.setValue(newRecord, "FLIGHT_NUMBER", leg.flight_number);',
'        igModel.setValue(newRecord, "DEPARTURE_AIRPORT", departureAirport.length > 0 ? departureAirport[0] : { v: '''', d: ''''});',
'        igModel.setValue(newRecord, "DESTINATION_AIRPORT", destinationAirport.length > 0 ? destinationAirport[0] : { v: '''', d: ''''});',
'        igModel.setValue(newRecord, "DEPARTURE_DATE", leg.departure_date);',
'        igModel.setValue(newRecord, "DEPARTURE_TIME", leg.departure_time);',
'        igModel.setValue(newRecord, "ARRIVAL_DATE", leg.arrival_date);',
'        igModel.setValue(newRecord, "ARRIVAL_TIME", leg.arrival_time);',
'        igModel.setValue(newRecord, "DIRECTION_CODE", ''I'');',
'        igModel.setValue(newRecord, "LEG_CODE", legObj.v);',
'        //igModel.setValue(newRecord, "MEAL", );',
'    });',
'    ',
'    sessionStorage.removeItem(''AI_RESULT'');',
'}',
'catch (err) {',
'    alert(err);',
'}',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(673457381199304174)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Start Process'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_seq number(15) := JAFI_APEX_SHLICHUT_FLIGHTS_SEQ.nextval;',
'    v_date_approved_from varchar2(12);',
'    v_date_approved_to varchar2(12);',
'begin',
'    XX_MY_UTILS.add_msg(''start'');',
'    ',
'    if :P4_SEQ IS NULL AND :P4_MASLUL = ''LTS'' AND :P4_IS_DATE_APPROVED = ''N'' then',
'        v_date_approved_from := :P4_DATE_APPROVED_FROM;',
'        v_date_approved_to := :P4_DATE_APPROVED_TO;',
'    end if;',
'',
'    --insert process info record',
'    insert into jafi_apex_shlichut_flights(SEQ, ASSGT_ID, PERSON_ID, STATUS, CREATION_DATE, CREATED_BY, agent_name, invoker, request_id, DATE_APPROVED_FROM, DATE_APPROVED_TO)',
'    values (v_seq, :P4_ASSIGNMENT_ID, :P4_PERSON_ID, 1, sysdate, :P0_USER_NAME, :P4_HANDLING_AGENT, ''USER'', :P4_REQUEST_ID, v_date_approved_from, v_date_approved_to);',
'',
'    --insert audit record',
'    insert into jafi_apex_shl_flights_audit(AUDIT_ID, ENTITY_ID, ASSGT_ID, NEW_STATUS_ID, STATUS_UPDATE_DATE, STATUS_UPDATE_BY,request_id)',
'    values (JAFI_APEX_FLIGHTS_AUDIT_SEQ.nextval, v_seq, :P4_ASSIGNMENT_ID, 1, sysdate, :P0_USER_NAME, :P4_REQUEST_ID);',
'    ',
'    exception when others then null;',
'end;'))
,p_process_error_message=>'An Error Occurred!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(673441096848304201)
,p_process_success_message=>'Process started'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>503
,p_default_id_offset=>2556963023090302471
,p_default_owner=>'APPS'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(673457795723304174)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_max_audit_id number(15) := 0;',
'    ',
'    v_to_seg1_departure_airport varchar2(80);',
'    v_to_seg1_destination_airport varchar2(80);',
'    v_to_seg1_flight_number varchar2(20);',
'    v_to_seg1_airline varchar2(50);',
'    v_to_seg1_departure_date varchar2(12);',
'    v_to_seg1_departure_time varchar2(12);',
'    v_to_seg1_arrival_date varchar2(12);',
'    v_to_seg1_arrival_time varchar2(12);',
'    v_to_seg1_meal varchar2(30);',
'',
'    v_to_seg2_departure_airport varchar2(80);',
'    v_to_seg2_destination_airport varchar2(80);',
'    v_to_seg2_flight_number varchar2(20);',
'    v_to_seg2_airline varchar2(50);',
'    v_to_seg2_departure_date varchar2(12);',
'    v_to_seg2_departure_time varchar2(12);',
'    v_to_seg2_arrival_date varchar2(12);',
'    v_to_seg2_arrival_time varchar2(12);',
'    v_to_seg2_meal varchar2(30);',
'',
'    v_to_seg3_departure_airport varchar2(80);',
'    v_to_seg3_destination_airport varchar2(80);',
'    v_to_seg3_flight_number varchar2(20);',
'    v_to_seg3_airline varchar(50);',
'    v_to_seg3_departure_date varchar2(12);',
'    v_to_seg3_departure_time varchar2(12);',
'    v_to_seg3_arrival_date varchar2(12);',
'    v_to_seg3_arrival_time varchar2(12);',
'    v_to_seg3_meal varchar2(30);',
'',
'    v_to_seg4_departure_airport varchar2(80);',
'    v_to_seg4_destination_airport varchar2(80);',
'    v_to_seg4_flight_number varchar2(20);',
'    v_to_seg4_airline varchar2(50);',
'    v_to_seg4_departure_date varchar2(12);',
'    v_to_seg4_departure_time varchar2(12);',
'    v_to_seg4_arrival_date varchar2(12);',
'    v_to_seg4_arrival_time varchar2(12);',
'    v_to_seg4_meal varchar2(30);',
'',
'    v_from_seg1_departure_airport varchar2(80);',
'    v_from_seg1_destination_ap varchar2(80);',
'    v_from_seg1_flight_number varchar2(20);',
'    v_from_seg1_airline varchar2(50);',
'    v_from_seg1_departure_date varchar2(12);',
'    v_from_seg1_departure_time varchar2(12);',
'    v_from_seg1_arrival_date varchar2(12);',
'    v_from_seg1_arrival_time varchar2(12);',
'    v_from_seg1_meal varchar2(30);',
'',
'    v_from_seg2_departure_airport varchar2(80);',
'    v_from_seg2_destination_ap varchar2(80);',
'    v_from_seg2_flight_number varchar2(20);',
'    v_from_seg2_airline varchar2(50);',
'    v_from_seg2_departure_date varchar2(12);',
'    v_from_seg2_departure_time varchar2(12);',
'    v_from_seg2_arrival_date varchar2(12);',
'    v_from_seg2_arrival_time varchar2(12);',
'    v_from_seg2_meal varchar2(30);',
'',
'    v_from_seg3_departure_airport varchar2(80);',
'    v_from_seg3_destination_ap varchar2(80);',
'    v_from_seg3_flight_number varchar2(20);',
'    v_from_seg3_airline varchar2(50);',
'    v_from_seg3_departure_date varchar2(12);',
'    v_from_seg3_departure_time varchar2(12);',
'    v_from_seg3_arrival_date varchar2(12);',
'    v_from_seg3_arrival_time varchar2(12);',
'    v_from_seg3_meal varchar2(30);',
'',
'    v_from_seg4_departure_airport varchar2(80);',
'    v_from_seg4_destination_ap varchar2(80);',
'    v_from_seg4_flight_number varchar2(20);',
'    v_from_seg4_airline varchar2(50);',
'    v_from_seg4_departure_date varchar2(12);',
'    v_from_seg4_departure_time varchar2(12);',
'    v_from_seg4_arrival_date varchar2(12);',
'    v_from_seg4_arrival_time varchar2(12);',
'    v_from_seg4_meal varchar2(30); ',
'begin',
'    if :P4_STATUS = ''8'' then ',
'        return;',
'    end if;',
'    ',
'    ',
'    XX_MY_UTILS.add_msg('' SAVE''); ',
'    ',
'    ',
'    if ((:P4_USER_TYPE = ''T'' and :P4_STATUS in (''1'',''4'')) or :P4_EDIT_FLIGHT_LEGS = ''Y'') then',
'    begin',
'        begin',
'            select ac.c005, ac.c008, ac.c004, ac.c003, ac.c006, ac.c007, ac.c009, ac.c010, ac.c011',
'            into   v_to_seg1_departure_airport,',
'                   v_to_seg1_destination_airport,',
'                   v_to_seg1_flight_number,',
'                   v_to_seg1_airline,',
'                   v_to_seg1_departure_date,',
'                   v_to_seg1_departure_time,',
'                   v_to_seg1_arrival_date,',
'                   v_to_seg1_arrival_time,',
'                   v_to_seg1_meal',
'            from   apex_collections ac ',
'            where  ac.collection_name = ''FLIGHT_LEGS'' and ac.n001 = :P4_ASSIGNMENT_ID and ac.n002 = :P4_PERSON_ID and ac.c001 = ''O'' and ac.c002 = ''1'';',
'            exception when no_data_found then null;',
'        end;',
'        begin',
'            select ac.c005, ac.c008, ac.c004, ac.c003, ac.c006, ac.c007, ac.c009, ac.c010, ac.c011',
'            into   v_to_seg2_departure_airport,',
'                   v_to_seg2_destination_airport,',
'                   v_to_seg2_flight_number,',
'                   v_to_seg2_airline,',
'                   v_to_seg2_departure_date,',
'                   v_to_seg2_departure_time,',
'                   v_to_seg2_arrival_date,',
'                   v_to_seg2_arrival_time,',
'                   v_to_seg2_meal',
'            from   apex_collections ac ',
'            where  ac.collection_name = ''FLIGHT_LEGS'' and ac.n001 = :P4_ASSIGNMENT_ID and ac.n002 = :P4_PERSON_ID and ac.c001 = ''O'' and ac.c002 = ''2'';',
'            exception when no_data_found then null;',
'        end;',
'        begin',
'            select ac.c005, ac.c008, ac.c004, ac.c003, ac.c006, ac.c007, ac.c009, ac.c010, ac.c011',
'            into   v_to_seg3_departure_airport,',
'                   v_to_seg3_destination_airport,',
'                   v_to_seg3_flight_number,',
'                   v_to_seg3_airline,',
'                   v_to_seg3_departure_date,',
'                   v_to_seg3_departure_time,',
'                   v_to_seg3_arrival_date,',
'                   v_to_seg3_arrival_time,',
'                   v_to_seg3_meal',
'            from   apex_collections ac ',
'            where  ac.collection_name = ''FLIGHT_LEGS'' and ac.n001 = :P4_ASSIGNMENT_ID and ac.n002 = :P4_PERSON_ID and ac.c001 = ''O'' and ac.c002 = ''3'';',
'            exception when no_data_found then null;',
'        end;',
'        begin',
'            select ac.c005, ac.c008, ac.c004, ac.c003, ac.c006, ac.c007, ac.c009, ac.c010, ac.c011',
'            into   v_to_seg4_departure_airport,',
'                   v_to_seg4_destination_airport,',
'                   v_to_seg4_flight_number,',
'                   v_to_seg4_airline,',
'                   v_to_seg4_departure_date,',
'                   v_to_seg4_departure_time,',
'                   v_to_seg4_arrival_date,',
'                   v_to_seg4_arrival_time,',
'                   v_to_seg4_meal',
'            from   apex_collections ac ',
'            where  ac.collection_name = ''FLIGHT_LEGS'' and ac.n001 = :P4_ASSIGNMENT_ID and ac.n002 = :P4_PERSON_ID and ac.c001 = ''O'' and ac.c002 = ''4'';',
'            exception when no_data_found then null;',
'        end;',
'        begin',
'            select ac.c005, ac.c008, ac.c004, ac.c003, ac.c006, ac.c007, ac.c009, ac.c010, ac.c011',
'            into   v_from_seg1_departure_airport,',
'                   v_from_seg1_destination_ap,',
'                   v_from_seg1_flight_number,',
'                   v_from_seg1_airline,',
'                   v_from_seg1_departure_date,',
'                   v_from_seg1_departure_time,',
'                   v_from_seg1_arrival_date,',
'                   v_from_seg1_arrival_time,',
'                   v_from_seg1_meal',
'            from   apex_collections ac ',
'            where  ac.collection_name = ''FLIGHT_LEGS'' and ac.n001 = :P4_ASSIGNMENT_ID and ac.n002 = :P4_PERSON_ID and ac.c001 = ''I'' and ac.c002 = ''1'';',
'            exception when no_data_found then null;',
'        end;',
'        begin',
'            select ac.c005, ac.c008, ac.c004, ac.c003, ac.c006, ac.c007, ac.c009, ac.c010, ac.c011',
'            into   v_from_seg2_departure_airport,',
'                   v_from_seg2_destination_ap,',
'                   v_from_seg2_flight_number,',
'                   v_from_seg2_airline,',
'                   v_from_seg2_departure_date,',
'                   v_from_seg2_departure_time,',
'                   v_from_seg2_arrival_date,',
'                   v_from_seg2_arrival_time,',
'                   v_from_seg2_meal',
'            from   apex_collections ac ',
'            where  ac.collection_name = ''FLIGHT_LEGS'' and ac.n001 = :P4_ASSIGNMENT_ID and ac.n002 = :P4_PERSON_ID and ac.c001 = ''I'' and ac.c002 = ''2'';',
'            exception when no_data_found then null;',
'        end;',
'        begin',
'            select ac.c005, ac.c008, ac.c004, ac.c003, ac.c006, ac.c007, ac.c009, ac.c010, ac.c011',
'            into   v_from_seg3_departure_airport,',
'                   v_from_seg3_destination_ap,',
'                   v_from_seg3_flight_number,',
'                   v_from_seg3_airline,',
'                   v_from_seg3_departure_date,',
'                   v_from_seg3_departure_time,',
'                   v_from_seg3_arrival_date,',
'                   v_from_seg3_arrival_time,',
'                   v_from_seg3_meal',
'            from   apex_collections ac ',
'            where  ac.collection_name = ''FLIGHT_LEGS'' and ac.n001 = :P4_ASSIGNMENT_ID and ac.n002 = :P4_PERSON_ID and ac.c001 = ''I'' and ac.c002 = ''3'';',
'            exception when no_data_found then null;',
'        end;',
'        begin',
'            select ac.c005, ac.c008, ac.c004, ac.c003, ac.c006, ac.c007, ac.c009, ac.c010, ac.c011',
'            into   v_from_seg4_departure_airport,',
'                   v_from_seg4_destination_ap,',
'                   v_from_seg4_flight_number,',
'                   v_from_seg4_airline,',
'                   v_from_seg4_departure_date,',
'                   v_from_seg4_departure_time,',
'                   v_from_seg4_arrival_date,',
'                   v_from_seg4_arrival_time,',
'                   v_from_seg4_meal',
'            from   apex_collections ac ',
'            where  ac.collection_name = ''FLIGHT_LEGS'' and ac.n001 = :P4_ASSIGNMENT_ID and ac.n002 = :P4_PERSON_ID and ac.c001 = ''I'' and ac.c002 = ''4'';',
'            exception when no_data_found then null;',
'        end;',
'  ',
'        update jafi_apex_shlichut_flights',
'        set    status = :P4_STATUS,',
'               proposal_year = :P4_PROPOSAL_YEAR,',
'               pnr_number = case when :P4_USER_TYPE = ''T'' then :P4_PNR_NUMBER else pnr_number end,',
'               flight_cost = case when :P4_USER_TYPE = ''M'' or (:P4_USER_TYPE = ''T'' and :P4_STATUS in (''1'',''4'')) then :P4_FLIGHT_COST else flight_cost end,',
'               OFFERTIME = case when :P4_USER_TYPE = ''T'' and :P4_STATUS in (''1'',''4'') then to_number(:P4_OFFERTIME) else OFFERTIME end,',
'               BOOKING_FEE = case when :P4_USER_TYPE = ''T'' then to_number(:P4_BOOKING_FEE) else BOOKING_FEE end,',
'               MARKUP = case when :P4_USER_TYPE = ''M'' then to_number(:P4_MARKUP) else MARKUP end,',
'               PASSANGERS_COST = case when :P4_USER_TYPE = ''T'' then to_number(:P4_PASSANGERS_COST) else PASSANGERS_COST end,',
'               COST_DIFFERENCE = to_number(nvl(:P4_COST_DIFFERENCE, 0)),',
'               flight_cost_for_billing = case when :P4_FLIGHT_COST_FOR_BILLING is not null then to_number(:P4_FLIGHT_COST_FOR_BILLING)',
'                                              else nvl(to_number(:P4_FLIGHT_COST), 0) + nvl(to_number(:P4_MARKUP), 0) + nvl(to_number(:P4_BOOKING_FEE), 0) end,',
'               agency_remarks = case when :P4_USER_TYPE = ''T'' then :P4_AGENCY_REMARKS else agency_remarks end,',
'               MASLUL_REMARKS = case when :P4_USER_TYPE = ''M'' then :P4_MASLUL_REMARKS else MASLUL_REMARKS end,',
'               FLIGHT_INV_REF = :P4_FLIGHT_INV_REF,',
'               SUMMARY_INVOICE = :P4_SUMMARY_INVOICE,',
'               last_update_date = sysdate,',
'               last_updated_by = :P0_USER_NAME,',
'               agent_name = :P4_HANDLING_AGENT,',
'               invoker = ''USER'',',
'               to_seg1_departure_airport = v_to_seg1_departure_airport,',
'               to_seg1_destination_airport = v_to_seg1_destination_airport,',
'               to_seg1_flight_number = v_to_seg1_flight_number,',
'               to_seg1_airline = v_to_seg1_airline,',
'               to_seg1_departure_date = v_to_seg1_departure_date,',
'               to_seg1_departure_time = v_to_seg1_departure_time,',
'               to_seg1_arrival_date = v_to_seg1_arrival_date,',
'               to_seg1_arrival_time = v_to_seg1_arrival_time,',
'               to_seg1_meal = v_to_seg1_meal,',
'',
'               to_seg2_departure_airport = v_to_seg2_departure_airport,',
'               to_seg2_destination_airport = v_to_seg2_destination_airport,',
'               to_seg2_flight_number = v_to_seg2_flight_number,',
'               to_seg2_airline = v_to_seg2_airline,',
'               to_seg2_departure_date = v_to_seg2_departure_date,',
'               to_seg2_departure_time = v_to_seg2_departure_time,',
'               to_seg2_arrival_date = v_to_seg2_arrival_date,',
'               to_seg2_arrival_time = v_to_seg2_arrival_time,',
'               to_seg2_meal = v_to_seg2_meal,',
'',
'               to_seg3_departure_airport = v_to_seg3_departure_airport,',
'               to_seg3_destination_airport = v_to_seg3_destination_airport,',
'               to_seg3_flight_number = v_to_seg3_flight_number,',
'               to_seg3_airline = v_to_seg3_airline,',
'               to_seg3_departure_date = v_to_seg3_departure_date,',
'               to_seg3_departure_time = v_to_seg3_departure_time,',
'               to_seg3_arrival_date = v_to_seg3_arrival_date,',
'               to_seg3_arrival_time = v_to_seg3_arrival_time,',
'               to_seg3_meal = v_to_seg3_meal,',
'',
'               to_seg4_departure_airport = v_to_seg4_departure_airport,',
'               to_seg4_destination_airport = v_to_seg4_destination_airport,',
'               to_seg4_flight_number = v_to_seg4_flight_number,',
'               to_seg4_airline = v_to_seg4_airline,',
'               to_seg4_departure_date = v_to_seg4_departure_date,',
'               to_seg4_departure_time = v_to_seg4_departure_time,',
'               to_seg4_arrival_date = v_to_seg4_arrival_date,',
'               to_seg4_arrival_time = v_to_seg4_arrival_time,',
'               to_seg4_meal = v_to_seg4_meal,',
'',
'               from_seg1_departure_airport = v_from_seg1_departure_airport,',
'               from_seg1_destination_airport = v_from_seg1_destination_ap,',
'               from_seg1_flight_number = v_from_seg1_flight_number,',
'               from_seg1_airline = v_from_seg1_airline,',
'               from_seg1_departure_date = v_from_seg1_departure_date,',
'               from_seg1_departure_time = v_from_seg1_departure_time,',
'               from_seg1_arrival_date = v_from_seg1_arrival_date,',
'               from_seg1_arrival_time = v_from_seg1_arrival_time,',
'               from_seg1_meal = v_from_seg1_meal,',
'',
'               from_seg2_departure_airport = v_from_seg2_departure_airport,',
'               from_seg2_destination_airport = v_from_seg2_destination_ap,',
'               from_seg2_flight_number = v_from_seg2_flight_number,',
'               from_seg2_airline = v_from_seg2_airline,',
'               from_seg2_departure_date = v_from_seg2_departure_date,',
'               from_seg2_departure_time = v_from_seg2_departure_time,',
'               from_seg2_arrival_date = v_from_seg2_arrival_date,',
'               from_seg2_arrival_time = v_from_seg2_arrival_time,',
'               from_seg2_meal = v_from_seg2_meal,',
'',
'               from_seg3_departure_airport = v_from_seg3_departure_airport,',
'               from_seg3_destination_airport = v_from_seg3_destination_ap,',
'               from_seg3_flight_number = v_from_seg3_flight_number,',
'               from_seg3_airline = v_from_seg3_airline,',
'               from_seg3_departure_date = v_from_seg3_departure_date,',
'               from_seg3_departure_time = v_from_seg3_departure_time,',
'               from_seg3_arrival_date = v_from_seg3_arrival_date,',
'               from_seg3_arrival_time = v_from_seg3_arrival_time,',
'               from_seg3_meal = v_from_seg3_meal,',
'',
'               from_seg4_departure_airport = v_from_seg4_departure_airport,',
'               from_seg4_destination_airport = v_from_seg4_destination_ap,',
'               from_seg4_flight_number = v_from_seg4_flight_number,',
'               from_seg4_airline = v_from_seg4_airline,',
'               from_seg4_departure_date = v_from_seg4_departure_date,',
'               from_seg4_departure_time = v_from_seg4_departure_time,',
'               from_seg4_arrival_date = v_from_seg4_arrival_date,',
'               from_seg4_arrival_time = v_from_seg4_arrival_time,',
'               from_seg4_meal = v_from_seg4_meal',
'        where ASSGT_ID = :P4_ASSIGNMENT_ID and PERSON_ID = :P4_PERSON_ID ',
'              and (NVL(:P4_REQUEST_ID,1) = 1  OR :P4_REQUEST_ID = request_id) ',
'              AND  seq = :P4_SEQ',
'              and status != ''7'';',
'    end;',
'    else',
'        update jafi_apex_shlichut_flights',
'        set    status = :P4_STATUS,',
'               proposal_year = :P4_PROPOSAL_YEAR,',
'               pnr_number = case when :P4_USER_TYPE = ''T'' then :P4_PNR_NUMBER else pnr_number end,',
'               flight_cost = case when :P4_USER_TYPE = ''M'' or (:P4_USER_TYPE = ''T'' and :P4_STATUS in (''1'',''4'')) then :P4_FLIGHT_COST else flight_cost end,',
'               OFFERTIME = case when :P4_USER_TYPE = ''T'' and :P4_STATUS in (''1'',''4'') then to_number(:P4_OFFERTIME) else OFFERTIME end,',
'               BOOKING_FEE = case when :P4_USER_TYPE = ''T'' then to_number(:P4_BOOKING_FEE) else BOOKING_FEE end,',
'               MARKUP = case when :P4_USER_TYPE = ''M'' then to_number(:P4_MARKUP) else MARKUP end,',
'               PASSANGERS_COST = case when :P4_USER_TYPE = ''T'' then to_number(:P4_PASSANGERS_COST) else PASSANGERS_COST end,',
'               COST_DIFFERENCE = to_number(nvl(:P4_COST_DIFFERENCE, 0)),',
'               flight_cost_for_billing = case when :P4_FLIGHT_COST_FOR_BILLING is not null then to_number(:P4_FLIGHT_COST_FOR_BILLING)',
'                                              else (case when :P4_STATUS = ''6'' then ',
'                                                              nvl(to_number(:P4_FLIGHT_COST), 0) + nvl(to_number(:P4_MARKUP), 0) + nvl(to_number(:P4_BOOKING_FEE), 0) + nvl(to_number(:P4_COST_DIFFERENCE), 0)',
'                                                         else nvl(to_number(:P4_FLIGHT_COST), 0) + nvl(to_number(:P4_MARKUP), 0) + nvl(to_number(:P4_BOOKING_FEE), 0) end)',
'                                              end,',
'               agency_remarks = case when :P4_USER_TYPE = ''T'' then :P4_AGENCY_REMARKS else agency_remarks end,',
'               MASLUL_REMARKS = case when :P4_USER_TYPE = ''M'' then :P4_MASLUL_REMARKS else MASLUL_REMARKS end,',
'               FLIGHT_INV_REF = :P4_FLIGHT_INV_REF,',
'               SUMMARY_INVOICE = :P4_SUMMARY_INVOICE,',
'               last_update_date = sysdate,',
'               last_updated_by = :P0_USER_NAME,',
'               agent_name = :P4_HANDLING_AGENT,',
'               invoker = ''USER''',
'        where ASSGT_ID = :P4_ASSIGNMENT_ID and PERSON_ID = :P4_PERSON_ID   ',
'                and (NVL(:P4_REQUEST_ID,1) = 1  OR :P4_REQUEST_ID = request_id) ',
'                and  seq = :P4_SEQ                 ',
'                and status != ''7'';',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'Start_Process_New,IR[importTemplateIR]_CSV,Edit_Flight_Legs,Release_Flight,Hold_Flight'
,p_process_when_type=>'REQUEST_NOT_IN_CONDITION'
,p_process_success_message=>'Data saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(721162388530152723)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Ticket'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_blob                  BLOB;',
'    l_filename              VARCHAR2(100);',
'    l_mime_type             VARCHAR2(100);',
'    l_document_id           NUMBER;',
'    l_object_version_number NUMBER;',
'    l_rds                   VARCHAR2(100);',
'    l_file_names            apex_t_varchar2;',
'BEGIN',
'',
'    XX_MY_UTILS.add_msg(''DROR Save Ticket - Start'');',
' ',
'    -- Single SELECT with computed filename',
'    SELECT blob_content,',
'           ''ticket_'' || TO_CHAR(SYSDATE, ''YYYYMMDDHH24MISS'') || ''.''||SUBSTR(filename, INSTR(filename, ''.'', -1) + 1),',
'           mime_type',
'    INTO   l_blob, l_filename, l_mime_type',
'    FROM   apex_application_temp_files',
'    WHERE  NAME = :P4_TICKET;',
'    ',
'    XX_MY_UTILS.add_msg(''DROR Save Ticket - Create Document'');',
'    ',
'    IF :P2_SELECTED_RDS = ''#summerCampsInfoRegion'' THEN l_rds := ''SC'';',
'    ELSIF :P2_SELECTED_RDS = ''#shinshinimInfoRegion'' THEN l_rds := ''SSH'';',
'    END IF;',
'',
'    -- Create document record',
'    irc_document_api.create_document(',
'        p_type                  => ''FLIGHT_TICKET_''||l_rds,',
'        p_person_id             => :P4_PERSON_ID,',
'        p_effective_date        => SYSDATE,',
'        p_mime_type             => l_mime_type,',
'        p_file_name             => l_filename,',
'        p_description           => ''uploaded by applicant in Apex 116'',',
'        p_document_id           => l_document_id,',
'        p_object_version_number => l_object_version_number',
'    );',
'    ',
'    XX_MY_UTILS.add_msg(''DROR Save Ticket - Merge'');',
'    ',
'    -- Merge both UPDATEs into one to reduce round-trips',
unistr('    -- (kept separate since they target different tables \2014 see note below)'),
'    UPDATE irc_documents',
'    SET    binary_doc = l_blob',
'    WHERE  document_id = l_document_id;',
'    ',
'    XX_MY_UTILS.add_msg(''DROR Save Ticket - Process Document'');',
'    ',
'    irc_document_api.process_document(l_document_id);',
'    ',
'    XX_MY_UTILS.add_msg(''DROR Save Ticket - Update Flight'');',
'',
'    --Save ticket id and Book Flight',
'    UPDATE jafi_apex_shlichut_flights',
'    SET    ticket_doc_id = l_document_id,',
'           STATUS = 6, ',
'           LAST_UPDATE_DATE = sysdate, ',
'           LAST_UPDATED_BY = :P0_USER_NAME,',
'           invoker = ''USER''',
'    WHERE  seq = :P4_SEQ;',
'    ',
'    XX_MY_UTILS.add_msg(''DROR Save Ticket - Insert Audit if Booked'');',
'    ',
'    if :P4_STATUS != ''6'' then',
'        --insert audit record',
'        insert into jafi_apex_shl_flights_audit(AUDIT_ID, ENTITY_ID, ASSGT_ID, OLD_STATUS_ID, NEW_STATUS_ID, STATUS_UPDATE_DATE, STATUS_UPDATE_BY, request_id)',
'        values (JAFI_APEX_FLIGHTS_AUDIT_SEQ.nextval, :P4_SEQ, :P4_ASSIGNMENT_ID, :P4_STATUS, 6, sysdate, :P0_USER_NAME, :P4_REQUEST_ID);',
'    end if;',
'    ',
'    XX_MY_UTILS.add_msg(''DROR Save Ticket - End'');',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        xx_my_utils.add_msg(''App 116 error: No file found for ticket: '' || :P4_TICKET);',
'        RAISE;',
'    WHEN OTHERS THEN',
'        xx_my_utils.add_msg(''App 116 error: '' || SQLCODE || '' - '' || SQLERRM);',
'        RAISE;',
'END;'))
,p_process_error_message=>'Error in process : Save Ticket'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
':REQUEST not in (''Start_Process_New'',''IR[importTemplateIR]_CSV'') and :P4_TICKET is not null and length(:P4_TICKET) > 0 and ',
'((:P4_USER_TYPE = ''T'' and :P4_STATUS in (''5'', ''6'')) or',
' (:P4_USER_TYPE = ''M'' and :P4_STATUS = ''6''))'))
,p_process_when_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(790562592588989415)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Invoice'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_blob                  BLOB;',
'    l_filename              VARCHAR2(100);',
'    l_mime_type             VARCHAR2(100);',
'    l_document_id           NUMBER;',
'    l_object_version_number NUMBER;',
'BEGIN',
'',
'XX_MY_UTILS.add_msg(''2 '');',
'  ',
'  ',
'    -- Single SELECT with computed filename',
'    SELECT blob_content,',
'           ''invoice_'' || TO_CHAR(SYSDATE, ''YYYYMMDDHH24MISS'') || ''.''||SUBSTR(filename, INSTR(filename, ''.'', -1) + 1),',
'           mime_type',
'    INTO   l_blob, l_filename, l_mime_type',
'    FROM   apex_application_temp_files',
'    WHERE  NAME = :P4_INVOICE;',
'',
'    -- Create document record',
'    irc_document_api.create_document(',
'        p_type                  => ''FLIGHT_INVOICE'',',
'        p_person_id             => :P4_PERSON_ID,',
'        p_effective_date        => SYSDATE,',
'        p_mime_type             => l_mime_type,',
'        p_file_name             => l_filename,',
'        p_description           => ''uploaded by applicant in Apex 116'',',
'        p_document_id           => l_document_id,',
'        p_object_version_number => l_object_version_number',
'    );',
'',
'    -- Merge both UPDATEs into one to reduce round-trips',
unistr('    -- (kept separate since they target different tables \2014 see note below)'),
'    UPDATE irc_documents',
'    SET    binary_doc = l_blob',
'    WHERE  document_id = l_document_id;',
'',
'    UPDATE jafi_apex_shlichut_flights',
'    SET    invoice_doc_id = l_document_id,',
'           invoker = ''USER''',
'    WHERE  assgt_id  = :P4_ASSIGNMENT_ID',
'    AND    person_id = :P4_PERSON_ID',
'    AND    (NVL(:P4_REQUEST_ID,1) = 1  OR :P4_REQUEST_ID = request_id);',
'',
'    irc_document_api.process_document(l_document_id);',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        xx_my_utils.add_msg(''App 116 error: No file found for invoice: '' || :P4_INVOICE);',
'        RAISE;',
'    WHEN OTHERS THEN',
'        xx_my_utils.add_msg(''App 116 error: '' || SQLERRM);',
'        RAISE;',
'END;'))
,p_process_error_message=>'Error in process : Save Invoice'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST not in (''Start_Process_New'',''IR[importTemplateIR]_CSV'') and :P4_INVOICE is not null and length(:P4_INVOICE) > 0 and 1=2'
,p_process_when_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(673458183033304173)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Make Offer'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'',
'XX_MY_UTILS.add_msg('' Make Offer '');',
' ',
' ',
' ',
'    --update process info record',
'    update jafi_apex_shlichut_flights',
'    set STATUS = 2, ',
'        LAST_UPDATE_DATE = sysdate, ',
'          offer_creation_date =  sysdate,',
'        LAST_UPDATED_BY = :P0_USER_NAME,',
'        invoker = ''USER''',
'    where seq = :P4_SEQ;',
'    ',
'    --insert audit record',
'    insert into jafi_apex_shl_flights_audit(AUDIT_ID, ENTITY_ID, ASSGT_ID, OLD_STATUS_ID, NEW_STATUS_ID, STATUS_UPDATE_DATE, STATUS_UPDATE_BY)',
'    values (JAFI_APEX_FLIGHTS_AUDIT_SEQ.nextval, :P4_SEQ, :P4_ASSIGNMENT_ID, :P4_STATUS, 2, sysdate, :P0_USER_NAME);',
'end;'))
,p_process_error_message=>'An Error Occurred!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'Make_Offer'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>' and offer submitted!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(673460621678304172)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Maslul Approval'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'',
'XX_MY_UTILS.add_msg('' 4 '');',
' ',
' ',
' ',
'    --update process info record',
'    update jafi_apex_shlichut_flights',
'    set STATUS = 3, ',
'        LAST_UPDATE_DATE = sysdate, ',
'        LAST_UPDATED_BY = :P0_USER_NAME,',
'        invoker = ''USER''',
'    where seq = :P4_SEQ;',
'    ',
'    --insert audit record',
'    insert into jafi_apex_shl_flights_audit(AUDIT_ID, ENTITY_ID, ASSGT_ID, OLD_STATUS_ID, NEW_STATUS_ID, STATUS_UPDATE_DATE, STATUS_UPDATE_BY)',
'    values (JAFI_APEX_FLIGHTS_AUDIT_SEQ.nextval, :P4_SEQ, :P4_ASSIGNMENT_ID, :P4_STATUS, 3, sysdate, :P0_USER_NAME);',
'end;'))
,p_process_error_message=>'An Error Occurred!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'Maslul_Approval'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>' and maslul approved!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(673458539233304173)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Customer Approval'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'',
'XX_MY_UTILS.add_msg('' 5 '');',
' ',
' ',
' ',
'    --update process info record',
'    update jafi_apex_shlichut_flights',
'    set STATUS = 5, ',
'        LAST_UPDATE_DATE = sysdate, ',
'        LAST_UPDATED_BY = :P0_USER_NAME,',
'        invoker = ''USER''',
'    where seq = :P4_SEQ;',
'    ',
'    --insert audit record',
'    insert into jafi_apex_shl_flights_audit(AUDIT_ID, ENTITY_ID, ASSGT_ID, OLD_STATUS_ID, NEW_STATUS_ID, STATUS_UPDATE_DATE, STATUS_UPDATE_BY)',
'    values (JAFI_APEX_FLIGHTS_AUDIT_SEQ.nextval, :P4_SEQ, :P4_ASSIGNMENT_ID, :P4_STATUS, 5, sysdate, :P0_USER_NAME);',
'end;'))
,p_process_error_message=>'An Error Occurred!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'Customer_Approval'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>' and customer approved!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(903395214994133011)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Approve'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'',
'XX_MY_UTILS.add_msg('' 6 '');',
'  ',
'  ',
'    --update process info record',
'    update jafi_apex_shlichut_flights',
'    set STATUS = 5, ',
'        LAST_UPDATE_DATE = sysdate, ',
'        LAST_UPDATED_BY = :P0_USER_NAME,',
'        invoker = ''USER''',
'    where seq = :P4_SEQ;',
'    ',
'    --insert audit record',
'    insert into jafi_apex_shl_flights_audit(AUDIT_ID, ENTITY_ID, ASSGT_ID, OLD_STATUS_ID, NEW_STATUS_ID, STATUS_UPDATE_DATE, STATUS_UPDATE_BY)',
'    values (JAFI_APEX_FLIGHTS_AUDIT_SEQ.nextval, :P4_SEQ, :P4_ASSIGNMENT_ID, :P4_STATUS, 5, sysdate, :P0_USER_NAME);',
'end;'))
,p_process_error_message=>'An Error Occurred!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'Approve'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>' and approved!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(673459022815304173)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fix'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'',
'XX_MY_UTILS.add_msg('' 7 '');',
'  ',
'  ',
'    --update process info record',
'    update jafi_apex_shlichut_flights',
'    set STATUS = 4, ',
'        LAST_UPDATE_DATE = sysdate, ',
'        LAST_UPDATED_BY = :P0_USER_NAME,',
'        invoker = ''USER''',
'    where seq = :P4_SEQ;',
'    ',
'    --insert audit record',
'    insert into jafi_apex_shl_flights_audit(AUDIT_ID, ENTITY_ID, ASSGT_ID, OLD_STATUS_ID, NEW_STATUS_ID, STATUS_UPDATE_DATE, STATUS_UPDATE_BY)',
'    values (JAFI_APEX_FLIGHTS_AUDIT_SEQ.nextval, :P4_SEQ, :P4_ASSIGNMENT_ID, :P4_STATUS, 4, sysdate, :P0_USER_NAME);',
'end;'))
,p_process_error_message=>'An Error Occurred!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'Fix'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>' and offer fix submitted!'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>503
,p_default_id_offset=>2556963023090302471
,p_default_owner=>'APPS'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(685651773726334291)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Book Flight'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'XX_MY_UTILS.add_msg('' 8 '');',
'  ',
'  ',
'    --update process info record',
'    update jafi_apex_shlichut_flights',
'    set STATUS = 6, ',
'        LAST_UPDATE_DATE = sysdate, ',
'        LAST_UPDATED_BY = :P0_USER_NAME,',
'        invoker = ''USER''',
'    where seq = :P4_SEQ;',
'    ',
'    --insert audit record',
'    insert into jafi_apex_shl_flights_audit(AUDIT_ID, ENTITY_ID, ASSGT_ID, OLD_STATUS_ID, NEW_STATUS_ID, STATUS_UPDATE_DATE, STATUS_UPDATE_BY, request_id)',
'    values (JAFI_APEX_FLIGHTS_AUDIT_SEQ.nextval, :P4_SEQ, :P4_ASSIGNMENT_ID, :P4_STATUS, 6, sysdate, :P0_USER_NAME,:P4_REQUEST_ID);',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'Book_Flight'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>' and flight is booked!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(673461012407304172)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Cancel'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'XX_MY_UTILS.add_msg(''9 '');',
' ',
' ',
'    --update process info record',
'    update jafi_apex_shlichut_flights',
'    set STATUS = 7, ',
'        LAST_UPDATE_DATE = sysdate, ',
'        LAST_UPDATED_BY = :P0_USER_NAME,',
'        invoker = ''USER''',
'    where seq = :P4_SEQ;',
'    ',
'    --insert audit record',
'    insert into jafi_apex_shl_flights_audit(AUDIT_ID, ENTITY_ID, ASSGT_ID, OLD_STATUS_ID, NEW_STATUS_ID, STATUS_UPDATE_DATE, STATUS_UPDATE_BY,request_id)',
'    values (JAFI_APEX_FLIGHTS_AUDIT_SEQ.nextval, :P4_SEQ, :P4_ASSIGNMENT_ID, :P4_STATUS, 7, sysdate, :P0_USER_NAME,:P4_REQUEST_ID);',
'end;'))
,p_process_error_message=>'An Error Occurred!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'Cancel'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>' and flight is cancelled!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(673459415216304173)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Hold Flight'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'XX_MY_UTILS.add_msg('' 10 '');',
' ',
' ',
' ',
'    --update process info record',
'    update jafi_apex_shlichut_flights',
'    set STATUS = 8, ',
'        LAST_UPDATE_DATE = sysdate, ',
'        LAST_UPDATED_BY = :P0_USER_NAME,',
'        invoker = ''USER''',
'    where seq = :P4_SEQ;',
'    ',
'    --insert audit record',
'    insert into jafi_apex_shl_flights_audit(AUDIT_ID, ENTITY_ID, ASSGT_ID, OLD_STATUS_ID, NEW_STATUS_ID, STATUS_UPDATE_DATE, STATUS_UPDATE_BY,request_id)',
'    values (JAFI_APEX_FLIGHTS_AUDIT_SEQ.nextval, :P4_SEQ, :P4_ASSIGNMENT_ID, :P4_STATUS, 8, sysdate, :P0_USER_NAME, :P4_REQUEST_ID);',
'end;'))
,p_process_error_message=>'An Error Occurred!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'Hold_Flight'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Flight is on hold!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(903394107267133000)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Release Flight'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'XX_MY_UTILS.add_msg(''11 '');',
' ',
' ',
' ',
'    --update process info record',
'    update jafi_apex_shlichut_flights',
'    set STATUS = 1, ',
'        LAST_UPDATE_DATE = sysdate, ',
'        LAST_UPDATED_BY = :P0_USER_NAME,',
'        invoker = ''USER''',
'    where seq = :P4_SEQ;',
'    ',
'    --insert audit record',
'    insert into jafi_apex_shl_flights_audit(AUDIT_ID, ENTITY_ID, ASSGT_ID, OLD_STATUS_ID, NEW_STATUS_ID, STATUS_UPDATE_DATE, STATUS_UPDATE_BY,request_id)',
'    values (JAFI_APEX_FLIGHTS_AUDIT_SEQ.nextval, :P4_SEQ, :P4_ASSIGNMENT_ID, :P4_STATUS, 1, sysdate, :P0_USER_NAME,:P4_REQUEST_ID);',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'Release_Flight'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Flight released!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(903393865299132998)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reset Edit Flight Legs'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'if :P4_EDIT_FLIGHT_LEGS = ''Y'' then ',
'    :P4_EDIT_FLIGHT_LEGS := null;',
'end if;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'Edit_Flight_Legs'
,p_process_when_type=>'REQUEST_NOT_EQUAL_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(960299556059389755)
,p_process_sequence=>150
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Refresh Materialized View'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    dbms_snapshot.refresh(''APPS.JAFI_FLIGHT_PASSPORT_INFO_MV'');',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(673459826293304172)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get User Restrictions'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin  ',
'    -- Block 1: User permissions',
'    select max(m.ATTRIBUTE1), max(m.ATTRIBUTE2), max(m.ATTRIBUTE3)',
'    into :P4_USER_TYPE, :P4_USER_MASLULIM, :P4_USER_STATUSES',
'    from FND_LOOKUP_VALUES m',
'    where m.LOOKUP_TYPE = ''JAFI_SHLICHUT_FLIGHTS_USERS''',
'      and m.LANGUAGE = ''US''',
'      and lower(m.meaning) = lower(:P0_USER_NAME);',
'',
'    -- Block 2: Process started check',
'    select nvl(max(''Y''), ''N'')',
'    into :P4_PROCESS_STARTED',
'    from jafi_apex_shlichut_flights f',
'    where f.ASSGT_ID  = :P4_ASSIGNMENT_ID',
'      and f.PERSON_ID = :P4_PERSON_ID',
'      and f.STATUS != ''7''',
'      and (NVL(:P4_REQUEST_ID,1) = 1  OR :P4_REQUEST_ID = f.request_id);',
'end;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(673461814826304171)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Flight Information - Get Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_to_seg1_departure_airport     VARCHAR2(80);',
'    v_to_seg1_destination_airport   VARCHAR2(80);',
'    v_to_seg1_flight_number         VARCHAR2(20);',
'    v_to_seg1_airline               VARCHAR2(50);',
'    v_to_seg1_departure_date        VARCHAR2(12);',
'    v_to_seg1_departure_time        VARCHAR2(12);',
'    v_to_seg1_arrival_date          VARCHAR2(12);',
'    v_to_seg1_arrival_time          VARCHAR2(12);',
'    v_to_seg1_meal                  VARCHAR2(30);',
'    v_to_seg2_departure_airport     VARCHAR2(80);',
'    v_to_seg2_destination_airport   VARCHAR2(80);',
'    v_to_seg2_flight_number         VARCHAR2(20);',
'    v_to_seg2_airline               VARCHAR2(50);',
'    v_to_seg2_departure_date        VARCHAR2(12);',
'    v_to_seg2_departure_time        VARCHAR2(12);',
'    v_to_seg2_arrival_date          VARCHAR2(12);',
'    v_to_seg2_arrival_time          VARCHAR2(12);',
'    v_to_seg2_meal                  VARCHAR2(30);',
'    v_to_seg3_departure_airport     VARCHAR2(80);',
'    v_to_seg3_destination_airport   VARCHAR2(80);',
'    v_to_seg3_flight_number         VARCHAR2(20);',
'    v_to_seg3_airline               VARCHAR2(50);',
'    v_to_seg3_departure_date        VARCHAR2(12);',
'    v_to_seg3_departure_time        VARCHAR2(12);',
'    v_to_seg3_arrival_date          VARCHAR2(12);',
'    v_to_seg3_arrival_time          VARCHAR2(12);',
'    v_to_seg3_meal                  VARCHAR2(30);',
'    v_to_seg4_departure_airport     VARCHAR2(80);',
'    v_to_seg4_destination_airport   VARCHAR2(80);',
'    v_to_seg4_flight_number         VARCHAR2(20);',
'    v_to_seg4_airline               VARCHAR2(50);',
'    v_to_seg4_departure_date        VARCHAR2(12);',
'    v_to_seg4_departure_time        VARCHAR2(12);',
'    v_to_seg4_arrival_date          VARCHAR2(12);',
'    v_to_seg4_arrival_time          VARCHAR2(12);',
'    v_to_seg4_meal                  VARCHAR2(30);',
'    v_from_seg1_departure_airport   VARCHAR2(80);',
'    v_from_seg1_destination_ap      VARCHAR2(80);',
'    v_from_seg1_flight_number       VARCHAR2(20);',
'    v_from_seg1_airline             VARCHAR2(50);',
'    v_from_seg1_departure_date      VARCHAR2(12);',
'    v_from_seg1_departure_time      VARCHAR2(12);',
'    v_from_seg1_arrival_date        VARCHAR2(12);',
'    v_from_seg1_arrival_time        VARCHAR2(12);',
'    v_from_seg1_meal                VARCHAR2(30);',
'    v_from_seg2_departure_airport   VARCHAR2(80);',
'    v_from_seg2_destination_ap VARCHAR2(80);',
'    v_from_seg2_flight_number       VARCHAR2(20);',
'    v_from_seg2_airline             VARCHAR2(50);',
'    v_from_seg2_departure_date      VARCHAR2(12);',
'    v_from_seg2_departure_time      VARCHAR2(12);',
'    v_from_seg2_arrival_date        VARCHAR2(12);',
'    v_from_seg2_arrival_time        VARCHAR2(12);',
'    v_from_seg2_meal                VARCHAR2(30);',
'    v_from_seg3_departure_airport   VARCHAR2(80);',
'    v_from_seg3_destination_ap      VARCHAR2(80);',
'    v_from_seg3_flight_number       VARCHAR2(20);',
'    v_from_seg3_airline             VARCHAR2(50);',
'    v_from_seg3_departure_date      VARCHAR2(12);',
'    v_from_seg3_departure_time      VARCHAR2(12);',
'    v_from_seg3_arrival_date        VARCHAR2(12);',
'    v_from_seg3_arrival_time        VARCHAR2(12);',
'    v_from_seg3_meal                VARCHAR2(30);',
'    v_from_seg4_departure_airport   VARCHAR2(80);',
'    v_from_seg4_destination_ap      VARCHAR2(80);',
'    v_from_seg4_flight_number       VARCHAR2(20);',
'    v_from_seg4_airline             VARCHAR2(50);',
'    v_from_seg4_departure_date      VARCHAR2(12);',
'    v_from_seg4_departure_time      VARCHAR2(12);',
'    v_from_seg4_arrival_date        VARCHAR2(12);',
'    v_from_seg4_arrival_time        VARCHAR2(12);',
'    v_from_seg4_meal                VARCHAR2(30);',
'begin',
'    --GET MASLUL',
'    select MASLUL_SHORT_NAME into :P4_MASLUL',
'    from JAFI_FLIGHT_PASSPORT_INFO_MV v',
'    where v.ASSIGNMENT_ID = :P4_ASSIGNMENT_ID and v.PERSON_ID = :P4_PERSON_ID  and (NVL(:P4_REQUEST_ID,1) = 1  OR :P4_REQUEST_ID = v.request_id);',
'',
'    --GET FLIGHT DATA',
'    begin',
'        select  f.seq,',
'                to_char(f.creation_date, ''DD/MM/YYYY HH24:MI'') creation_date,',
'                f.status,',
'                f.proposal_year,',
'                f.pnr_number,',
'                f.ticket_doc_id,',
'                --f.invoice_doc_id,',
'                f.flight_cost, ',
'                f.BOOKING_FEE,',
'                f.MARKUP,',
'                f.PASSANGERS_COST,',
'                f.flight_cost_for_billing, ',
'                f.OFFERTIME,',
'                f.agency_remarks,',
'                f.MASLUL_REMARKS,',
'                f.COST_DIFFERENCE,',
'                f.to_seg1_departure_airport,',
'                f.to_seg1_destination_airport,',
'                f.to_seg1_flight_number,',
'                f.to_seg1_airline,',
'                f.to_seg1_departure_date,',
'                f.to_seg1_departure_time,',
'                f.to_seg1_arrival_date,',
'                f.to_seg1_arrival_time,',
'                f.to_seg1_meal,',
'                f.to_seg2_departure_airport,',
'                f.to_seg2_destination_airport,',
'                f.to_seg2_flight_number,',
'                f.to_seg2_airline,',
'                f.to_seg2_departure_date,',
'                f.to_seg2_departure_time,',
'                f.to_seg2_arrival_date,',
'                f.to_seg2_arrival_time,',
'                f.to_seg2_meal,',
'                f.to_seg3_departure_airport,',
'                f.to_seg3_destination_airport,',
'                f.to_seg3_flight_number,',
'                f.to_seg3_airline,',
'                f.to_seg3_departure_date,',
'                f.to_seg3_departure_time,',
'                f.to_seg3_arrival_date,',
'                f.to_seg3_arrival_time,',
'                f.to_seg3_meal,',
'                f.to_seg4_departure_airport,',
'                f.to_seg4_destination_airport,',
'                f.to_seg4_flight_number,',
'                f.to_seg4_airline,',
'                f.to_seg4_departure_date,',
'                f.to_seg4_departure_time,',
'                f.to_seg4_arrival_date,',
'                f.to_seg4_arrival_time,',
'                f.to_seg4_meal,',
'                f.from_seg1_departure_airport,',
'                f.from_seg1_destination_airport,',
'                f.from_seg1_flight_number,',
'                f.from_seg1_airline,',
'                f.from_seg1_departure_date,',
'                f.from_seg1_departure_time,',
'                f.from_seg1_arrival_date,',
'                f.from_seg1_arrival_time,',
'                f.from_seg1_meal,',
'                f.from_seg2_departure_airport,',
'                f.from_seg2_destination_airport,',
'                f.from_seg2_flight_number,',
'                f.from_seg2_airline,',
'                f.from_seg2_departure_date,',
'                f.from_seg2_departure_time,',
'                f.from_seg2_arrival_date,',
'                f.from_seg2_arrival_time,',
'                f.from_seg2_meal,',
'                f.from_seg3_departure_airport,',
'                f.from_seg3_destination_airport,',
'                f.from_seg3_flight_number,',
'                f.from_seg3_airline,',
'                f.from_seg3_departure_date,',
'                f.from_seg3_departure_time,',
'                f.from_seg3_arrival_date,',
'                f.from_seg3_arrival_time,',
'                f.from_seg3_meal,',
'                f.from_seg4_departure_airport,',
'                f.from_seg4_destination_airport,',
'                f.from_seg4_flight_number,',
'                f.from_seg4_airline,',
'                f.from_seg4_departure_date,',
'                f.from_seg4_departure_time,',
'                f.from_seg4_arrival_date,',
'                f.from_seg4_arrival_time,',
'                f.from_seg4_meal,',
'                f.agent_name,',
'                f.FLIGHT_INV_REF,',
'                f.SUMMARY_INVOICE,',
'                to_char(f.OFFER_CREATION_DATE, ''DD/MM/YYYY HH24:MI'')',
'        into    :P4_SEQ,',
'                :P4_CREATION_DATE,',
'                :P4_STATUS,',
'                :P4_PROPOSAL_YEAR,',
'                :P4_PNR_NUMBER,',
'                :P4_TICKET_DOC_ID,',
'                --:P4_INVOICE_DOC_ID,',
'                :P4_FLIGHT_COST,',
'                :P4_BOOKING_FEE,',
'                :P4_MARKUP,',
'                :P4_PASSANGERS_COST,',
'                :P4_FLIGHT_COST_FOR_BILLING,',
'                :P4_OFFERTIME,',
'                :P4_AGENCY_REMARKS,',
'                :P4_MASLUL_REMARKS,',
'                :P4_COST_DIFFERENCE,',
'                v_to_seg1_departure_airport,',
'                v_to_seg1_destination_airport,',
'                v_to_seg1_flight_number,',
'                v_to_seg1_airline,',
'                v_to_seg1_departure_date,',
'                v_to_seg1_departure_time,',
'                v_to_seg1_arrival_date,',
'                v_to_seg1_arrival_time,',
'                v_to_seg1_meal,',
'                v_to_seg2_departure_airport,',
'                v_to_seg2_destination_airport,',
'                v_to_seg2_flight_number,',
'                v_to_seg2_airline,',
'                v_to_seg2_departure_date,',
'                v_to_seg2_departure_time,',
'                v_to_seg2_arrival_date,',
'                v_to_seg2_arrival_time,',
'                v_to_seg2_meal,',
'                v_to_seg3_departure_airport,',
'                v_to_seg3_destination_airport,',
'                v_to_seg3_flight_number,',
'                v_to_seg3_airline,',
'                v_to_seg3_departure_date,',
'                v_to_seg3_departure_time,',
'                v_to_seg3_arrival_date,',
'                v_to_seg3_arrival_time,',
'                v_to_seg3_meal,',
'                v_to_seg4_departure_airport,',
'                v_to_seg4_destination_airport,',
'                v_to_seg4_flight_number,',
'                v_to_seg4_airline,',
'                v_to_seg4_departure_date,',
'                v_to_seg4_departure_time,',
'                v_to_seg4_arrival_date,',
'                v_to_seg4_arrival_time,',
'                v_to_seg4_meal,',
'                v_from_seg1_departure_airport,',
'                v_from_seg1_destination_ap,',
'                v_from_seg1_flight_number,',
'                v_from_seg1_airline,',
'                v_from_seg1_departure_date,',
'                v_from_seg1_departure_time,',
'                v_from_seg1_arrival_date,',
'                v_from_seg1_arrival_time,',
'                v_from_seg1_meal,',
'                v_from_seg2_departure_airport,',
'                v_from_seg2_destination_ap,',
'                v_from_seg2_flight_number,',
'                v_from_seg2_airline,',
'                v_from_seg2_departure_date,',
'                v_from_seg2_departure_time,',
'                v_from_seg2_arrival_date,',
'                v_from_seg2_arrival_time,',
'                v_from_seg2_meal,',
'                v_from_seg3_departure_airport,',
'                v_from_seg3_destination_ap,',
'                v_from_seg3_flight_number,',
'                v_from_seg3_airline,',
'                v_from_seg3_departure_date,',
'                v_from_seg3_departure_time,',
'                v_from_seg3_arrival_date,',
'                v_from_seg3_arrival_time,',
'                v_from_seg3_meal,',
'                v_from_seg4_departure_airport,',
'                v_from_seg4_destination_ap,',
'                v_from_seg4_flight_number,',
'                v_from_seg4_airline,',
'                v_from_seg4_departure_date,',
'                v_from_seg4_departure_time,',
'                v_from_seg4_arrival_date,',
'                v_from_seg4_arrival_time,',
'                v_from_seg4_meal,',
'                :P4_HANDLING_AGENT,',
'                :P4_FLIGHT_INV_REF,',
'                :P4_SUMMARY_INVOICE,',
'                :P4_MAX_STATUS_UPDATE_DATE',
'        from    jafi_apex_shlichut_flights f',
'        where   f.assgt_id = :P4_ASSIGNMENT_ID and f.person_id = :P4_PERSON_ID and f.STATUS not in (''7'')',
'                 and (NVL(:P4_REQUEST_ID,1) = 1  OR :P4_REQUEST_ID = f.request_id);',
'                ',
'        exception when no_data_found then null;',
'    end;',
'    ',
'    :P4_AGENCY_REMARKS_V := :P4_AGENCY_REMARKS;',
'    :P4_MASLUL_REMARKS_V :=:P4_MASLUL_REMARKS;',
'    ',
'    /*begin',
'        select to_char(max(status_update_date), ''DD/MM/YYYY HH24:MI'')',
'        into :P4_MAX_STATUS_UPDATE_DATE',
'        from jafi_apex_shl_flights_audit ',
'        where entity_id = :P4_SEQ and new_status_id = 2;',
'        ',
'        exception when no_data_found then null;',
'    end;*/',
'    ',
'    begin',
'        select ''<span class="status-cell" data-assignment-id="''||:P4_ASSIGNMENT_ID||''" data-person-id="''||:P4_PERSON_ID||''" data-request-id="''||:P4_REQUEST_ID||''" dror  style="box-shadow: 0 0 5px 2px '' || m.ATTRIBUTE1 || ''; background: rgb('' || m.ATT'
||'RIBUTE2 || '' / 50%);">'' || m.meaning || ''</span>'',',
'               m.ATTRIBUTE4',
'        into :P4_STATUS_HTML,',
'             :P4_STATUS_NEXT_STATUSES',
'        from FND_LOOKUP_VALUES m',
'        where m.LOOKUP_TYPE= ''JAFI_HR_FLIGHT_STATUS'' and m.LANGUAGE = ''US'' and m.lookup_code = :P4_STATUS;',
'        ',
'        exception when no_data_found then null;',
'    end;',
'    ',
'    begin',
'        SELECT attribute4 into :P4_HANDLING_AGENT_NAME',
'        FROM   fnd_lookup_values m',
'        WHERE  m.lookup_type = ''JAFI_SHLICHUT_FLIGHTS_USERS'' AND m.LANGUAGE = ''US'' AND attribute1 = ''T'' and lookup_code = :P4_HANDLING_AGENT;',
'        ',
'        exception when no_data_found then null;',
'    end;',
'    ',
'    begin',
'        select ARRIVAL_DATE_APPROVED',
'        into :P4_IS_DATE_APPROVED',
'        from JAFI_FLIGHT_PASSPORT_INFO_MV v',
'        where v.ASSIGNMENT_ID = :P4_ASSIGNMENT_ID and  v.PERSON_ID = :P4_PERSON_ID and ',
'              (NVL(:P4_REQUEST_ID,1) = 1  OR :P4_REQUEST_ID = v.request_id) and maslul_short_name = ''LTS'';',
'              ',
'        exception when no_data_found then null;',
'    end;',
'    ',
'    begin',
'        if apex_collection.collection_exists (''FLIGHT_LEGS'') then apex_collection.truncate_collection(''FLIGHT_LEGS'');',
'        else apex_collection.create_collection(''FLIGHT_LEGS'');',
'        end if;',
'        ',
'        if v_to_seg1_airline is not null then',
'            APEX_COLLECTION.ADD_MEMBER(',
'            p_collection_name => ''FLIGHT_LEGS'',',
'            p_n001            => :P4_ASSIGNMENT_ID,',
'            p_n002            => :P4_PERSON_ID,',
'            p_c001            => ''O'',',
'            p_c002            => ''1'',',
'            p_c003            => v_to_seg1_airline,',
'            p_c004            => v_to_seg1_flight_number,',
'            p_c005            => v_to_seg1_departure_airport,',
'            p_c006            => v_to_seg1_departure_date,',
'            p_c007            => v_to_seg1_departure_time,',
'            p_c008            => v_to_seg1_destination_airport,',
'            p_c009            => v_to_seg1_arrival_date,',
'            p_c010            => v_to_seg1_arrival_time,',
'            p_c011            => v_to_seg1_meal); ',
'        end if;',
'        ',
'        if v_to_seg2_airline is not null then',
'            APEX_COLLECTION.ADD_MEMBER(',
'            p_collection_name => ''FLIGHT_LEGS'',',
'            p_n001            => :P4_ASSIGNMENT_ID,',
'            p_n002            => :P4_PERSON_ID,',
'            p_c001            => ''O'',',
'            p_c002            => ''2'',',
'            p_c003            => v_to_seg2_airline,',
'            p_c004            => v_to_seg2_flight_number,',
'            p_c005            => v_to_seg2_departure_airport,',
'            p_c006            => v_to_seg2_departure_date,',
'            p_c007            => v_to_seg2_departure_time,',
'            p_c008            => v_to_seg2_destination_airport,',
'            p_c009            => v_to_seg2_arrival_date,',
'            p_c010            => v_to_seg2_arrival_time,',
'            p_c011            => v_to_seg2_meal);',
'        end if;',
'        ',
'        if v_to_seg3_airline is not null then',
'            APEX_COLLECTION.ADD_MEMBER(',
'            p_collection_name => ''FLIGHT_LEGS'',',
'            p_n001            => :P4_ASSIGNMENT_ID,',
'            p_n002            => :P4_PERSON_ID,',
'            p_c001            => ''O'',',
'            p_c002            => ''3'',',
'            p_c003            => v_to_seg3_airline,',
'            p_c004            => v_to_seg3_flight_number,',
'            p_c005            => v_to_seg3_departure_airport,',
'            p_c006            => v_to_seg3_departure_date,',
'            p_c007            => v_to_seg3_departure_time,',
'            p_c008            => v_to_seg3_destination_airport,',
'            p_c009            => v_to_seg3_arrival_date,',
'            p_c010            => v_to_seg3_arrival_time,',
'            p_c011            => v_to_seg3_meal);',
'        end if;',
'        ',
'        if v_to_seg4_airline is not null then',
'            APEX_COLLECTION.ADD_MEMBER(',
'            p_collection_name => ''FLIGHT_LEGS'',',
'            p_n001            => :P4_ASSIGNMENT_ID,',
'            p_n002            => :P4_PERSON_ID,',
'            p_c001            => ''O'',',
'            p_c002            => ''4'',',
'            p_c003            => v_to_seg4_airline,',
'            p_c004            => v_to_seg4_flight_number,',
'            p_c005            => v_to_seg4_departure_airport,',
'            p_c006            => v_to_seg4_departure_date,',
'            p_c007            => v_to_seg4_departure_time,',
'            p_c008            => v_to_seg4_destination_airport,',
'            p_c009            => v_to_seg4_arrival_date,',
'            p_c010            => v_to_seg4_arrival_time,',
'            p_c011            => v_to_seg4_meal,',
'            p_c012            => :P4_REQUEST_ID);',
'        end if;',
'        ',
'        if v_from_seg1_airline is not null then',
'            APEX_COLLECTION.ADD_MEMBER(',
'            p_collection_name => ''FLIGHT_LEGS'',',
'            p_n001            => :P4_ASSIGNMENT_ID,',
'            p_n002            => :P4_PERSON_ID,',
'            p_c001            => ''I'',',
'            p_c002            => ''1'',',
'            p_c003            => v_from_seg1_airline,',
'            p_c004            => v_from_seg1_flight_number,',
'            p_c005            => v_from_seg1_departure_airport,',
'            p_c006            => v_from_seg1_departure_date,',
'            p_c007            => v_from_seg1_departure_time,',
'            p_c008            => v_from_seg1_destination_ap,',
'            p_c009            => v_from_seg1_arrival_date,',
'            p_c010            => v_from_seg1_arrival_time,',
'            p_c011            => v_from_seg1_meal);',
'        end if;',
'        ',
'        if v_from_seg2_airline is not null then',
'            APEX_COLLECTION.ADD_MEMBER(',
'            p_collection_name => ''FLIGHT_LEGS'',',
'            p_n001            => :P4_ASSIGNMENT_ID,',
'            p_n002            => :P4_PERSON_ID,',
'            p_c001            => ''I'',',
'            p_c002            => ''2'',',
'            p_c003            => v_from_seg2_airline,',
'            p_c004            => v_from_seg2_flight_number,',
'            p_c005            => v_from_seg2_departure_airport,',
'            p_c006            => v_from_seg2_departure_date,',
'            p_c007            => v_from_seg2_departure_time,',
'            p_c008            => v_from_seg2_destination_ap,',
'            p_c009            => v_from_seg2_arrival_date,',
'            p_c010            => v_from_seg2_arrival_time,',
'            p_c011            => v_from_seg2_meal,',
'            p_c012            => :P4_REQUEST_ID);',
'        end if;',
'        ',
'        if v_from_seg3_airline is not null then',
'            APEX_COLLECTION.ADD_MEMBER(',
'            p_collection_name => ''FLIGHT_LEGS'',',
'            p_n001            => :P4_ASSIGNMENT_ID,',
'            p_n002            => :P4_PERSON_ID,',
'            p_c001            => ''I'',',
'            p_c002            => ''3'',',
'            p_c003            => v_from_seg3_airline,',
'            p_c004            => v_from_seg3_flight_number,',
'            p_c005            => v_from_seg3_departure_airport,',
'            p_c006            => v_from_seg3_departure_date,',
'            p_c007            => v_from_seg3_departure_time,',
'            p_c008            => v_from_seg3_destination_ap,',
'            p_c009            => v_from_seg3_arrival_date,',
'            p_c010            => v_from_seg3_arrival_time,',
'            p_c011            => v_from_seg3_meal);',
'        end if;',
'        ',
'        if v_from_seg4_airline is not null then',
'            APEX_COLLECTION.ADD_MEMBER(',
'            p_collection_name => ''FLIGHT_LEGS'',',
'            p_n001            => :P4_ASSIGNMENT_ID,',
'            p_n002            => :P4_PERSON_ID,',
'            p_c001            => ''I'',',
'            p_c002            => ''4'',',
'            p_c003            => v_from_seg4_airline,',
'            p_c004            => v_from_seg4_flight_number,',
'            p_c005            => v_from_seg4_departure_airport,',
'            p_c006            => v_from_seg4_departure_date,',
'            p_c007            => v_from_seg4_departure_time,',
'            p_c008            => v_from_seg4_destination_ap,',
'            p_c009            => v_from_seg4_arrival_date,',
'            p_c010            => v_from_seg4_arrival_time,',
'            p_c011            => v_from_seg4_meal);',
'        end if;',
'    end;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(673461349357304172)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Action Buttons'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--SET ALLOWED STATUSES FOR BUTTONS DISPLAY',
'if (''1'' = :P4_STATUS_NEXT_STATUSES or ',
'    instr(:P4_STATUS_NEXT_STATUSES, ''1,'') > 0 or instr(:P4_STATUS_NEXT_STATUSES, '',1,'') > 0 or instr(:P4_STATUS_NEXT_STATUSES, '',1'') > 0) and',
'   (''1'' = :P4_USER_STATUSES or ',
'    instr(:P4_USER_STATUSES, ''1,'') > 0 or instr(:P4_USER_STATUSES, '',1,'') > 0 or instr(:P4_USER_STATUSES, '',1'') > 0)',
'    and :P4_USER_TYPE = ''T'' then :P4_BTN_MAKE_OFFER := ''Y'';',
'else :P4_BTN_MAKE_OFFER := ''N'';',
'end if;',
'',
'if (''2'' = :P4_STATUS_NEXT_STATUSES or ',
'    instr(:P4_STATUS_NEXT_STATUSES, ''2,'') > 0 or instr(:P4_STATUS_NEXT_STATUSES, '',2,'') > 0 or instr(:P4_STATUS_NEXT_STATUSES, '',2'') > 0) and',
'   (''2'' = :P4_USER_STATUSES or ',
'    instr(:P4_USER_STATUSES, ''2,'') > 0 or instr(:P4_USER_STATUSES, '',2,'') > 0 or instr(:P4_USER_STATUSES, '',2'') > 0) ',
'    and :P4_USER_TYPE = ''M'' then :P4_BTN_MASLUL_APPROVAL := ''Y'';',
'else :P4_BTN_MASLUL_APPROVAL := ''N'';',
'end if;',
'',
'if (''3'' = :P4_STATUS_NEXT_STATUSES or ',
'    instr(:P4_STATUS_NEXT_STATUSES, ''3,'') > 0 or instr(:P4_STATUS_NEXT_STATUSES, '',3,'') > 0 or instr(:P4_STATUS_NEXT_STATUSES, '',3'') > 0) and',
'   (''3'' = :P4_USER_STATUSES or ',
'    instr(:P4_USER_STATUSES, ''3,'') > 0 or instr(:P4_USER_STATUSES, '',3,'') > 0 or instr(:P4_USER_STATUSES, '',3'') > 0) ',
'    and :P4_USER_TYPE = ''M'' then :P4_BTN_CUSTOMER_APPROVAL := ''Y'';',
'else :P4_BTN_CUSTOMER_APPROVAL := ''N'';',
'end if;',
'',
'if (''4'' = :P4_STATUS_NEXT_STATUSES or ',
'    instr(:P4_STATUS_NEXT_STATUSES, ''4,'') > 0 or instr(:P4_STATUS_NEXT_STATUSES, '',4,'') > 0 or instr(:P4_STATUS_NEXT_STATUSES, '',4'') > 0) and',
'   (''4'' = :P4_USER_STATUSES or ',
'    instr(:P4_USER_STATUSES, ''4,'') > 0 or instr(:P4_USER_STATUSES, '',4,'') > 0 or instr(:P4_USER_STATUSES, '',4'') > 0) ',
'    and :P4_USER_TYPE = ''M'' then :P4_BTN_FIX := ''Y'';',
'else :P4_BTN_FIX := ''N'';',
'end if;',
'',
'if (''5'' = :P4_STATUS_NEXT_STATUSES or ',
'    instr(:P4_STATUS_NEXT_STATUSES, ''5,'') > 0 or instr(:P4_STATUS_NEXT_STATUSES, '',5,'') > 0 or instr(:P4_STATUS_NEXT_STATUSES, '',5'') > 0) and',
'   (''5'' = :P4_USER_STATUSES or ',
'    instr(:P4_USER_STATUSES, ''5,'') > 0 or instr(:P4_USER_STATUSES, '',5,'') > 0 or instr(:P4_USER_STATUSES, '',5'') > 0) ',
'    and :P4_USER_TYPE = ''M'' then :P4_BTN_APPROVE := ''Y'';',
'else :P4_BTN_APPROVE := ''N'';',
'end if;',
'',
'if (''6'' = :P4_STATUS_NEXT_STATUSES or ',
'    instr(:P4_STATUS_NEXT_STATUSES, ''6,'') > 0 or instr(:P4_STATUS_NEXT_STATUSES, '',6,'') > 0 or instr(:P4_STATUS_NEXT_STATUSES, '',6'') > 0) and',
'   (''6'' = :P4_USER_STATUSES or ',
'    instr(:P4_USER_STATUSES, ''6,'') > 0 or instr(:P4_USER_STATUSES, '',6,'') > 0 or instr(:P4_USER_STATUSES, '',6'') > 0) ',
'    and :P4_USER_TYPE = ''T'' then :P4_BTN_BOOK_FLIGHT := ''Y'';',
'else :P4_BTN_BOOK_FLIGHT := ''N'';',
'end if;',
'',
'if (''7'' = :P4_STATUS_NEXT_STATUSES or ',
'    instr(:P4_STATUS_NEXT_STATUSES, ''7,'') > 0 or instr(:P4_STATUS_NEXT_STATUSES, '',7,'') > 0 or instr(:P4_STATUS_NEXT_STATUSES, '',7'') > 0) and',
'   (''7'' = :P4_USER_STATUSES or ',
'    instr(:P4_USER_STATUSES, ''7,'') > 0 or instr(:P4_USER_STATUSES, '',7,'') > 0 or instr(:P4_USER_STATUSES, '',7'') > 0) ',
'    and :P4_USER_TYPE = ''T'' then :P4_BTN_CANCEL := ''Y'';',
'else :P4_BTN_CANCEL := ''N'';',
'end if;',
'',
'if (''8'' = :P4_STATUS_NEXT_STATUSES or ',
'    instr(:P4_STATUS_NEXT_STATUSES, ''8,'') > 0 or instr(:P4_STATUS_NEXT_STATUSES, '',8,'') > 0 or instr(:P4_STATUS_NEXT_STATUSES, '',8'') > 0) and',
'   (''8'' = :P4_USER_STATUSES or ',
'    instr(:P4_USER_STATUSES, ''8,'') > 0 or instr(:P4_USER_STATUSES, '',8,'') > 0 or instr(:P4_USER_STATUSES, '',8'') > 0) ',
'    and :P4_USER_TYPE = ''M'' and :P4_STATUS != ''8'' then :P4_BTN_HOLD_FLIGHT := ''Y'';',
'else :P4_BTN_HOLD_FLIGHT := ''N'';',
'end if;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
