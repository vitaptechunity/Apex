prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
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
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(119978609050743808)
,p_name=>'Load From AI'
,p_alias=>'LOAD-FROM-AI'
,p_page_mode=>'MODAL'
,p_step_title=>'Load From AI'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function fetchAndProcessAIResult() {',
'    sessionStorage.removeItem(''AI_RESULT'');',
'    $(''#resultsContainer'').hide();        ',
'    $(''#importDataBtn'').hide();',
'    var spinner = apex.util.showSpinner();',
'    apex.message.clearErrors();',
'    $(''#flightLegs tbody tr'').remove();',
'',
'    fetch(''https://apim.eu.workato.com/raelo/shlichim-v1/analyzeflightdata'', {',
'        method: ''POST'',',
'        headers: {',
'            ''api-token'': $v(''P9_API_TOKEN''),',
'            ''Content-Type'': ''application/json''',
'        },',
'        body: JSON.stringify({ flightDetails: $v(''P9_FLIGHT_INPUT'') })',
'    }).then(function(response) {',
'        if (!response.ok) {',
'            spinner.remove();',
'            apex.message.showErrors([',
'                {',
'                    type:       apex.message.TYPE.ERROR,',
'                    location:   [ "inline" ],',
'                    pageItem:   "P9_FLIGHT_INPUT",',
'                    message:    "Please enter a valid input.",',
'                    unsafe:     false',
'                }',
'            ]);',
'            $(''#resultsContainer'').hide();        ',
'            $(''#importDataBtn'').hide();',
'            return;',
'        }',
'        return response.json();',
'    }).then(function(data) {',
'        if (data == null) return;',
'',
'        var ai_result = {',
'            ''input'': $v(''P9_FLIGHT_INPUT''),',
'            ''pnr_number'': data.pnr,',
'            ''flight_cost'': data.price.replace(/\D/g, ''''),',
'            ''legs'': []',
'        };',
'',
'        $s(''P9_PNR_NUMBER'', ai_result.pnr_number);',
'        $s(''P9_FLIGHT_COST'', ai_result.flight_cost);',
'        ',
'        data.segments = processAIGeneratedSegments(data.segments);',
'',
'        for (var i = 0; i < data.segments.length; i++) {',
'            var currentSegment = data.segments[i];',
'            currentSegment.departure_date = parseDate(currentSegment.departure_date);',
'            var arrivalDate = getArrivalDate(currentSegment.departure_date, currentSegment.arrival_next_day);',
'            currentSegment["arrival_date"] = arrivalDate;',
'            ai_result.legs.push(currentSegment);',
'',
'            var tableRowHtml = ''<tr>'' +',
'                                    ''<td>'' + currentSegment.directionDesc + ''</td>'' +',
'                                    ''<td>'' + parseInt(currentSegment.segment_number) + ''</td>'' +',
'                                    ''<td>'' + currentSegment.marketing_carrier + ''</td>'' +',
'                                    ''<td>'' + currentSegment.flight_number + ''</td>'' +',
'                                    ''<td>'' + currentSegment.origin + ''</td>'' +',
'                                    ''<td>'' + currentSegment.departure_date + ''</td>'' +',
'                                    ''<td>'' + currentSegment.departure_time + ''</td>'' +',
'                                    ''<td>'' + currentSegment.destination + ''</td>'' +',
'                                    ''<td>'' + arrivalDate + ''</td>'' +',
'                                    ''<td>'' + currentSegment.arrival_time + ''</td>'' +',
'                                ''</tr>'';',
'            $(''#flightLegs tbody'').append(tableRowHtml);',
'        }',
'        ',
'        ai_result.legs = ai_result.legs.toReversed();',
'        sessionStorage.setItem(''AI_RESULT'', JSON.stringify(ai_result));',
'        spinner.remove();',
'        $(''#resultsContainer'').show();',
'        $(''#importDataBtn'').show();',
'    }).catch(function(err) {',
'        spinner.remove();',
'        apex.message.showErrors([',
'            {',
'                type:       apex.message.TYPE.ERROR,',
'                location:   "page",',
'                message:    ''Error! '' + err.message,',
'                unsafe:     false',
'            }',
'        ]);',
'        $(''#resultsContainer'').hide();',
'        $(''#importDataBtn'').hide();',
'    });',
'}',
'',
'function processAIGeneratedSegments(segments) {',
'    if (!segments || segments.length == 0)',
'        return segments;',
'    ',
'    segments = segments.sort((s1, s2) => {',
'        const date1 = new Date(s1.departure_date + ''T'' + s1.departure_time + '':00''); ',
'        const date2 = new Date(s2.departure_date + ''T'' + s2.departure_time + '':00''); ',
'        return date1 - date2;',
'    });',
'    ',
'    var prevSeg = null;',
'    ',
'    $(segments).each(function(idx, seg) {',
'        if (prevSeg == null) {',
'            if (seg.origin == ''TLV'') {',
'                seg.direction = ''O'';',
'                seg.directionDesc = ''Outbound'';',
'            }',
'            else {',
'                seg.direction = ''I'';',
'                seg.directionDesc = ''Inbound'';',
'            }',
'            seg.segment_number = 1;',
'        }',
'        else if (idx < segments.length) {',
'            const prevDate = new Date(prevSeg.departure_date + ''T'' + prevSeg.departure_time + '':00''); ',
'            const currDate = new Date(seg.departure_date + ''T'' + seg.departure_time + '':00''); ',
'            var diffInDays = getDaysDifference(prevDate, currDate);',
'            if (prevSeg.direction == ''O'' && diffInDays >= 7) {',
'                seg.direction = ''I'';',
'                seg.directionDesc = ''Inbound'';',
'                seg.segment_number = 1;',
'            }',
'            else if (prevSeg.direction == ''I'' && diffInDays >= 7) {',
'                seg.direction = ''O'';',
'                seg.directionDesc = ''Outbound'';',
'                seg.segment_number = 1;',
'            }',
'            else {',
'                seg.direction = prevSeg.direction;',
'                seg.directionDesc = prevSeg.directionDesc;',
'                seg.segment_number = prevSeg.segment_number + 1;',
'            }',
'        }',
'        prevSeg = seg;',
'    });',
'    return segments;',
'}',
'',
'function getDaysDifference(date1, date2) {',
'    const oneDay = 1000 * 60 * 60 * 24; ',
'    const diffInTime = date2 - date1; ',
'    return Math.round(diffInTime / oneDay); ',
'}',
'',
'function parseDate(date) {',
'    // Handle ISO format: "2024-05-28"',
'    if (date.includes(''-'') && date.length === 10) {',
'        var parts = date.split(''-'');',
'        return parts[2] + ''/'' + parts[1] + ''/'' + parts[0];',
'        // returns "28/05/2024"',
'    }',
'    ',
'    // Legacy format: "28-MAY"',
'    var today = new Date();',
'    var day = date.substring(0, 2);',
'    var month = date.substring(3);',
'    var monthFormatted = ''00'';',
'    var year = today.getFullYear();',
'    ',
'    if (month == ''JAN'') monthFormatted = ''01'';',
'    else if (month == ''FEB'') monthFormatted = ''02'';',
'    // ... rest of your month checks',
'    ',
'    return day + ''/'' + monthFormatted + ''/'' + year;',
'}',
'/*',
'function parseDate(date) { //28-MAY',
'    var today = new Date();',
'    var day = date.substring(0, 2);',
'    var month = date.substring(3);',
'    var monthFormatted = ''00'';',
'    var year = today.getFullYear();',
'    ',
'    if (month == ''JAN'') monthFormatted = ''01'';',
'    else if (month == ''FEB'') monthFormatted = ''02'';',
'    else if (month == ''MAR'') monthFormatted = ''03'';',
'    else if (month == ''APR'') monthFormatted = ''04'';',
'    else if (month == ''MAY'') monthFormatted = ''05'';',
'    else if (month == ''JUN'') monthFormatted = ''06'';',
'    else if (month == ''JUL'') monthFormatted = ''07'';',
'    else if (month == ''AUG'') monthFormatted = ''08'';',
'    else if (month == ''SEP'') monthFormatted = ''09'';',
'    else if (month == ''OCT'') monthFormatted = ''10'';',
'    else if (month == ''NOV'') monthFormatted = ''11'';',
'    else if (month == ''DEC'') monthFormatted = ''12'';',
'    ',
'    return day + ''/'' + monthFormatted + ''/'' + year;',
'}',
'*/',
'',
'',
'function getArrivalDate(date, getNextDay) { //28/05/2026',
'    var oDay = parseInt(date.substring(0, 2));',
'    var oMonth = parseInt(date.substring(3, 5)) - 1;',
'    var oYear = parseInt(date.substring(6, 10));',
'    ',
'    if (getNextDay) {',
'        var oDate = new Date(oYear, oMonth, oDay);',
'        var nDate = new Date(oDate);',
'        nDate.setDate(oDate.getDate() + 1); ',
'        return nDate.toLocaleDateString(''en-GB'');',
'    }',
'    return date;',
'}  '))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#flightLegs {',
'    width: 100%;',
'    border: 1px solid rgba(0, 0, 0, 0.2);',
'    text-align: center;',
'}',
'',
'#flightLegs th {',
'    border: 1px solid rgba(0, 0, 0, 0.2);',
'}'))
,p_page_css_classes=>'load-from-ai-dialog'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_dialog_height=>'700'
,p_dialog_attributes=>'close: function(event, ui) { apex.navigation.dialog.close(true, { ''dialogPageId'': 9 });}'
,p_dialog_css_classes=>'load-from-ai-dialog'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'DRORA'
,p_last_upd_yyyymmddhh24miss=>'20260719115928'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1717455821120844955)
,p_plug_name=>'Input Container'
,p_region_name=>'inputContainer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_footer=>'<hr style="border-color: rgba(0, 0, 0, 0.05);" />'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1717455671022844954)
,p_plug_name=>'Results Container'
,p_region_name=>'resultsContainer'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="display: none;"'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1717454353234844941)
,p_plug_name=>'Fields'
,p_parent_plug_id=>wwv_flow_api.id(1717455671022844954)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1717453982049844937)
,p_plug_name=>'Flight Legs'
,p_parent_plug_id=>wwv_flow_api.id(1717455671022844954)
,p_region_template_options=>'#DEFAULT#:margin-top-lg'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table id="flightLegs">',
'    <thead>',
'        <tr>',
'            <th>Direction</th>',
'            <th>Leg</th>',
'            <th>Airline</th>',
'            <th>Flight Number</th>',
'            <th>Departure Airport</th>',
'            <th>Departure Date</th>',
'            <th>Departure Time</th>',
'            <th>Destination Airport</th>',
'            <th>Arrival Date</th>',
'            <th>Arrival Time</th>',
'        </tr>',
'    </thead>',
'    <tbody>',
'        ',
'    </tbody>',
'</table>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1048165028108425174)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(119978609050743288)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1717453912417844936)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(1048165028108425174)
,p_button_name=>'Import_Data'
,p_button_static_id=>'importDataBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Import Data'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-upload'
,p_button_cattributes=>'style="display: none;"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1717455443921844952)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1717455821120844955)
,p_button_name=>'Load_From_AI'
,p_button_static_id=>'loadFromAIBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Load From AI'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-database'
,p_button_cattributes=>'style="height: 32px;"'
,p_grid_column_attributes=>'style="height: 208px; display: flex; align-items: center; padding-top: 20px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1712274466988319400)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1048165028108425174)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(119978609050743280)
,p_button_image_alt=>'Close'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1717455620882844953)
,p_name=>'P9_FLIGHT_INPUT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1717455821120844955)
,p_prompt=>'Flight Input'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cHeight=>10
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'1700$',
'QMKAQX',
'1.1DAVID/LIAD MR',
'1 LY   3N 28MAY 4 TLVJFK HK1  0005  0455  /DCLY*8XU7DG /E',
'2 LY4149N 28MAY 4 JFKATL HK1  0705  0937  /DCLY*8XU7DG /E',
'OPERATED BY DELTA AIR LINES INC',
'3 LY4141G 02AUG 7 ATLBOS HK1  0855  1133  /DCLY*8XU7DG /E',
'OPERATED BY DELTA AIR LINES INC',
'4 LY  16G 02AUG 7 BOSTLV HK1  1330  0635   03AUG 1 ',
'                                              /DCLY*8XU7DG /E'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1717454889173844946)
,p_name=>'P9_API_TOKEN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1717455821120844955)
,p_use_cache_before_default=>'NO'
,p_source=>'6c83e669ef83856315f47dd0c7eeac34ac723f3121d76bde9db82f65643aa61d'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1717454204631844939)
,p_name=>'P9_PNR_NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1717454353234844941)
,p_prompt=>'PNR Number'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1717454027628844938)
,p_name=>'P9_FLIGHT_COST'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1717454353234844941)
,p_prompt=>'Flight Cost'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1717456578981844963)
,p_name=>'Set Icon'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1717456496226844962)
,p_event_id=>wwv_flow_api.id(1717456578981844963)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''.load-from-ai-dialog .ui-dialog-title'', parent ? parent.document: document).html(''<img src="#APP_IMAGES#load-from-ai.png" height="45" width="50" style="margin-right: 10px;" /> Load From AI'');',
'$(''.load-from-ai-dialog .ui-dialog-title'', parent ? parent.document: document).css({ ''display'': ''flex'', ''align-items'': ''center'' });',
'$(''.load-from-ai-dialog .ui-dialog-titlebar-close'', parent ? parent.document: document).css({ ''top'': ''22px'', ''right'': ''22px'' });'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1717455348493844951)
,p_name=>'Load From AI Click'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(1717455443921844952)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1717453753530844935)
,p_event_id=>wwv_flow_api.id(1717455348493844951)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_PNR_NUMBER,P9_FLIGHT_COST'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1717455254677844950)
,p_event_id=>wwv_flow_api.id(1717455348493844951)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'fetchAndProcessAIResult();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1717455214693844949)
,p_name=>'Flight Input Key Release'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_FLIGHT_INPUT'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P9_FLIGHT_INPUT'') != '''''
,p_bind_type=>'live'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1717455110751844948)
,p_event_id=>wwv_flow_api.id(1717455214693844949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(1717455443921844952)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1717455019136844947)
,p_event_id=>wwv_flow_api.id(1717455214693844949)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(1717455443921844952)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1717454772860844945)
,p_name=>'Cancel Click'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(1712274466988319400)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1717454669206844944)
,p_event_id=>wwv_flow_api.id(1717454772860844945)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1717453458182844932)
,p_name=>'Reset Session Storage'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1717453353921844931)
,p_event_id=>wwv_flow_api.id(1717453458182844932)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'sessionStorage.removeItem(''AI_RESULT'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1717453246336844930)
,p_name=>'Import Data Click'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(1717453912417844936)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1717453170448844929)
,p_event_id=>wwv_flow_api.id(1717453246336844930)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'try {',
'    var ai_result = JSON.parse(sessionStorage.getItem(''AI_RESULT''));',
'    if (ai_result) {',
'        ai_result[''import''] = true;',
'        sessionStorage.setItem(''AI_RESULT'', JSON.stringify(ai_result));',
'    }',
'}',
'catch(err) {',
'    alert(err);',
'}'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1717453118954844928)
,p_event_id=>wwv_flow_api.id(1717453246336844930)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1712271906102319380)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1712271507203319379)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1712271068570319379)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_PASSPORTS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9_CURRENT_PASSPORT_DOC_ID := null;',
':P9_ISRAELI_PASSPORT_DOC_ID := null;',
':P9_ISRAELI_PASSPORT_MIME_TYPE := null;',
':P9_AMERICAN_PASSPORT_DOC_ID := null;',
':P9_AMERICAN_PASSPORT_MIME_TYPE := null;',
':P9_CANADIAN_PASSPORT_DOC_ID := null;',
':P9_CANADIAN_PASSPORT_MIME_TYPE := null;',
'',
'begin',
'    with israeli_passports as',
'    (',
'        select DOCUMENT_ID,',
'               MIME_TYPE',
'        from irc_documents ',
'        where person_id = :P9_PERSON_ID and type = ''PASSPORT'' and (DESCRIPTION = ''ISRAELI_PASS'' OR DESCRIPTION not in (''AMERIC_PASS'', ''CANAD_PASS'')) and file_format = ''BINARY'' and end_date is null',
'        order by creation_date desc',
'    )',
'    select DOCUMENT_ID,',
'           MIME_TYPE ',
'    into :P9_ISRAELI_PASSPORT_DOC_ID,',
'         :P9_ISRAELI_PASSPORT_MIME_TYPE',
'    from israeli_passports where rownum = 1;',
'    exception when no_data_found then null;',
'end;',
'',
'begin',
'    with american_passports as',
'    (',
'        select DOCUMENT_ID,',
'               MIME_TYPE',
'        from irc_documents ',
'        where person_id = :P9_PERSON_ID and type = ''PASSPORT'' and DESCRIPTION = ''AMERIC_PASS'' and file_format = ''BINARY'' and end_date is null',
'        order by creation_date desc',
'    )',
'    select DOCUMENT_ID,',
'           MIME_TYPE ',
'    into :P9_AMERICAN_PASSPORT_DOC_ID,',
'         :P9_AMERICAN_PASSPORT_MIME_TYPE',
'    from american_passports where rownum = 1;',
'    exception when no_data_found then null;',
'end;',
'',
'begin',
'    with canadian_passports as',
'    (',
'        select DOCUMENT_ID,',
'               MIME_TYPE',
'        from irc_documents ',
'        where person_id = :P9_PERSON_ID and type = ''PASSPORT'' and DESCRIPTION = ''CANAD_PASS'' and file_format = ''BINARY'' and end_date is null',
'        order by creation_date desc',
'    )',
'    select DOCUMENT_ID,',
'           MIME_TYPE ',
'    into :P9_CANADIAN_PASSPORT_DOC_ID,',
'         :P9_CANADIAN_PASSPORT_MIME_TYPE',
'    from canadian_passports where rownum = 1;',
'    exception when no_data_found then null;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
