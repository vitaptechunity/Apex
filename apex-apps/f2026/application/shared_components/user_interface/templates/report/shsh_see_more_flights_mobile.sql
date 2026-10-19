prompt --application/shared_components/user_interface/templates/report/shsh_see_more_flights_mobile
begin
--   Manifest
--     ROW TEMPLATE: SHSH_SEE_MORE_FLIGHTS_MOBILE
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>220
,p_default_id_offset=>1696803741697335224
,p_default_owner=>'APPS'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(314207581041626145)
,p_row_template_name=>'SHSH See More Flights Mobile'
,p_internal_name=>'SHSH_SEE_MORE_FLIGHTS_MOBILE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="shsh-flight-card" style="background-color: #F9F7F4; width: 100%; display: flex; flex-flow: column; align-items: center; padding-left: 20px; padding-top: 10px; padding-bottom: 10px; border-radius: 7px; text-align: start; font-size: 14px; l'
||'ine-height: 35px; letter-spacing: 0%;">',
'    <span class="shsh-flight-request-buttons" style="display: flex; justify-content: end; width: 100%; position: absolute; right: 25px; gap: 25px;">',
'        <a class="download-ticket-btn" href="#TICKET_URL#" target="_blank" style="width: 4%;" data-ticket-id="#TICKET_ID#"><img style="width: 20px; height: 20px; position: relative; top: 4px; right: 5px; cursor: pointer;" src="#APP_IMAGES#download.sv'
||'g" /></a>',
'        <div class="edit-flight-btn" style="display: none !important; width: 3%;" data-request-id="#REQUEST_ID#" data-form-type="#FORM_TYPE#"><img style="width: 17px; height: 17px; position: relative; top: 3px; right: 5px; cursor: pointer;" src="#APP'
||'_IMAGES#ic-edit.png" /></div>',
'    </span>',
'    <div class="shsh-request-cell" style="display: flex; flex-flow: row; width: 100%;">',
'        <span class="shsh-request-cell-header" style="width: 100px; font-weight: 400; color: #A3A3A3;">Destination</span>',
'        <span class="shsh-request-cell-value" style="font-weight: 500;">#DESTINATION_AIRPORT#</span>',
'    </div>',
'    <!--<div class="shsh-request-cell" style="display: flex; flex-flow: row; width: 100%;">',
'        <span class="shsh-request-cell-header" style="width: 100px; font-weight: 400; color: #A3A3A3;">Arriving From</span>',
'        <span class="shsh-request-cell-value" style="font-weight: 500;">#DEPARTURE_AIRPORT#</span>',
'    </div>-->',
'    <div class="shsh-request-cell" style="display: flex; flex-flow: row; width: 100%;">',
'        <span class="shsh-request-cell-header" style="width: 100px; font-weight: 400; color: #A3A3A3;">Airline</span>',
'        <span class="shsh-request-cell-value" style="font-weight: 500;">#AIRLINE#</span>',
'    </div>',
'    <div class="shsh-request-cell" style="display: flex; flex-flow: row; width: 100%;">',
'        <span class="shsh-request-cell-header" style="width: 100px; font-weight: 400; color: #A3A3A3;">Flight Number</span>',
'        <span class="shsh-request-cell-value" style="font-weight: 500;">#FLIGHT_NUMBER#</span>',
'    </div>',
'    <div class="shsh-request-cell" style="display: flex; flex-flow: row; width: 100%;">',
'        <span class="shsh-request-cell-header" style="width: 100px; font-weight: 400; color: #A3A3A3;">Arrival Date</span>',
'        <span class="shsh-request-cell-value" style="font-weight: 500;">#ARRIVAL_DATE#</span>',
'    </div>',
'    <div class="shsh-request-cell" style="display: flex; flex-flow: row; width: 100%;">',
'        <span class="shsh-request-cell-header" style="width: 100px; font-weight: 400; color: #A3A3A3;">Arrival Time</span>',
'        <span class="shsh-request-cell-value" style="font-weight: 500;">#ARRIVAL_TIME#</span>',
'    </div>',
'</div>',
'',
'',
''))
,p_row_template_condition1=>':CARD_TYPE = ''FLIGHT'''
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="card-region-title" style="height: 20px; font-weight: 500; font-size: 16px; line-height: 20px; margin-bottom: 5px; color: #172B54;">My Flights</div>',
'<div class="card-table" style="width: 100%; display: flex; flex-flow: column; gap: 15px; margin-bottom: 20px; font-weight: 500; font-size: 18px; line-height: 35px; letter-spacing: 0%;">',
''))
,p_row_template_after_rows=>'</div>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_theme_id=>42
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
