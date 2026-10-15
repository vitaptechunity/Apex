prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(119978609050743808)
,p_name=>'Flights Management'
,p_alias=>'FLIGHTS-MANAGEMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Flights Management'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''.ui-dialog-title'',parent ? parent.document : document).html(''<span class="fa fa-plane" style="top: 4px !important; margin-right: 4px !important;"></span> Flights Management'');',
'',
'$(document).ready(function() {',
'    $(''#current-status'').html($v(''P3_STATUS_HTML''));  ',
'    $(''#booked-status'').html($v(''P3_B_STATUS_HTML''));    ',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.flight-leg {',
'    display: none;',
'}',
'',
'#cancelBtn, #cancelBtnB {',
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
''))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_dialog_attributes=>'close: function(event, ui) { apex.navigation.dialog.close(true, { ''dialogPageId'': 3 });}'
,p_dialog_css_classes=>'flights-management-dialog'
,p_dialog_chained=>'N'
,p_last_updated_by=>'VITAP'
,p_last_upd_yyyymmddhh24miss=>'20260429220416'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(618277768079405926)
,p_plug_name=>'<div class="title-text">General Information</div>'
,p_region_name=>'flightsInfoRegion'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743294)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(633753029327946009)
,p_plug_name=>'General Information Items'
,p_parent_plug_id=>wwv_flow_api.id(618277768079405926)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(633753375625946013)
,p_plug_name=>'<div class="title-text">Manage Flight</div>Status: <div id="current-status" style="margin-left: 10px;"></div>'
,p_region_name=>'flightRequestRegion'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743294)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P3_PROCESS_STARTED'
,p_plug_display_when_cond2=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(633754646911946026)
,p_plug_name=>'Flight 1 (Outbound)'
,p_parent_plug_id=>wwv_flow_api.id(633753375625946013)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743294)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(633753619004946015)
,p_plug_name=>'<div class="title-text">Flight Leg 1</div>'
,p_parent_plug_id=>wwv_flow_api.id(633754646911946026)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743305)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(633753642640946016)
,p_plug_name=>'<div class="title-text">Flight Leg 2</div>'
,p_parent_plug_id=>wwv_flow_api.id(633754646911946026)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743305)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'flight-leg'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_column_width=>'data-flight-leg="1_2"'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(633753788374946017)
,p_plug_name=>'<div class="title-text">Flight Leg 3</div>'
,p_parent_plug_id=>wwv_flow_api.id(633754646911946026)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743305)
,p_plug_display_sequence=>50
,p_plug_grid_column_span=>6
,p_plug_grid_column_css_classes=>'flight-leg'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_column_width=>'data-flight-leg="1_3"'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(633753927047946018)
,p_plug_name=>'<div class="title-text">Flight Leg 4</div>'
,p_parent_plug_id=>wwv_flow_api.id(633754646911946026)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743305)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'flight-leg'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_column_width=>'data-flight-leg="1_4"'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(636550484223862679)
,p_plug_name=>'Flight 2 (Inbound)'
,p_parent_plug_id=>wwv_flow_api.id(633753375625946013)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743294)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(636550591580862680)
,p_plug_name=>'<div class="title-text">Flight Leg 1</div>'
,p_parent_plug_id=>wwv_flow_api.id(636550484223862679)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743305)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(636550802950862682)
,p_plug_name=>'<div class="title-text">Flight Leg 2</div>'
,p_parent_plug_id=>wwv_flow_api.id(636550484223862679)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743305)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'flight-leg'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_column_width=>'data-flight-leg="2_2"'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(636550955821862684)
,p_plug_name=>'<div class="title-text">Flight Leg 3</div>'
,p_parent_plug_id=>wwv_flow_api.id(636550484223862679)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743305)
,p_plug_display_sequence=>60
,p_plug_grid_column_span=>6
,p_plug_grid_column_css_classes=>'flight-leg'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_column_width=>'data-flight-leg="2_3"'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(636551148567862686)
,p_plug_name=>'<div class="title-text">Flight Leg 4</div>'
,p_parent_plug_id=>wwv_flow_api.id(636550484223862679)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743305)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'flight-leg'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_column_width=>'data-flight-leg="2_4"'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(636552482607862699)
,p_plug_name=>'Flight Info'
,p_parent_plug_id=>wwv_flow_api.id(633753375625946013)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743294)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(655786171691142525)
,p_plug_name=>'Fields'
,p_parent_plug_id=>wwv_flow_api.id(636552482607862699)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(655786266171142526)
,p_plug_name=>'Notes'
,p_parent_plug_id=>wwv_flow_api.id(636552482607862699)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(642460608789910683)
,p_plug_name=>'Buttons and Actions'
,p_parent_plug_id=>wwv_flow_api.id(633753375625946013)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(654251940557851995)
,p_plug_name=>'<div class="title-text">Booked Flight</div>Status: <div id="booked-status" style="margin-left: 10px;"></div>'
,p_region_name=>'bookedFlightRegion'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743294)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P3_BOOKED_FLIGHT_FOUND'
,p_plug_display_when_cond2=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(654253469169852010)
,p_plug_name=>'Flight Info'
,p_parent_plug_id=>wwv_flow_api.id(654251940557851995)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743294)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(667352503158199577)
,p_plug_name=>'Fields'
,p_parent_plug_id=>wwv_flow_api.id(654253469169852010)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(667352570050199578)
,p_plug_name=>'Notes'
,p_parent_plug_id=>wwv_flow_api.id(654253469169852010)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(654254514665852020)
,p_plug_name=>'Flight 1 (Outbound)'
,p_parent_plug_id=>wwv_flow_api.id(654251940557851995)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743294)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(654254548689852021)
,p_plug_name=>'<div class="title-text">Flight Leg 1</div>'
,p_parent_plug_id=>wwv_flow_api.id(654254514665852020)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743305)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(655657204725269983)
,p_plug_name=>'<div class="title-text">Flight Leg 2</div>'
,p_parent_plug_id=>wwv_flow_api.id(654254514665852020)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743305)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'flight-leg'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_column_width=>'data-flight-leg="B_1_2"'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(655658418317269995)
,p_plug_name=>'<div class="title-text">Flight Leg 3</div>'
,p_parent_plug_id=>wwv_flow_api.id(654254514665852020)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743305)
,p_plug_display_sequence=>60
,p_plug_grid_column_span=>6
,p_plug_grid_column_css_classes=>'flight-leg'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_column_width=>'data-flight-leg="B_1_3"'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(655659580109270007)
,p_plug_name=>'<div class="title-text">Flight Leg 4</div>'
,p_parent_plug_id=>wwv_flow_api.id(654254514665852020)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743305)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'flight-leg'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_column_width=>'data-flight-leg="B_1_4"'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(655660653962270018)
,p_plug_name=>'Flight 2 (Inbound)'
,p_parent_plug_id=>wwv_flow_api.id(654251940557851995)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743294)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(655660822725270019)
,p_plug_name=>'<div class="title-text">Flight Leg 1</div>'
,p_parent_plug_id=>wwv_flow_api.id(655660653962270018)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743305)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(655662010810260181)
,p_plug_name=>'<div class="title-text">Flight Leg 2</div>'
,p_parent_plug_id=>wwv_flow_api.id(655660653962270018)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743305)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'flight-leg'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_column_width=>'data-flight-leg="B_2_2"'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(655663201679260193)
,p_plug_name=>'<div class="title-text">Flight Leg 3</div>'
,p_parent_plug_id=>wwv_flow_api.id(655660653962270018)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743305)
,p_plug_display_sequence=>70
,p_plug_grid_column_span=>6
,p_plug_grid_column_css_classes=>'flight-leg'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_column_width=>'data-flight-leg="B_2_3"'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(655664421418260205)
,p_plug_name=>'<div class="title-text">Flight Leg 4</div>'
,p_parent_plug_id=>wwv_flow_api.id(655660653962270018)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743305)
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'flight-leg'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_column_width=>'data-flight-leg="B_2_4"'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(655665489176260216)
,p_plug_name=>'Buttons and Actions'
,p_parent_plug_id=>wwv_flow_api.id(654251940557851995)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(642462149693910699)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(642460608789910683)
,p_button_name=>'Make_Offer'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&P3_TXT_MAKE_OFFER.'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P3_BTN_MAKE_OFFER'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-plus'
,p_button_cattributes=>'data-status="2"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(655781905268142482)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(655665489176260216)
,p_button_name=>'Cancel_B'
,p_button_static_id=>'cancelBtnB'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P3_B_BTN_CANCEL'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-trash-o'
,p_button_cattributes=>'data-status="8"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(642462656807910704)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(642460608789910683)
,p_button_name=>'Maslul_Approval'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&P3_TXT_MASLUL_APPROVAL.'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P3_BTN_MASLUL_APPROVAL'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-edit'
,p_button_cattributes=>'data-status="3"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(655666419456260225)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(655665489176260216)
,p_button_name=>'Close_B'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(119978609050743280)
,p_button_image_alt=>'Close'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(642462253325910700)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(642460608789910683)
,p_button_name=>'Customer_Approval'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&P3_TXT_CUSTOMER_APPROVAL.'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P3_BTN_CUSTOMER_APPROVAL'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-envelope-o'
,p_button_cattributes=>'data-status="4"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(642462357962910701)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(642460608789910683)
,p_button_name=>'Fix'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&P3_TXT_FIX.'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P3_BTN_FIX'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-tools'
,p_button_cattributes=>'data-status="5"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(642462521813910702)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(642460608789910683)
,p_button_name=>'Approve'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&P3_TXT_APPROVE.'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P3_BTN_APPROVE'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-thumbs-o-up'
,p_button_cattributes=>'data-status="6"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(642462629951910703)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(642460608789910683)
,p_button_name=>'Book_Flight'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&P3_TXT_BOOK_FLIGHT.'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P3_BTN_BOOK_FLIGHT'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-plane'
,p_button_cattributes=>'data-status="7"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(642460650281910684)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(642460608789910683)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Changes'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(642461104157910688)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(642460608789910683)
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
 p_id=>wwv_flow_api.id(642462794868910705)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(642460608789910683)
,p_button_name=>'Cancel'
,p_button_static_id=>'cancelBtn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&P3_TXT_CANCEL.'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P3_BTN_CANCEL'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-trash-o'
,p_button_cattributes=>'data-status="8"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(655666301805260224)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(655665489176260216)
,p_button_name=>'Save_B'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Changes'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(633752765058946007)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(618277768079405926)
,p_button_name=>'View_Passport'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Passport'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::P5_PERSON_ID:&P3_PERSON_ID.'
,p_button_css_classes=>'header-button'
,p_icon_css_classes=>'fa-image'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(633754124918946020)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(633753619004946015)
,p_button_name=>'Clear_F1_Leg1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_image_alt=>'Clear'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'header-button clear-segment-button'
,p_icon_css_classes=>'fa-eraser'
,p_button_cattributes=>'data-flight="1" data-leg="1" clear'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(636550698557862681)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(636550591580862680)
,p_button_name=>'Clear_F2_Leg1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_image_alt=>'Clear'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'header-button clear-segment-button'
,p_icon_css_classes=>'fa-eraser'
,p_button_cattributes=>'data-flight="2" data-leg="1" clear'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(636550842040862683)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(636550802950862682)
,p_button_name=>'Clear_F2_Leg2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_image_alt=>'Clear'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'header-button clear-segment-button'
,p_icon_css_classes=>'fa-eraser'
,p_button_cattributes=>'data-flight="2" data-leg="2" clear'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(636551125502862685)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(636550955821862684)
,p_button_name=>'Clear_F2_Leg3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_image_alt=>'Clear'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'header-button clear-segment-button'
,p_icon_css_classes=>'fa-eraser'
,p_button_cattributes=>'data-flight="2" data-leg="3" clear'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(636551244288862687)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(636551148567862686)
,p_button_name=>'Clear_F2_Leg4'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_image_alt=>'Clear'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'header-button clear-segment-button'
,p_icon_css_classes=>'fa-eraser'
,p_button_cattributes=>'data-flight="2" data-leg="4" clear'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(633753454581946014)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(618277768079405926)
,p_button_name=>'Start_Process'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Start Process'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_condition=>':P3_PROCESS_STARTED = ''N'' and :P3_B_SEQ IS NULL'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_button_css_classes=>'header-button'
,p_icon_css_classes=>'fa-plane'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(633754387381946023)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(633753642640946016)
,p_button_name=>'Clear_F1_Leg2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_image_alt=>'Clear'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'header-button clear-segment-button'
,p_icon_css_classes=>'fa-eraser'
,p_button_cattributes=>'data-flight="1" data-leg="2" clear'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(654250460033851980)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(633753619004946015)
,p_button_name=>'Add_F1_Leg2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Leg'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus'
,p_button_cattributes=>'data-flight-leg="1_2" add'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(654251438176851990)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(636550591580862680)
,p_button_name=>'Add_F2_Leg2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Leg'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus'
,p_button_cattributes=>'data-flight-leg="2_2" add'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(654251599359851991)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(636550802950862682)
,p_button_name=>'Add_F2_Leg3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Leg'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus'
,p_button_cattributes=>'data-flight-leg="2_3" add'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(654251697340851992)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(636550955821862684)
,p_button_name=>'Add_F2_Leg4'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Leg'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus'
,p_button_cattributes=>'data-flight-leg="2_4" add'
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
 p_id=>wwv_flow_api.id(633754480923946024)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(633753788374946017)
,p_button_name=>'Clear_F1_Leg3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_image_alt=>'Clear'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'header-button clear-segment-button'
,p_icon_css_classes=>'fa-eraser'
,p_button_cattributes=>'data-flight="1" data-leg="3" clear'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(654251043182851986)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(633753642640946016)
,p_button_name=>'Add_F1_Leg3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Leg'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus'
,p_button_cattributes=>'data-flight-leg="1_3" add'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(633754587033946025)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(633753927047946018)
,p_button_name=>'Clear_F1_Leg4'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_image_alt=>'Clear'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'header-button clear-segment-button'
,p_icon_css_classes=>'fa-eraser'
,p_button_cattributes=>'data-flight="1" data-leg="4" clear'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(654251171075851987)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(633753788374946017)
,p_button_name=>'Add_F1_Leg4'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Leg'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus'
,p_button_cattributes=>'data-flight-leg="1_4" add'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633749832906945977)
,p_name=>'P3_ASSIGNMENT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(618277768079405926)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633749866478945978)
,p_name=>'P3_PERSON_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(618277768079405926)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633750092006945980)
,p_name=>'P3_MOBILE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'Mobile'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633750171611945981)
,p_name=>'P3_LAST_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'Last Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633750296131945982)
,p_name=>'P3_FIRST_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'First Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633750434566945983)
,p_name=>'P3_GENDER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'Gender'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633750494923945984)
,p_name=>'P3_DATE_OF_BIRTH'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'Date Of Birth'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633750547814945985)
,p_name=>'P3_CAMP_NAME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'Camp Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633750642121945986)
,p_name=>'P3_CITY_OF_BIRTH'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'City Of Birth'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633750743774945987)
,p_name=>'P3_COUNTRY_OF_BIRTH'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'Country Of Birth'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633750837829945988)
,p_name=>'P3_EMAIL_ADDRESS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'Email Address'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633751002406945989)
,p_name=>'P3_NATIONAL_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'National Id'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633751057140945990)
,p_name=>'P3_PASSPORT_NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'Passport Number'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633751228851945991)
,p_name=>'P3_PASSPORT_EXPIRATION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'Passport Expiration'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633751324997945992)
,p_name=>'P3_COORDINATOR_NAME'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'Coordinator Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633751361463945993)
,p_name=>'P3_IS_US_OR_CA_CITIZEN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'US/Canadian Citizenship'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633751529891945994)
,p_name=>'P3_MAIN_AIRPORT'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'Main Airport'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633751621742945995)
,p_name=>'P3_SEC_AIRPORT'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'Sec Airport'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633751714207945996)
,p_name=>'P3_INDIVIDUAL_ARRIVAL_DATE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'Individual Arrival Date'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633751789721945997)
,p_name=>'P3_INDIVIDUAL_DEPARTURE_DATE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'Individual Departure Date'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633751862440945998)
,p_name=>'P3_CAMP_ARRIVAL_TIME'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'Camp Arrival Time'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633751977968945999)
,p_name=>'P3_CAMP_ARRIVAL_DATE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'Camp Arrival Date'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633752114258946000)
,p_name=>'P3_REQUESTED_RETURN_DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'Requested Return Date'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633752231290946001)
,p_name=>'P3_MEAL'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'Meal'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633752267337946002)
,p_name=>'P3_DEPARTURE_AIRPORT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'Departure Airport'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633752394180946003)
,p_name=>'P3_J1_PERMIT_END_DATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'J1 Permit End Date'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633752514794946004)
,p_name=>'P3_FLIGHT_REMARKS_APPLICANT'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'Flight Remarks Applicant'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_tag_attributes=>'readonly="readonly"'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(633752660456946006)
,p_name=>'P3_FLIGHTS_REMARKS_MASLUL'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'Flight Remarks Maslul'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(636551345454862688)
,p_name=>'P3_PROCESS_STARTED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(618277768079405926)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(636552656492862701)
,p_name=>'P3_PROPOSAL_YEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(655786171691142525)
,p_prompt=>'Proposal Year'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(636552747075862702)
,p_name=>'P3_PNR_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(655786171691142525)
,p_prompt=>'Pnr Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(636552842677862703)
,p_name=>'P3_FLIGHT_COST'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(655786171691142525)
,p_prompt=>'Flight Cost'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(636552938722862704)
,p_name=>'P3_FLIGHT_COST_FOR_BILLING'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(655786171691142525)
,p_prompt=>'Flight Cost For Billing'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(636553110520862705)
,p_name=>'P3_TICKET'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(655786171691142525)
,p_prompt=>'Ticket'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(636553139979862706)
,p_name=>'P3_INVOICE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(655786171691142525)
,p_prompt=>'Invoice'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(636553276733862707)
,p_name=>'P3_AGENCY_REMARKS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(655786266171142526)
,p_prompt=>'Agency Remarks'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>9
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(636553360324862708)
,p_name=>'P3_TO_LEG1_DEPARTURE_AIRPORT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(633753619004946015)
,p_prompt=>'Departure Airport'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_1'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(636553522655862709)
,p_name=>'P3_TO_LEG1_DESTINATION_AIRPORT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(633753619004946015)
,p_prompt=>'Destination Airport'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_1'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(636553621215862710)
,p_name=>'P3_TO_LEG1_FLIGHT_NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(633753619004946015)
,p_prompt=>'Flight Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_1'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(636553690303862711)
,p_name=>'P3_TO_LEG1_AIRLINE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(633753619004946015)
,p_prompt=>'Airline'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRLINES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_AIRLINES'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_1'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(636553740811862712)
,p_name=>'P3_TO_LEG1_DEPARTURE_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(633753619004946015)
,p_prompt=>'Departure Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_1'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(636553881017862713)
,p_name=>'P3_TO_LEG1_DEPARTURE_TIME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(633753619004946015)
,p_prompt=>'Departure Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_1'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(636553999022862714)
,p_name=>'P3_TO_LEG1_ARRIVAL_DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(633753619004946015)
,p_prompt=>'Arrival Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_1'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(636554082476862715)
,p_name=>'P3_TO_LEG1_ARRIVAL_TIME'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(633753619004946015)
,p_prompt=>'Arrival Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_1'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(636554163693862716)
,p_name=>'P3_TO_LEG1_MEAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(633753619004946015)
,p_prompt=>'Meal'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_MEALS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE = ''US''',
'order by meaning '))
,p_lov_display_null=>'YES'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_1'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(636554349945862718)
,p_name=>'P3_STATUS_HTML'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(636552482607862699)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(636554469597862719)
,p_name=>'P3_STATUS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(636552482607862699)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(636554612751862720)
,p_name=>'P3_TO_LEG2_AIRLINE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(633753642640946016)
,p_prompt=>'Airline'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRLINES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_AIRLINES'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_2'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(636554682497862721)
,p_name=>'P3_TO_LEG2_FLIGHT_NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(633753642640946016)
,p_prompt=>'Flight Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_2'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(636554815039862722)
,p_name=>'P3_TO_LEG2_MEAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(633753642640946016)
,p_prompt=>'Meal'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_MEALS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE = ''US''',
'order by meaning '))
,p_lov_display_null=>'YES'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_2'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(636554927235862723)
,p_name=>'P3_TO_LEG2_DEPARTURE_AIRPORT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(633753642640946016)
,p_prompt=>'Departure Airport'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_2'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(636554950025862724)
,p_name=>'P3_TO_LEG2_DEPARTURE_DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(633753642640946016)
,p_prompt=>'Departure Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_2'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(636555082812862725)
,p_name=>'P3_TO_LEG2_DEPARTURE_TIME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(633753642640946016)
,p_prompt=>'Departure Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_2'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(636555199212862726)
,p_name=>'P3_TO_LEG2_DESTINATION_AIRPORT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(633753642640946016)
,p_prompt=>'Destination Airport'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_2'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642352990085954877)
,p_name=>'P3_TO_LEG2_ARRIVAL_DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(633753642640946016)
,p_prompt=>'Arrival Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_2'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642353103462954878)
,p_name=>'P3_TO_LEG2_ARRIVAL_TIME'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(633753642640946016)
,p_prompt=>'Arrival Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_2'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642353142431954879)
,p_name=>'P3_TO_LEG3_AIRLINE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(633753788374946017)
,p_prompt=>'Airline'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRLINES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_AIRLINES'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_3'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642353300892954880)
,p_name=>'P3_TO_LEG3_FLIGHT_NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(633753788374946017)
,p_prompt=>'Flight Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_3'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642353389906954881)
,p_name=>'P3_TO_LEG3_MEAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(633753788374946017)
,p_prompt=>'Meal'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_MEALS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE = ''US''',
'order by meaning '))
,p_lov_display_null=>'YES'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_3'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642353519007954882)
,p_name=>'P3_TO_LEG3_DEPARTURE_AIRPORT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(633753788374946017)
,p_prompt=>'Departure Airport'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_3'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642353588175954883)
,p_name=>'P3_TO_LEG3_DEPARTURE_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(633753788374946017)
,p_prompt=>'Departure Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_3'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642353707336954884)
,p_name=>'P3_TO_LEG3_DEPARTURE_TIME'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(633753788374946017)
,p_prompt=>'Departure Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_3'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642353809866954885)
,p_name=>'P3_TO_LEG3_DESTINATION_AIRPORT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(633753788374946017)
,p_prompt=>'Destination Airport'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_3'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642353888056954886)
,p_name=>'P3_TO_LEG3_ARRIVAL_DATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(633753788374946017)
,p_prompt=>'Arrival Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_3'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642353938659954887)
,p_name=>'P3_TO_LEG3_ARRIVAL_TIME'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(633753788374946017)
,p_prompt=>'Arrival Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_3'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642354096987954888)
,p_name=>'P3_TO_LEG4_AIRLINE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(633753927047946018)
,p_prompt=>'Airline'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRLINES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_AIRLINES'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_4'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642354175956954889)
,p_name=>'P3_TO_LEG4_FLIGHT_NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(633753927047946018)
,p_prompt=>'Flight Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_4'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642354306861954890)
,p_name=>'P3_TO_LEG4_MEAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(633753927047946018)
,p_prompt=>'Meal'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_MEALS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE = ''US''',
'order by meaning '))
,p_lov_display_null=>'YES'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_4'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642354374341954891)
,p_name=>'P3_TO_LEG4_DEPARTURE_AIRPORT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(633753927047946018)
,p_prompt=>'Departure Airport'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_4'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642354518560954892)
,p_name=>'P3_TO_LEG4_DEPARTURE_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(633753927047946018)
,p_prompt=>'Departure Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_4'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642354608657954893)
,p_name=>'P3_TO_LEG4_DEPARTURE_TIME'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(633753927047946018)
,p_prompt=>'Departure Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_4'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642354688601954894)
,p_name=>'P3_TO_LEG4_DESTINATION_AIRPORT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(633753927047946018)
,p_prompt=>'Destination Airport'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_4'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642354790638954895)
,p_name=>'P3_TO_LEG4_ARRIVAL_DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(633753927047946018)
,p_prompt=>'Arrival Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_4'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642354855086954896)
,p_name=>'P3_TO_LEG4_ARRIVAL_TIME'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(633753927047946018)
,p_prompt=>'Arrival Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_1_4'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642354938372954897)
,p_name=>'P3_FROM_LEG1_AIRLINE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(636550591580862680)
,p_prompt=>'Airline'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRLINES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_AIRLINES'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_1'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642355070421954898)
,p_name=>'P3_FROM_LEG1_FLIGHT_NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(636550591580862680)
,p_prompt=>'Flight Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_1'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642355230329954899)
,p_name=>'P3_FROM_LEG1_MEAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(636550591580862680)
,p_prompt=>'Meal'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_MEALS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE = ''US''',
'order by meaning '))
,p_lov_display_null=>'YES'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_1'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642355265965954900)
,p_name=>'P3_FROM_LEG1_DEPARTURE_AIRPORT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(636550591580862680)
,p_prompt=>'Departure Airport'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_1'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642355352788954901)
,p_name=>'P3_FROM_LEG1_DEPARTURE_DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(636550591580862680)
,p_prompt=>'Departure Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_1'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642355531951954902)
,p_name=>'P3_FROM_LEG1_DEPARTURE_TIME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(636550591580862680)
,p_prompt=>'Departure Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_1'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642355592594954903)
,p_name=>'P3_FROM_LEG1_DEST_AIRPORT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(636550591580862680)
,p_prompt=>'Destination Airport'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_1'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642355658300954904)
,p_name=>'P3_FROM_LEG1_ARRIVAL_DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(636550591580862680)
,p_prompt=>'Arrival Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_1'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642355767313954905)
,p_name=>'P3_FROM_LEG1_ARRIVAL_TIME'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(636550591580862680)
,p_prompt=>'Arrival Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_1'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642355927747954906)
,p_name=>'P3_FROM_LEG2_AIRLINE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(636550802950862682)
,p_prompt=>'Airline'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRLINES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_AIRLINES'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_2'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642356007783954907)
,p_name=>'P3_FROM_LEG2_FLIGHT_NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(636550802950862682)
,p_prompt=>'Flight Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_2'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642356102231954908)
,p_name=>'P3_FROM_LEG2_MEAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(636550802950862682)
,p_prompt=>'Meal'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_MEALS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE = ''US''',
'order by meaning '))
,p_lov_display_null=>'YES'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_2'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642356223027954909)
,p_name=>'P3_FROM_LEG2_DEPARTURE_AIRPORT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(636550802950862682)
,p_prompt=>'Departure Airport'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_2'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642356288669954910)
,p_name=>'P3_FROM_LEG2_DEPARTURE_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(636550802950862682)
,p_prompt=>'Departure Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_2'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642356398282954911)
,p_name=>'P3_FROM_LEG2_DEPARTURE_TIME'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(636550802950862682)
,p_prompt=>'Departure Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_2'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642356495987954912)
,p_name=>'P3_FROM_LEG2_DEST_AIRPORT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(636550802950862682)
,p_prompt=>'Destination Airport'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_2'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642356580578954913)
,p_name=>'P3_FROM_LEG2_ARRIVAL_DATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(636550802950862682)
,p_prompt=>'Arrival Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_2'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642356635727954914)
,p_name=>'P3_FROM_LEG2_ARRIVAL_TIME'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(636550802950862682)
,p_prompt=>'Arrival Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_2'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642356740426954915)
,p_name=>'P3_FROM_LEG3_AIRLINE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(636550955821862684)
,p_prompt=>'Airline'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRLINES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_AIRLINES'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_3'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642356846988954916)
,p_name=>'P3_FROM_LEG3_FLIGHT_NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(636550955821862684)
,p_prompt=>'Flight Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_3'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642356942611954917)
,p_name=>'P3_FROM_LEG3_MEAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(636550955821862684)
,p_prompt=>'Meal'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_MEALS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE = ''US''',
'order by meaning '))
,p_lov_display_null=>'YES'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_3'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642357038973954918)
,p_name=>'P3_FROM_LEG3_DEPARTURE_AIRPORT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(636550955821862684)
,p_prompt=>'Departure Airport'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_3'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642357163667954919)
,p_name=>'P3_FROM_LEG3_DEPARTURE_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(636550955821862684)
,p_prompt=>'Departure Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_3'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642357323265954920)
,p_name=>'P3_FROM_LEG3_DEPARTURE_TIME'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(636550955821862684)
,p_prompt=>'Departure Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_3'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642357346915954921)
,p_name=>'P3_FROM_LEG3_DEST_AIRPORT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(636550955821862684)
,p_prompt=>'Destination Airport'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_3'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642357466001954922)
,p_name=>'P3_FROM_LEG3_ARRIVAL_DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(636550955821862684)
,p_prompt=>'Arrival Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_3'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642357548194954923)
,p_name=>'P3_FROM_LEG3_ARRIVAL_TIME'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(636550955821862684)
,p_prompt=>'Arrival Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_3'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642357729243954924)
,p_name=>'P3_FROM_LEG4_AIRLINE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(636551148567862686)
,p_prompt=>'Airline'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRLINES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_AIRLINES'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_4'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642357792791954925)
,p_name=>'P3_FROM_LEG4_FLIGHT_NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(636551148567862686)
,p_prompt=>'Flight Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_4'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642357875790954926)
,p_name=>'P3_FROM_LEG4_MEAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(636551148567862686)
,p_prompt=>'Meal'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_MEALS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE = ''US''',
'order by meaning '))
,p_lov_display_null=>'YES'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_4'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642459995664910677)
,p_name=>'P3_FROM_LEG4_DEPARTURE_AIRPORT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(636551148567862686)
,p_prompt=>'Departure Airport'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_4'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642460092726910678)
,p_name=>'P3_FROM_LEG4_DEPARTURE_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(636551148567862686)
,p_prompt=>'Departure Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_4'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642460234506910679)
,p_name=>'P3_FROM_LEG4_DEPARTURE_TIME'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(636551148567862686)
,p_prompt=>'Departure Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_4'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642460249944910680)
,p_name=>'P3_FROM_LEG4_DEST_AIRPORT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(636551148567862686)
,p_prompt=>'Destination Airport'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_4'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642460418461910681)
,p_name=>'P3_FROM_LEG4_ARRIVAL_DATE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(636551148567862686)
,p_prompt=>'Arrival Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_4'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642460490159910682)
,p_name=>'P3_FROM_LEG4_ARRIVAL_TIME'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(636551148567862686)
,p_prompt=>'Arrival Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_css_classes=>'clear_2_4'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642460984071910687)
,p_name=>'P3_MASLUL'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(633753029327946009)
,p_prompt=>'Maslul'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642463591286910713)
,p_name=>'P3_BTN_MAKE_OFFER'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(642460608789910683)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642463740975910715)
,p_name=>'P3_STATUS_NEXT_STATUSES'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(636552482607862699)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642463916054910716)
,p_name=>'P3_BTN_CUSTOMER_APPROVAL'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(642460608789910683)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642464026471910717)
,p_name=>'P3_BTN_BOOK_FLIGHT'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(642460608789910683)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642464116952910718)
,p_name=>'P3_BTN_MASLUL_APPROVAL'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(642460608789910683)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642464163584910719)
,p_name=>'P3_BTN_FIX'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(642460608789910683)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642464280893910720)
,p_name=>'P3_BTN_APPROVE'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(642460608789910683)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642464388297910721)
,p_name=>'P3_BTN_CANCEL'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(642460608789910683)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642464594417910723)
,p_name=>'P3_SEQ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(618277768079405926)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(647850223494802801)
,p_name=>'P3_USER_TYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(618277768079405926)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(647850456721800869)
,p_name=>'P3_USER_MASLULIM'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(618277768079405926)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(647850832803799496)
,p_name=>'P3_USER_STATUSES'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(618277768079405926)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(654252068550851996)
,p_name=>'P3_BOOKED_FLIGHT_FOUND'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(618277768079405926)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(654252362760851999)
,p_name=>'P3_B_SEQ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(618277768079405926)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(654253614347852011)
,p_name=>'P3_B_PROPOSAL_YEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(667352503158199577)
,p_prompt=>'Proposal Year'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(654253706602852012)
,p_name=>'P3_B_PNR_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(667352503158199577)
,p_prompt=>'Pnr Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(654253763183852013)
,p_name=>'P3_B_AGENCY_REMARKS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(667352570050199578)
,p_prompt=>'Agency Remarks'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>9
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(654253883268852014)
,p_name=>'P3_B_FLIGHT_COST'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(667352503158199577)
,p_prompt=>'Flight Cost'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(654253943647852015)
,p_name=>'P3_B_FLIGHT_COST_FOR_BILLING'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(667352503158199577)
,p_prompt=>'Flight Cost For Billing'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(654254123710852016)
,p_name=>'P3_B_TICKET'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(667352503158199577)
,p_prompt=>'Ticket'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(654254219387852017)
,p_name=>'P3_B_INVOICE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(667352503158199577)
,p_prompt=>'Invoice'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(654254306166852018)
,p_name=>'P3_B_STATUS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(654253469169852010)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(654254354646852019)
,p_name=>'P3_B_STATUS_HTML'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(654253469169852010)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(654254653601852022)
,p_name=>'P3_B_TO_LEG1_AIRLINE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(654254548689852021)
,p_prompt=>'Airline'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AIRLINES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_AIRLINES'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_1'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(654254742822852023)
,p_name=>'P3_B_TO_LEG1_FLIGHT_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(654254548689852021)
,p_prompt=>'Flight Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_1'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(654254895104852024)
,p_name=>'P3_B_TO_LEG1_MEAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(654254548689852021)
,p_prompt=>'Meal'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MEALS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE = ''US''',
'order by meaning '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_1'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(654254960840852025)
,p_name=>'P3_B_TO_LEG1_DEPARTURE_AIRPORT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(654254548689852021)
,p_prompt=>'Departure Airport'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_1'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(654255091813852026)
,p_name=>'P3_B_TO_LEG1_DEPARTURE_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(654254548689852021)
,p_prompt=>'Departure Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_1'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655656569079269977)
,p_name=>'P3_B_TO_LEG1_DEPARTURE_TIME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(654254548689852021)
,p_prompt=>'Departure Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_1'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655656721876269978)
,p_name=>'P3_B_TO_LEG1_DEST_AIRPORT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(654254548689852021)
,p_prompt=>'Destination Airport'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_1'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655656812707269979)
,p_name=>'P3_B_TO_LEG1_ARRIVAL_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(654254548689852021)
,p_prompt=>'Arrival Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_1'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655656846062269980)
,p_name=>'P3_B_TO_LEG1_ARRIVAL_TIME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(654254548689852021)
,p_prompt=>'Arrival Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_1'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655657297890269984)
,p_name=>'P3_B_TO_LEG2_AIRLINE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(655657204725269983)
,p_prompt=>'Airline'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AIRLINES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_AIRLINES'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_2'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655657372033269985)
,p_name=>'P3_B_TO_LEG2_FLIGHT_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(655657204725269983)
,p_prompt=>'Flight Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_2'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655657463742269986)
,p_name=>'P3_B_TO_LEG2_MEAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(655657204725269983)
,p_prompt=>'Meal'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MEALS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE = ''US''',
'order by meaning '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_2'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655657590973269987)
,p_name=>'P3_B_TO_LEG2_DEPARTURE_AIRPORT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(655657204725269983)
,p_prompt=>'Departure Airport'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_2'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655657657359269988)
,p_name=>'P3_B_TO_LEG2_DEPARTURE_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(655657204725269983)
,p_prompt=>'Departure Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_2'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655657739301269989)
,p_name=>'P3_B_TO_LEG2_DEPARTURE_TIME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(655657204725269983)
,p_prompt=>'Departure Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_2'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655657901595269990)
,p_name=>'P3_B_TO_LEG2_DEST_AIRPORT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(655657204725269983)
,p_prompt=>'Destination Airport'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_2'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655657948183269991)
,p_name=>'P3_B_TO_LEG2_ARRIVAL_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(655657204725269983)
,p_prompt=>'Arrival Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_2'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655658045185269992)
,p_name=>'P3_B_TO_LEG2_ARRIVAL_TIME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(655657204725269983)
,p_prompt=>'Arrival Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_2'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655658490194269996)
,p_name=>'P3_B_TO_LEG3_AIRLINE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(655658418317269995)
,p_prompt=>'Airline'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AIRLINES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_AIRLINES'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_3'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655658629864269997)
,p_name=>'P3_B_TO_LEG3_FLIGHT_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(655658418317269995)
,p_prompt=>'Flight Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_3'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655658660976269998)
,p_name=>'P3_B_TO_LEG3_MEAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(655658418317269995)
,p_prompt=>'Meal'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MEALS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE = ''US''',
'order by meaning '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_3'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655658747337269999)
,p_name=>'P3_B_TO_LEG3_DEPARTURE_AIRPORT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(655658418317269995)
,p_prompt=>'Departure Airport'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_3'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655658853666270000)
,p_name=>'P3_B_TO_LEG3_DEPARTURE_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(655658418317269995)
,p_prompt=>'Departure Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_3'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655659031310270001)
,p_name=>'P3_B_TO_LEG3_DEPARTURE_TIME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(655658418317269995)
,p_prompt=>'Departure Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_3'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655659048480270002)
,p_name=>'P3_B_TO_LEG3_DEST_AIRPORT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(655658418317269995)
,p_prompt=>'Destination Airport'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_3'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655659183529270003)
,p_name=>'P3_B_TO_LEG3_ARRIVAL_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(655658418317269995)
,p_prompt=>'Arrival Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_3'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655659235332270004)
,p_name=>'P3_B_TO_LEG3_ARRIVAL_TIME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(655658418317269995)
,p_prompt=>'Arrival Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_3'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655659644177270008)
,p_name=>'P3_B_TO_LEG4_AIRLINE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(655659580109270007)
,p_prompt=>'Airline'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AIRLINES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_AIRLINES'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_4'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655659774368270009)
,p_name=>'P3_B_TO_LEG4_FLIGHT_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(655659580109270007)
,p_prompt=>'Flight Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_4'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655659887412270010)
,p_name=>'P3_B_TO_LEG4_MEAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(655659580109270007)
,p_prompt=>'Meal'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MEALS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE = ''US''',
'order by meaning '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_4'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655659955098270011)
,p_name=>'P3_B_TO_LEG4_DEPARTURE_AIRPORT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(655659580109270007)
,p_prompt=>'Departure Airport'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_4'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655660075721270012)
,p_name=>'P3_B_TO_LEG4_DEPARTURE_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(655659580109270007)
,p_prompt=>'Departure Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_4'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655660175005270013)
,p_name=>'P3_B_TO_LEG4_DEPARTURE_TIME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(655659580109270007)
,p_prompt=>'Departure Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_4'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655660244449270014)
,p_name=>'P3_B_TO_LEG4_DEST_AIRPORT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(655659580109270007)
,p_prompt=>'Destination Airport'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_4'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655660377152270015)
,p_name=>'P3_B_TO_LEG4_ARRIVAL_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(655659580109270007)
,p_prompt=>'Arrival Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_4'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655660446608270016)
,p_name=>'P3_B_TO_LEG4_ARRIVAL_TIME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(655659580109270007)
,p_prompt=>'Arrival Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_1_4'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655660866423270020)
,p_name=>'P3_B_FROM_LEG1_AIRLINE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(655660822725270019)
,p_prompt=>'Airline'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AIRLINES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_AIRLINES'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_1'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655661022291270021)
,p_name=>'P3_B_FROM_LEG1_FLIGHT_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(655660822725270019)
,p_prompt=>'Flight Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_1'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655661117030270022)
,p_name=>'P3_B_FROM_LEG1_MEAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(655660822725270019)
,p_prompt=>'Meal'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MEALS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE = ''US''',
'order by meaning '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_1'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655661166118270023)
,p_name=>'P3_B_FROM_LEG1_DEPARTURE_AP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(655660822725270019)
,p_prompt=>'Departure Airport'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_1'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655661238387270024)
,p_name=>'P3_B_FROM_LEG1_DEPARTURE_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(655660822725270019)
,p_prompt=>'Departure Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_1'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655661417350270025)
,p_name=>'P3_B_FROM_LEG1_DEPARTURE_TIME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(655660822725270019)
,p_prompt=>'Departure Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_1'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655661518926270026)
,p_name=>'P3_B_FROM_LEG1_DEST_AIRPORT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(655660822725270019)
,p_prompt=>'Destination Airport'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_1'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655661629020260177)
,p_name=>'P3_B_FROM_LEG1_ARRIVAL_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(655660822725270019)
,p_prompt=>'Arrival Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_1'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655661664884260178)
,p_name=>'P3_B_FROM_LEG1_ARRIVAL_TIME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(655660822725270019)
,p_prompt=>'Arrival Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_1'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655662063327260182)
,p_name=>'P3_B_FROM_LEG2_AIRLINE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(655662010810260181)
,p_prompt=>'Airline'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AIRLINES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_AIRLINES'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_2'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655662148342260183)
,p_name=>'P3_B_FROM_LEG2_FLIGHT_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(655662010810260181)
,p_prompt=>'Flight Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_2'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655662276511260184)
,p_name=>'P3_B_FROM_LEG2_MEAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(655662010810260181)
,p_prompt=>'Meal'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MEALS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE = ''US''',
'order by meaning '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_2'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655662422225260185)
,p_name=>'P3_B_FROM_LEG2_DEPARTURE_AP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(655662010810260181)
,p_prompt=>'Departure Airport'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_2'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655662490258260186)
,p_name=>'P3_B_FROM_LEG2_DEPARTURE_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(655662010810260181)
,p_prompt=>'Departure Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_2'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655662577233260187)
,p_name=>'P3_B_FROM_LEG2_DEPARTURE_TIME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(655662010810260181)
,p_prompt=>'Departure Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_2'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655662732349260188)
,p_name=>'P3_B_FROM_LEG2_DEST_AIRPORT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(655662010810260181)
,p_prompt=>'Destination Airport'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_2'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655662832773260189)
,p_name=>'P3_B_FROM_LEG2_ARRIVAL_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(655662010810260181)
,p_prompt=>'Arrival Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_2'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655662875853260190)
,p_name=>'P3_B_FROM_LEG2_ARRIVAL_TIME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(655662010810260181)
,p_prompt=>'Arrival Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_2'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655663308411260194)
,p_name=>'P3_B_FROM_LEG3_AIRLINE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(655663201679260193)
,p_prompt=>'Airline'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AIRLINES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_AIRLINES'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_3'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655663370129260195)
,p_name=>'P3_B_FROM_LEG3_FLIGHT_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(655663201679260193)
,p_prompt=>'Flight Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_3'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655663460026260196)
,p_name=>'P3_B_FROM_LEG3_MEAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(655663201679260193)
,p_prompt=>'Meal'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MEALS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE = ''US''',
'order by meaning '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_3'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655663561926260197)
,p_name=>'P3_B_FROM_LEG3_DEPARTURE_AP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(655663201679260193)
,p_prompt=>'Departure Airport'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_3'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655663692989260198)
,p_name=>'P3_B_FROM_LEG3_DEPARTURE_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(655663201679260193)
,p_prompt=>'Departure Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_3'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655663747688260199)
,p_name=>'P3_B_FROM_LEG3_DEPARTURE_TIME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(655663201679260193)
,p_prompt=>'Departure Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_3'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655663889196260200)
,p_name=>'P3_B_FROM_LEG3_DEST_AIRPORT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(655663201679260193)
,p_prompt=>'Destination Airport'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_3'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655664016683260201)
,p_name=>'P3_B_FROM_LEG3_ARRIVAL_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(655663201679260193)
,p_prompt=>'Arrival Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_3'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655664082722260202)
,p_name=>'P3_B_FROM_LEG3_ARRIVAL_TIME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(655663201679260193)
,p_prompt=>'Arrival Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_3'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655664524211260206)
,p_name=>'P3_B_FROM_LEG4_AIRLINE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(655664421418260205)
,p_prompt=>'Airline'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AIRLINES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_AIRLINES'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_4'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655664555563260207)
,p_name=>'P3_B_FROM_LEG4_FLIGHT_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(655664421418260205)
,p_prompt=>'Flight Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_4'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655664665180260208)
,p_name=>'P3_B_FROM_LEG4_MEAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(655664421418260205)
,p_prompt=>'Meal'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MEALS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code, lookup_code || '' - '' || meaning meaning',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE = ''US''',
'order by meaning '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_4'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655664803436260209)
,p_name=>'P3_B_FROM_LEG4_DEPARTURE_AP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(655664421418260205)
,p_prompt=>'Departure Airport'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_4'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655664892331260210)
,p_name=>'P3_B_FROM_LEG4_DEPARTURE_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(655664421418260205)
,p_prompt=>'Departure Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_4'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655664953347260211)
,p_name=>'P3_B_FROM_LEG4_DEPARTURE_TIME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(655664421418260205)
,p_prompt=>'Departure Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_4'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655665062453260212)
,p_name=>'P3_B_FROM_LEG4_DEST_AIRPORT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(655664421418260205)
,p_prompt=>'Destination Airport'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_AIRPORTS_WORLDWIDE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lookup_code r, lookup_code || '' - '' || meaning d',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'order by meaning'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_4'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655665200600260213)
,p_name=>'P3_B_FROM_LEG4_ARRIVAL_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(655664421418260205)
,p_prompt=>'Arrival Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_4'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655665287316260214)
,p_name=>'P3_B_FROM_LEG4_ARRIVAL_TIME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(655664421418260205)
,p_prompt=>'Arrival Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_css_classes=>'clear_2_4'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655666166765260223)
,p_name=>'P3_B_BTN_CANCEL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(655665489176260216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655782034938142484)
,p_name=>'P3_B_STATUS_NEXT_STATUSES'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(654253469169852010)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655785180576142515)
,p_name=>'P3_TXT_MAKE_OFFER'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(642460608789910683)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655785298602142516)
,p_name=>'P3_TXT_CUSTOMER_APPROVAL'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(642460608789910683)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655785381862142517)
,p_name=>'P3_TXT_BOOK_FLIGHT'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(642460608789910683)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655785446529142518)
,p_name=>'P3_TXT_MASLUL_APPROVAL'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(642460608789910683)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655785577458142519)
,p_name=>'P3_TXT_FIX'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(642460608789910683)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655785666522142520)
,p_name=>'P3_TXT_APPROVE'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(642460608789910683)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655785828483142521)
,p_name=>'P3_TXT_CANCEL'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(618277768079405926)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(633754175178946021)
,p_name=>'Clear Segment Click'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.clear-segment-button'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(633754318165946022)
,p_event_id=>wwv_flow_api.id(633754175178946021)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var flight = $(this.triggeringElement).data(''flight'');',
'var leg = $(this.triggeringElement).data(''leg'');',
'var flightItemPrefix = flight == 1 ? ''TO'' : ''FROM'';',
'',
'$(''.clear_'' + flight + ''_'' + leg + '' input'').val('''');',
'$(''.clear_'' + flight + ''_'' + leg + '' select'').val('''');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(642461152540910689)
,p_name=>'Close Click'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(642461104157910688)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(642461288519910690)
,p_event_id=>wwv_flow_api.id(642461152540910689)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(655782170279142485)
,p_name=>'Close Click Booked'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(655666419456260225)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(655782256748142486)
,p_event_id=>wwv_flow_api.id(655782170279142485)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(642461551029910693)
,p_name=>'Set Citizenship Flag Icon'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(642461710751910694)
,p_event_id=>wwv_flow_api.id(642461551029910693)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var citizenship = $(''#P3_IS_US_OR_CA_CITIZEN_DISPLAY'').text();',
'if (citizenship != '''') {',
'    $(''#P3_IS_US_OR_CA_CITIZEN_DISPLAY'').parent().append(''<img src="#APP_IMAGES#'' + citizenship.toLowerCase() + ''.svg" width="27px" style="margin-left: 10px" />'');',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(654250689292851982)
,p_name=>'Add Leg Click'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'button[data-flight-leg]'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(654250996951851985)
,p_event_id=>wwv_flow_api.id(654250689292851982)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''div[data-flight-leg="'' + $(this.triggeringElement).data("flight-leg") + ''"]'').show();',
'$(this.triggeringElement).hide();'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(654251245985851988)
,p_name=>'Show Filled Flight Legs'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(654251336979851989)
,p_event_id=>wwv_flow_api.id(654251245985851988)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//Flight > Flight 1',
'if ($v(''P3_TO_LEG2_AIRLINE'') != '''') {',
'    $(''div[data-flight-leg="1_2"]'').show();',
'    $(''button[data-flight-leg="1_2"]'').hide();',
'}',
'if ($v(''P3_TO_LEG3_AIRLINE'') != '''') {',
'    $(''div[data-flight-leg="1_3"]'').show();',
'    $(''button[data-flight-leg="1_3"]'').hide();',
'}',
'if ($v(''P3_TO_LEG4_AIRLINE'') != '''') {',
'    $(''div[data-flight-leg="1_4"]'').show();',
'    $(''button[data-flight-leg="1_4"]'').hide();',
'}',
'//Flight > Flight 2',
'if ($v(''P3_FROM_LEG2_AIRLINE'') != '''') {',
'    $(''div[data-flight-leg="2_2"]'').show();',
'    $(''button[data-flight-leg="2_2"]'').hide();',
'}',
'if ($v(''P3_FROM_LEG3_AIRLINE'') != '''') {',
'    $(''div[data-flight-leg="2_3"]'').show();',
'    $(''button[data-flight-leg="2_3"]'').hide();',
'}',
'if ($v(''P3_FROM_LEG4_AIRLINE'') != '''') {',
'    $(''div[data-flight-leg="2_4"]'').show();',
'    $(''button[data-flight-leg="2_4"]'').hide();',
'}',
'',
'//Booked Flight > Flight 1',
'if ($v(''P3_B_TO_LEG2_AIRLINE'') != '''') {',
'    $(''div[data-flight-leg="B_1_2"]'').show();',
'}',
'if ($v(''P3_B_TO_LEG3_AIRLINE'') != '''') {',
'    $(''div[data-flight-leg="B_1_3"]'').show();',
'}',
'if ($v(''P3_B_TO_LEG4_AIRLINE'') != '''') {',
'    $(''div[data-flight-leg="B_1_4"]'').show();',
'}',
'//Booked Flight > Flight 2',
'if ($v(''P3_B_FROM_LEG2_AIRLINE'') != '''') {',
'    $(''div[data-flight-leg="B_2_2"]'').show();',
'}',
'if ($v(''P3_B_FROM_LEG3_AIRLINE'') != '''') {',
'    $(''div[data-flight-leg="B_2_3"]'').show();',
'}',
'if ($v(''P3_B_FROM_LEG4_AIRLINE'') != '''') {',
'    $(''div[data-flight-leg="B_2_4"]'').show();',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(655782424103142487)
,p_name=>'Disable Fields On Booked Flight'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(655782591469142489)
,p_event_id=>wwv_flow_api.id(655782424103142487)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#bookedFlightRegion .clear_1_1,#bookedFlightRegion .clear_1_2,#bookedFlightRegion .clear_1_3,#bookedFlightRegion .clear_1_4,#bookedFlightRegion .clear_2_1,#bookedFlightRegion .clear_2_2,#bookedFlightRegion .clear_2_3,#bookedFlightRegion .clear_2_4'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(655782875875142492)
,p_name=>'Disable Fields On Flight Offer'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_display_when_cond=>'to_number(:P3_STATUS) in (2,3,5,6) or :P3_USER_TYPE = ''M'''
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(655782982876142493)
,p_event_id=>wwv_flow_api.id(655782875875142492)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#flightRequestRegion .clear_1_1,#flightRequestRegion .clear_1_2,#flightRequestRegion .clear_1_3,#flightRequestRegion .clear_1_4,#flightRequestRegion .clear_2_1,#flightRequestRegion .clear_2_2,#flightRequestRegion .clear_2_3,#flightRequestRegion .clea'
||'r_2_4'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(655783037117142494)
,p_event_id=>wwv_flow_api.id(655782875875142492)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'button[clear],button[add]'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(655783544857142499)
,p_name=>'Flight Cost Change'
,p_event_sequence=>85
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_FLIGHT_COST'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(655783700436142500)
,p_event_id=>wwv_flow_api.id(655783544857142499)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_FLIGHT_COST_FOR_BILLING'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P3_FLIGHT_COST * 1.3'
,p_attribute_07=>'P3_FLIGHT_COST'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(655783135528142495)
,p_name=>'Flight Cost Change Booked'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_B_FLIGHT_COST'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(655783245982142496)
,p_event_id=>wwv_flow_api.id(655783135528142495)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_B_FLIGHT_COST_FOR_BILLING'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P3_B_FLIGHT_COST * 1.3'
,p_attribute_07=>'P3_B_FLIGHT_COST'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(655784275354142506)
,p_name=>'Set Status in Session'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(655784352981142507)
,p_event_id=>wwv_flow_api.id(655784275354142506)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var currentFlightState = { ',
'    ''seq'': $v(''P3_SEQ'') != '''' ? $v(''P3_SEQ'') : $v(''P3_B_SEQ''),',
'    ''assignmentId'': $v(''P3_ASSIGNMENT_ID''),',
'    ''personId'': $v(''P3_PERSON_ID''),',
'    ''status'': $v(''P3_SEQ'') != '''' ? $v(''P3_STATUS'') : $v(''P3_B_STATUS'')',
'}',
'sessionStorage.setItem(''currentFlightState'', JSON.stringify(currentFlightState));'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(655785932671142522)
,p_name=>'Set Button Texts'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(655785944906142523)
,p_event_id=>wwv_flow_api.id(655785932671142522)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description',
'into :P3_TXT_MAKE_OFFER',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_FLIGHT_STATUS'' and LANGUAGE = ''US'' and m.lookup_code = 1;',
'',
'select description',
'into :P3_TXT_MASLUL_APPROVAL',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_FLIGHT_STATUS'' and LANGUAGE = ''US'' and m.lookup_code = 2;',
'',
'select description',
'into :P3_TXT_CUSTOMER_APPROVAL',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_FLIGHT_STATUS'' and LANGUAGE = ''US'' and m.lookup_code = 3;',
'',
'select description',
'into :P3_TXT_FIX',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_FLIGHT_STATUS'' and LANGUAGE = ''US'' and m.lookup_code = 4;',
'',
'select description',
'into :P3_TXT_APPROVE',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_FLIGHT_STATUS'' and LANGUAGE = ''US'' and m.lookup_code = 5;',
'',
'select description',
'into :P3_TXT_BOOK_FLIGHT',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_FLIGHT_STATUS'' and LANGUAGE = ''US'' and m.lookup_code = 6;',
'',
'select description',
'into :P3_TXT_CANCEL',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_HR_FLIGHT_STATUS'' and LANGUAGE = ''US'' and m.lookup_code = 7;'))
,p_attribute_03=>'P3_TXT_MAKE_OFFER,P3_TXT_MASLUL_APPROVAL,P3_TXT_CUSTOMER_APPROVAL,P3_TXT_FIX,P3_TXT_APPROVE,P3_TXT_BOOK_FLIGHT,P3_TXT_CANCEL'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(667352684609199579)
,p_event_id=>wwv_flow_api.id(655785932671142522)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''button[data-status="2"] .t-Button-label'').text($v(''P3_TXT_MAKE_OFFER''));',
'$(''button[data-status="3"] .t-Button-label'').text($v(''P3_TXT_MASLUL_APPROVAL''));',
'$(''button[data-status="4"] .t-Button-label'').text($v(''P3_TXT_CUSTOMER_APPROVAL''));',
'$(''button[data-status="5"] .t-Button-label'').text($v(''P3_TXT_FIX''));',
'$(''button[data-status="6"] .t-Button-label'').text($v(''P3_TXT_APPROVE''));',
'$(''button[data-status="7"] .t-Button-label'').text($v(''P3_TXT_BOOK_FLIGHT''));',
'$(''button[data-status="8"] .t-Button-label'').text($v(''P3_TXT_CANCEL''));'))
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
 p_id=>wwv_flow_api.id(636551449123862689)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Start Process'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_seq number(15) := JAFI_APEX_SHLICHUT_FLIGHTS_SEQ.nextval;',
'begin',
'',
' XX_MY_UTILS.add_msg(''start process ''); ',
' ',
' ',
'    --insert process info record',
'    insert into jafi_apex_shlichut_flights(SEQ, ASSGT_ID, PERSON_ID, STATUS, CREATION_DATE, CREATED_BY)',
'    values (v_seq, :P3_ASSIGNMENT_ID, :P3_PERSON_ID, 1, sysdate, :P0_USER_NAME);',
'    ',
'    --insert audit record',
'    insert into jafi_apex_shl_flights_audit(AUDIT_ID, ENTITY_ID, ASSGT_ID, NEW_STATUS_ID, STATUS_UPDATE_DATE, STATUS_UPDATE_BY)',
'    values (JAFI_APEX_FLIGHTS_AUDIT_SEQ.nextval, v_seq, :P3_ASSIGNMENT_ID, 1, sysdate, :P0_USER_NAME);',
'end;',
'',
'',
'',
' ',
'',
''))
,p_process_error_message=>'An Error Occurred!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(633753454581946014)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(642460812306910685)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_max_audit_id number(15) := 0;',
'begin',
'',
' XX_MY_UTILS.add_msg(''save ''); ',
' ',
' ',
' ',
'    update jafi_apex_shlichut_flights',
'    set    status = :P3_STATUS,',
'           proposal_year = :P3_PROPOSAL_YEAR,',
'           pnr_number = :P3_PNR_NUMBER,',
'           flight_cost = :P3_FLIGHT_COST,',
'           flight_cost_for_billing = :P3_FLIGHT_COST_FOR_BILLING,',
'           agency_remarks = :P3_AGENCY_REMARKS,',
'           ',
'           to_seg1_departure_airport = :P3_TO_LEG1_DEPARTURE_AIRPORT,',
'           to_seg1_destination_airport = :P3_TO_LEG1_DESTINATION_AIRPORT,',
'           to_seg1_flight_number = :P3_TO_LEG1_FLIGHT_NUMBER,',
'           to_seg1_airline = :P3_TO_LEG1_AIRLINE,',
'           to_seg1_departure_date = :P3_TO_LEG1_DEPARTURE_DATE,',
'           to_seg1_departure_time = :P3_TO_LEG1_DEPARTURE_TIME,',
'           to_seg1_arrival_date = :P3_TO_LEG1_ARRIVAL_DATE,',
'           to_seg1_arrival_time = :P3_TO_LEG1_ARRIVAL_TIME,',
'           to_seg1_meal = :P3_TO_LEG1_MEAL,',
'           ',
'           to_seg2_departure_airport = :P3_TO_LEG2_DEPARTURE_AIRPORT,',
'           to_seg2_destination_airport = :P3_TO_LEG2_DESTINATION_AIRPORT,',
'           to_seg2_flight_number = :P3_TO_LEG2_FLIGHT_NUMBER,',
'           to_seg2_airline = :P3_TO_LEG2_AIRLINE,',
'           to_seg2_departure_date = :P3_TO_LEG2_DEPARTURE_DATE,',
'           to_seg2_departure_time = :P3_TO_LEG2_DEPARTURE_TIME,',
'           to_seg2_arrival_date = :P3_TO_LEG2_ARRIVAL_DATE,',
'           to_seg2_arrival_time = :P3_TO_LEG2_ARRIVAL_TIME,',
'           to_seg2_meal = :P3_TO_LEG2_MEAL,',
'           ',
'           to_seg3_departure_airport = :P3_TO_LEG3_DEPARTURE_AIRPORT,',
'           to_seg3_destination_airport = :P3_TO_LEG3_DESTINATION_AIRPORT,',
'           to_seg3_flight_number = :P3_TO_LEG3_FLIGHT_NUMBER,',
'           to_seg3_airline = :P3_TO_LEG3_AIRLINE,',
'           to_seg3_departure_date = :P3_TO_LEG3_DEPARTURE_DATE,',
'           to_seg3_departure_time = :P3_TO_LEG3_DEPARTURE_TIME,',
'           to_seg3_arrival_date = :P3_TO_LEG3_ARRIVAL_DATE,',
'           to_seg3_arrival_time = :P3_TO_LEG3_ARRIVAL_TIME,',
'           to_seg3_meal = :P3_TO_LEG3_MEAL,',
'           ',
'           to_seg4_departure_airport = :P3_TO_LEG4_DEPARTURE_AIRPORT,',
'           to_seg4_destination_airport = :P3_TO_LEG4_DESTINATION_AIRPORT,',
'           to_seg4_flight_number = :P3_TO_LEG4_FLIGHT_NUMBER,',
'           to_seg4_airline = :P3_TO_LEG4_AIRLINE,',
'           to_seg4_departure_date = :P3_TO_LEG4_DEPARTURE_DATE,',
'           to_seg4_departure_time = :P3_TO_LEG4_DEPARTURE_TIME,',
'           to_seg4_arrival_date = :P3_TO_LEG4_ARRIVAL_DATE,',
'           to_seg4_arrival_time = :P3_TO_LEG4_ARRIVAL_TIME,',
'           to_seg4_meal = :P3_TO_LEG4_MEAL,',
'           ',
'           from_seg1_departure_airport = :P3_FROM_LEG1_DEPARTURE_AIRPORT,',
'           from_seg1_destination_airport = :P3_FROM_LEG1_DEST_AIRPORT,',
'           from_seg1_flight_number = :P3_FROM_LEG1_FLIGHT_NUMBER,',
'           from_seg1_airline = :P3_FROM_LEG1_AIRLINE,',
'           from_seg1_departure_date = :P3_FROM_LEG1_DEPARTURE_DATE,',
'           from_seg1_departure_time = :P3_FROM_LEG1_DEPARTURE_TIME,',
'           from_seg1_arrival_date = :P3_FROM_LEG1_ARRIVAL_DATE,',
'           from_seg1_arrival_time = :P3_FROM_LEG1_ARRIVAL_TIME,',
'           from_seg1_meal = :P3_FROM_LEG1_MEAL,',
'           ',
'           from_seg2_departure_airport = :P3_FROM_LEG2_DEPARTURE_AIRPORT,',
'           from_seg2_destination_airport = :P3_FROM_LEG2_DEST_AIRPORT,',
'           from_seg2_flight_number = :P3_FROM_LEG2_FLIGHT_NUMBER,',
'           from_seg2_airline = :P3_FROM_LEG2_AIRLINE,',
'           from_seg2_departure_date = :P3_FROM_LEG2_DEPARTURE_DATE,',
'           from_seg2_departure_time = :P3_FROM_LEG2_DEPARTURE_TIME,',
'           from_seg2_arrival_date = :P3_FROM_LEG2_ARRIVAL_DATE,',
'           from_seg2_arrival_time = :P3_FROM_LEG2_ARRIVAL_TIME,',
'           from_seg2_meal = :P3_FROM_LEG2_MEAL,',
'           ',
'           from_seg3_departure_airport = :P3_FROM_LEG3_DEPARTURE_AIRPORT,',
'           from_seg3_destination_airport = :P3_FROM_LEG3_DEST_AIRPORT,',
'           from_seg3_flight_number = :P3_FROM_LEG3_FLIGHT_NUMBER,',
'           from_seg3_airline = :P3_FROM_LEG3_AIRLINE,',
'           from_seg3_departure_date = :P3_FROM_LEG3_DEPARTURE_DATE,',
'           from_seg3_departure_time = :P3_FROM_LEG3_DEPARTURE_TIME,',
'           from_seg3_arrival_date = :P3_FROM_LEG3_ARRIVAL_DATE,',
'           from_seg3_arrival_time = :P3_FROM_LEG3_ARRIVAL_TIME,',
'           from_seg3_meal = :P3_FROM_LEG3_MEAL,',
'           ',
'           from_seg4_departure_airport = :P3_FROM_LEG4_DEPARTURE_AIRPORT,',
'           from_seg4_destination_airport = :P3_FROM_LEG4_DEST_AIRPORT,',
'           from_seg4_flight_number = :P3_FROM_LEG4_FLIGHT_NUMBER,',
'           from_seg4_airline = :P3_FROM_LEG4_AIRLINE,',
'           from_seg4_departure_date = :P3_FROM_LEG4_DEPARTURE_DATE,',
'           from_seg4_departure_time = :P3_FROM_LEG4_DEPARTURE_TIME,',
'           from_seg4_arrival_date = :P3_FROM_LEG4_ARRIVAL_DATE,',
'           from_seg4_arrival_time = :P3_FROM_LEG4_ARRIVAL_TIME,',
'           from_seg4_meal = :P3_FROM_LEG4_MEAL,',
'           ',
'           last_update_date = sysdate,',
'           last_updated_by = :APP_USER',
'    where ASSGT_ID = :P3_ASSIGNMENT_ID and PERSON_ID = :P3_PERSON_ID;',
'    ',
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
'--P3_TICKET & P3_INVOICE > Where should I save the files?',
'',
'',
'    ',
'    ',
'    ',
'    ',
'    ',
'    ',
'    ',
'    ',
'    ',
'',
'end;'))
,p_process_error_message=>'An Error Occurred!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(642460650281910684)
,p_process_success_message=>'Flight saved successfully! '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(642464442158910722)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Make Offer'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
' XX_MY_UTILS.add_msg(''make offer ''); ',
'    --update process info record',
'    update jafi_apex_shlichut_flights',
'    set STATUS = 2, ',
'        LAST_UPDATE_DATE = sysdate, ',
'        LAST_UPDATED_BY = :P0_USER_NAME',
'    where seq = :P3_SEQ;',
'    ',
'    --insert audit record',
'    insert into jafi_apex_shl_flights_audit(AUDIT_ID, ENTITY_ID, ASSGT_ID, OLD_STATUS_ID, NEW_STATUS_ID, STATUS_UPDATE_DATE, STATUS_UPDATE_BY)',
'    values (JAFI_APEX_FLIGHTS_AUDIT_SEQ.nextval, :P3_SEQ, :P3_ASSIGNMENT_ID, :P3_STATUS, 2, sysdate, :P0_USER_NAME);',
'end;'))
,p_process_error_message=>'An Error Occurred!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(642462149693910699)
,p_process_success_message=>'Offer Submitted Successfully!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(654250291482851978)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Maslul Approval'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' XX_MY_UTILS.add_msg(''maslul approval '');',
' ',
' ',
'    --update process info record',
'    update jafi_apex_shlichut_flights',
'    set STATUS = 3, ',
'        LAST_UPDATE_DATE = sysdate, ',
'        LAST_UPDATED_BY = :P0_USER_NAME',
'    where seq = :P3_SEQ;',
'    ',
'    --insert audit record',
'    insert into jafi_apex_shl_flights_audit(AUDIT_ID, ENTITY_ID, ASSGT_ID, OLD_STATUS_ID, NEW_STATUS_ID, STATUS_UPDATE_DATE, STATUS_UPDATE_BY)',
'    values (JAFI_APEX_FLIGHTS_AUDIT_SEQ.nextval, :P3_SEQ, :P3_ASSIGNMENT_ID, :P3_STATUS, 3, sysdate, :P0_USER_NAME);',
'end;'))
,p_process_error_message=>'An Error Occurred!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(642462656807910704)
,p_process_success_message=>'Flight Change Submitted Successfully!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(642464712317910724)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Customer Approval'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
' XX_MY_UTILS.add_msg(''customer approval '');',
' ',
' ',
'    --update process info record',
'    update jafi_apex_shlichut_flights',
'    set STATUS = 4, ',
'        LAST_UPDATE_DATE = sysdate, ',
'        LAST_UPDATED_BY = :P0_USER_NAME',
'    where seq = :P3_SEQ;',
'    ',
'    --insert audit record',
'    insert into jafi_apex_shl_flights_audit(AUDIT_ID, ENTITY_ID, ASSGT_ID, OLD_STATUS_ID, NEW_STATUS_ID, STATUS_UPDATE_DATE, STATUS_UPDATE_BY)',
'    values (JAFI_APEX_FLIGHTS_AUDIT_SEQ.nextval, :P3_SEQ, :P3_ASSIGNMENT_ID, :P3_STATUS, 4, sysdate, :P0_USER_NAME);',
'end;'))
,p_process_error_message=>'An Error Occurred!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(642462253325910700)
,p_process_success_message=>'Offer Sent To Customer Successfully!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(642464735088910725)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fix'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
' XX_MY_UTILS.add_msg(''fix''); ',
'    --update process info record',
'    update jafi_apex_shlichut_flights',
'    set STATUS = 5, ',
'        LAST_UPDATE_DATE = sysdate, ',
'        LAST_UPDATED_BY = :P0_USER_NAME',
'    where seq = :P3_SEQ;',
'    ',
'    --insert audit record',
'    insert into jafi_apex_shl_flights_audit(AUDIT_ID, ENTITY_ID, ASSGT_ID, OLD_STATUS_ID, NEW_STATUS_ID, STATUS_UPDATE_DATE, STATUS_UPDATE_BY)',
'    values (JAFI_APEX_FLIGHTS_AUDIT_SEQ.nextval, :P3_SEQ, :P3_ASSIGNMENT_ID, :P3_STATUS, 5, sysdate, :P0_USER_NAME);',
'end;'))
,p_process_error_message=>'An Error Occurred!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(642462357962910701)
,p_process_success_message=>'Offer Fix Submitted Successfully!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(642464924182910726)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Approve'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'',
' XX_MY_UTILS.add_msg(''approve ''); ',
'    --update process info record',
'    update jafi_apex_shlichut_flights',
'    set STATUS = 6, ',
'        LAST_UPDATE_DATE = sysdate, ',
'        LAST_UPDATED_BY = :P0_USER_NAME',
'    where seq = :P3_SEQ;',
'    ',
'    --insert audit record',
'    insert into jafi_apex_shl_flights_audit(AUDIT_ID, ENTITY_ID, ASSGT_ID, OLD_STATUS_ID, NEW_STATUS_ID, STATUS_UPDATE_DATE, STATUS_UPDATE_BY)',
'    values (JAFI_APEX_FLIGHTS_AUDIT_SEQ.nextval, :P3_SEQ, :P3_ASSIGNMENT_ID, :P3_STATUS, 6, sysdate, :P0_USER_NAME);',
'end;'))
,p_process_error_message=>'An Error Occurred!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(642462521813910702)
,p_process_success_message=>'Offer Approved Successfully!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(654250189693851977)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Book Flight'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
' XX_MY_UTILS.add_msg(''bool flight ''); ',
'    --update process info record',
'    update jafi_apex_shlichut_flights',
'    set STATUS = 7, ',
'        LAST_UPDATE_DATE = sysdate, ',
'        LAST_UPDATED_BY = :P0_USER_NAME',
'    where seq = :P3_SEQ;',
'    ',
'    --insert audit record',
'    insert into jafi_apex_shl_flights_audit(AUDIT_ID, ENTITY_ID, ASSGT_ID, OLD_STATUS_ID, NEW_STATUS_ID, STATUS_UPDATE_DATE, STATUS_UPDATE_BY)',
'    values (JAFI_APEX_FLIGHTS_AUDIT_SEQ.nextval, :P3_SEQ, :P3_ASSIGNMENT_ID, :P3_STATUS, 7, sysdate, :P0_USER_NAME);',
'end;'))
,p_process_error_message=>'An Error Occurred!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(642462629951910703)
,p_process_success_message=>'Flight Booked Successfully!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(654250417809851979)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Cancel'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
' XX_MY_UTILS.add_msg(''cancel ''); ',
' ',
' ',
'    --update process info record',
'    update jafi_apex_shlichut_flights',
'    set STATUS = 8, ',
'        LAST_UPDATE_DATE = sysdate, ',
'        LAST_UPDATED_BY = :P0_USER_NAME',
'    where seq = :P3_SEQ;',
'    ',
'    --insert audit record',
'    insert into jafi_apex_shl_flights_audit(AUDIT_ID, ENTITY_ID, ASSGT_ID, OLD_STATUS_ID, NEW_STATUS_ID, STATUS_UPDATE_DATE, STATUS_UPDATE_BY)',
'    values (JAFI_APEX_FLIGHTS_AUDIT_SEQ.nextval, :P3_SEQ, :P3_ASSIGNMENT_ID, :P3_STATUS, 8, sysdate, :P0_USER_NAME);',
'end;'))
,p_process_error_message=>'An Error Occurred!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(642462794868910705)
,p_process_success_message=>'Flight Cancelled Successfully!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(655782749056142491)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Booked - Cancel'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' XX_MY_UTILS.add_msg(''booked cancel''); ',
' ',
'    --update process info record',
'    update jafi_apex_shlichut_flights',
'    set STATUS = 8, ',
'        LAST_UPDATE_DATE = sysdate, ',
'        LAST_UPDATED_BY = :P0_USER_NAME',
'    where seq = :P3_B_SEQ;',
'    ',
'    --insert audit record',
'    insert into jafi_apex_shl_flights_audit(AUDIT_ID, ENTITY_ID, ASSGT_ID, OLD_STATUS_ID, NEW_STATUS_ID, STATUS_UPDATE_DATE, STATUS_UPDATE_BY)',
'    values (JAFI_APEX_FLIGHTS_AUDIT_SEQ.nextval, :P3_B_SEQ, :P3_ASSIGNMENT_ID, :P3_B_STATUS, 8, sysdate, :P0_USER_NAME);',
'end;'))
,p_process_error_message=>'An Error Occurred!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(655781905268142482)
,p_process_success_message=>'Flight Cancelled Successfully!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(647849761093807555)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get User Restrictions'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select m.ATTRIBUTE1, m.ATTRIBUTE2, m.ATTRIBUTE3',
'    into :P3_USER_TYPE, :P3_USER_MASLULIM, :P3_USER_STATUSES',
'    from FND_LOOKUP_VALUES m',
'    where m.LOOKUP_TYPE= ''JAFI_SHLICHUT_FLIGHTS_USERS'' and m.LANGUAGE = ''US'' and lower(m.meaning) = lower(:P0_USER_NAME);',
'',
'    exception when no_data_found then',
'        :P3_USER_TYPE := NULL;',
'        :P3_USER_MASLULIM := NULL;',
'        :P3_USER_STATUSES := NULL;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(633749994761945979)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'General Information - Get Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    --GET GENERAL INFORMATION',
'    select MOBILE,',
'           LAST_NAME,',
'           FIRST_NAME,',
'           GENDER,',
'           DATE_OF_BIRTH,',
'           CAMP_NAME,',
'           CITY_OF_BIRTH,',
'           COUNTRY_OF_BIRTH,',
'           EMAIL_ADDRESS,',
'           NATIONAL_ID,',
'           PASSPORT_NUMBER,',
'           PASSPORT_EXPIRATION,',
'           COORDINATOR_NAME,',
'           IS_US_OR_CA_CITIZEN,',
'           MAIN_AIRPORT,',
'           SEC_AIRPORT,',
'           INDIVIDUAL_ARRIVAL_DATE,',
'           INDIVIDUAL_DEPARTURE_DATE,',
'           CAMP_ARRIVAL_TIME,',
'           CAMP_ARRIVAL_DATE,',
'           REQUESTED_RETURN_DATE,',
'           MEAL,',
'           DEPARTURE_AIRPORT,',
'           J1_PERMIT_END_DATE,',
'           FLIGHT_REMARKS_APPLICANT,',
'           FLIGHTS_REMARKS_MASLUL,',
'           MASLUL',
'    into :P3_MOBILE,',
'         :P3_LAST_NAME,',
'         :P3_FIRST_NAME,',
'         :P3_GENDER,',
'         :P3_DATE_OF_BIRTH,',
'         :P3_CAMP_NAME,',
'         :P3_CITY_OF_BIRTH,',
'         :P3_COUNTRY_OF_BIRTH,',
'         :P3_EMAIL_ADDRESS,',
'         :P3_NATIONAL_ID,',
'         :P3_PASSPORT_NUMBER,',
'         :P3_PASSPORT_EXPIRATION,',
'         :P3_COORDINATOR_NAME,',
'         :P3_IS_US_OR_CA_CITIZEN,',
'         :P3_MAIN_AIRPORT,',
'         :P3_SEC_AIRPORT,',
'         :P3_INDIVIDUAL_ARRIVAL_DATE,',
'         :P3_INDIVIDUAL_DEPARTURE_DATE,',
'         :P3_CAMP_ARRIVAL_TIME,',
'         :P3_CAMP_ARRIVAL_DATE,',
'         :P3_REQUESTED_RETURN_DATE,',
'         :P3_MEAL,',
'         :P3_DEPARTURE_AIRPORT,',
'         :P3_J1_PERMIT_END_DATE,',
'         :P3_FLIGHT_REMARKS_APPLICANT,',
'         :P3_FLIGHTS_REMARKS_MASLUL,',
'         :P3_MASLUL',
'    from JAFI_FLIGHT_PASSPORT_INFO_V v',
'    where v.ASSIGNMENT_ID = :P3_ASSIGNMENT_ID and v.PERSON_ID = :P3_PERSON_ID;',
'    ',
'    --CHECK IF PROCESS HAS STARTED FOR THIS PERSON...',
'    begin',
'        :P3_PROCESS_STARTED := ''N'';',
'        ',
'        select ''Y'' into :P3_PROCESS_STARTED ',
'        from jafi_apex_shlichut_flights f ',
'        where f.ASSGT_ID = :P3_ASSIGNMENT_ID and f.PERSON_ID = :P3_PERSON_ID and f.STATUS not in (:P0_BOOKED_STATUS_CODE,:P0_CANCELED_STATUS_CODE);',
'        ',
'        exception when no_data_found then :P3_PROCESS_STARTED := ''N'';',
'    end;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(654252159135851997)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Flight Information - Get Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    --GET FLIGHT DATA',
'    begin',
'        select  f.seq,',
'                f.status,',
'                f.proposal_year,',
'                f.pnr_number,',
'                f.flight_cost, ',
'                f.flight_cost_for_billing, ',
'                f.agency_remarks, ',
'                f.to_seg1_departure_airport, ',
'                f.to_seg1_destination_airport, ',
'                f.to_seg1_flight_number, ',
'                f.to_seg1_airline, ',
'                f.to_seg1_departure_date, ',
'                f.to_seg1_departure_time, ',
'                f.to_seg1_arrival_date, ',
'                f.to_seg1_arrival_time, ',
'                f.to_seg1_meal,',
'                f.to_seg2_departure_airport, ',
'                f.to_seg2_destination_airport, ',
'                f.to_seg2_flight_number, ',
'                f.to_seg2_airline, ',
'                f.to_seg2_departure_date, ',
'                f.to_seg2_departure_time, ',
'                f.to_seg2_arrival_date, ',
'                f.to_seg2_arrival_time, ',
'                f.to_seg2_meal, ',
'                f.to_seg3_departure_airport, ',
'                f.to_seg3_destination_airport, ',
'                f.to_seg3_flight_number, ',
'                f.to_seg3_airline, ',
'                f.to_seg3_departure_date, ',
'                f.to_seg3_departure_time, ',
'                f.to_seg3_arrival_date, ',
'                f.to_seg3_arrival_time, ',
'                f.to_seg3_meal, ',
'                f.to_seg4_departure_airport, ',
'                f.to_seg4_destination_airport, ',
'                f.to_seg4_flight_number, ',
'                f.to_seg4_airline, ',
'                f.to_seg4_departure_date, ',
'                f.to_seg4_departure_time, ',
'                f.to_seg4_arrival_date, ',
'                f.to_seg4_arrival_time, ',
'                f.to_seg4_meal, ',
'                f.from_seg1_departure_airport, ',
'                f.from_seg1_destination_airport, ',
'                f.from_seg1_flight_number, ',
'                f.from_seg1_airline, ',
'                f.from_seg1_departure_date, ',
'                f.from_seg1_departure_time, ',
'                f.from_seg1_arrival_date, ',
'                f.from_seg1_arrival_time, ',
'                f.from_seg1_meal, ',
'                f.from_seg2_departure_airport, ',
'                f.from_seg2_destination_airport, ',
'                f.from_seg2_flight_number, ',
'                f.from_seg2_airline, ',
'                f.from_seg2_departure_date, ',
'                f.from_seg2_departure_time, ',
'                f.from_seg2_arrival_date, ',
'                f.from_seg2_arrival_time, ',
'                f.from_seg2_meal, ',
'                f.from_seg3_departure_airport, ',
'                f.from_seg3_destination_airport, ',
'                f.from_seg3_flight_number, ',
'                f.from_seg3_airline, ',
'                f.from_seg3_departure_date, ',
'                f.from_seg3_departure_time, ',
'                f.from_seg3_arrival_date, ',
'                f.from_seg3_arrival_time, ',
'                f.from_seg3_meal, ',
'                f.from_seg4_departure_airport, ',
'                f.from_seg4_destination_airport, ',
'                f.from_seg4_flight_number, ',
'                f.from_seg4_airline, ',
'                f.from_seg4_departure_date, ',
'                f.from_seg4_departure_time, ',
'                f.from_seg4_arrival_date, ',
'                f.from_seg4_arrival_time, ',
'                f.from_seg4_meal',
'        into    :P3_SEQ,',
'                :P3_STATUS,',
'                :P3_PROPOSAL_YEAR,',
'                :P3_PNR_NUMBER,',
'                :P3_FLIGHT_COST,',
'                :P3_FLIGHT_COST_FOR_BILLING,',
'                :P3_AGENCY_REMARKS,',
'                :P3_TO_LEG1_DEPARTURE_AIRPORT,',
'                :P3_TO_LEG1_DESTINATION_AIRPORT,',
'                :P3_TO_LEG1_FLIGHT_NUMBER,',
'                :P3_TO_LEG1_AIRLINE,',
'                :P3_TO_LEG1_DEPARTURE_DATE,',
'                :P3_TO_LEG1_DEPARTURE_TIME,',
'                :P3_TO_LEG1_ARRIVAL_DATE,',
'                :P3_TO_LEG1_ARRIVAL_TIME,',
'                :P3_TO_LEG1_MEAL,',
'                :P3_TO_LEG2_DEPARTURE_AIRPORT,',
'                :P3_TO_LEG2_DESTINATION_AIRPORT,',
'                :P3_TO_LEG2_FLIGHT_NUMBER,',
'                :P3_TO_LEG2_AIRLINE,',
'				:P3_TO_LEG2_DEPARTURE_DATE,',
'				:P3_TO_LEG2_DEPARTURE_TIME,',
'				:P3_TO_LEG2_ARRIVAL_DATE,',
'				:P3_TO_LEG2_ARRIVAL_TIME,',
'				:P3_TO_LEG2_MEAL,',
'				:P3_TO_LEG3_DEPARTURE_AIRPORT,',
'				:P3_TO_LEG3_DESTINATION_AIRPORT,',
'				:P3_TO_LEG3_FLIGHT_NUMBER,',
'				:P3_TO_LEG3_AIRLINE,',
'				:P3_TO_LEG3_DEPARTURE_DATE,',
'				:P3_TO_LEG3_DEPARTURE_TIME,',
'				:P3_TO_LEG3_ARRIVAL_DATE,',
'				:P3_TO_LEG3_ARRIVAL_TIME,',
'				:P3_TO_LEG3_MEAL,',
'				:P3_TO_LEG4_DEPARTURE_AIRPORT,',
'				:P3_TO_LEG4_DESTINATION_AIRPORT,',
'				:P3_TO_LEG4_FLIGHT_NUMBER,',
'				:P3_TO_LEG4_AIRLINE,',
'				:P3_TO_LEG4_DEPARTURE_DATE,',
'				:P3_TO_LEG4_DEPARTURE_TIME,',
'				:P3_TO_LEG4_ARRIVAL_DATE,',
'				:P3_TO_LEG4_ARRIVAL_TIME,',
'				:P3_TO_LEG4_MEAL,',
'				:P3_FROM_LEG1_DEPARTURE_AIRPORT,',
'				:P3_FROM_LEG1_DEST_AIRPORT,',
'				:P3_FROM_LEG1_FLIGHT_NUMBER,',
'				:P3_FROM_LEG1_AIRLINE,',
'				:P3_FROM_LEG1_DEPARTURE_DATE,',
'				:P3_FROM_LEG1_DEPARTURE_TIME,',
'				:P3_FROM_LEG1_ARRIVAL_DATE,',
'				:P3_FROM_LEG1_ARRIVAL_TIME,',
'				:P3_FROM_LEG1_MEAL,',
'				:P3_FROM_LEG2_DEPARTURE_AIRPORT,',
'				:P3_FROM_LEG2_DEST_AIRPORT,',
'				:P3_FROM_LEG2_FLIGHT_NUMBER,',
'				:P3_FROM_LEG2_AIRLINE,',
'				:P3_FROM_LEG2_DEPARTURE_DATE,',
'				:P3_FROM_LEG2_DEPARTURE_TIME,',
'				:P3_FROM_LEG2_ARRIVAL_DATE,',
'				:P3_FROM_LEG2_ARRIVAL_TIME,',
'				:P3_FROM_LEG2_MEAL,',
'				:P3_FROM_LEG3_DEPARTURE_AIRPORT,',
'				:P3_FROM_LEG3_DEST_AIRPORT,',
'				:P3_FROM_LEG3_FLIGHT_NUMBER,',
'				:P3_FROM_LEG3_AIRLINE,',
'				:P3_FROM_LEG3_DEPARTURE_DATE,',
'				:P3_FROM_LEG3_DEPARTURE_TIME,',
'				:P3_FROM_LEG3_ARRIVAL_DATE,',
'				:P3_FROM_LEG3_ARRIVAL_TIME,',
'				:P3_FROM_LEG3_MEAL,',
'				:P3_FROM_LEG4_DEPARTURE_AIRPORT,',
'				:P3_FROM_LEG4_DEST_AIRPORT,',
'				:P3_FROM_LEG4_FLIGHT_NUMBER,',
'				:P3_FROM_LEG4_AIRLINE,',
'				:P3_FROM_LEG4_DEPARTURE_DATE,',
'				:P3_FROM_LEG4_DEPARTURE_TIME,',
'				:P3_FROM_LEG4_ARRIVAL_DATE,',
'				:P3_FROM_LEG4_ARRIVAL_TIME,',
'				:P3_FROM_LEG4_MEAL',
'        from    jafi_apex_shlichut_flights f',
'        where   f.assgt_id = :P3_ASSIGNMENT_ID and f.person_id = :P3_PERSON_ID and f.STATUS not in (:P0_BOOKED_STATUS_CODE,:P0_CANCELED_STATUS_CODE);',
'                ',
'        exception when no_data_found then null;',
'    end;',
'    ',
'    begin',
'        select ''<span class="status-cell" style="box-shadow: 0 0 5px 2px '' || m.ATTRIBUTE1 || ''; background: rgb('' || m.ATTRIBUTE2 || '' / 12.5%);">'' || m.meaning || ''</span>'',',
'               m.ATTRIBUTE4',
'        into :P3_STATUS_HTML,',
'             :P3_STATUS_NEXT_STATUSES',
'        from FND_LOOKUP_VALUES m',
'        where m.LOOKUP_TYPE= ''JAFI_HR_FLIGHT_STATUS'' and m.LANGUAGE = ''US'' and m.lookup_code = :P3_STATUS;',
'        ',
'        exception when no_data_found then null;',
'    end;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(654251746190851993)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Flight Action Buttons'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--SET ALLOWED STATUSES FOR BUTTONS DISPLAY',
'if (''1'' = :P3_STATUS_NEXT_STATUSES or ',
'    instr(:P3_STATUS_NEXT_STATUSES, ''1,'') > 0 or instr(:P3_STATUS_NEXT_STATUSES, '',1,'') > 0 or instr(:P3_STATUS_NEXT_STATUSES, '',1'') > 0) and',
'   (''1'' = :P3_USER_STATUSES or ',
'    instr(:P3_USER_STATUSES, ''1,'') > 0 or instr(:P3_USER_STATUSES, '',1,'') > 0 or instr(:P3_USER_STATUSES, '',1'') > 0) then :P3_BTN_MAKE_OFFER := ''Y'';',
'else :P3_BTN_MAKE_OFFER := ''N'';',
'end if;',
'',
'if (''2'' = :P3_STATUS_NEXT_STATUSES or ',
'    instr(:P3_STATUS_NEXT_STATUSES, ''2,'') > 0 or instr(:P3_STATUS_NEXT_STATUSES, '',2,'') > 0 or instr(:P3_STATUS_NEXT_STATUSES, '',2'') > 0) and',
'   (''2'' = :P3_USER_STATUSES or ',
'    instr(:P3_USER_STATUSES, ''2,'') > 0 or instr(:P3_USER_STATUSES, '',2,'') > 0 or instr(:P3_USER_STATUSES, '',2'') > 0) then :P3_BTN_MASLUL_APPROVAL := ''Y'';',
'else :P3_BTN_MASLUL_APPROVAL := ''N'';',
'end if;',
'',
'if (''3'' = :P3_STATUS_NEXT_STATUSES or ',
'    instr(:P3_STATUS_NEXT_STATUSES, ''3,'') > 0 or instr(:P3_STATUS_NEXT_STATUSES, '',3,'') > 0 or instr(:P3_STATUS_NEXT_STATUSES, '',3'') > 0) and',
'   (''3'' = :P3_USER_STATUSES or ',
'    instr(:P3_USER_STATUSES, ''3,'') > 0 or instr(:P3_USER_STATUSES, '',3,'') > 0 or instr(:P3_USER_STATUSES, '',3'') > 0) then :P3_BTN_CUSTOMER_APPROVAL := ''Y'';',
'else :P3_BTN_CUSTOMER_APPROVAL := ''N'';',
'end if;',
'',
'if (''4'' = :P3_STATUS_NEXT_STATUSES or ',
'    instr(:P3_STATUS_NEXT_STATUSES, ''4,'') > 0 or instr(:P3_STATUS_NEXT_STATUSES, '',4,'') > 0 or instr(:P3_STATUS_NEXT_STATUSES, '',4'') > 0) and',
'   (''4'' = :P3_USER_STATUSES or ',
'    instr(:P3_USER_STATUSES, ''4,'') > 0 or instr(:P3_USER_STATUSES, '',4,'') > 0 or instr(:P3_USER_STATUSES, '',4'') > 0) then :P3_BTN_FIX := ''Y'';',
'else :P3_BTN_FIX := ''N'';',
'end if;',
'',
'if (''5'' = :P3_STATUS_NEXT_STATUSES or ',
'    instr(:P3_STATUS_NEXT_STATUSES, ''5,'') > 0 or instr(:P3_STATUS_NEXT_STATUSES, '',5,'') > 0 or instr(:P3_STATUS_NEXT_STATUSES, '',5'') > 0) and',
'   (''5'' = :P3_USER_STATUSES or ',
'    instr(:P3_USER_STATUSES, ''5,'') > 0 or instr(:P3_USER_STATUSES, '',5,'') > 0 or instr(:P3_USER_STATUSES, '',5'') > 0) then :P3_BTN_APPROVE := ''Y'';',
'else :P3_BTN_APPROVE := ''N'';',
'end if;',
'',
'if (''6'' = :P3_STATUS_NEXT_STATUSES or ',
'    instr(:P3_STATUS_NEXT_STATUSES, ''6,'') > 0 or instr(:P3_STATUS_NEXT_STATUSES, '',6,'') > 0 or instr(:P3_STATUS_NEXT_STATUSES, '',6'') > 0) and',
'   (''6'' = :P3_USER_STATUSES or ',
'    instr(:P3_USER_STATUSES, ''6,'') > 0 or instr(:P3_USER_STATUSES, '',6,'') > 0 or instr(:P3_USER_STATUSES, '',6'') > 0) then :P3_BTN_BOOK_FLIGHT := ''Y'';',
'else :P3_BTN_BOOK_FLIGHT := ''N'';',
'end if;',
'',
'if (''7'' = :P3_STATUS_NEXT_STATUSES or ',
'    instr(:P3_STATUS_NEXT_STATUSES, ''7,'') > 0 or instr(:P3_STATUS_NEXT_STATUSES, '',7,'') > 0 or instr(:P3_STATUS_NEXT_STATUSES, '',7'') > 0) and',
'   (''7'' = :P3_USER_STATUSES or ',
'    instr(:P3_USER_STATUSES, ''7,'') > 0 or instr(:P3_USER_STATUSES, '',7,'') > 0 or instr(:P3_USER_STATUSES, '',7'') > 0) then :P3_BTN_CANCEL := ''Y'';',
'else :P3_BTN_CANCEL := ''N'';',
'end if;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(654252266610851998)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Booked Flight Information - Get Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    --GET BOOKED FLIGHT DATA',
'    :P3_BOOKED_FLIGHT_FOUND := ''Y'';',
'    ',
'    begin',
'        select  f.seq,',
'                f.status,',
'                f.proposal_year,',
'                f.pnr_number,',
'                f.flight_cost, ',
'                f.flight_cost_for_billing, ',
'                f.agency_remarks, ',
'                f.to_seg1_departure_airport, ',
'                f.to_seg1_destination_airport, ',
'                f.to_seg1_flight_number, ',
'                f.to_seg1_airline, ',
'                f.to_seg1_departure_date, ',
'                f.to_seg1_departure_time, ',
'                f.to_seg1_arrival_date, ',
'                f.to_seg1_arrival_time, ',
'                f.to_seg1_meal,',
'                f.to_seg2_departure_airport, ',
'                f.to_seg2_destination_airport, ',
'                f.to_seg2_flight_number, ',
'                f.to_seg2_airline, ',
'                f.to_seg2_departure_date, ',
'                f.to_seg2_departure_time, ',
'                f.to_seg2_arrival_date, ',
'                f.to_seg2_arrival_time, ',
'                f.to_seg2_meal, ',
'                f.to_seg3_departure_airport, ',
'                f.to_seg3_destination_airport, ',
'                f.to_seg3_flight_number, ',
'                f.to_seg3_airline, ',
'                f.to_seg3_departure_date, ',
'                f.to_seg3_departure_time, ',
'                f.to_seg3_arrival_date, ',
'                f.to_seg3_arrival_time, ',
'                f.to_seg3_meal, ',
'                f.to_seg4_departure_airport, ',
'                f.to_seg4_destination_airport, ',
'                f.to_seg4_flight_number, ',
'                f.to_seg4_airline, ',
'                f.to_seg4_departure_date, ',
'                f.to_seg4_departure_time, ',
'                f.to_seg4_arrival_date, ',
'                f.to_seg4_arrival_time, ',
'                f.to_seg4_meal, ',
'                f.from_seg1_departure_airport, ',
'                f.from_seg1_destination_airport, ',
'                f.from_seg1_flight_number, ',
'                f.from_seg1_airline, ',
'                f.from_seg1_departure_date, ',
'                f.from_seg1_departure_time, ',
'                f.from_seg1_arrival_date, ',
'                f.from_seg1_arrival_time, ',
'                f.from_seg1_meal, ',
'                f.from_seg2_departure_airport, ',
'                f.from_seg2_destination_airport, ',
'                f.from_seg2_flight_number, ',
'                f.from_seg2_airline, ',
'                f.from_seg2_departure_date, ',
'                f.from_seg2_departure_time, ',
'                f.from_seg2_arrival_date, ',
'                f.from_seg2_arrival_time, ',
'                f.from_seg2_meal, ',
'                f.from_seg3_departure_airport, ',
'                f.from_seg3_destination_airport, ',
'                f.from_seg3_flight_number, ',
'                f.from_seg3_airline, ',
'                f.from_seg3_departure_date, ',
'                f.from_seg3_departure_time, ',
'                f.from_seg3_arrival_date, ',
'                f.from_seg3_arrival_time, ',
'                f.from_seg3_meal, ',
'                f.from_seg4_departure_airport, ',
'                f.from_seg4_destination_airport, ',
'                f.from_seg4_flight_number, ',
'                f.from_seg4_airline, ',
'                f.from_seg4_departure_date, ',
'                f.from_seg4_departure_time, ',
'                f.from_seg4_arrival_date, ',
'                f.from_seg4_arrival_time, ',
'                f.from_seg4_meal',
'        into    :P3_B_SEQ,',
'                :P3_B_STATUS,',
'                :P3_B_PROPOSAL_YEAR,',
'                :P3_B_PNR_NUMBER,',
'                :P3_B_FLIGHT_COST,',
'                :P3_B_FLIGHT_COST_FOR_BILLING,',
'                :P3_B_AGENCY_REMARKS,',
'                :P3_B_TO_LEG1_DEPARTURE_AIRPORT,',
'                :P3_B_TO_LEG1_DEST_AIRPORT,',
'                :P3_B_TO_LEG1_FLIGHT_NUMBER,',
'                :P3_B_TO_LEG1_AIRLINE,',
'                :P3_B_TO_LEG1_DEPARTURE_DATE,',
'                :P3_B_TO_LEG1_DEPARTURE_TIME,',
'                :P3_B_TO_LEG1_ARRIVAL_DATE,',
'                :P3_B_TO_LEG1_ARRIVAL_TIME,',
'                :P3_B_TO_LEG1_MEAL,',
'                :P3_B_TO_LEG2_DEPARTURE_AIRPORT,',
'                :P3_B_TO_LEG2_DEST_AIRPORT,',
'                :P3_B_TO_LEG2_FLIGHT_NUMBER,',
'                :P3_B_TO_LEG2_AIRLINE,',
'				:P3_B_TO_LEG2_DEPARTURE_DATE,',
'				:P3_B_TO_LEG2_DEPARTURE_TIME,',
'				:P3_B_TO_LEG2_ARRIVAL_DATE,',
'				:P3_B_TO_LEG2_ARRIVAL_TIME,',
'				:P3_B_TO_LEG2_MEAL,',
'				:P3_B_TO_LEG3_DEPARTURE_AIRPORT,',
'				:P3_B_TO_LEG3_DEST_AIRPORT,',
'				:P3_B_TO_LEG3_FLIGHT_NUMBER,',
'				:P3_B_TO_LEG3_AIRLINE,',
'				:P3_B_TO_LEG3_DEPARTURE_DATE,',
'				:P3_B_TO_LEG3_DEPARTURE_TIME,',
'				:P3_B_TO_LEG3_ARRIVAL_DATE,',
'				:P3_B_TO_LEG3_ARRIVAL_TIME,',
'				:P3_B_TO_LEG3_MEAL,',
'				:P3_B_TO_LEG4_DEPARTURE_AIRPORT,',
'				:P3_B_TO_LEG4_DEST_AIRPORT,',
'				:P3_B_TO_LEG4_FLIGHT_NUMBER,',
'				:P3_B_TO_LEG4_AIRLINE,',
'				:P3_B_TO_LEG4_DEPARTURE_DATE,',
'				:P3_B_TO_LEG4_DEPARTURE_TIME,',
'				:P3_B_TO_LEG4_ARRIVAL_DATE,',
'				:P3_B_TO_LEG4_ARRIVAL_TIME,',
'				:P3_B_TO_LEG4_MEAL,',
'				:P3_B_FROM_LEG1_DEPARTURE_AP,',
'				:P3_B_FROM_LEG1_DEST_AIRPORT,',
'				:P3_B_FROM_LEG1_FLIGHT_NUMBER,',
'				:P3_B_FROM_LEG1_AIRLINE,',
'				:P3_B_FROM_LEG1_DEPARTURE_DATE,',
'				:P3_B_FROM_LEG1_DEPARTURE_TIME,',
'				:P3_B_FROM_LEG1_ARRIVAL_DATE,',
'				:P3_B_FROM_LEG1_ARRIVAL_TIME,',
'				:P3_B_FROM_LEG1_MEAL,',
'				:P3_B_FROM_LEG2_DEPARTURE_AP,',
'				:P3_B_FROM_LEG2_DEST_AIRPORT,',
'				:P3_B_FROM_LEG2_FLIGHT_NUMBER,',
'				:P3_B_FROM_LEG2_AIRLINE,',
'				:P3_B_FROM_LEG2_DEPARTURE_DATE,',
'				:P3_B_FROM_LEG2_DEPARTURE_TIME,',
'				:P3_B_FROM_LEG2_ARRIVAL_DATE,',
'				:P3_B_FROM_LEG2_ARRIVAL_TIME,',
'				:P3_B_FROM_LEG2_MEAL,',
'				:P3_B_FROM_LEG3_DEPARTURE_AP,',
'				:P3_B_FROM_LEG3_DEST_AIRPORT,',
'				:P3_B_FROM_LEG3_FLIGHT_NUMBER,',
'				:P3_B_FROM_LEG3_AIRLINE,',
'				:P3_B_FROM_LEG3_DEPARTURE_DATE,',
'				:P3_B_FROM_LEG3_DEPARTURE_TIME,',
'				:P3_B_FROM_LEG3_ARRIVAL_DATE,',
'				:P3_B_FROM_LEG3_ARRIVAL_TIME,',
'				:P3_B_FROM_LEG3_MEAL,',
'				:P3_B_FROM_LEG4_DEPARTURE_AP,',
'				:P3_B_FROM_LEG4_DEST_AIRPORT,',
'				:P3_B_FROM_LEG4_FLIGHT_NUMBER,',
'				:P3_B_FROM_LEG4_AIRLINE,',
'				:P3_B_FROM_LEG4_DEPARTURE_DATE,',
'				:P3_B_FROM_LEG4_DEPARTURE_TIME,',
'				:P3_B_FROM_LEG4_ARRIVAL_DATE,',
'				:P3_B_FROM_LEG4_ARRIVAL_TIME,',
'				:P3_B_FROM_LEG4_MEAL',
'        from    jafi_apex_shlichut_flights f',
'        where   f.assgt_id = :P3_ASSIGNMENT_ID and f.person_id = :P3_PERSON_ID and f.STATUS = :P0_BOOKED_STATUS_CODE; --Booked',
'                ',
'        exception when no_data_found then :P3_BOOKED_FLIGHT_FOUND := ''N'';',
'    end;',
'    ',
'    if :P3_BOOKED_FLIGHT_FOUND = ''Y'' then',
'        begin',
'            select ''<span class="status-cell" style="box-shadow: 0 0 5px 2px '' || m.ATTRIBUTE1 || ''; background: rgb('' || m.ATTRIBUTE2 || '' / 12.5%);">'' || m.meaning || ''</span>'',',
'                   m.ATTRIBUTE4',
'            into :P3_B_STATUS_HTML,',
'                 :P3_B_STATUS_NEXT_STATUSES',
'            from FND_LOOKUP_VALUES m',
'            where m.LOOKUP_TYPE= ''JAFI_HR_FLIGHT_STATUS'' and m.LANGUAGE = ''US'' and m.lookup_code = :P3_B_STATUS;',
'',
'            exception when no_data_found then null;',
'        end;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
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
 p_id=>wwv_flow_api.id(655782013600142483)
,p_process_sequence=>70
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Booked Flight Action Buttons'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--SET ALLOWED STATUSES FOR BUTTONS DISPLAY',
'if (''7'' = :P3_B_STATUS_NEXT_STATUSES or ',
'    instr(:P3_B_STATUS_NEXT_STATUSES, ''7,'') > 0 or instr(:P3_B_STATUS_NEXT_STATUSES, '',7,'') > 0 or instr(:P3_B_STATUS_NEXT_STATUSES, '',7'') > 0) and',
'   (''7'' = :P3_USER_STATUSES or ',
'    instr(:P3_USER_STATUSES, ''7,'') > 0 or instr(:P3_USER_STATUSES, '',7,'') > 0 or instr(:P3_USER_STATUSES, '',7'') > 0) then :P3_B_BTN_CANCEL := ''Y'';',
'else :P3_B_BTN_CANCEL := ''N'';',
'end if;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
null;
wwv_flow_api.component_end;
end;
/
