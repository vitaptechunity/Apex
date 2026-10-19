prompt --application/shared_components/user_interface/templates/report/shsh_see_more_flights
begin
--   Manifest
--     ROW TEMPLATE: SHSH_SEE_MORE_FLIGHTS
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
 p_id=>wwv_flow_api.id(215029999485580748)
,p_row_template_name=>'SHSH See More Flights'
,p_internal_name=>'SHSH_SEE_MORE_FLIGHTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="shsh-flight-card" style="background-color: #F9F7F4; width: 100%; height: 61px; display: flex; align-items: center; padding-left: 20px; border-radius: 7px;">',
'    <div class="flight-icon" style="width: 3%;" data-request-id="#REQUEST_ID#"><img style="width: 20px; height: 20px; top: 3px; position: relative; left: -2px;" src="#APP_IMAGES#landing.svg" /></div>',
'    <div class="shsh-flight-cell" style="width: 10%;">#DESTINATION_AIRPORT#</div>',
'    <!--<div class="shsh-flight-cell" style="width: 10%;">#DEPARTURE_AIRPORT#</div>-->',
'    <div class="shsh-flight-cell" style="width: 28%; flex-grow: 1;">#AIRLINE#</div>',
'    <div class="shsh-flight-cell" style="width: 13%;">#FLIGHT_NUMBER#</div>',
'    <div class="shsh-flight-cell" style="width: 18%;">#ARRIVAL_DATE#</div>',
'    <div class="shsh-flight-cell" style="width: 11%;">#ARRIVAL_TIME#</div>',
'    <a class="download-ticket-btn" href="#TICKET_URL#" target="_blank" style="width: 4%;" data-ticket-id="#TICKET_ID#"><img style="width: 20px; height: 20px; position: relative; top: 4px; right: 5px; cursor: pointer;" src="#APP_IMAGES#download.svg" /'
||'></a>',
'    <div class="edit-flight-btn" style="display: none !important; width: 3%;" data-request-id="#REQUEST_ID#" data-form-type="#FORM_TYPE#"><img style="width: 17px; height: 17px; position: relative; top: 3px; right: 5px; cursor: pointer;" src="#APP_IMA'
||'GES#ic-edit.png" /></div>',
'</div>'))
,p_row_template_condition1=>':CARD_TYPE = ''FLIGHT'''
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="card-region-title" style="height: 20px; font-weight: 500; font-size: 16px; line-height: 20px; margin-bottom: 5px;">My Flights</div>',
'<div class="card-table" style="width: 100%; display: flex; flex-flow: column; gap: 15px; margin-bottom: 20px; font-weight: 500; font-size: 18px; line-height: 35px; letter-spacing: 0%;">',
'    <div class="card-header" style="width: 100%; display: flex; text-align: start; font-weight: 400; font-size: 16px; line-height: 35px; letter-spacing: 0%; color: #A3A3A3; margin-bottom: -15px; padding-left: 20px;">',
'        <div style="width: 3%;"></div>',
'        <div style="width: 10%;">Destination</div>',
'        <!--<div style="width: 10%;">Arriving From</div>-->',
'        <div style="width: 28%; flex-grow: 1;">Airline</div>',
'        <div style="width: 13%;">Flight Number</div>',
'        <div style="width: 18%;">Arrival Date</div>',
'        <div style="width: 11%;">Arrival Time</div>',
'        <div style="width: 4%;"></div>',
'        <div style="width: 3%;"></div>',
'    </div>'))
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
