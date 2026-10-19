prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
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
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'SHSH Requests and Flights'
,p_alias=>'SHSH-REQUESTS-AND-FLIGHTS'
,p_step_title=>'SHSH Requests and Flights'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var newShlichim = [];',
'var existingShlichim = [];',
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
'}',
'',
'var isMobileDevice = isMobile();',
'',
'function filterData() {    ',
'    var searchTerm = $(''#search-control'').val().toLowerCase();',
'    var filters = $(''.filter-item input:checked'');',
'    ',
'    searchTerm.length > 0 || filters.length > 0 ?',
'        $(''.requests-and-flights-card'').hide() :',
'        $(''.requests-and-flights-card'').show();',
'    ',
'    $(''.see-more-shaliach-name'').each(function(i, e) {',
'        if ($(e).text().toLowerCase().includes(searchTerm)) {',
'            var displayRecordStatus = displayRecordShaliach = false;',
'            var statusFilters = filters.filter((fIdx, fiElem) => { return $(fiElem).data(''filter-type'') == ''status''; });',
'            if (statusFilters.length > 0) {',
'                var statusNameElements = $(e).parents(''.requests-and-flights-card'').find(''.status-name'');',
'                $(statusNameElements).each(function(idx, elem) {',
'                    if (displayRecordStatus === false) {',
'                        var filteredStatuses = statusFilters.filter((fIdx, fiElem) => { ',
'                            return $(fiElem).data(''filter-value'') == $(elem).text(); ',
'                        });',
'                        displayRecordStatus = filteredStatuses.length > 0;',
'                    }',
'                });',
'                ',
'                var visibleRequestsFound = false;',
'                var requestCardElements = $(e).parents(''.requests-and-flights-card'').find(''.shsh-request-card'');',
'                $(requestCardElements).each(function(idx, elem) {',
'                    var filteredStatuses = statusFilters.filter((fIdx, fiElem) => { ',
'                        var cellText = isMobileDevice === true ? $(elem).find(''.shsh-request-cell:first .shsh-request-cell-value span:last'').text() : $(elem).find(''.shsh-request-cell:last'').text();',
'                        return $(fiElem).data(''filter-value'') == cellText; ',
'                    });',
'                    filteredStatuses.length > 0 ? $(elem).show() : $(elem).hide();',
'                    if (visibleRequestsFound === false)',
'                        visibleRequestsFound = filteredStatuses.length > 0;',
'                });',
'                visibleRequestsFound === true ? $(e).parents(''.requests-and-flights-card'').find(''.see-more-requests'').show() : $(e).parents(''.requests-and-flights-card'').find(''.see-more-requests'').hide();',
'                ',
'                var bookedFilter = statusFilters.filter((fIdx, fiElem) => { return $(fiElem).data(''filter-value'') == ''Booked''; });',
'                if (statusFilters.length > 0) {',
'                    if (bookedFilter.length > 0)',
'                        $(e).parents(''.requests-and-flights-card'').find(''.see-more-flights'').show();',
'                    else',
'                        $(e).parents(''.requests-and-flights-card'').find(''.see-more-flights'').hide();',
'                }',
'                else $(e).parents(''.requests-and-flights-card'').find(''.see-more-flights'').show();',
'            }',
'            else {',
'                displayRecordStatus = true;',
'                ',
'                $(e).parents(''.requests-and-flights-card'').find(''.see-more-flights'').find(''.shsh-flight-card'').length > 0 ?',
'                    $(e).parents(''.requests-and-flights-card'').find(''.see-more-flights'').show() :',
'                    $(e).parents(''.requests-and-flights-card'').find(''.see-more-flights'').hide();',
'                ',
'                $(e).parents(''.requests-and-flights-card'').find(''.see-more-requests'').find(''.shsh-request-card'').length > 0 ?',
'                    $(e).parents(''.requests-and-flights-card'').find(''.see-more-requests'').show() :',
'                    $(e).parents(''.requests-and-flights-card'').find(''.see-more-requests'').hide();',
'                ',
'                $(e).parents(''.requests-and-flights-card'').find(''.shsh-request-card'').show();',
'            }',
'            ',
'            var shaliachFilters = filters.filter((fIdx, fiElem) => { return $(fiElem).data(''filter-type'') == ''shaliach''; });',
'            if (shaliachFilters.length > 0) {',
'                var text = $(e).parents(''.requests-and-flights-card'').find(''.see-more-shaliach-type'').text();',
'                var filteredShliach = shaliachFilters.filter((fIdx, fiElem) => { ',
'                    return $(fiElem).data(''filter-value'') == text; ',
'                });',
'                displayRecordShaliach = filteredShliach.length > 0;',
'            }',
'            else {',
'                displayRecordShaliach = true;',
'            }',
'            ',
'            if (displayRecordStatus === true && displayRecordShaliach === true) {',
'                $(e).parents(''.requests-and-flights-card'').show();',
'            }',
'        }',
'    });',
'    ',
'    var cardsDisplayed = false;',
'    $(''.requests-and-flights-card'').each(function(i, e) {',
'        if (cardsDisplayed === false && $(e).css(''display'') != ''none'') {',
'            cardsDisplayed = true;',
'        }',
'    });',
'    ',
'    if (cardsDisplayed === true) {',
'        $(''#myRequestsAndFlightsContainer'').show();',
'        $(''#myRequestsAndFlightsNoDataContainer'').hide();',
'    }',
'    else {',
'        $(''#myRequestsAndFlightsContainer'').hide();',
'        $(''#myRequestsAndFlightsNoDataContainer'').show();',
'    }',
'}',
'',
'function populateMyRequestsAndFlights(res) {    ',
'    $(''#myRequestsAndFlightsNoDataContainer'').hide();',
'    ',
'    if (res.success === false) {',
'        $(''#myRequestsAndFlightsContainer'').hide();',
'        ',
'        var errorHtml = ''<img src="#APP_IMAGES#plane-no-data.svg" style="margin: 60px; margin-top: 30px;" />'' +',
'                        ''<div style="font-weight: 800; color: red">An error occured!</div>'';',
'        $(''#myRequestsAndFlightsNoDataContainer'').html(errorHtml);',
'        $(''#myRequestsAndFlightsNoDataContainer'').show();',
'        return;',
'    }',
'    else if (res.requests.length == 0) {',
'        $(''#myRequestsAndFlightsContainer'').hide();',
'        ',
'        var noDataFoundHtml = ''<img src="#APP_IMAGES#plane-no-data.svg" style="margin: 60px; margin-top: 30px;" />'' +',
'                              ''<div style="font-weight: 800;">No flight requests yet.</div>'' +',
'                              ''<div>Get started by creating your first flight request.</div>'';',
'        $(''#myRequestsAndFlightsNoDataContainer'').html(noDataFoundHtml);',
'        $(''#myRequestsAndFlightsNoDataContainer'').show();',
'        return;',
'    }',
'    ',
'    $(''#myRequestsAndFlightsHeader'').css({''display'':''flex''});',
'    $(''#myRequestsAndFlightsContainer'').show();',
'',
'    var data = consolidateRequestsAndFlights(res);',
'    ',
'    for (var i = 0; i < data.length; i++) {',
'        var r = data[i];',
'        var statusCountersHtml = '''';',
'        ',
'        for (var j = 0; j < r.REQUESTS.length; j++) {',
'            var req = r.REQUESTS[j];',
'            var statusCounterHtml = ''<div class="status-counter-container">'' +',
'                                        ''<span style="background-color: '' + req.STATUS_COLOR + ''; border: 1px solid '' + req.STATUS_COLOR + ''; width: 11px; height: 11px; border-radius: 11px; display: block;"></span>'' +',
'                                        ''<div class="status-name">'' + req.STATUS + ''</div>'' +',
'                                        ''<div class="status-count">'' + req.REQUESTS_COUNT + ''</div>'' +',
'                                    ''</div>'';',
'            statusCountersHtml += statusCounterHtml;',
'        }',
'        ',
'        var cardHtml = ''<div class="requests-and-flights-card" data-assignment-id="'' + r.ASSIGNMENT_ID + ''" data-person-id="'' + r.PERSON_ID + ''" data-is-open="N">'' + ',
'                           ''<span class="requests-and-flights-open-details"><img src="#APP_IMAGES#rf-chevron-closed.svg" /></span>'' +',
'                           ''<div class="see-more-shaliach-image-container">'' +',
'                               ''<div class="see-more-shaliach-image">'' + ',
'                                   ''<div class="shsh-photo" title="'' + r.NAME + ''" style="width: 48px; height: 48px; border: 1px solid #E84C26; border-radius: 24px; background-color: #D9D9D9; background-image: url('' + r.PHOTO + ''); background-size: c'
||'over; background-repeat: no-repeat; background-position: center;"></div>'' +',
'                               ''</div>'' +',
'                               ''<div class="see-more-name-container">'' +',
'                                   ''<div class="see-more-shaliach-name">'' + r.NAME + ''</div>'' +',
'                                   ''<div class="see-more-shaliach-type">'' + r.SHALIACH_TYPE + ''</div>'' +',
'                           ''</div>'' + ',
'                       ''</div>'' +',
'                       ''<div class="status-counters-container" data-assignment-id="'' + r.ASSIGNMENT_ID + ''" data-person-id="'' + r.PERSON_ID + ''">'' + statusCountersHtml + ''</div>'' +',
'                       ''<div class="see-more-container" data-assignment-id="'' + r.ASSIGNMENT_ID + ''" data-person-id="'' + r.PERSON_ID + ''" style="display: none;">'' +',
'                           ''<div class="see-more-requests" style="display: none;">'' +',
'                               ''<div class="see-more-title">My Requests</div>'' +',
'                           ''</div>'' +',
'                           ''<div class="see-more-flights" style="display: none;">'' +',
'                               ''<div class="see-more-title">My Flights</div>'' +',
'                           ''</div>'' +',
'                       ''</div>'';',
'        ',
'        $(''#myRequestsAndFlightsContainer'').append(cardHtml);',
'    }',
'}',
'',
'function consolidateRequestsAndFlights(res) {',
'    var data = [];',
'    ',
'    for (var i = 0; i < res.requests.length; i++) {',
'        var r = res.requests[i];',
'        ',
'        const existingData = data.filter((d, index, array) => {',
'            return d.ASSIGNMENT_ID == r.ASSIGNMENT_ID && d.PERSON_ID == r.PERSON_ID;',
'        });',
'        ',
'        if (existingData.length == 0) {',
'            data.push({',
'                "ASSIGNMENT_ID": r.ASSIGNMENT_ID,',
'                "PERSON_ID": r.PERSON_ID,',
'                "NAME": r.NAME,',
'                "SHALIACH_TYPE": r.SHALIACH_TYPE,',
'                "PHOTO": r.PHOTO,',
'                "REQUESTS": [{',
'                    "STATUS_COLOR": r.STATUS_COLOR,',
'                    "STATUS": r.STATUS,',
'                    "REQUESTS_COUNT": r.REQUESTS_COUNT',
'                }]',
'            });',
'        }',
'        else {',
'            existingData[0].REQUESTS.push({',
'                "STATUS": r.STATUS,',
'                "STATUS_COLOR": r.STATUS_COLOR,',
'                "REQUESTS_COUNT": r.REQUESTS_COUNT',
'            });',
'        }',
'    }',
'    ',
'    return data;',
'}',
'',
'window.activeSpinners = [];',
'',
'function displayRequestsAndFlights(card, assignmentId) {',
'    $(card).find(''.see-more-requests .card-table'').remove();',
'    $(card).find(''.see-more-flights .card-table'').remove();',
'    window.activeSpinners[assignmentId + ''_requests''] = apex.util.showSpinner($(card).find(''.see-more-requests''));',
'    window.activeSpinners[assignmentId + ''_flights''] = apex.util.showSpinner($(card).find(''.see-more-flights''));',
'    $(card).find(''.see-more-requests'').hide();',
'    $(card).find(''.see-more-flights'').hide();',
'    ',
'    apex.server.process(''GetRequests'', { x01: assignmentId }, {',
'        success: function (res) {',
'            debugger;',
'            if (res.success == false) {',
'                $(card).find(''.see-more-requests'').append("Error occured - " + res.message);',
'            }',
'            else if (res.requests.length > 0)  {',
'                if (isMobileDevice) populateMyRequestsMobile(card, assignmentId, res);',
'                else populateMyRequests(card, assignmentId, res);',
'                filterData();',
'            }',
'            else {',
'                $(card).find(''.see-more-requests'').hide();',
'            }',
'            window.activeSpinners[assignmentId + ''_requests''].remove();',
'        },',
'        error: function (res) {',
'            alert("Error GetRequests: " + res.message);',
'            window.activeSpinners[assignmentId + ''_requests''].remove();',
'        },',
'        dataType: "json"',
'    });',
'    ',
'    apex.server.process(''GetFlights'', { x01: assignmentId }, {',
'        success: function (res) {',
'            if (res.success == false) {',
'                $(card).find(''.see-more-flights'').append("Error occured - " + res.message);',
'            }',
'            else if (res.flights.length > 0) {',
'                if (isMobileDevice) populateMyFlightsMobile(card, assignmentId, res);',
'                else populateMyFlights(card, assignmentId, res);',
'                filterData();',
'            }',
'            else {',
'                $(card).find(''.see-more-flights'').hide();',
'            }',
'            window.activeSpinners[assignmentId + ''_flights''].remove();',
'        },',
'        error: function (res) {',
'            alert("Error GetFlights: " + res.message);',
'            window.activeSpinners[assignmentId + ''_flights''].remove();',
'        },',
'        dataType: "json"',
'    });',
'    ',
'    $(card).find(''.u-Processing'').attr(''style'', "left: 25px !important; position: relative !important;");',
'    $(card).find(''.see-more-container'').show();',
'}',
'',
'function populateMyRequests(card, assignmentId , res) {',
'    $(card).find(''.see-more-requests'').append(',
'    ''<div class="card-table" style="width: 100%; display: flex; flex-flow: column; gap: 15px; margin-bottom: 20px; font-weight: 500; font-size: 18px; line-height: 35px; letter-spacing: 0%;">'' +',
'        ''<div class="card-header" style="width: 100%; display: flex; text-align: start; font-weight: 400; font-size: 16px; line-height: 35px; letter-spacing: 0%; color: #A3A3A3; margin-bottom: -15px; padding-left: 20px;">'' +',
'            ''<div style="width: 34%;">Estimated Arrival Date</div>'' +',
'            ''<div style="width: 8%;">Airport</div>'' +',
'            ''<div style="width: 34%;">Estimated Return Date</div>'' +',
'            ''<div style="width: 8%;">Airport</div>'' +',
'            ''<div style="width: 13%;">Status</div>'' +',
'            ''<div style="width: 3%;"></div>'' +',
'        ''</div>'' +',
'    ''</div>'');',
'    ',
'    for (var i = 0; i < res.requests.length; i++) {',
'        var currentRequest = res.requests[i];',
'        var disableEdit = currentRequest.STATUS == ''In Process'';',
'        ',
'        if (currentRequest.ESTIMATED_ARRIVAL_DATE == null) {',
'            currentRequest.ESTIMATED_ARRIVAL_DATE = '''';',
'        }',
'        if (currentRequest.ARRIVAL_AIRPORT == null) {',
'            currentRequest.ARRIVAL_AIRPORT = '''';',
'        }',
'        if (currentRequest.ESTIMATED_RETURN_DATE == null) {',
'            currentRequest.ESTIMATED_RETURN_DATE = '''';',
'        }',
'        if (currentRequest.RETURN_AIRPORT == null) {',
'            currentRequest.RETURN_AIRPORT = '''';',
'        }',
'',
'        $(card).find(''.see-more-requests .card-table'').append(',
'            ''<div class="shsh-request-card" style="background-color: #F9F7F4; width: 100%; height: 61px; display: flex; align-items: center; padding-left: 20px; border-radius: 7px;">'' +',
'                ''<div class="shsh-request-cell" style="width: 34%;">'' + currentRequest.ESTIMATED_ARRIVAL_DATE + ''</div>'' +',
'                ''<div class="shsh-request-cell" style="width: 8%;">'' + currentRequest.ARRIVAL_AIRPORT + ''</div>'' +',
'                ''<div class="shsh-request-cell" style="width: 34%;">'' + currentRequest.ESTIMATED_RETURN_DATE + ''</div>'' +',
'                ''<div class="shsh-request-cell" style="width: 8%;">'' + currentRequest.RETURN_AIRPORT + ''</div>'' +',
'                ''<div class="shsh-request-cell" style="width: 13%; display: flex; align-items: center; gap: 7px;"><span style="background-color: '' + currentRequest.STATUS_COLOR + ''; border: 1px solid '' + currentRequest.STATUS_COLOR + ''; width: 11px; '
||'height: 11px; border-radius: 11px; display: block;"></span><span class="status-desc">'' + currentRequest.STATUS + ''</span></div>'' +',
'                ''<div class="edit-request-btn" title="Edit Request" style="'' + (disableEdit ? ''display: none; '' : '''') + ''width: 3%;"  data-assignment-id="'' + assignmentId + ''" data-request-id="'' + currentRequest.REQUEST_ID + ''" data-status="'' + curre'
||'ntRequest.STATUS + ''" data-form-type="'' + currentRequest.FORM_TYPE + ''"><img style="width: 17px; height: 17px; position: relative; top: 3px; right: 5px; cursor: pointer;" src="#APP_IMAGES#ic-edit.png"></div>'' +',
'            ''</div>'');',
'    }',
'    ',
'    $(card).find(''.see-more-requests'').show();',
'}',
'',
'function populateMyFlights(card, assignmentId , res) {',
'    $(card).find(''.see-more-flights'').append(',
'    ''<div class="card-table" style="width: 100%; display: flex; flex-flow: column; gap: 15px; margin-bottom: 20px; font-weight: 500; font-size: 18px; line-height: 35px; letter-spacing: 0%;">'' +',
'        ''<div class="card-header" style="width: 100%; display: flex; text-align: start; font-weight: 400; font-size: 16px; line-height: 35px; letter-spacing: 0%; color: #A3A3A3; margin-bottom: -15px; padding-left: 20px;">'' +',
'            ''<div style="width: 3%;"></div>'' +',
'            ''<div style="width: 10%;">Destination</div>'' +',
'            ''<div style="width: 28%;">Airline</div>'' +',
'            ''<div style="width: 13%;">Flight Number</div>'' +',
'            ''<div style="width: 18%;">Arrival Date</div>'' +',
'            ''<div style="width: 11%;">Arrival Time</div>'' +',
'            ''<div style="width: 4%;"></div>'' +',
'            ''<div style="width: 3%;"></div>'' +',
'        ''</div>'' +',
'    ''</div>'');',
'    ',
'    for (var i = 0; i < res.flights.length; i++) {',
'        var currentFlight = res.flights[i];',
'        ',
'        if (currentFlight.DESTINATION_AIRPORT == null) {',
'            currentFlight.DESTINATION_AIRPORT = '''';',
'        }',
'        if (currentFlight.AIRLINE == null) {',
'            currentFlight.AIRLINE = '''';',
'        }',
'        if (currentFlight.FLIGHT_NUMBER == null) {',
'            currentFlight.FLIGHT_NUMBER = '''';',
'        }',
'        if (currentFlight.ARRIVAL_DATE == null) {',
'            currentFlight.ARRIVAL_DATE = '''';',
'        }',
'        if (currentFlight.ARRIVAL_TIME == null) {',
'            currentFlight.ARRIVAL_TIME = '''';',
'        }',
'        ',
'        $(card).find(''.see-more-flights .card-table'').append(',
'            ''<div class="shsh-flight-card" style="background-color: #F9F7F4; width: 100%; height: 61px; display: flex; align-items: center; padding-left: 20px; border-radius: 7px;">'' +',
'                ''<div class="flight-icon" style="width: 3%;" data-request-id="'' + currentFlight.REQUEST_ID + ''"><img style="width: 20px; height: 20px; top: 3px; position: relative; left: -2px;" src="#APP_IMAGES#landing.svg"></div>'' +',
'                ''<div class="shsh-flight-cell" style="width: 10%;">'' + currentFlight.DESTINATION_AIRPORT + ''</div>'' +',
'                ''<div class="shsh-flight-cell" style="width: 28%;">'' + currentFlight.AIRLINE + ''</div>'' +',
'                ''<div class="shsh-flight-cell" style="width: 13%;">'' + currentFlight.FLIGHT_NUMBER + ''</div>'' +',
'                ''<div class="shsh-flight-cell" style="width: 18%;">'' + currentFlight.ARRIVAL_DATE + ''</div>'' +',
'                ''<div class="shsh-flight-cell" style="width: 11%; flex-grow: 1;">'' + currentFlight.ARRIVAL_TIME + ''</div>'' +',
'                ''<a class="download-ticket-btn" title="View Ticket" href="'' + currentFlight.TICKET_URL + ''" target="_blank" style="width: 4%;" data-ticket-id="'' + currentFlight.TICKET_ID + ''"><img style="width: 20px; height: 20px; position: relative;'
||' top: 4px; right: 5px; cursor: pointer;" src="#APP_IMAGES#download.svg"></a>'' +',
'                ''<div class="edit-flight-btn" style="display: none !important; width: 3%;" data-assignment-id="'' + assignmentId + ''" data-request-id="'' + currentFlight.REQUEST_ID + ''" data-form-type="'' + currentFlight.FORM_TYPE + ''"><img style="width'
||': 17px; height: 17px; position: relative; top: 3px; right: 5px; cursor: pointer;" src="#APP_IMAGES#ic-edit.png"></div>'' +',
'            ''</div>'');',
'    }',
'    ',
'    $(card).find(''.see-more-flights'').show();',
'}',
'',
'function populateMyRequestsMobile(card, assignmentId , res) {',
'    $(card).find(''.see-more-requests'').append(',
'    ''<div class="card-table" style="width: 100%; display: flex; flex-flow: column; gap: 15px; font-weight: 500; font-size: 18px; line-height: 35px; letter-spacing: 0%;">'' +',
'    ''</div>'');',
'    ',
'    for (var i = 0; i < res.requests.length; i++) {',
'        var currentRequest = res.requests[i];',
'        var disableEdit = currentRequest.STATUS == ''In Process'';',
'        ',
'        if (currentRequest.ESTIMATED_ARRIVAL_DATE == null) {',
'            currentRequest.ESTIMATED_ARRIVAL_DATE = '''';',
'        }',
'        if (currentRequest.ARRIVAL_AIRPORT == null) {',
'            currentRequest.ARRIVAL_AIRPORT = '''';',
'        }',
'        if (currentRequest.ESTIMATED_RETURN_DATE == null) {',
'            currentRequest.ESTIMATED_RETURN_DATE = '''';',
'        }',
'        if (currentRequest.RETURN_AIRPORT == null) {',
'            currentRequest.RETURN_AIRPORT = '''';',
'        }',
'',
'        var cardHtml = ',
'        ''<div class="shsh-request-card" style="background-color: #F9F7F4; width: 100%; display: flex; flex-flow: column; align-items: center; padding-left: 20px; padding-top: 10px; padding-bottom: 10px; border-radius: 7px; text-align: start; font-siz'
||'e: 14px; line-height: 35px; letter-spacing: 0%;">'' +',
'			''<div class="shsh-request-cell" style="display: flex; flex-flow: row; width: 100%;">'' +',
'				''<span class="shsh-request-cell-header" style="width: 100px; font-weight: 400; color: #A3A3A3;">Status</span>'' +',
'				''<span class="shsh-request-cell-value" style="display: flex; align-items: center; gap: 7px; justify-content: start; width: 190px;">'' +',
'					''<span style="background-color: '' + currentRequest.STATUS_COLOR + ''; border: 1px solid '' + currentRequest.STATUS_COLOR + ''; width: 11px; height: 11px; border-radius: 11px; display: block;"></span>'' +',
'					''<span style="flex-grow: 1;">'' + currentRequest.STATUS + ''</span>'' +',
'				''<div class="edit-request-btn" style="'' + (disableEdit ? ''display: none; '' : '''') + ''width: 3%;" data-assignment-id="'' + assignmentId + ''" data-request-id="'' + currentRequest.REQUEST_ID + ''" data-status="'' + currentRequest.STATUS + ''" data-form-ty'
||'pe="'' + currentRequest.FORM_TYPE + ''"><img style="width: 16px; height: 16px; position: relative; top: -2px; right: 10px; cursor: pointer;" src="#APP_IMAGES#ic-edit.png"></div>'' +',
'			''</span></div>'' +',
'			''<div class="shsh-request-cell" style="display: flex; flex-flow: row; width: 100%;">'' +',
'				''<span class="shsh-request-cell-header" style="width: 100px; font-weight: 400; color: #A3A3A3;">Arrival Date</span>'' +',
'				''<span class="shsh-request-cell-value" style="font-weight: 500;">'' + currentRequest.ESTIMATED_ARRIVAL_DATE + ''</span>'' +',
'			''</div>'' +',
'			''<div class="shsh-request-cell" style="display: flex; flex-flow: row; width: 100%;">'' +',
'				''<span class="shsh-request-cell-header" style="width: 100px; font-weight: 400; color: #A3A3A3;">Airport</span>'' +',
'				''<span class="shsh-request-cell-value" style="font-weight: 500;">'' + currentRequest.ARRIVAL_AIRPORT + ''</span>'' +',
'			''</div>'' +',
'			''<div class="shsh-request-cell" style="display: flex; flex-flow: row; width: 100%;">'' +',
'				''<span class="shsh-request-cell-header" style="width: 100px; font-weight: 400; color: #A3A3A3;">Return Date</span>'' +',
'				''<span class="shsh-request-cell-value" style="font-weight: 500;">'' + currentRequest.ESTIMATED_RETURN_DATE + ''</span>'' +',
'			''</div>'' +',
'			''<div class="shsh-request-cell" style="display: flex; flex-flow: row; width: 100%;">'' +',
'				''<span class="shsh-request-cell-header" style="width: 100px; font-weight: 400; color: #A3A3A3;">Airport</span>'' +',
'				''<span class="shsh-request-cell-value" style="font-weight: 500;">'' + currentRequest.RETURN_AIRPORT + ''</span>'' +',
'			''</div>'' +',
'		''</div>'';',
'        ',
'        $(card).find(''.see-more-requests .card-table'').append(cardHtml);',
'    }',
'    ',
'    $(card).find(''.see-more-requests'').show();',
'}',
'',
'function populateMyFlightsMobile(card, assignmentId , res) {',
'    $(card).find(''.see-more-flights'').append(',
'    ''<div class="card-table" style="width: 100%; display: flex; flex-flow: column; gap: 15px; font-weight: 500; font-size: 18px; line-height: 35px; letter-spacing: 0%;">'' +',
'    ''</div>'');',
'    ',
'    for (var i = 0; i < res.flights.length; i++) {',
'        var currentFlight = res.flights[i];',
'        ',
'        if (currentFlight.DESTINATION_AIRPORT == null) {',
'            currentFlight.DESTINATION_AIRPORT = '''';',
'        }',
'        if (currentFlight.AIRLINE == null) {',
'            currentFlight.AIRLINE = '''';',
'        }',
'        if (currentFlight.FLIGHT_NUMBER == null) {',
'            currentFlight.FLIGHT_NUMBER = '''';',
'        }',
'        if (currentFlight.ARRIVAL_DATE == null) {',
'            currentFlight.ARRIVAL_DATE = '''';',
'        }',
'        if (currentFlight.ARRIVAL_TIME == null) {',
'            currentFlight.ARRIVAL_TIME = '''';',
'        }',
'        ',
'        var cardHtml =',
'        ''<div class="shsh-flight-card" style="background-color: #F9F7F4; width: 100%; display: flex; flex-flow: column; align-items: center; padding-left: 20px; padding-top: 10px; padding-bottom: 10px; border-radius: 7px; text-align: start; font-size'
||': 14px; line-height: 35px; letter-spacing: 0%;">'' +',
'			''<span class="shsh-flight-request-buttons" style="display: flex; justify-content: end; width: 100%; position: absolute; right: 25px; gap: 25px;">'' +',
'				''<a class="download-ticket-btn" href="'' + currentFlight.TICKET_URL + ''" target="_blank" style="right: 5px; position: relative;" data-ticket-id="'' + currentFlight.TICKET_ID + ''"><img style="width: 20px; height: 20px; position: relative; cursor: po'
||'inter;" src="#APP_IMAGES#download.svg"></a>'' +',
'				''<div class="edit-flight-btn" style="display: none !important; right: 8px; position: relative;" data-request-id="'' + currentFlight.REQUEST_ID + ''" data-form-type="'' + currentFlight.FORM_TYPE + ''"><img style="width: 17px; height: 17px; position: r'
||'elative; cursor: pointer;" src="#APP_IMAGES#ic-edit.png"></div>'' +',
'			''</span>'' +',
'			''<div class="shsh-request-cell" style="display: flex; flex-flow: row; width: 100%;">'' +',
'				''<span class="shsh-request-cell-header" style="width: 100px; font-weight: 400; color: #A3A3A3;">Destination</span>'' +',
'				''<span class="shsh-request-cell-value" style="font-weight: 500;">'' + currentFlight.DESTINATION_AIRPORT + ''</span>'' +',
'			''</div>'' +',
'			/*<!--<div class="shsh-request-cell" style="display: flex; flex-flow: row; width: 100%;">',
'				<span class="shsh-request-cell-header" style="width: 100px; font-weight: 400; color: #A3A3A3;">Arriving From</span>',
'				<span class="shsh-request-cell-value" style="font-weight: 500;">'' + currentFlight.DESTINATION_AIRPORT + ''</span>',
'			</div>-->*/',
'			''<div class="shsh-request-cell" style="display: flex; flex-flow: row; width: 100%;">'' +',
'				''<span class="shsh-request-cell-header" style="width: 100px; font-weight: 400; color: #A3A3A3;">Airline</span>'' +',
'				''<span class="shsh-request-cell-value" style="font-weight: 500;">'' + currentFlight.AIRLINE + ''</span>'' +',
'			''</div>'' +',
'			''<div class="shsh-request-cell" style="display: flex; flex-flow: row; width: 100%;">'' +',
'				''<span class="shsh-request-cell-header" style="width: 100px; font-weight: 400; color: #A3A3A3;">Flight Number</span>'' +',
'				''<span class="shsh-request-cell-value" style="font-weight: 500;">'' + currentFlight.FLIGHT_NUMBER + ''</span>'' +',
'			''</div>'' +',
'			''<div class="shsh-request-cell" style="display: flex; flex-flow: row; width: 100%;">'' +',
'				''<span class="shsh-request-cell-header" style="width: 100px; font-weight: 400; color: #A3A3A3;">Arrival Date</span>'' +',
'				''<span class="shsh-request-cell-value" style="font-weight: 500;">'' + currentFlight.ARRIVAL_DATE + ''</span>'' +',
'			''</div>'' +',
'			''<div class="shsh-request-cell" style="display: flex; flex-flow: row; width: 100%;">'' +',
'				''<span class="shsh-request-cell-header" style="width: 100px; font-weight: 400; color: #A3A3A3;">Arrival Time</span>'' +',
'				''<span class="shsh-request-cell-value" style="font-weight: 500;">'' + currentFlight.ARRIVAL_TIME + ''</span>'' +',
'			''</div>'' +',
'		''</div>'';',
'        ',
'        $(card).find(''.see-more-flights .card-table'').append(cardHtml);',
'    }',
'    ',
'    $(card).find(''.see-more-flights'').show();',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Body-contentInner > .container {',
'    overflow: visible !important;',
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
'',
'#statusTotalsRegion {',
'    width: 1124px;',
'    background-color: #FFFFFF;',
'    border-radius: 10px;',
'    box-shadow: 0px 4px 20px 0px #0000000D;',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    gap: 20px;',
'    padding: 20px;',
'}',
'',
'.status-totals-card {',
'    /*width: 254px;*/',
'    width: 32%;',
'    height: 109px;',
'    border-radius: 7px;',
'    background-color: #FBF9F7;',
'    padding: 15px;',
'    padding-left: 25px;',
'    color: #172B54;',
'    display: flex;',
'    flex-flow: column;',
'}',
'',
'.status-totals-card-header {',
'    display: flex;',
'    gap: 15px;',
'    align-items: center;',
'}',
'',
'.status-totals-card-text {',
'    font-weight: 400;',
'    font-size: 16px;',
'    line-height: 35px;',
'    letter-spacing: 0%;',
'}',
'',
'.status-totals-card-color {',
'    width: 11px; ',
'    height: 11px; ',
'    border-radius: 11px; ',
'    display: block;',
'}',
'',
'.status-totals-card-count {',
'    font-weight: 700;',
'    font-size: 35px;',
'    line-height: 35px;',
'    letter-spacing: 0%;',
'}',
'',
'.status-counters-container {',
'    display: flex;',
'    gap: 20px;',
'}',
'',
'.status-counter-container {',
'    display: flex;',
'    width: 25%;',
'    align-items: center;',
'    height: 47px;',
'    border-radius: 7px;',
'    background-color: #F9F7F4;',
'    padding: 20px;',
'    gap: 15px;',
'}',
'',
'.status-name {',
'    font-weight: 400;',
'    font-size: 16px;',
'    line-height: 35px;',
'    letter-spacing: 0%;',
'    flex-grow: 1;',
'}',
'',
'.status-count {',
'    font-size: 20px;',
'    font-weight: 700;',
'    line-height: 35px;',
'    letter-spacing: 0%;',
'}',
'',
'#myRequestsAndFlightsContainer {',
'    width: 1124px;',
'    display: flex;',
'    flex-flow: column;',
'    gap: 20px;',
'}',
'',
'.requests-and-flights-card {',
'    width: 1124px;',
'    background-color: #FFFFFF;',
'    border-radius: 10px;',
'    box-shadow: 0px 4px 20px 0px #0000000D;',
'    display: flex;',
'    flex-flow: column;',
'    gap: 20px;',
'    padding: 20px;',
'}',
'',
'.requests-and-flights-open-details {',
'    width: 100%;',
'    height: 0;',
'}',
'',
'.requests-and-flights-open-details img {',
'    float: right;',
'    position: relative;',
'    top: 2px;',
'}',
'',
'.see-more-title {',
'    font-weight: 500;',
'    font-size: 16px;',
'    line-height: 20px;',
'    letter-spacing: 0%;',
'    margin-bottom: 10px;',
'}',
'',
'.see-more-flights {',
'    margin-top: 10px;',
'}',
'',
'.see-more-shaliach-image-container {',
'    display: flex;',
'    align-items: center;',
'    height: 48px;',
'    margin-bottom: 15px;',
'    gap: 15px;',
'}',
'',
'.see-more-name-container {',
'    display: flex;',
'    flex-flow: column;',
'    gap: 5px;',
'}',
'',
'.see-more-shaliach-name {',
'    font-weight: 700;',
'    font-size: 20px;',
'    line-height: 20px;',
'    letter-spacing: 0%;',
'    color: #172B54;',
'}',
'',
'.see-more-shaliach-type {',
'    font-weight: 500;',
'    font-size: 14px;',
'    line-height: 20px;',
'    letter-spacing: 0%;',
'    color: #172B54;',
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
'#createRequestFormRegion {',
'    height: 750px !important;',
'}',
'',
'#createRequestFormRegion .t-DialogRegion-body {',
'    padding-right: 37px;',
'    padding-left: 37px;',
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
'#P25_ARRIVAL_DATE_TO_CONTAINER,',
'#P25_DEPARTURE_DATE_TO_CONTAINER,',
'#P25_ESTIMATED_RETURN_DATE_TO_CONTAINER {',
'    float: right; ',
'    margin-right: 0;',
'}',
'',
'.hour-col {',
'    max-width: 116px;',
'}',
'',
'#P25_ARRIVAL_TIME_FROM_CONTAINER .t-input-standard-optional,',
'#P25_ARRIVAL_TIME_TO_CONTAINER .t-input-standard-optional {',
'    padding-right: 0;',
'    padding-left: 0;',
'    margin-left: 8px;',
'}',
'',
'#P25_ARRIVAL_TIME_FROM_AMPM_CONTAINER .t-input-standard-optional,',
'#P25_ARRIVAL_TIME_TO_AMPM_CONTAINER .t-input-standard-optional {',
'    padding-left: 0;',
'    padding-right: 0;',
'    margin-right: 8px;',
'}',
'',
'#P25_ARRIVAL_TIME_FROM,',
'#P25_ARRIVAL_TIME_TO {',
'    border-top-right-radius: 0;',
'    border-bottom-right-radius: 0;',
'}',
'',
'#P25_ARRIVAL_TIME_FROM_AMPM,',
'#P25_ARRIVAL_TIME_TO_AMPM {',
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
'.select2-col .t-Form-error {',
'    padding: 0;',
'}',
'',
'.t-standard-optional-itemWrapper .apex-item-option label {',
'    padding-right: 15px;',
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
'#P25_I_CONFIRM_NEW,',
'#P25_I_CONFIRM_EXISTING {',
'    padding-top: 0;',
'}',
'',
'label[for="P25_I_CONFIRM_NEW_0"],',
'label[for="P25_I_CONFIRM_EXISTING_0"] {',
'    color: #172B54 !important;',
'    font-weight: 400;',
'    font-size: 16px !important;',
'    line-height: 20px !important;',
'    letter-spacing: 0%;',
'}',
'',
'.create-shaliach-image-container {',
'    display: flex;',
'    align-items: center;',
'    height: 85px;',
'    margin-bottom: 15px;',
'    gap: 15px;',
'}',
'',
'#createRequestFormRegion .create-shaliach-image-container {',
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
'#submitFlightRequestsNewBtn .t-Button-label {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    height: 100%;',
'}',
'',
'#submitFlightRequestsNewBtn {',
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
'',
'',
'#myRequestsAndFlightsHeader {',
'    display: none; ',
'    align-items: center; ',
'    font-weight: 600; ',
'    font-size: 16px; ',
'    line-height: 20px; ',
'    letter-spacing: 0%; ',
'    color: #172B54; ',
'    margin-bottom: 30px; ',
'    max-height: 20px;',
'}',
'',
'#myRequestsAndFlightsHeaderText {',
'    flex-grow: 1;',
'}',
'',
'#search-container {',
'    display: flex; ',
'    gap: 15px;',
'}',
'',
'#filter-button {',
'    display: flex; ',
'    align-items: center; ',
'    justify-content: center; ',
'    width: 37px; ',
'    height: 37px; ',
'    border-radius: 10px; ',
'    border: 1px solid #EFE8E0; ',
'    background-color: #FFFFFF;',
'}',
'',
'#filter-control-container {',
'    display: none; ',
'    flex-flow: column;',
'    align-items: center; ',
'}',
'',
'#filter-control-container-selected {',
'    display: none;',
'    align-items: center;',
'    width: 230px;',
'    height: 37px;',
'    border-radius: 10px;',
'    border: 1px solid #ECE6DE;',
'    background-color: #FFFFFF;',
'    padding-left: 10px;',
'    padding-top: 2px;',
'}',
'',
'#filter-header-selected {',
'    font-weight: 400;',
'    font-size: 16px;',
'    line-height: 35px;',
'    letter-spacing: 0%;',
'    color: #E84C26;',
'    flex-grow: 1;',
'}',
'',
'#filter-control-container-header {',
'    display: flex; ',
'    align-items: center; ',
'    max-width: 230px; ',
'    border-radius: 10px; ',
'    border: 1px solid #ECE6DE; ',
'    background-color: #FFFFFF;',
'    border-bottom-left-radius: 0;',
'    border-bottom-right-radius: 0;',
'}',
'',
'#filter-control-container-body {',
'    display: flex;',
'    align-items: start;',
'    flex-flow: column;',
'    gap: 5px;',
'    width: 230px;',
'    border-radius: 10px;',
'    border: 1px solid #ECE6DE;',
'    background-color: #FFFFFF;',
'    height: 205px;',
'    position: absolute;',
'    top: 29px;',
'    border-top-left-radius: 0;',
'    border-top-right-radius: 0;',
'    padding: 10px 15px;',
'    font-weight: 400;',
'    font-size: 16px;',
'    line-height: 20px;',
'    letter-spacing: 0%;',
'    z-index: 9999;',
'}',
'',
'#filter-control-container-body hr {',
'    border-color: #A8A8A8;',
'    width: 100%;',
'    color: #A8A8A8;',
'    opacity: 0.1;',
'    margin: 3px;',
'}',
'',
'.filter-item input {',
'    margin-right: 7px;',
'    top: 1px;',
'    position: relative;',
'    box-shadow: inset #E84C26 0 0 0 1px !important;',
'    width: 14px;',
'    height: 14px;',
'    border-radius: 2px;',
'    border: 1px solid #E84C26;',
'}',
'',
'.filter-item input:checked {',
'    accent-color: #E84C26 !important;',
'}',
'',
'#filter-control-container img:first-child {',
'    margin-right: 5px; ',
'    margin-left: 10px;',
'}',
'',
'#filter-control-container img:last-child {',
'    margin-right: 13px;',
'}',
'',
'#filter-header {',
'    display: flex; ',
'    align-items: center; ',
'    width: 230px; ',
'    height: 37px; ',
'    padding-left: 5px; ',
'    padding-top: 2px; ',
'    border-radius: 10px; ',
'    background-color: #FFFFFF;',
'}',
'',
'.filter-header {',
'    color: #A8A8A8;',
'}',
'',
'#search-button {',
'    display: flex; ',
'    align-items: center; ',
'    justify-content: center; ',
'    width: 37px; height: 37px; ',
'    border-radius: 10px; ',
'    border: 1px solid #EFE8E0; ',
'    background-color: #FFFFFF;',
'}',
'',
'#search-control-container {',
'    display: none; ',
'    align-items: center; ',
'    max-width: 230px; ',
'    border-radius: 10px; ',
'    border: 1px solid #ECE6DE; ',
'    background-color: #FFFFFF;',
'}',
'',
'#search-control {',
'    width: 230px; ',
'    height: 37px; ',
'    padding-left: 10px; ',
'    border-radius: 10px; ',
'    outline: none !important; ',
'    border: none; !important',
'}',
'',
'#search-control-container img {',
'    margin-right: 10px; ',
'    margin-left: 5px;',
'}',
'',
'#myRequestsAndFlightsNoDataContainer {',
'    display: flex; ',
'    flex-flow: column; ',
'    align-items: center; ',
'    justify-content: center; ',
'    font-size: 16px; ',
'    line-height: 22px; ',
'    font-weight: 500; ',
'    margin-bottom: 50px;',
'}',
'',
'#myRequestsAndFlightsRegion {',
'    width: 1124px;',
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
'    #statusTotalsRegion {',
'        flex-wrap: wrap;',
'        background-color: transparent;',
'        padding: 0;',
'        gap: 4%;',
'        box-shadow: none;',
'        margin-bottom: 15px !important;',
'    }',
'    ',
'    #statusTotalsRegion .status-totals-card {',
'        width: 48%;',
'        margin-bottom: 4%;',
'    }',
'    ',
'    #myRequestsAndFlightsRegion,',
'    #myRequestsAndFlightsContainer {',
'        width: 100%;',
'    }',
'    ',
'    .requests-and-flights-card {',
'        width: 100%;',
'        display: block;',
'        padding: 10px;',
'        padding-top: 20px;',
'    }',
'    ',
'    .status-counters-container {',
'        display: flex;',
'        gap: 2%;',
'        flex-wrap: wrap;',
'    }',
'    ',
'    .status-counter-container {',
'        width: 49%;',
'        padding: 15px;',
'    }',
'    ',
'    .requests-and-flights-open-details img {',
'        right: 10px;',
'    }',
'    ',
'    .see-more-shaliach-image-container {',
'        margin-left: 10px;',
'    }',
'    ',
'    .see-more-name-container {',
'        gap: 0;',
'    }',
'    ',
'    .see-more-shaliach-name {',
'        line-height: 25px;',
'    }',
'    ',
'    #submitContainer {',
'        margin-bottom: 70px !important;',
'    }',
'    ',
'    #P25_ARRIVAL_DATE_FROM_CONTAINER,',
'    #P25_ARRIVAL_DATE_TO_CONTAINER,',
'    #P25_DEPARTURE_DATE_FROM_CONTAINER,',
'    #P25_DEPARTURE_DATE_TO_CONTAINER {',
'        width: 100%;',
'    }  ',
'    ',
'    .select2-selection__clear {',
'        width: 30px;',
'        text-align: center;',
'    }',
'    ',
'    select {',
'        font-size: 14px;',
'    }',
'    ',
'    ',
'    ',
'    ',
'    ',
'    ',
'    ',
'    #myRequestsAndFlightsHeader {',
'        flex-flow: column;',
'        gap: 10px;',
'        max-height: fit-content;',
'    }',
'    ',
'    #myRequestsAndFlightsHeaderText {',
'        margin-bottom: 15px;',
'    }',
'    ',
'    #search-container {',
'        flex-flow: column-reverse;',
'        gap: 15px;',
'        width: 100%;',
'    }',
'    ',
'    #search-control-container {',
'        max-width: 100%;',
'    }',
'    ',
'    #filter-control-container-header {',
'        max-width: 100%;',
'        width: 100%;',
'        border-bottom-left-radius: 10px;',
'        border-bottom-right-radius: 10px;',
'    }',
'    ',
'    #search-control,',
'    #filter-header,',
'    #filter-control-container-selected {',
'        width: 100%;',
'    }',
'    ',
'    #filter-control-container-header {',
'        anchor-name: --filterAnchor;',
'    }',
'    ',
'    #filter-control-container-body {',
'        position-anchor: --filterAnchor; ',
'        width: anchor-size(width);',
'        top: 137px;',
'    }',
'    ',
'    #myRequestsAndFlightsContainer {',
'        min-height: 200px;',
'    }',
'    ',
'    .status-counters-container .status-counter-container:nth-child(3),',
'    .status-counters-container .status-counter-container:nth-child(4) {',
'        margin-top: 6px;',
'    }',
'    ',
'    ',
'}'))
,p_step_template=>wwv_flow_api.id(29244342218644)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DRORA'
,p_last_upd_yyyymmddhh24miss=>'20260726112130'
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
 p_id=>wwv_flow_api.id(343543443620707349)
,p_plug_name=>'My Requests & Flights'
,p_region_name=>'myRequestsAndFlightsRegion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="myRequestsAndFlightsHeader">',
'    <span id="myRequestsAndFlightsHeaderText">My Requests & Flights</span>',
'    <span id="search-container">',
'        <span id="filter-button"><img src="#APP_IMAGES#filter.svg" /></span>',
'        <span id="filter-control-container">',
'            <span id="filter-control-container-header">',
'                <img src="#APP_IMAGES#filter.svg" />',
'                <span id="filter-header">Filter by</span>',
'                <img src="#APP_IMAGES#filter-chevron-up.svg" />',
'            </span>',
'            <span id="filter-control-container-selected">',
'                <span id="filter-header-selected">In Process + 2</span>',
'                <img src="#APP_IMAGES#filter-chevron-down.svg" />',
'            </span>',
'            <span id="filter-control-container-body">',
'                <span class="filter-header">Status</span>',
'                <span class="filter-item">',
'                    <input type="checkbox" onchange="javascript:filterData();" data-filter-type="status" data-filter-value="Pending" /> Pending',
'                </span>',
'                <span class="filter-item">',
'                    <input type="checkbox" onchange="javascript:filterData();" data-filter-type="status" data-filter-value="In Process" /> In Process',
'                </span>',
'                <span class="filter-item">',
'                    <input type="checkbox" onchange="javascript:filterData();" data-filter-type="status" data-filter-value="Booked" /> Booked',
'                </span>',
'                <hr/>',
'                <span class="filter-header">Type</span>',
'                <span class="filter-item">',
'                    <input type="checkbox" onchange="javascript:filterData();" data-filter-type="shaliach" data-filter-value="New Shaliach" /> New Shaliach',
'                </span>',
'                <span class="filter-item">',
'                    <input type="checkbox" onchange="javascript:filterData();" data-filter-type="shaliach" data-filter-value="Existing Shaliach" /> Existing Shaliach',
'                </span>',
'            </span>',
'        </span>',
'        ',
'        <span id="search-button"><img src="#APP_IMAGES#search.svg" /></span>',
'        <span id="search-control-container">',
'            <input type="text" id="search-control" />',
'            <img src="#APP_IMAGES#search.svg" />',
'        </span>',
'    </span>',
'</div>',
'<div id="myRequestsAndFlightsContainer"></div>',
'<div id="myRequestsAndFlightsNoDataContainer" style="display: none;">',
'    <img src="#APP_IMAGES#no-data-found-shlichim.svg" />',
'    <span class="no-data-found-header" style="text-align: center; margin-top: 20px;">',
'        <span style="font-weight: 800;">No Shlichim to display.</span>',
'        <br/><br/>',
'        Shlichim will appear here once they are assigned<br/>',
'        to your community or try changing the filter creteria.',
'    </span>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1026865059993850462)
,p_plug_name=>'Request Form'
,p_region_name=>'createRequestFormRegion'
,p_region_css_classes=>'createRequestFormRegion'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_region_attributes=>'style="display: none;"'
,p_plug_template=>wwv_flow_api.id(491239719494075185)
,p_plug_display_sequence=>90
,p_plug_grid_column_css_classes=>'create-request-form-container'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1026866881373850480)
,p_plug_name=>'Multiple Shlichim Images'
,p_region_name=>'multipleShlichimImagesRegion'
,p_parent_plug_id=>wwv_flow_api.id(1026865059993850462)
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
 p_id=>wwv_flow_api.id(1026866971585850481)
,p_plug_name=>'Form'
,p_parent_plug_id=>wwv_flow_api.id(1026865059993850462)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1030631909974764658)
,p_plug_name=>'Container'
,p_parent_plug_id=>wwv_flow_api.id(1026866971585850481)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>80
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
 p_id=>wwv_flow_api.id(1030632387024764663)
,p_plug_name=>'Submit Container'
,p_region_name=>'submitContainer'
,p_parent_plug_id=>wwv_flow_api.id(1026866971585850481)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1030633663716764676)
,p_plug_name=>'Existing Shlichim Fields Container'
,p_region_name=>'existingShlichimFieldsContainer'
,p_parent_plug_id=>wwv_flow_api.id(1026866971585850481)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1030633986193764679)
,p_plug_name=>'Estimated Departure Date'
,p_parent_plug_id=>wwv_flow_api.id(1030633663716764676)
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
 p_id=>wwv_flow_api.id(1030634370332764683)
,p_plug_name=>'Estimated Departure Time'
,p_parent_plug_id=>wwv_flow_api.id(1030633663716764676)
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
 p_id=>wwv_flow_api.id(1063807572771340089)
,p_plug_name=>'Departure Airport'
,p_parent_plug_id=>wwv_flow_api.id(1030633663716764676)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1030633770804764677)
,p_plug_name=>'Arrival Date Fields Container'
,p_region_name=>'arrivalDateFieldsContainer'
,p_parent_plug_id=>wwv_flow_api.id(1026866971585850481)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1026868392033850495)
,p_plug_name=>'Preferred Arrival Date'
,p_parent_plug_id=>wwv_flow_api.id(1030633770804764677)
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
 p_id=>wwv_flow_api.id(1030631158604764651)
,p_plug_name=>'Estimated Arrival Time'
,p_parent_plug_id=>wwv_flow_api.id(1030633770804764677)
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
 p_id=>wwv_flow_api.id(1030633884988764678)
,p_plug_name=>'Destination Airport'
,p_parent_plug_id=>wwv_flow_api.id(1030633770804764677)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1030634841969764688)
,p_plug_name=>'Type Of Travel'
,p_region_name=>'typeOfTravelContainer'
,p_parent_plug_id=>wwv_flow_api.id(1026866971585850481)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1167041860097872650)
,p_plug_name=>'Destination Airport'
,p_parent_plug_id=>wwv_flow_api.id(1026866971585850481)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1167045888606872690)
,p_plug_name=>'Flight to Shlichut'
,p_parent_plug_id=>wwv_flow_api.id(1026866971585850481)
,p_region_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_api.id(1167046034629872691)
,p_plug_name=>'Home Leave - Flight to Israel'
,p_parent_plug_id=>wwv_flow_api.id(1026866971585850481)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>50
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
 p_id=>wwv_flow_api.id(1030632752950764667)
,p_plug_name=>'Single Shaliach Image'
,p_region_name=>'singleShaliachImageRegion'
,p_parent_plug_id=>wwv_flow_api.id(1026865059993850462)
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
 p_id=>wwv_flow_api.id(1460059070367322125)
,p_plug_name=>'Request Status Totals'
,p_region_name=>'statusTotalsRegion'
,p_region_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2608845079897571872)
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
 p_id=>wwv_flow_api.id(2608845504630572990)
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
 p_id=>wwv_flow_api.id(2627853792296245043)
,p_plug_name=>'Back To Menu Container'
,p_region_name=>'backToMenuContainer'
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>80
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(355707765905060776)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1030632387024764663)
,p_button_name=>'Submit_Flight_Requests'
,p_button_static_id=>'submitFlightRequestsNewBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(491309386210075286)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'BELOW_BOX'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'t-blue-btn'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(186966901450824916)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(2627853792296245043)
,p_button_name=>'BACK_TO_MENU'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back to Menu'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:RR,16,17,18::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(319972946244897491)
,p_name=>'P25_T_IN_PROCESS_COUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1460059070367322125)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(319973112812897492)
,p_name=>'P25_T_PENDING_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1460059070367322125)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(343543140710707345)
,p_name=>'P25_T_BOOKED_COUNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1460059070367322125)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(348138881581543054)
,p_name=>'P25_FORM_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(343543443620707349)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(348138947319543055)
,p_name=>'P25_REQUEST_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(343543443620707349)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(355706838329060771)
,p_name=>'P25_REMARKS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1030631909974764658)
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
 p_id=>wwv_flow_api.id(355707096740060775)
,p_name=>'P25_I_CONFIRM_NEW'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1030631909974764658)
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC(,):I confirm that if a flight matching these conditions is found, it may be ticketed immediately without additional approval.Y'
,p_field_template=>wwv_flow_api.id(491308284349075283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(355708448086060777)
,p_name=>'P25_DESTINATION_AIRPORT_DISABLED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1167041860097872650)
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
 p_id=>wwv_flow_api.id(355710102446060779)
,p_name=>'P25_DEPARTURE_AIRPORT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1063807572771340089)
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
 p_id=>wwv_flow_api.id(355710451800060780)
,p_name=>'P25_DEPARTURE_AIRPORT_DISABLED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1063807572771340089)
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
 p_id=>wwv_flow_api.id(355711222646060781)
,p_name=>'P25_DEPARTURE_DATE_MIN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1030633986193764679)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(355711609602060781)
,p_name=>'P25_DEPARTURE_DATE_FROM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1030633986193764679)
,p_prompt=>'From'
,p_placeholder=>'Select Date'
,p_format_mask=>'Month DD, YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cattributes_element=>'style="padding-right: 0;"'
,p_tag_css_classes=>'disallow-user-input'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_02=>'&P25_DEPARTURE_DATE_MIN.'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'2026:3000'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(355711945152060782)
,p_name=>'P25_DEPARTURE_DATE_TO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1030633986193764679)
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
,p_attribute_02=>'&P25_DEPARTURE_DATE_MIN.'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'2026:3000'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(355712703486060783)
,p_name=>'P25_PREFERRED_DEPARTURE_TIME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1030634370332764683)
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
 p_id=>wwv_flow_api.id(355713645484060784)
,p_name=>'P25_ARRIVAL_DATE_MIN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1026868392033850495)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(355714095479060784)
,p_name=>'P25_ARRIVAL_DATE_FROM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1026868392033850495)
,p_prompt=>'From'
,p_placeholder=>'Select Date'
,p_format_mask=>'Month DD, YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cattributes_element=>'style="padding-right: 0;"'
,p_tag_css_classes=>'disallow-user-input'
,p_field_template=>wwv_flow_api.id(2906385245248173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_02=>'&P25_ARRIVAL_DATE_MIN.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'2026:3000'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(355714520700060784)
,p_name=>'P25_ARRIVAL_DATE_TO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1026868392033850495)
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
,p_attribute_02=>'&P25_ARRIVAL_DATE_MIN.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'2026:3000'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(355715156340060785)
,p_name=>'P25_PREFERRED_ARRIVAL_TIME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1030631158604764651)
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
 p_id=>wwv_flow_api.id(355715928381060785)
,p_name=>'P25_DESTINATION_AIRPORT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1030633884988764678)
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
 p_id=>wwv_flow_api.id(355716591222060786)
,p_name=>'P25_TYPE_OF_TRAVEL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1030634841969764688)
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
 p_id=>wwv_flow_api.id(367174419184495643)
,p_name=>'P25_ASSIGNMENT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(343543443620707349)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(366974487880262445)
,p_validation_name=>'Arrival Date From Is Not Null'
,p_validation_sequence=>10
,p_validation=>':P25_ARRIVAL_DATE_FROM is not null'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and (:P25_FORM_TYPE = ''New Shaliach'' OR :P25_TYPE_OF_TRAVEL = ''Round Trip'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(355714095479060784)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(368174759153031665)
,p_validation_name=>'Arrival Date To Is Not Null'
,p_validation_sequence=>20
,p_validation=>':P25_ARRIVAL_DATE_TO is not null'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and (:P25_FORM_TYPE = ''New Shaliach'' OR :P25_TYPE_OF_TRAVEL = ''Round Trip'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(355714520700060784)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(368374811274048147)
,p_validation_name=>'Arrival Date From Is Bigger Than To'
,p_validation_sequence=>30
,p_validation=>'to_date(:P25_ARRIVAL_DATE_FROM, ''Month DD, YYYY'') <= to_date(:P25_ARRIVAL_DATE_TO, ''Month DD, YYYY'')'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Please select a date prior to &P25_ARRIVAL_DATE_TO.'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and (:P25_FORM_TYPE = ''New Shaliach'' OR :P25_TYPE_OF_TRAVEL = ''Round Trip'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(355714095479060784)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(368375312501052674)
,p_validation_name=>'Destination Airport Is Not Null'
,p_validation_sequence=>40
,p_validation=>':P25_DESTINATION_AIRPORT is not null'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and (:P25_FORM_TYPE = ''New Shaliach'' OR :P25_TYPE_OF_TRAVEL = ''Round Trip'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(355715928381060785)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(368474827201057795)
,p_validation_name=>'Departure Date From Is Not Null'
,p_validation_sequence=>50
,p_validation=>':P25_DEPARTURE_DATE_FROM is not null AND :P25_FORM_TYPE != ''New Shaliach'''
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P25_FORM_TYPE = ''Existing Shaliach'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(355711609602060781)
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
 p_id=>wwv_flow_api.id(368574833737062901)
,p_validation_name=>'Departure Date To Is Not Null'
,p_validation_sequence=>60
,p_validation=>':P25_DEPARTURE_DATE_TO is not null AND :P25_FORM_TYPE != ''New Shaliach'''
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P25_FORM_TYPE = ''Existing Shaliach'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(355711945152060782)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(368774767981071126)
,p_validation_name=>'Departure Date From Is Bigger Than To'
,p_validation_sequence=>70
,p_validation=>'to_date(:P25_DEPARTURE_DATE_FROM, ''Month DD, YYYY'') <= to_date(:P25_DEPARTURE_DATE_TO, ''Month DD, YYYY'') AND :P25_FORM_TYPE != ''New Shaliach'''
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Please select a date prior to &P25_DEPARTURE_DATE_TO.'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P25_FORM_TYPE = ''Existing Shaliach'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(355711609602060781)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(368874788485076484)
,p_validation_name=>'Departure Date From Is Bigger Than Departure Date To'
,p_validation_sequence=>80
,p_validation=>'to_date(:P25_DEPARTURE_DATE_FROM, ''Month DD, YYYY'') >= to_date(:P25_ARRIVAL_DATE_TO, ''Month DD, YYYY'') AND :P25_FORM_TYPE != ''New Shaliach'''
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Please select a date later than &P25_ARRIVAL_DATE_TO.'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P25_FORM_TYPE = ''Existing Shaliach'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(355711609602060781)
,p_error_display_location=>'INLINE_WITH_FIELD'
,p_validation_comment=>'add by Vita '
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(368974772408080371)
,p_validation_name=>'Departure Airport Is Not Null'
,p_validation_sequence=>90
,p_validation=>':P25_DEPARTURE_AIRPORT is not null AND :P25_FORM_TYPE != ''New Shaliach'''
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_validation_condition=>':REQUEST = ''UpdateFlightRequest'' and :P25_FORM_TYPE = ''Existing Shaliach'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(355710102446060779)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(343543156550707346)
,p_name=>'Initialize Request Status Totals'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(343543317498707347)
,p_event_id=>wwv_flow_api.id(343543156550707346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var inProcessCount = parseInt($v(''P25_T_IN_PROCESS_COUNT''));',
'var pendingCount = parseInt($v(''P25_T_PENDING_COUNT''));',
'var bookedCount = parseInt($v(''P25_T_BOOKED_COUNT''));',
'var anyRequestsOrFlightsFound = inProcessCount > 0 || pendingCount > 0 || bookedCount > 0;',
'if (anyRequestsOrFlightsFound === true) {',
'    $(''#statusTotalsRegion'').append(''<div class="status-totals-card">'' +',
'                                        ''<div class="status-totals-card-header">'' +',
'                                            ''<span class="status-totals-card-color" style="background-color: #FDE784; border: 1px solid #FDE784;"></span>'' +',
'                                            ''<span class="status-totals-card-text">In Process</span>'' +',
'                                        ''</div><div style="flex-grow: 1;"></div>'' +',
'                                        ''<div class="status-totals-card-count">'' + inProcessCount + ''</div>'' +',
'                                    ''</div>'');',
'',
'    $(''#statusTotalsRegion'').append(''<div class="status-totals-card">'' +',
'                                        ''<div class="status-totals-card-header">'' +',
'                                            ''<span class="status-totals-card-color" style="background-color: #EFD4FF; border: 1px solid #EFD4FF;"></span>'' +',
'                                            ''<span class="status-totals-card-text">Pending</span>'' +',
'                                        ''</div><div style="flex-grow: 1;"></div>'' +',
'                                        ''<div class="status-totals-card-count">'' + pendingCount + ''</div>'' +',
'                                    ''</div>'');',
'',
'    $(''#statusTotalsRegion'').append(''<div class="status-totals-card">'' +',
'                                        ''<div class="status-totals-card-header">'' +',
'                                            ''<span class="status-totals-card-color" style="background-color: #9ADCFF; border: 1px solid #9ADCFF;"></span>'' +',
'                                            ''<span class="status-totals-card-text">Booked</span>'' +',
'                                        ''</div><div style="flex-grow: 1;"></div>'' +',
'                                        ''<div class="status-totals-card-count">'' + bookedCount + ''</div>'' +',
'                                    ''</div>'');',
'    $(''#statusTotalsRegion'').show();',
'}',
'else {',
'    $(''#statusTotalsRegion'').hide();',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(343543674519707351)
,p_name=>'Initialize Request Counts'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(343543824036707352)
,p_event_id=>wwv_flow_api.id(343543674519707351)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process(''GetRequestsCounts'', {}, {',
'    success: function (res) {',
'        populateMyRequestsAndFlights(res);',
'    },',
'    error: function (res) {',
'        alert("Error GetRequestCounts: " + res.message);',
'    },',
'    dataType: "json"',
'});'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(348137755132543043)
,p_name=>'Accordion Click'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.requests-and-flights-open-details img'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(348137855323543044)
,p_event_id=>wwv_flow_api.id(348137755132543043)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var card = $(this.triggeringElement).parents(''.requests-and-flights-card'');',
'var assignmentId = $(card).data(''assignment-id'');',
'var personId = $(card).data(''person-id'');',
'var isOpen = $(card).data(''is-open'');',
'var chevronImg = ''#APP_IMAGES#rf-chevron-closed.svg'';',
'',
'if (isOpen == ''N'') {',
'    chevronImg = ''#APP_IMAGES#rf-chevron-open.svg'';',
'    $(card).data(''is-open'', ''Y'');',
'    $(card).find(''.status-counters-container[data-assignment-id="'' + assignmentId + ''"]'').hide();',
'    ',
'    displayRequestsAndFlights(card, assignmentId);',
'}',
'else {',
'    chevronImg = ''#APP_IMAGES#rf-chevron-closed.svg'';',
'    $(card).data(''is-open'', ''N'');',
'    $(card).find(''.status-counters-container[data-assignment-id="'' + assignmentId + ''"]'').show();',
'    $(card).find(''.see-more-container[data-assignment-id="'' + assignmentId + ''"]'').hide();',
'}',
'',
'$(this.triggeringElement).attr(''src'', chevronImg);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(355905704232130791)
,p_name=>'See More Request Edit Click'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.see-more-requests .edit-request-btn[data-status="Pending"]'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(355907086455130815)
,p_event_id=>wwv_flow_api.id(355905704232130791)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var formTitle = '''';',
'var assignmentId = $(this.triggeringElement).data(''assignment-id'');',
'$s(''P25_ASSIGNMENT_ID'', assignmentId);',
'var requestId = $(this.triggeringElement).data(''request-id'');',
'$s(''P25_REQUEST_ID'', requestId);',
'var formType = $(this.triggeringElement).data(''form-type'');',
'$s(''P25_FORM_TYPE'', formType);',
'',
'if (formType == ''New Shaliach'') {',
'    formTitle = ''Edit Request'';',
'    newShlichim = [];',
'    newShlichim.push({assignmentId: assignmentId});',
'    $(''.only-for-new'').show();',
'    $(''#newShlichimSubmitMessage'').show();    ',
'    $(''#arrivalDateFieldsContainer'').show();',
'    $(''#existingShlichimFieldsContainer'').show();',
'    $(''#P25_DESTINATION_AIRPORT_CONTAINER'').show();',
'    $(''#P25_DESTINATION_AIRPORT_DISABLED_CONTAINER'').hide();',
'    $(''#P25_DEPARTURE_AIRPORT_CONTAINER'').removeClass(''is-required'').show();',
'    $(''#P25_DEPARTURE_AIRPORT_DISABLED_CONTAINER'').hide();',
'    //$(''#P25_DEPARTURE_AIRPORT_DISABLED_CONTAINER'').removeClass(''is-required'');',
'    $(''#departureDateRequired span'').hide();',
'    $(''#typeOfTravelContainer'').hide();',
'}',
'else if (formType == ''Existing Shaliach'') {',
'    formTitle = ''Edit Request for Existing Shlichim'';',
'    existingShlichim = [];',
'    existingShlichim.push({assignmentId: assignmentId});',
'    $(''.only-for-new'').hide();',
'    $(''#newShlichimSubmitMessage'').hide();',
'    $(''#arrivalDateFieldsContainer'').hide();',
'    $(''#existingShlichimFieldsContainer'').show();',
'    $(''#P25_DESTINATION_AIRPORT_CONTAINER'').show();',
'    $(''#P25_DESTINATION_AIRPORT_DISABLED_CONTAINER'').hide();',
'    $(''#P25_DEPARTURE_AIRPORT_CONTAINER'').show();',
'    $(''#P25_DEPARTURE_AIRPORT_DISABLED_CONTAINER'').hide();',
'    $(''#P25_DEPARTURE_AIRPORT_DISABLED_CONTAINER'').addClass(''is-required'');',
'    $(''#departureDateRequired'').show();',
'    $(''#typeOfTravelContainer'').show();',
'}',
'',
'//<img class="close-create-form" src="#APP_IMAGES#close-icon.svg"#" />',
'$(''#createRequestFormRegion'').parent().find(''.ui-dialog-title'').html(''<img class="create-form-icon" src="#APP_IMAGES#departure-create.svg" /><span class="create-form-title">'' + formTitle + ''</span>'');',
'',
'var shaliachName = $(this.triggeringElement).parents(''.requests-and-flights-card'').find(''.see-more-shaliach-image-container .see-more-shaliach-name'').text();',
'var styleAttr = $(this.triggeringElement).parents(''.requests-and-flights-card'').find(''.see-more-shaliach-image-container .see-more-shaliach-image .shsh-photo'').attr(''style'');',
'var startIdx = styleAttr.indexOf(''url('') + 4;',
'styleAttr = styleAttr.substr(startIdx);',
'var endIdx = styleAttr.indexOf('');'');',
'var photoUrl = styleAttr.substr(0, endIdx);',
'var html = ''<div class="shsh-photo" title="'' + shaliachName + ''" style="width: 69px; height: 69px; border: 1px solid #E84C26; border-radius: 35px; background-color: #D9D9D9; background-image: url('' + photoUrl + ''); background-size: cover; background-'
||'repeat: no-repeat; background-position: center;"></div>'';',
'$(''#createRequestFormRegion .create-shaliach-image'').html(html);',
'$(''#createRequestFormRegion .create-shaliach-name'').text(shaliachName);',
'',
'$(''#singleShaliachImageRegion'').show();',
'$(''#multipleShlichimImagesRegion'').hide();',
'',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(348139111318543056)
,p_event_id=>wwv_flow_api.id(355905704232130791)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P25_REQUEST_ID'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P25_REQUEST_ID'
,p_attribute_07=>'P25_REQUEST_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(355908588920130816)
,p_event_id=>wwv_flow_api.id(355905704232130791)
,p_event_result=>'TRUE'
,p_action_sequence=>80
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
'           case when paei.aei_information4 is not null then paei.aei_information4 else ''Round Trip'' end,',
'           paei.aei_information5,',
'           paei.aei_information6,',
'           paei.aei_information7,',
'           paei.aei_information8',
'               ',
'    into   :P25_DESTINATION_AIRPORT,',
'           :P25_ARRIVAL_DATE_FROM,',
'           :P25_ARRIVAL_DATE_TO,',
'           :P25_PREFERRED_ARRIVAL_TIME,',
'           :P25_REMARKS,',
'           :P25_TYPE_OF_TRAVEL,',
'           :P25_DEPARTURE_AIRPORT,',
'           :P25_DEPARTURE_DATE_FROM,',
'           :P25_DEPARTURE_DATE_TO,',
'           :P25_PREFERRED_DEPARTURE_TIME',
'         ',
'    from   PER_ASSIGNMENT_EXTRA_INFO PAEI',
'    where  PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS'' and',
'           PAEI.aei_information1 = :P25_REQUEST_ID;',
'           ',
'    --exception when no_data_found then null;',
'end;'))
,p_attribute_02=>'P25_REQUEST_ID'
,p_attribute_03=>'P25_REQUEST_ID,P25_DESTINATION_AIRPORT,P25_ARRIVAL_DATE_FROM,P25_ARRIVAL_DATE_TO,P25_PREFERRED_ARRIVAL_TIME,P25_REMARKS,P25_TYPE_OF_TRAVEL,P25_DEPARTURE_AIRPORT,P25_DEPARTURE_DATE_FROM,P25_DEPARTURE_DATE_TO,P25_PREFERRED_DEPARTURE_TIME'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'',
'/*begin',
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
'           case when paei.aei_information4 is not null then paei.aei_information4 else ''Round Trip'' end,',
'           case when paei.aei_information3 = ''New Shaliach'' then null',
'                when paei.aei_information3 = ''Existing Shaliach'' then paei.aei_information5 end,',
'           case when paei.aei_information3 = ''New Shaliach'' then null',
'                when paei.aei_information3 = ''Existing Shaliach'' then paei.aei_information6 end,',
'           case when paei.aei_information3 = ''New Shaliach'' then null',
'                when paei.aei_information3 = ''Existing Shaliach'' then paei.aei_information7 end,',
'           case when paei.aei_information3 = ''New Shaliach'' then null',
'                when paei.aei_information3 = ''Existing Shaliach'' then paei.aei_information8 end',
'               ',
'    into   :P25_DESTINATION_AIRPORT,',
'           :P25_ARRIVAL_DATE_FROM,',
'           :P25_ARRIVAL_DATE_TO,',
'           :P25_PREFERRED_ARRIVAL_TIME,',
'           :P25_REMARKS,',
'           :P25_TYPE_OF_TRAVEL,',
'           :P25_DEPARTURE_AIRPORT,',
'           :P25_DEPARTURE_DATE_FROM,',
'           :P25_DEPARTURE_DATE_TO,',
'           :P25_PREFERRED_DEPARTURE_TIME',
'         ',
'    from   PER_ASSIGNMENT_EXTRA_INFO PAEI',
'    where  PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS'' and',
'           PAEI.aei_information1 = :P25_REQUEST_ID;',
'           ',
'    --exception when no_data_found then null;',
'end;/*'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(424932925213213347)
,p_event_id=>wwv_flow_api.id(355905704232130791)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P25_I_CONFIRM_NEW'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(348138758901543053)
,p_event_id=>wwv_flow_api.id(355905704232130791)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1026865059993850462)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(348142482688543090)
,p_name=>'Initialize GUI'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(348142606701543091)
,p_event_id=>wwv_flow_api.id(348142482688543090)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(() => {',
'    //Disable submit button',
'    $(''#submitFlightRequestsNewBtn'').addClass(''apex_disabled'');',
'    $(''#submitFlightRequestsNewBtn'').attr(''disabled'', true);',
'',
'    if (isMobileDevice === true) {',
'        $(''#search-button'').click();',
'        $(''#filter-button'').hide();',
'        $(''#filter-control-container-selected'').hide();',
'        $(''#filter-control-container-body'').hide();',
'        $(''#filter-control-container'').css({ ''display'': ''flex''});',
'    }',
'});'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(365775142776232132)
,p_name=>'I Confirm Change'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P25_I_CONFIRM_NEW'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(365775572498232163)
,p_event_id=>wwv_flow_api.id(365775142776232132)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P25_I_CONFIRM_NEW'') == ''Y'') {',
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
 p_id=>wwv_flow_api.id(365775994602235066)
,p_name=>'Type Of Travel Change'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P25_TYPE_OF_TRAVEL'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(365776431351235088)
,p_event_id=>wwv_flow_api.id(365775994602235066)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P25_FORM_TYPE'') == ''Existing Shaliach'') {',
'    var selectedValue = $(''input[type="radio"][name="P25_TYPE_OF_TRAVEL"]'').filter(function(i, e) { return $(e).is('':checked''); }).val();',
'    if (selectedValue) { ',
'        if (selectedValue == ''Round Trip'') {',
'            $(''#P25_DESTINATION_AIRPORT_CONTAINER'').show();',
'            $(''#P25_DESTINATION_AIRPORT_DISABLED_CONTAINER'').hide();',
'            $(''#arrivalDateFieldsContainer'').show();',
'        }',
'        else if (selectedValue == ''One Way'') {',
'            $(''#P25_DESTINATION_AIRPORT_CONTAINER'').hide();',
'            $(''#P25_DESTINATION_AIRPORT_DISABLED_CONTAINER'').show();',
'            $(''#arrivalDateFieldsContainer'').hide();',
'        }',
'    }',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(412667047213568678)
,p_name=>'Filter Button Click'
,p_event_sequence=>90
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#filter-button,#filter-control-container-selected'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(412667230953568679)
,p_event_id=>wwv_flow_api.id(412667047213568678)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#filter-button'').hide();',
'$(''#filter-control-container-selected'').hide();',
'$(''#filter-control-container'').css({''display'':''flex''});',
'$(''#filter-control-container-header'').css({''display'':''flex''});',
'$(''#filter-control-container-body'').css({''display'':''flex''});'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(412668006534568687)
,p_name=>'Filter Header Click'
,p_event_sequence=>110
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#filter-control-container-header'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(412668091548568688)
,p_event_id=>wwv_flow_api.id(412668006534568687)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var filters = $(''input[data-filter-type]:checked'');',
'if (filters.length > 0) {',
'    var filterText = $(filters[0]).data(''filter-value'');',
'    if (filters.length > 1) {',
'        filterText = filterText + '' + '' + (filters.length - 1);',
'    }',
'    $(''#filter-header-selected'').text(filterText);',
'    $(''#filter-control-container-header'').hide();',
'    $(''#filter-control-container-body'').hide();',
'    $(''#filter-control-container-selected'').css({''display'':''flex''});',
'}',
'else {',
'    if (isMobileDevice === true) {',
'        $(''#filter-button'').hide();',
'        $(''#filter-control-container'').show();',
'        if ($(''#filter-control-container-body'').css(''display'') == ''flex'') {',
'            $(''#filter-control-container-body'').hide();',
'            $(''#filter-control-container-header'').css({''border-bottom-left-radius'':''10px'',''border-bottom-right-radius'':''10px''});',
'        }',
'        else {',
'            $(''#filter-control-container-body'').css({''display'':''flex''});',
'            $(''#filter-control-container-header'').css({''border-bottom-left-radius'':''0'',''border-bottom-right-radius'':''0''});',
'        }',
'    }',
'    else {',
'        $(''#filter-button'').show();',
'        $(''#filter-control-container'').hide();',
'    }',
'    $(''.shsh-request-card'').show();',
'    $(''#filter-control-container-selected'').hide();',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(412667292616568680)
,p_name=>'Search Button Click'
,p_event_sequence=>120
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#search-button'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(412667431604568681)
,p_event_id=>wwv_flow_api.id(412667292616568680)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#search-button'').hide();',
'$(''#search-control-container'').css({''display'':''flex''});'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(412667482952568682)
,p_name=>'Search Control Key Press'
,p_event_sequence=>130
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#search-control'
,p_bind_type=>'live'
,p_bind_event_type=>'keydown'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(412667572820568683)
,p_event_id=>wwv_flow_api.id(412667482952568682)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (event.key === "Enter") {',
'    filterData();',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(424932595872213344)
,p_name=>'Submit Click'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(355707765905060776)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(424932726521213345)
,p_event_id=>wwv_flow_api.id(424932595872213344)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'UpdateFlightRequest'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(367074327020284604)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UpdateFlightRequest'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_remarks               varchar2(100) ;',
'   v_rest                  VARCHAR2(1000) := :P25_ASSIGNMENT_ID;',
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
'IF :P25_FORM_TYPE LIKE ''New%'' THEN',
'    v_shaliah_type := ''New Shaliach'';',
'ELSE',
'    v_shaliah_type := ''Existing Shaliach'';',
'END IF;',
'',
'IF LENGTH(:P25_REMARKS) > 0 THEN',
'   select fnd_documents_short_text_s.nextval into l_media_id from dual;',
'   insert into fnd_documents_short_text    (media_id, short_text)     values   (l_media_id, :P25_REMARKS);',
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
'              IF :P25_FORM_TYPE = ''New Shaliach'' THEN ',
'              BEGIN',
'                   SELECT CASE WHEN :P25_DEPARTURE_AIRPORT IS NULL',
'                               THEN :P25_DESTINATION_AIRPORT',
'                          ELSE :P25_DEPARTURE_AIRPORT',
'                                END',
'                      INTO v_aei_information5',
'                      FROM DUAL;',
'',
'                   SELECT CASE WHEN  :P25_DEPARTURE_DATE_FROM IS NULL',
'                               THEN  ''Latest Possible''',
'                               ELSE :P25_DEPARTURE_DATE_FROM',
'                                END',
'                      INTO v_aei_information6',
'                      FROM DUAL;',
'                                              ',
'                 hr_assignment_extra_info_api.create_assignment_extra_info(p_assignment_id      => v_assign_id',
'                                                                           ,p_information_type            => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                           ,p_aei_information_category    => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                           ,p_aei_information1     => :P25_SEE_MORE_REQUEST_ID',
'                                                                           ,p_aei_information2     => ''U''',
'                                                                           ,p_aei_information3     => ''New Shaliach''',
'                                                                           ,p_aei_information5     => v_aei_information5 ',
'                                                                           ,p_aei_information6    => v_aei_information6  ',
'                                                                           ,p_aei_information10    => :P25_DESTINATION_AIRPORT',
'                                                                           ,p_aei_information11    => :P25_ARRIVAL_DATE_FROM',
'                                                                           ,p_aei_information12    => :P25_ARRIVAL_DATE_TO',
'                                                                           ,p_aei_information13    => :P25_PREFERRED_ARRIVAL_TIME',
'                                                                            ,p_aei_information15    => l_media_id ',
'                                                                             --Out Parameters',
'                                                                            ,p_assignment_extra_info_id  => v_assi_extra_info_id',
'                                                                            ,p_object_version_number => v_out_ovn);',
'                                                                                        ',
'                     SELECT pei.object_version_number, ',
'                            pei.assignment_extra_info_id',
'                       INTO                         ',
'                            v_object_version_number,',
'                            v_assi_extra_info_id',
'                       FROM PER_ASSIGNMENT_EXTRA_INFO pei',
'                      WHERE assignment_id = v_assign_id',
'                        and pei.aei_information1 =:P25_REQUEST_ID',
'                        AND (INFORMATION_TYPE LIKE ''JAFI_HR_FLIGHT_REQUESTS'');',
'         ',
'                   hr_assignment_extra_info_api.update_assignment_extra_info  (p_validate    =>  false',
'                                                                              ,p_assignment_extra_info_id => v_assi_extra_info_id',
'                                                                              ,p_object_version_number => v_object_version_number',
'                                                                              ,p_aei_information1     => :P25_REQUEST_ID',
'                                                                              ,p_aei_information2     => ''U''',
'                                                                              --,p_aei_information3     => ''New Shaliach''',
'                                                                              ,p_aei_information5     => v_aei_information5',
'                                                                              ,p_aei_information6     => v_aei_information6',
'                                                                              ,p_aei_information7     => :P25_DEPARTURE_DATE_TO',
'                                                                              ,p_aei_information8     => :P25_PREFERRED_DEPARTURE_TIME',
'                                                                              ,p_aei_information10    => :P25_DESTINATION_AIRPORT',
'                                                                              ,p_aei_information11    => :P25_ARRIVAL_DATE_FROM',
'                                                                              ,p_aei_information12    => :P25_ARRIVAL_DATE_TO',
'                                                                              ,p_aei_information13    => :P25_PREFERRED_ARRIVAL_TIME',
'                                                                              ,p_aei_information15    => l_media_id);',
'             EXCEPTION when others then ',
'                            xx_my_utils.add_msg(''Error in  hr_assignment_extra_info_api.create_assignment_extra_info ''||Sqlerrm(Sqlcode)); ',
'              END ;',
'                                      ',
'  ------------------------------------------------                                        ',
'			 ELSE -- MODE == EXIST SHALIAH',
'             BEGIN',
'             -- v_shaliah_type := ''Existing Shaliach'';',
'               if  :P25_TYPE_OF_TRAVEL  = ''One Way'' Then ',
'                   v_dest_airport  := NULL; ',
'               else',
'                   v_dest_airport  := :P25_DESTINATION_AIRPORT ; ',
'               end if;',
'               ',
'                hr_assignment_extra_info_api.create_assignment_extra_info(p_assignment_id      => v_assign_id',
'                                                                         ,p_information_type            => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                         ,p_aei_information_category    => ''JAFI_HR_FLIGHT_REQUESTS_HISTOR''',
'                                                                         ,p_aei_information1     => :P25_REQUEST_ID',
'                                                                         ,p_aei_information2     => ''U''',
'                                                                         ,p_aei_information3     => v_shaliah_type',
'                                                                         ,p_aei_information4     => :P25_TYPE_OF_TRAVEL',
'                                                                         ,p_aei_information5     => :P25_DEPARTURE_AIRPORT',
'                                                                         ,p_aei_information6     => :P25_DEPARTURE_DATE_FROM',
'                                                                         ,p_aei_information7    => :P25_DEPARTURE_DATE_TO',
'                                                                         ,p_aei_information8    => :P25_PREFERRED_DEPARTURE_TIME',
'                                                                         ,p_aei_information10    => v_dest_airport',
'                                                                         ,p_aei_information11    => :P25_ARRIVAL_DATE_FROM',
'                                                                         ,p_aei_information12    => :P25_ARRIVAL_DATE_TO',
'                                                                         ,p_aei_information13    => :P25_PREFERRED_ARRIVAL_TIME',
'                                                                         ,p_aei_information15    => l_media_id',
'                                                                          --Out Parameters',
'                                                                         ,p_assignment_extra_info_id  => v_assi_extra_info_id',
'                                                                         ,p_object_version_number => v_out_ovn);',
'',
'             SELECT pei.object_version_number, ',
'                     pei.assignment_extra_info_id',
'               INTO                         ',
'                     v_object_version_number,',
'                     v_assi_extra_info_id',
'                FROM PER_ASSIGNMENT_EXTRA_INFO pei',
'               WHERE assignment_id = v_assign_id',
'                 and pei.aei_information1 = :P25_REQUEST_ID',
'                AND (INFORMATION_TYPE LIKE ''JAFI_HR_FLIGHT_REQUESTS'');',
'',
'',
'                 hr_assignment_extra_info_api.update_assignment_extra_info  (p_validate    =>  false',
'                                                                            ,p_assignment_extra_info_id => v_assi_extra_info_id',
'                                                                            ,p_object_version_number => v_object_version_number',
'                                                                            ,p_aei_information1     => :P25_REQUEST_ID',
'                                                                            ,p_aei_information2     => ''U'' ',
'                                                                            --,p_aei_information3     => v_shaliah_type',
'                                                                            ,p_aei_information4     => :P25_TYPE_OF_TRAVEL',
'                                                                            ,p_aei_information5     => :P25_DEPARTURE_AIRPORT',
'                                                                            ,p_aei_information6     => :P25_DEPARTURE_DATE_FROM',
'                                                                            ,p_aei_information7    => :P25_DEPARTURE_DATE_TO',
'                                                                            ,p_aei_information8    => :P25_PREFERRED_DEPARTURE_TIME',
'                                                                            ,p_aei_information10    => v_dest_airport',
'                                                                            ,p_aei_information11    => :P25_ARRIVAL_DATE_FROM',
'                                                                            ,p_aei_information12    => :P25_ARRIVAL_DATE_TO',
'                                                                            ,p_aei_information13    => :P25_PREFERRED_ARRIVAL_TIME',
'                                                                            ,p_aei_information15    => l_media_id);',
'           	     EXCEPTION  when others then      ',
'                             xx_my_utils.add_msg(''Error in  hr_assignment_extra_info_api.create_assignment_extra_info ''||Sqlerrm(Sqlcode)); ',
'             END;  ',
'          END IF;',
'      EXIT WHEN v_rest IS NULL;',
'    END LOOP;',
'     ',
'    exception when no_data_found then      ',
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
 p_id=>wwv_flow_api.id(319972924568897490)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Assign Request Status Totals'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    :P25_T_IN_PROCESS_COUNT := 0;',
'    :P25_T_PENDING_COUNT := 0;',
'    :P25_T_BOOKED_COUNT := 0;',
'        ',
'    FOR s IN ',
'    (select STATUS,',
'            count(*) REQUESTS_COUNT',
'    from (',
'    select  case when nvl((select jaf1.status',
'                           from apps.jafi_apex_shlichut_flights jaf1',
'                           where paaf.assignment_id = jaf1.assgt_id(+) and ',
'                                 jaf1.request_id(+) = paei.aei_information1 and',
'                                 jaf1.status not in (''7'')), ''0'') = ''0'' then ''Pending''',
'                 when (select jaf1.status',
'                       from apps.jafi_apex_shlichut_flights jaf1',
'                       where paaf.assignment_id=jaf1.assgt_id and',
'                             jaf1.request_id(+) = paei.aei_information1 and',
'                             jaf1.status not in (''7'')) in (''1'',''2'',''3'',''4'',''8'') then ''In Process''',
'                 when (select jaf1.status',
'                       from apps.jafi_apex_shlichut_flights jaf1',
'                       where paaf.assignment_id=jaf1.assgt_id and',
'                             jaf1.request_id(+) = paei.aei_information1 and',
'                             jaf1.status not in (''7'')) in (''6'') then ''Booked''',
'                 end STATUS',
'    from	per_all_people_f papf,',
'            per_all_assignments_f paaf,',
'            per_all_vacancies pav,',
'            irc_assignment_statuses ias,',
'            per_assignment_status_types past,',
'            PER_ASSIGNMENT_EXTRA_INFO PAEI',
'    where   pav.organization_id = :P0_ORG_ID',
'            AND papf.person_id = paaf.person_id',
'            and paaf.vacancy_id = pav.vacancy_id',
'            and ias.assignment_id = paaf.assignment_id',
'            and ias.assignment_status_type_id IN (47358, 23357, 23358, 6, 1, 279)',
'            and trunc(sysdate) between papf.effective_start_date and papf.effective_end_date',
'            and trunc(sysdate) between paaf.effective_start_date and paaf.effective_end_date',
'            and paaf.business_group_id = 4088',
'            and pav.attribute11 = ''N''',
'            AND PAV.ATTRIBUTE_CATEGORY = ''SSH''',
'            and past.assignment_status_type_id = paaf.assignment_status_type_id',
'            and past.assignment_status_type_id = ias.assignment_status_type_id',
'            and ias.status_change_date = (select max(status_change_date)',
'            from irc_assignment_statuses ias1',
'            where ias.assignment_id = ias1.assignment_id)',
'            and PAEI.ASSIGNMENT_ID = paaf.assignment_id',
'            and PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS''',
'    )',
'    group by STATUS) ',
'    LOOP',
'        if s.STATUS = ''In Process'' then :P25_T_IN_PROCESS_COUNT := s.REQUESTS_COUNT;',
'        elsif s.STATUS = ''Pending'' then :P25_T_PENDING_COUNT := s.REQUESTS_COUNT;',
'        elsif s.STATUS = ''Booked'' then :P25_T_BOOKED_COUNT := s.REQUESTS_COUNT;',
'        end if;',
'    END LOOP;',
'    ',
'    exception when others then ',
'    begin',
'        null;',
'    end;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(343543584633707350)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetRequestsCounts'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    assignment_id        number(15);',
'    person_id            number(10);',
'    ',
'begin',
'',
'APEX_JSON.open_object;',
'APEX_JSON.open_array(''requests''); ',
'',
'FOR s IN (',
'    select  assignment_id,',
'            person_id,',
'            NAME,',
'            SHALIACH_TYPE,',
'            case when PHOTO > 0 then',
'                apex_page.get_url(p_page => ''25'', ',
'                p_request => ''APPLICATION_PROCESS=GetDocument'', ',
'                p_items => ''DOCUMENT_ID'', ',
'                p_values => PHOTO) else ''#APP_IMAGES#anonymous-user.jpeg'' end PHOTO,',
'            STATUS,',
'            case when STATUS = ''Pending'' then ''#EFD4FF''',
'                 when STATUS = ''In Process'' then ''#FDE784''',
'                 when STATUS = ''Approved'' then ''#AFE9C7''',
'                 when STATUS = ''Booked'' then ''#9ADCFF''',
'            end STATUS_COLOR,',
'            count(*) REQUESTS_COUNT',
'    from (',
'        select  paaf.assignment_id,',
'                paaf.person_id,',
'                papf.first_name || '' '' || papf.last_name NAME,',
'                case when ias.assignment_status_type_id = 1 then ''Existing Shaliach'' else ''New Shaliach'' end SHALIACH_TYPE,',
'                (select NVL(max(document_id), 0)',
'                 from irc_documents',
'                 where person_id = papf.person_id',
'                 and end_date is null',
'                 and type = ''PHOTO'') PHOTO,',
'                case when nvl((select jaf1.status',
'                               from apps.jafi_apex_shlichut_flights jaf1',
'                               where paaf.assignment_id = jaf1.assgt_id(+) and ',
'                                     jaf1.request_id(+) = paei.aei_information1 and',
'                                     jaf1.status not in (''7'')), ''0'') = ''0'' then ''Pending''',
'                     when (select jaf1.status',
'                           from apps.jafi_apex_shlichut_flights jaf1',
'                           where paaf.assignment_id=jaf1.assgt_id and',
'                                 jaf1.request_id(+) = paei.aei_information1 and',
'                                 jaf1.status not in (''7'')) in (''1'',''2'',''3'',''4'',''8'') then ''In Process''',
'                     when (select jaf1.status',
'                           from apps.jafi_apex_shlichut_flights jaf1',
'                           where paaf.assignment_id=jaf1.assgt_id and',
'                                 jaf1.request_id(+) = paei.aei_information1 and',
'                                 jaf1.status not in (''7'')) in (''5'') then ''Approved''',
'                     when (select jaf1.status',
'                           from apps.jafi_apex_shlichut_flights jaf1',
'                           where paaf.assignment_id=jaf1.assgt_id and',
'                                 jaf1.request_id(+) = paei.aei_information1 and',
'                                 jaf1.status not in (''7'')) in (''6'') then ''Booked''',
'                     end STATUS',
'        from	per_all_people_f papf,',
'                per_all_assignments_f paaf,',
'                per_all_vacancies pav,',
'                irc_assignment_statuses ias,',
'                per_assignment_status_types past,',
'                PER_ASSIGNMENT_EXTRA_INFO PAEI',
'        where   pav.organization_id = :P0_ORG_ID',
'                AND papf.person_id = paaf.person_id',
'                and paaf.vacancy_id = pav.vacancy_id',
'                and ias.assignment_id = paaf.assignment_id',
'                and ias.assignment_status_type_id IN (47358, 23357, 23358, 6, 1, 279)',
'                and trunc(sysdate) between papf.effective_start_date and papf.effective_end_date',
'                and trunc(sysdate) between paaf.effective_start_date and paaf.effective_end_date',
'                and paaf.business_group_id = 4088',
'                and pav.attribute11 = ''N''',
'                AND PAV.ATTRIBUTE_CATEGORY = ''SSH''',
'                and past.assignment_status_type_id = paaf.assignment_status_type_id',
'                and past.assignment_status_type_id = ias.assignment_status_type_id',
'                and ias.status_change_date = (select max(status_change_date)',
'                from irc_assignment_statuses ias1',
'                where ias.assignment_id = ias1.assignment_id)',
'                and PAEI.ASSIGNMENT_ID = paaf.assignment_id',
'                and PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS''',
'    )',
'    group by assignment_id,person_id,NAME,SHALIACH_TYPE,PHOTO,STATUS',
'    order by NAME',
') LOOP',
'',
'    apex_json.open_object;',
'    apex_json.write(''ASSIGNMENT_ID'', s.ASSIGNMENT_ID, true);',
'    apex_json.write(''PERSON_ID'', s.PERSON_ID, true);',
'    apex_json.write(''NAME'', s.NAME, true);',
'    apex_json.write(''SHALIACH_TYPE'', s.SHALIACH_TYPE, true);',
'    apex_json.write(''PHOTO'', s.PHOTO, true);',
'    apex_json.write(''STATUS'', s.STATUS, true);',
'    apex_json.write(''STATUS_COLOR'', s.STATUS_COLOR, true);',
'    apex_json.write(''REQUESTS_COUNT'', s.REQUESTS_COUNT, true);',
'    apex_json.close_object;',
'',
'END LOOP;',
'',
'APEX_JSON.close_array;',
'APEX_JSON.write(''success'', true);',
'APEX_JSON.close_object;',
'',
'EXCEPTION WHEN OTHERS THEN',
'    APEX_JSON.open_object;',
'    APEX_JSON.write(''success'', false);',
'    APEX_JSON.write(''message'', SQLCODE || '' - '' || SQLERRM);',
'    APEX_JSON.close_object;',
'    ',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(348138206768543047)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetRequests'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_assignment_id NUMBER := apex_application.g_x01;',
'begin',
'',
'APEX_JSON.open_object;',
'APEX_JSON.open_array(''requests''); ',
'',
'FOR r IN ',
'(',
'    with my_requests as ',
'    (',
'    select  paei.aei_information1 REQUEST_ID,',
'            paei.aei_information3 FORM_TYPE,',
'            case when paei.aei_information11 is not null and paei.AEI_INFORMATION12 is not null then',
'                      paei.aei_information11 || '' - '' || paei.AEI_INFORMATION12',
'                 when paei.aei_information11 is not null then',
'                      paei.aei_information11',
'                 when paei.AEI_INFORMATION12 is not null then',
'                      paei.AEI_INFORMATION12 end ESTIMATED_ARRIVAL_DATE,',
'            case when paei.aei_information3 = ''New Shaliach'' then paei.aei_information5',
'                 when paei.aei_information3 = ''Existing Shaliach'' then paei.aei_information10 end ARRIVAL_AIRPORT,',
'            case when paei.aei_information3 = ''Existing Shaliach'' then',
'            case when paei.aei_information6 is not null ',
'                 and paei.AEI_INFORMATION7 is not null ',
'                 then paei.aei_information6 || '' - '' || paei.AEI_INFORMATION7',
'                  when paei.aei_information6 is not null then',
'                       paei.aei_information6',
'                  when paei.AEI_INFORMATION7 is not null then',
'                       paei.AEI_INFORMATION7 end',
'                       ',
'              when paei.aei_information3 = ''New Shaliach'' then ',
'                  case when  paei.aei_information6 is null and paei.AEI_INFORMATION7 is null',
'                    then ''Latest Possible'' ',
'                   when  paei.aei_information7 is null then paei.aei_information6 ',
'                   else paei.aei_information6 || '' - '' || paei.AEI_INFORMATION7 end end ESTIMATED_RETURN_DATE,',
'            ''TLV'' RETURN_AIRPORT,',
'            case when nvl((select jaf1.status',
'                           from apps.jafi_apex_shlichut_flights jaf1',
'                           where paaf.assignment_id = jaf1.assgt_id(+) and ',
'                                 jaf1.request_id(+) = paei.aei_information1 and',
'                                 jaf1.status not in (''7'')), ''0'') = ''0'' then ''Pending''',
'                 when (select jaf1.status',
'                       from apps.jafi_apex_shlichut_flights jaf1',
'                       where paaf.assignment_id=jaf1.assgt_id and',
'                             jaf1.request_id(+) = paei.aei_information1 and',
'                             jaf1.status not in (''7'')) in (''5'') then ''Approved''',
'                 when (select jaf1.status',
'                       from apps.jafi_apex_shlichut_flights jaf1',
'                       where paaf.assignment_id=jaf1.assgt_id and',
'                             jaf1.request_id(+) = paei.aei_information1 and',
'                             jaf1.status not in (''7'')) in (''1'',''2'',''3'',''4'',''5'',''8'') then ''In Process'' end STATUS,',
'            case when nvl((select jaf1.status',
'                           from apps.jafi_apex_shlichut_flights jaf1',
'                           where paaf.assignment_id = jaf1.assgt_id(+) and ',
'                                 jaf1.request_id(+) = paei.aei_information1 and',
'                                 jaf1.status not in (''7'')), ''0'') = ''0'' then ''#EFD4FF''',
'                 when (select jaf1.status',
'                       from apps.jafi_apex_shlichut_flights jaf1',
'                       where paaf.assignment_id=jaf1.assgt_id and',
'                             jaf1.request_id(+) = paei.aei_information1 and',
'                             jaf1.status not in (''7'')) in (''5'') then ''#AFE9C7''',
'                 when (select jaf1.status',
'                       from apps.jafi_apex_shlichut_flights jaf1',
'                       where paaf.assignment_id=jaf1.assgt_id and',
'                             jaf1.request_id(+) = paei.aei_information1 and',
'                             jaf1.status not in (''7'')) in (''1'',''2'',''3'',''4'',''5'',''8'') then ''#FDE784'' else ''transparent'' end STATUS_COLOR',
'    from	per_all_people_f papf,',
'            per_all_assignments_f paaf,',
'            per_all_vacancies pav,',
'            irc_assignment_statuses ias,',
'            per_assignment_status_types past,',
'            PER_ASSIGNMENT_EXTRA_INFO PAEI',
'    where   pav.organization_id = :P0_ORG_ID',
'            and paaf.assignment_id = v_assignment_id',
'            AND papf.person_id = paaf.person_id',
'            and paaf.vacancy_id = pav.vacancy_id',
'            and ias.assignment_id = paaf.assignment_id',
'            and ias.assignment_status_type_id IN (47358, 23357, 23358, 6, 1, 279)',
'            and trunc(sysdate) between papf.effective_start_date and papf.effective_end_date',
'            and trunc(sysdate) between paaf.effective_start_date and paaf.effective_end_date',
'            and paaf.business_group_id = 4088',
'            and pav.attribute11 = ''N''',
'            AND PAV.ATTRIBUTE_CATEGORY = ''SSH''',
'            and past.assignment_status_type_id = paaf.assignment_status_type_id',
'            and past.assignment_status_type_id = ias.assignment_status_type_id',
'            and ias.status_change_date = (select max(status_change_date)',
'            from irc_assignment_statuses ias1',
'            where ias.assignment_id = ias1.assignment_id)',
'            and PAEI.ASSIGNMENT_ID = paaf.assignment_id',
'            and PAEI.INFORMATION_TYPE=''JAFI_HR_FLIGHT_REQUESTS''',
'             and not exists (',
'            select 1',
'            from apps.jafi_apex_shlichut_flights jaf2',
'            where jaf2.request_id = paei.aei_information1',
'            and jaf2.assgt_id = paaf.assignment_id',
'            and jaf2.status in (''6'',''7''))',
'    order by REQUEST_ID',
'    )   ',
'select FORM_TYPE,',
'       REQUEST_ID,',
'       ESTIMATED_ARRIVAL_DATE,',
'       ARRIVAL_AIRPORT,',
'       ESTIMATED_RETURN_DATE,',
'       RETURN_AIRPORT,',
'       STATUS,',
'       STATUS_COLOR',
'from my_requests)',
'LOOP',
'    apex_json.open_object;',
'    apex_json.write(''FORM_TYPE'', r.FORM_TYPE, TRUE);',
'    apex_json.write(''REQUEST_ID'', r.REQUEST_ID, TRUE);',
'    apex_json.write(''ESTIMATED_ARRIVAL_DATE'', r.ESTIMATED_ARRIVAL_DATE, TRUE);',
'    apex_json.write(''ARRIVAL_AIRPORT'', r.ARRIVAL_AIRPORT, TRUE);',
'    apex_json.write(''ESTIMATED_RETURN_DATE'', r.ESTIMATED_RETURN_DATE, TRUE);',
'    apex_json.write(''RETURN_AIRPORT'', r.RETURN_AIRPORT, TRUE);',
'    apex_json.write(''STATUS'', r.STATUS, TRUE);',
'    apex_json.write(''STATUS_COLOR'', r.STATUS_COLOR, TRUE);',
'    apex_json.close_object;',
'END LOOP;',
'',
'APEX_JSON.close_array;',
'APEX_JSON.write(''success'', true);',
'APEX_JSON.close_object;',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(348138314534543048)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetFlights'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_assignment_id NUMBER := apex_application.g_x01;',
'begin',
'',
'APEX_JSON.open_object;',
'APEX_JSON.open_array(''flights''); ',
'',
'FOR r IN ',
'(',
'    select  PAEI.aei_information1 REQUEST_ID,',
'            paei.aei_information3 FORM_TYPE,',
'            last_flight.final_destination DESTINATION_AIRPORT,',
'            JAFI_HR_UTILS.US_Decode_Lookup (''JAFI_HR_SC_AIRLINES'', last_flight.airline) AIRLINE,',
'            last_flight.flight_number FLIGHT_NUMBER,',
'            JAFI_HR_PKG3.format_to_us_date(last_flight.arival_date) ARRIVAL_DATE,',
'            JAFI_HR_PKG3.format_to_us_time(last_flight.arival_time) ARRIVAL_TIME,',
'            case when last_flight.ticket_doc_id > 0 then',
'                apex_page.get_url(p_page => ''24'', ',
'                p_request => ''APPLICATION_PROCESS=GetDocument'', ',
'                p_items => ''DOCUMENT_ID'', ',
'                p_values => last_flight.ticket_doc_id) else ''javascript:void(0);'' end TICKET_URL,',
'            (SELECT NVL(MAX(ird.document_id), 0)',
'            FROM irc_documents ird',
'            WHERE papf.person_id = ird.PERSON_ID',
'            AND ird.end_date IS NULL',
'            AND ird.type = ''FLIGHT_TICKET_SSH''',
'            and ird.document_id=last_flight.ticket_doc_id) TICKET_ID',
'    from per_all_people_f papf,',
'         per_all_assignments_f paaf,',
'         per_all_vacancies pav,',
'         irc_assignment_statuses ias,',
'         per_assignment_status_types past,',
'         PER_ASSIGNMENT_EXTRA_INFO PAEI,',
'         (SELECT jasf.assgt_id,',
'         JASF.REQUEST_ID,',
'         jasf.ticket_doc_id,',
'         CASE',
'         WHEN jasf.to_seg3_arrival_date IS NOT NULL THEN',
'         jasf.to_seg3_arrival_date',
'         WHEN jasf.to_seg2_arrival_date IS NOT NULL THEN',
'         jasf.to_seg2_arrival_date',
'         ELSE',
'         jasf.to_seg1_arrival_date',
'         END AS arival_date,',
'         CASE',
'         WHEN jasf.to_seg3_arrival_date IS NOT NULL THEN',
'         jasf.to_seg3_arrival_time',
'         WHEN jasf.to_seg2_arrival_date IS NOT NULL THEN',
'         jasf.to_seg2_arrival_time',
'         ELSE',
'         jasf.to_seg1_arrival_time',
'         END AS arival_time,',
'         CASE',
'         WHEN jasf.to_seg3_arrival_date IS NOT NULL THEN',
'         jasf.to_seg3_airline',
'         WHEN jasf.to_seg2_arrival_date IS NOT NULL THEN',
'         jasf.to_seg2_airline',
'         ELSE',
'         jasf.to_seg1_airline',
'         END AS airline,',
'         CASE',
'         WHEN jasf.to_seg3_arrival_date IS NOT NULL THEN',
'         jasf.to_seg3_flight_number',
'         WHEN jasf.to_seg2_arrival_date IS NOT NULL THEN',
'         jasf.to_seg2_flight_number',
'         ELSE',
'         jasf.to_seg1_flight_number',
'         END AS flight_number,',
'         CASE',
'         WHEN jasf.to_seg3_arrival_date IS NOT NULL THEN',
'         jasf.to_seg3_destination_airport',
'         WHEN jasf.to_seg2_arrival_date IS NOT NULL THEN',
'         jasf.to_seg2_destination_airport',
'         ELSE',
'         jasf.to_seg1_destination_airport',
'         END AS final_destination',
'         FROM apps.jafi_apex_shlichut_flights jasf',
'         WHERE jasf. status in (''6'')) last_flight',
'    where pav.organization_id = :P0_ORG_ID',
'    AND papf.person_id = paaf.person_id',
'    and paaf.vacancy_id = pav.vacancy_id',
'    and ias.assignment_id = paaf.assignment_id',
'    and ias.assignment_status_type_id IN (47358, 23357, 23358, 6, 1, 279)',
'    and trunc(sysdate) between papf.effective_start_date and papf.effective_end_date',
'    and trunc(sysdate) between paaf.effective_start_date and paaf.effective_end_date',
'    and paaf.business_group_id = 4088',
'    and pav.attribute11 = ''N''',
'    AND PAV.ATTRIBUTE_CATEGORY = ''SSH''',
'    and past.assignment_status_type_id = paaf.assignment_status_type_id',
'    and past.assignment_status_type_id = ias.assignment_status_type_id',
'    and ias.status_change_date = (select max(status_change_date)',
'                                  from irc_assignment_statuses ias1',
'                                  where ias.assignment_id = ias1.assignment_id)',
'    and PAEI.ASSIGNMENT_ID = paaf.assignment_id',
'    and last_flight.assgt_id = v_assignment_id',
'    and PAEI.INFORMATION_TYPE =''JAFI_HR_FLIGHT_REQUESTS''',
'    AND last_flight.assgt_id = paaf.assignment_id',
'    AND LAST_FLIGHT.REQUEST_ID = PAEI.AEI_INFORMATION1)',
'LOOP',
'    apex_json.open_object;',
'    apex_json.write(''FORM_TYPE'', r.FORM_TYPE, TRUE);',
'    apex_json.write(''REQUEST_ID'', r.REQUEST_ID, TRUE);',
'    apex_json.write(''DESTINATION_AIRPORT'', r.DESTINATION_AIRPORT, TRUE);',
'    apex_json.write(''AIRLINE'', r.AIRLINE, TRUE);',
'    apex_json.write(''FLIGHT_NUMBER'', r.FLIGHT_NUMBER, TRUE);',
'    apex_json.write(''ARRIVAL_DATE'', r.ARRIVAL_DATE, TRUE);',
'    apex_json.write(''ARRIVAL_TIME'', r.ARRIVAL_TIME, TRUE);',
'    apex_json.write(''TICKET_URL'', r.TICKET_URL, TRUE);',
'    apex_json.write(''TICKET_ID'', r.TICKET_ID, TRUE);',
'    apex_json.close_object;',
'END LOOP;',
'',
'APEX_JSON.close_array;',
'APEX_JSON.write(''success'', true);',
'APEX_JSON.close_object;',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
