prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(119978609050743808)
,p_name=>'Import Flight Legs - Step 2'
,p_alias=>'IMPORT-FLIGHT-LEGS-STEP-2'
,p_step_title=>'Import Flight Legs - Step 2'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Button--iconLeft .t-Icon {',
'    margin-right: 10px;',
'}',
'',
'#importRegion > .container > .row:first-child {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'}',
'',
'#P8_FILENAME_DISPLAY_CONTAINER {',
'    background-color: #fafafa;',
'    border-color: #ededed;',
'}',
'',
'#P8_FILENAME_DISPLAY {',
'    color: black;',
'}',
'',
'#validRows table {',
'    min-width: 12000px;',
'}',
'',
'#validRows table th[id="NAME"],',
'#validRows table td[headers="NAME"],',
'#validRows table th[id="CAMP_CUSTOMER"],',
'#validRows table td[headers="CAMP_CUSTOMER"]{',
'    min-width: 200px;',
'}',
'',
'#validRows table th[id="VALIDATION_MESSAGE"],',
'#validRows table td[headers="VALIDATION_MESSAGE"] {',
'    min-width: 300px;',
'}',
'',
'#validRows table th[id="AGENCY_REMARKS"],',
'#validRows table td[headers="AGENCY_REMARKS"] {',
'    min-width: 450px;',
'}',
'',
'#invalidRows table th[id="LINE"],',
'#invalidRows table td[headers="LINE"] {',
'    width: 75px;',
'}',
'',
'#invalidRows table th[id="FIELD_NAME"],',
'#invalidRows table td[headers="FIELD_NAME"],',
'#invalidRows table th[id="FIELD_VALUE"],',
'#invalidRows table td[headers="FIELD_VALUE"] {',
'    width: 200px;',
'}',
'',
'#t_Body_content > div.t-Body-contentInner > div > div:nth-child(3) {',
'    display: flex;',
'    justify-content: center;',
'}',
'',
'.apex-button-group input:checked + label {',
'    background-color: rgb(5, 114, 206);',
'    color: white;',
'}',
'',
'#invalidRows {',
'    box-shadow: none;',
'}',
'',
'#invalidRows td {',
'    background-color: #FFD6D2 !important;',
'}',
'',
'.pulse-button {',
'    display: inline-block;',
'    padding: 10px 20px;',
'    border: none;',
'    border-radius: 4px;',
'    cursor: pointer;',
'    animation: pulse 1s infinite;',
'}',
'',
'@keyframes pulse {',
'    0% { transform: scale(1); }',
'    50% { transform: scale(1.1); }',
'    100% { transform: scale(1); }',
'}',
'',
'.prev-btn-highlight {',
'    background-color: #FFD6D2 !important;',
'}',
'',
'.import-warning {',
'    background-color: #fce39d !important;',
'}',
'',
'.info-warning {',
'    background-color: #027bc7 !important;',
'    color: white !important;',
'}',
'',
'.info-warning .t-Region-body {',
'    color: white;',
'}',
'',
'#warning-title,',
'#info-title {',
'    line-height: 20px;',
'}',
'',
'.import-warning-invalid {',
'    background-color: #FFD6D2 !important;',
'}',
'',
'#warning-title.fa-warning:before {',
'    content: "\f071";',
'    position: relative;',
'    margin-right: 10px;',
'    font-size: 20px;',
'    color: orange;',
'}',
'',
'#info-title.fa-info-circle-o:before {',
'    content: "\f05a";',
'    position: relative;',
'    margin-right: 10px;',
'    font-size: 20px;',
'    color: #027bc7;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_last_updated_by=>'DRORA'
,p_last_upd_yyyymmddhh24miss=>'20260607160226'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(819163085181187308)
,p_plug_name=>'Import Flight Legs - Step 2'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(119978609050743312)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(819159077318187346)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(119978609050743325)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(819163219485187308)
,p_plug_name=>'Import Flight Legs - Step 2'
,p_region_name=>'importRegion'
,p_parent_plug_id=>wwv_flow_api.id(819163085181187308)
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(861960474652190688)
,p_plug_name=>'<div id="warning-title" class="fa fa-warning">Data validation failed!</div>'
,p_parent_plug_id=>wwv_flow_api.id(819163085181187308)
,p_region_css_classes=>'import-warning-invalid'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743305)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>6
,p_plug_display_column=>4
,p_plug_display_point=>'BODY'
,p_plug_source=>'Please correct all errors and try again.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P8_IS_VALID'
,p_plug_display_when_cond2=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(861961147575190695)
,p_plug_name=>'<div id="info-title" class="fa fa-info-circle-o">Review data integrity!</div>'
,p_parent_plug_id=>wwv_flow_api.id(819163085181187308)
,p_region_css_classes=>'info-warning'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743305)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>6
,p_plug_display_column=>4
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Please ensure data integrity before importing in order to avoid mistakes.<br/>',
'Click on Finish to import and save the data.'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P8_IS_VALID'
,p_plug_display_when_cond2=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(830161298316279202)
,p_plug_name=>'Invalid Rows'
,p_region_name=>'invalidRows'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(119978609050743302)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'invalid-rows-col'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT n001 line_number,',
'       c001 id,',
'       c002 field_name,',
'       c003 field_value,',
'       c004 validation_message',
'FROM APEX_COLLECTIONS ',
'WHERE collection_name = ''IMPORT_INVALID_ROWS''',
'order by n001, n002;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P8_FILENAME'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P8_IS_VALID'
,p_plug_display_when_cond2=>'N'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Invalid Rows'
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
,p_plug_header=>'<h2>Invalid Rows</h2>'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(830161413774279203)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_owner=>'DRORA'
,p_internal_uid=>1061128479065211227
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849870270959554321)
,p_db_column_name=>'FIELD_NAME'
,p_display_order=>850
,p_column_identifier=>'CH'
,p_column_label=>'Field Name'
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
,p_heading_alignment=>'LEFT'
,p_static_id=>'FIELD_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849870374549554322)
,p_db_column_name=>'FIELD_VALUE'
,p_display_order=>860
,p_column_identifier=>'CI'
,p_column_label=>'Field Value'
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
,p_heading_alignment=>'LEFT'
,p_static_id=>'FIELD_VALUE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(848164859269428186)
,p_db_column_name=>'VALIDATION_MESSAGE'
,p_display_order=>870
,p_column_identifier=>'CE'
,p_column_label=>'Validation Message'
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
,p_heading_alignment=>'LEFT'
,p_static_id=>'VALIDATION_MESSAGE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(861959560733190679)
,p_db_column_name=>'LINE_NUMBER'
,p_display_order=>880
,p_column_identifier=>'CJ'
,p_column_label=>'Line '
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
,p_static_id=>'LINE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(884527052994354385)
,p_db_column_name=>'ID'
,p_display_order=>890
,p_column_identifier=>'CK'
,p_column_label=>'Israeli ID'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(848194283387427637)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'10791614'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LINE_NUMBER:ID:FIELD_NAME:FIELD_VALUE:VALIDATION_MESSAGE:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(848963577116881823)
,p_plug_name=>'Valid Rows'
,p_region_name=>'validRows'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(119978609050743302)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'p.line_number,',
'trim(p.col001) as name,',
'trim(p.col002) as camp_customer,',
'lpad(trim(p.col003), 9, ''0'') as israeli_id,',
'trim(p.col004) as handling_agent,               ',
'trim(p.col005) as offer_expiration_in_hours,',
'trim(p.col006) as pnr_number,',
'trim(p.col007) as flight_cost,',
'trim(p.col008) as booking_fee,',
'trim(p.col009) as markup_cost,',
'trim(p.col010) as cost_for_billing,               ',
'trim(p.col011) as passengers_payment,',
'trim(p.col012) as agency_remarks,',
'trim(p.col013) as o_1_airline,',
'upper(trim(p.col014)) as o_1_flight_number,',
'trim(p.col015) as o_1_departure_airport,',
'trim(p.col016) as o_1_departure_date,',
'trim(p.col017) as o_1_departure_time,',
'trim(p.col018) as o_1_destination_airport,',
'trim(p.col019) as o_1_arrival_date,',
'trim(p.col020) as o_1_arrival_time,',
'--trim(p.col019) as o_1_meal,',
'trim(p.col021) as o_2_airline,',
'upper(trim(p.col022)) as o_2_flight_number,',
'trim(p.col023) as o_2_departure_airport,',
'trim(p.col024) as o_2_departure_date,',
'trim(p.col025) as o_2_departure_time,',
'trim(p.col026) as o_2_destination_airport,',
'trim(p.col027) as o_2_arrival_date,',
'trim(p.col028) as o_2_arrival_time,',
'--trim(p.col028) as o_2_meal,',
'trim(p.col029) as o_3_airline,',
'upper(trim(p.col030)) as o_3_flight_number,',
'trim(p.col031) as o_3_departure_airport,',
'trim(p.col032) as o_3_departure_date,',
'trim(p.col033) as o_3_departure_time,',
'trim(p.col034) as o_3_destination_airport,',
'trim(p.col035) as o_3_arrival_date,',
'trim(p.col036) as o_3_arrival_time,',
'--trim(p.col037) as o_3_meal,',
'trim(p.col037) as o_4_airline,',
'upper(trim(p.col038)) as o_4_flight_number,',
'trim(p.col039) as o_4_departure_airport,',
'trim(p.col040) as o_4_departure_date,',
'trim(p.col041) as o_4_departure_time,',
'trim(p.col042) as o_4_destination_airport,',
'trim(p.col043) as o_4_arrival_date,',
'trim(p.col044) as o_4_arrival_time,',
'--trim(p.col046) as o_4_meal,',
'trim(p.col045) as i_1_airline,',
'upper(trim(p.col046)) as i_1_flight_number,',
'trim(p.col047) as i_1_departure_airport,',
'trim(p.col048) as i_1_departure_date,',
'trim(p.col049) as i_1_departure_time,',
'trim(p.col050) as i_1_destination_airport,',
'trim(p.col051) as i_1_arrival_date,',
'trim(p.col052) as i_1_arrival_time,',
'--trim(p.col055) as i_1_meal,',
'trim(p.col053) as i_2_airline,',
'upper(trim(p.col054)) as i_2_flight_number,',
'trim(p.col055) as i_2_departure_airport,',
'trim(p.col056) as i_2_departure_date,',
'trim(p.col057) as i_2_departure_time,',
'trim(p.col058) as i_2_destination_airport,',
'trim(p.col059) as i_2_arrival_date,',
'trim(p.col060) as i_2_arrival_time,',
'--trim(p.col064) as i_2_meal,',
'trim(p.col061) as i_3_airline,',
'upper(trim(p.col062)) as i_3_flight_number,',
'trim(p.col063) as i_3_departure_airport,',
'trim(p.col064) as i_3_departure_date,',
'trim(p.col065) as i_3_departure_time,',
'trim(p.col066) as i_3_destination_airport,',
'trim(p.col067) as i_3_arrival_date,',
'trim(p.col068) as i_3_arrival_time,',
'--trim(p.col073) as i_3_meal,',
'trim(p.col069) as i_4_airline,',
'upper(trim(p.col070)) as i_4_flight_number,',
'trim(p.col071) as i_4_departure_airport,',
'trim(p.col072) as i_4_departure_date,',
'trim(p.col073) as i_4_departure_time,',
'trim(p.col074) as i_4_destination_airport,',
'trim(p.col075) as i_4_arrival_date,',
'trim(p.col076) as i_4_arrival_time--,',
'--trim(p.col082) as i_4_meal',
'from apex_application_temp_files f,',
'table(apex_data_parser.parse(p_content=>f.blob_content,p_file_name=>f.filename,p_add_headers_row=>''N'',p_file_charset=>''IW8MSWIN1255'')) p --AL32UTF8',
'where',
'f.name=:P8_FILENAME and p.line_number>1 and trim(p.col003) not in (select distinct c001 from APEX_COLLECTIONS c WHERE c.collection_name=''IMPORT_INVALID_ROWS'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P8_FILENAME'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'p.line_number,',
'trim(p.col001) as name,',
'trim(p.col002) as camp_customer,',
'trim(p.col003) as israeli_id,',
'trim(p.col004) as offer_expiration_in_hours,',
'trim(p.col005) as pnr_number,',
'trim(p.col006) as flight_cost,',
'trim(p.col007) as booking_fee,',
'trim(p.col008) as markup_cost,',
'trim(p.col009) as passengers_payment,',
'trim(p.col010) as o_1_airline,',
'upper(trim(p.col011)) as o_1_flight_number,',
'trim(p.col012) as o_1_departure_airport,',
'trim(p.col013) as o_1_departure_date,',
'trim(p.col014) as o_1_departure_time,',
'trim(p.col015) as o_1_destination_airport,',
'trim(p.col016) as o_1_arrival_date,',
'trim(p.col017) as o_1_arrival_time,',
'trim(p.col018) as o_1_meal,',
'trim(p.col019) as o_2_airline,',
'upper(trim(p.col020)) as o_2_flight_number,',
'trim(p.col021) as o_2_departure_airport,',
'trim(p.col022) as o_2_departure_date,',
'trim(p.col023) as o_2_departure_time,',
'trim(p.col024) as o_2_destination_airport,',
'trim(p.col025) as o_2_arrival_date,',
'trim(p.col026) as o_2_arrival_time,',
'trim(p.col027) as o_2_meal,',
'trim(p.col028) as o_3_airline,',
'upper(trim(p.col029)) as o_3_flight_number,',
'trim(p.col030) as o_3_departure_airport,',
'trim(p.col031) as o_3_departure_date,',
'trim(p.col032) as o_3_departure_time,',
'trim(p.col033) as o_3_destination_airport,',
'trim(p.col034) as o_3_arrival_date,',
'trim(p.col035) as o_3_arrival_time,',
'trim(p.col036) as o_3_meal,',
'trim(p.col037) as o_4_airline,',
'upper(trim(p.col038)) as o_4_flight_number,',
'trim(p.col039) as o_4_departure_airport,',
'trim(p.col040) as o_4_departure_date,',
'trim(p.col041) as o_4_departure_time,',
'trim(p.col042) as o_4_destination_airport,',
'trim(p.col043) as o_4_arrival_date,',
'trim(p.col044) as o_4_arrival_time,',
'trim(p.col045) as o_4_meal,',
'trim(p.col046) as i_1_airline,',
'upper(trim(p.col047)) as i_1_flight_number,',
'trim(p.col048) as i_1_departure_airport,',
'trim(p.col049) as i_1_departure_date,',
'trim(p.col050) as i_1_departure_time,',
'trim(p.col051) as i_1_destination_airport,',
'trim(p.col052) as i_1_arrival_date,',
'trim(p.col053) as i_1_arrival_time,',
'trim(p.col054) as i_1_meal,',
'trim(p.col055) as i_2_airline,',
'upper(trim(p.col056)) as i_2_flight_number,',
'trim(p.col057) as i_2_departure_airport,',
'trim(p.col058) as i_2_departure_date,',
'trim(p.col059) as i_2_departure_time,',
'trim(p.col060) as i_2_destination_airport,',
'trim(p.col061) as i_2_arrival_date,',
'trim(p.col062) as i_2_arrival_time,',
'trim(p.col063) as i_2_meal,',
'trim(p.col064) as i_3_airline,',
'upper(trim(p.col065)) as i_3_flight_number,',
'trim(p.col066) as i_3_departure_airport,',
'trim(p.col067) as i_3_departure_date,',
'trim(p.col068) as i_3_departure_time,',
'trim(p.col069) as i_3_destination_airport,',
'trim(p.col070) as i_3_arrival_date,',
'trim(p.col071) as i_3_arrival_time,',
'trim(p.col072) as i_3_meal,',
'trim(p.col073) as i_4_airline,',
'upper(trim(p.col074)) as i_4_flight_number,',
'trim(p.col075) as i_4_departure_airport,',
'trim(p.col076) as i_4_departure_date,',
'trim(p.col077) as i_4_departure_time,',
'trim(p.col078) as i_4_destination_airport,',
'trim(p.col079) as i_4_arrival_date,',
'trim(p.col080) as i_4_arrival_time,',
'trim(p.col081) as i_4_meal,',
'trim(p.col082) as agency_remarks',
'from apex_application_temp_files f,',
'table(apex_data_parser.parse(p_content=>f.blob_content,p_file_name=>f.filename,p_add_headers_row=>''N'',p_file_charset=>''IW8MSWIN1255'')) p --AL32UTF8',
'where',
'f.name=:P8_FILENAME and p.line_number>1 and trim(p.col003) not in (select distinct c001 from APEX_COLLECTIONS c WHERE c.collection_name=''IMPORT_INVALID_ROWS'')'))
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Valid Rows'
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
,p_plug_header=>'<h2>Valid Rows</h2>'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(848963709053881824)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_owner=>'DRORA'
,p_internal_uid=>1079930774344813848
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(848963857696881826)
,p_db_column_name=>'ISRAELI_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Israeli ID'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849860913448554277)
,p_db_column_name=>'OFFER_EXPIRATION_IN_HOURS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Offer Expiration (In Hours)'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849861031405554278)
,p_db_column_name=>'PNR_NUMBER'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'PNR Number'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849861058444554279)
,p_db_column_name=>'FLIGHT_COST'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Flight Cost'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849861149381554280)
,p_db_column_name=>'BOOKING_FEE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Booking Fee'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849861304800554281)
,p_db_column_name=>'MARKUP_COST'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Markup'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849861412199554282)
,p_db_column_name=>'PASSENGERS_PAYMENT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Passengers Payment'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849861464515554283)
,p_db_column_name=>'O_1_AIRLINE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Outbound 1 Airline'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849861537931554284)
,p_db_column_name=>'O_1_FLIGHT_NUMBER'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Outbound 1 Flight Number'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849861658521554285)
,p_db_column_name=>'O_1_DEPARTURE_AIRPORT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Outbound 1 Departure Airport'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849861812367554286)
,p_db_column_name=>'O_1_DEPARTURE_DATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Outbound 1 Departure Date'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849861906920554287)
,p_db_column_name=>'O_1_DEPARTURE_TIME'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Outbound 1 Departure Time'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849862009386554288)
,p_db_column_name=>'O_1_DESTINATION_AIRPORT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Outbound 1 Destination Airport'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849862061759554289)
,p_db_column_name=>'O_1_ARRIVAL_DATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Outbound 1 Arrival Date'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849862217541554290)
,p_db_column_name=>'O_1_ARRIVAL_TIME'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Outbound 1 Arrival Time'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849862379708554292)
,p_db_column_name=>'O_2_AIRLINE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Outbound 2 Airline'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849862532409554293)
,p_db_column_name=>'O_2_FLIGHT_NUMBER'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Outbound 2 Flight Number'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849862551268554294)
,p_db_column_name=>'O_2_DEPARTURE_AIRPORT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Outbound 2 Departure Airport'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849862687513554295)
,p_db_column_name=>'O_2_DEPARTURE_DATE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Outbound 2 Departure Date'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849862813549554296)
,p_db_column_name=>'O_2_DEPARTURE_TIME'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Outbound 2 Departure Time'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849862858310554297)
,p_db_column_name=>'O_2_DESTINATION_AIRPORT'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Outbound 2 Destination Airport'
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
,p_heading_alignment=>'LEFT'
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
 p_id=>wwv_flow_api.id(849862993313554298)
,p_db_column_name=>'O_2_ARRIVAL_DATE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Outbound 2 Arrival Date'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849863065914554299)
,p_db_column_name=>'O_2_ARRIVAL_TIME'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Outbound 2 Arrival Time'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849863322538554301)
,p_db_column_name=>'O_3_AIRLINE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Outbound 3 Airline'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849863379647554302)
,p_db_column_name=>'O_3_FLIGHT_NUMBER'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Outbound 3 Flight Number'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849863435243554303)
,p_db_column_name=>'O_3_DEPARTURE_AIRPORT'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Outbound 3 Departure Airport'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849863594660554304)
,p_db_column_name=>'O_3_DEPARTURE_DATE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Outbound 3 Departure Date'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849863642856554305)
,p_db_column_name=>'O_3_DEPARTURE_TIME'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Outbound 3 Departure Time'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849863816862554306)
,p_db_column_name=>'O_3_DESTINATION_AIRPORT'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Outbound 3 Destination Airport'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849863930641554307)
,p_db_column_name=>'O_3_ARRIVAL_DATE'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Outbound 3 Arrival Date'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849863997552554308)
,p_db_column_name=>'O_3_ARRIVAL_TIME'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Outbound 3 Arrival Time'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849864183184554310)
,p_db_column_name=>'O_4_AIRLINE'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Outbound 4 Airline'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849864290969554311)
,p_db_column_name=>'O_4_FLIGHT_NUMBER'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Outbound 4 Flight Number'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849864382644554312)
,p_db_column_name=>'O_4_DEPARTURE_AIRPORT'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Outbound 4 Departure Airport'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849864533888554313)
,p_db_column_name=>'O_4_DEPARTURE_DATE'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Outbound 4 Departure Date'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849864606967554314)
,p_db_column_name=>'O_4_DEPARTURE_TIME'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Outbound 4 Departure Time'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849864659582554315)
,p_db_column_name=>'O_4_DESTINATION_AIRPORT'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Outbound 4 Destination Airport'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849864770412554316)
,p_db_column_name=>'O_4_ARRIVAL_DATE'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Outbound 4 Arrival Date'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849864924278554317)
,p_db_column_name=>'O_4_ARRIVAL_TIME'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Outbound 4 Arrival Time'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849865122405554319)
,p_db_column_name=>'I_1_AIRLINE'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Inbound 1 Airline'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849865224515554320)
,p_db_column_name=>'I_1_FLIGHT_NUMBER'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Inbound 1 Flight Number'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849865260737554321)
,p_db_column_name=>'I_1_DEPARTURE_AIRPORT'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Inbound 1 Departure Airport'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849865409607554322)
,p_db_column_name=>'I_1_DEPARTURE_DATE'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Inbound 1 Departure Date'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849865435428554323)
,p_db_column_name=>'I_1_DEPARTURE_TIME'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Inbound 1 Departure Time'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849865567379554324)
,p_db_column_name=>'I_1_DESTINATION_AIRPORT'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Inbound 1 Destination Airport'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849865683109554325)
,p_db_column_name=>'I_1_ARRIVAL_DATE'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Inbound 1 Arrival Date'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849865779913554326)
,p_db_column_name=>'I_1_ARRIVAL_TIME'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Inbound 1 Arrival Time'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849866012226554278)
,p_db_column_name=>'I_2_AIRLINE'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Inbound 2 Airline'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849866128622554279)
,p_db_column_name=>'I_2_FLIGHT_NUMBER'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Inbound 2 Flight Number'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849866201541554280)
,p_db_column_name=>'I_2_DEPARTURE_AIRPORT'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Inbound 2 Departure Airport'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849866252831554281)
,p_db_column_name=>'I_2_DEPARTURE_DATE'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Inbound 2 Departure Date'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849866389408554282)
,p_db_column_name=>'I_2_DEPARTURE_TIME'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Inbound 2 Departure Time'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849866475574554283)
,p_db_column_name=>'I_2_DESTINATION_AIRPORT'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Inbound 2 Destination Airport'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849866593124554284)
,p_db_column_name=>'I_2_ARRIVAL_DATE'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Inbound 2 Arrival Date'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849866664883554285)
,p_db_column_name=>'I_2_ARRIVAL_TIME'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Inbound 2 Arrival Time'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849866912502554287)
,p_db_column_name=>'I_3_AIRLINE'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Inbound 3 Airline'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849866999021554288)
,p_db_column_name=>'I_3_FLIGHT_NUMBER'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Inbound 3 Flight Number'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849867056274554289)
,p_db_column_name=>'I_3_DEPARTURE_AIRPORT'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Inbound 3 Departure Airport'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849867151733554290)
,p_db_column_name=>'I_3_DEPARTURE_DATE'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'Inbound 3 Departure Date'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849867236150554291)
,p_db_column_name=>'I_3_DEPARTURE_TIME'
,p_display_order=>670
,p_column_identifier=>'BO'
,p_column_label=>'Inbound 3 Departure Time'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849867406732554292)
,p_db_column_name=>'I_3_DESTINATION_AIRPORT'
,p_display_order=>680
,p_column_identifier=>'BP'
,p_column_label=>'Inbound 3 Destination Airport'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849867461498554293)
,p_db_column_name=>'I_3_ARRIVAL_DATE'
,p_display_order=>690
,p_column_identifier=>'BQ'
,p_column_label=>'Inbound 3 Arrival Date'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849867611126554294)
,p_db_column_name=>'I_3_ARRIVAL_TIME'
,p_display_order=>700
,p_column_identifier=>'BR'
,p_column_label=>'Inbound 3 Arrival Time'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849867745286554296)
,p_db_column_name=>'I_4_AIRLINE'
,p_display_order=>720
,p_column_identifier=>'BT'
,p_column_label=>'Inbound 4 Airline'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849867859782554297)
,p_db_column_name=>'I_4_FLIGHT_NUMBER'
,p_display_order=>730
,p_column_identifier=>'BU'
,p_column_label=>'Inbound 4 Flight Number'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849867990688554298)
,p_db_column_name=>'I_4_DEPARTURE_AIRPORT'
,p_display_order=>740
,p_column_identifier=>'BV'
,p_column_label=>'Inbound 4 Departure Airport'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849868103929554299)
,p_db_column_name=>'I_4_DEPARTURE_DATE'
,p_display_order=>750
,p_column_identifier=>'BW'
,p_column_label=>'Inbound 4 Departure Date'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849868153087554300)
,p_db_column_name=>'I_4_DEPARTURE_TIME'
,p_display_order=>760
,p_column_identifier=>'BX'
,p_column_label=>'Inbound 4 Departure Time'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849868253315554301)
,p_db_column_name=>'I_4_DESTINATION_AIRPORT'
,p_display_order=>770
,p_column_identifier=>'BY'
,p_column_label=>'Inbound 4 Destination Airport'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849868395695554302)
,p_db_column_name=>'I_4_ARRIVAL_DATE'
,p_display_order=>780
,p_column_identifier=>'BZ'
,p_column_label=>'Inbound 4 Arrival Date'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849868487139554303)
,p_db_column_name=>'I_4_ARRIVAL_TIME'
,p_display_order=>790
,p_column_identifier=>'CA'
,p_column_label=>'Inbound 4 Arrival Time'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849868725028554305)
,p_db_column_name=>'AGENCY_REMARKS'
,p_display_order=>810
,p_column_identifier=>'CC'
,p_column_label=>'Agency Remarks'
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
,p_heading_alignment=>'LEFT'
,p_static_id=>'AGENCY_REMARKS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849869157287554310)
,p_db_column_name=>'NAME'
,p_display_order=>830
,p_column_identifier=>'CE'
,p_column_label=>'Name'
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
,p_heading_alignment=>'LEFT'
,p_static_id=>'NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849869313859554311)
,p_db_column_name=>'CAMP_CUSTOMER'
,p_display_order=>840
,p_column_identifier=>'CF'
,p_column_label=>'Camp/Customer'
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
,p_heading_alignment=>'LEFT'
,p_static_id=>'CAMP_CUSTOMER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(861959737266190681)
,p_db_column_name=>'LINE_NUMBER'
,p_display_order=>850
,p_column_identifier=>'CG'
,p_column_label=>'Line'
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
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(884527220978354386)
,p_db_column_name=>'COST_FOR_BILLING'
,p_display_order=>860
,p_column_identifier=>'CH'
,p_column_label=>'Cost For Billing'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(884528009971354394)
,p_db_column_name=>'HANDLING_AGENT'
,p_display_order=>870
,p_column_identifier=>'CI'
,p_column_label=>'Handling Agent'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(849896135372552221)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'10808633'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LINE_NUMBER:NAME:CAMP_CUSTOMER:ISRAELI_ID:HANDLING_AGENT:OFFER_EXPIRATION_IN_HOURS:PNR_NUMBER:FLIGHT_COST:BOOKING_FEE:MARKUP_COST:COST_FOR_BILLING:PASSENGERS_PAYMENT:AGENCY_REMARKS:O_1_AIRLINE:O_1_FLIGHT_NUMBER:O_1_DEPARTURE_AIRPORT:O_1_DEPARTURE_DAT'
||'E:O_1_DEPARTURE_TIME:O_1_DESTINATION_AIRPORT:O_1_ARRIVAL_DATE:O_1_ARRIVAL_TIME:O_2_AIRLINE:O_2_FLIGHT_NUMBER:O_2_DEPARTURE_AIRPORT:O_2_DEPARTURE_DATE:O_2_DEPARTURE_TIME:O_2_DESTINATION_AIRPORT:O_2_ARRIVAL_DATE:O_2_ARRIVAL_TIME:O_3_AIRLINE:O_3_FLIGHT_'
||'NUMBER:O_3_DEPARTURE_AIRPORT:O_3_DEPARTURE_DATE:O_3_DEPARTURE_TIME:O_3_DESTINATION_AIRPORT:O_3_ARRIVAL_DATE:O_3_ARRIVAL_TIME:O_4_AIRLINE:O_4_FLIGHT_NUMBER:O_4_DEPARTURE_AIRPORT:O_4_DEPARTURE_DATE:O_4_DEPARTURE_TIME:O_4_DESTINATION_AIRPORT:O_4_ARRIVAL'
||'_DATE:O_4_ARRIVAL_TIME:I_1_AIRLINE:I_1_FLIGHT_NUMBER:I_1_DEPARTURE_AIRPORT:I_1_DEPARTURE_DATE:I_1_DEPARTURE_TIME:I_1_DESTINATION_AIRPORT:I_1_ARRIVAL_DATE:I_1_ARRIVAL_TIME:I_2_AIRLINE:I_2_FLIGHT_NUMBER:I_2_DEPARTURE_AIRPORT:I_2_DEPARTURE_DATE:I_2_DEPA'
||'RTURE_TIME:I_2_DESTINATION_AIRPORT:I_2_ARRIVAL_DATE:I_2_ARRIVAL_TIME:I_3_AIRLINE:I_3_FLIGHT_NUMBER:I_3_DEPARTURE_AIRPORT:I_3_DEPARTURE_DATE:I_3_DEPARTURE_TIME:I_3_DESTINATION_AIRPORT:I_3_ARRIVAL_DATE:I_3_ARRIVAL_TIME:I_4_AIRLINE:I_4_FLIGHT_NUMBER:I_4'
||'_DEPARTURE_AIRPORT:I_4_DEPARTURE_DATE:I_4_DEPARTURE_TIME:I_4_DESTINATION_AIRPORT:I_4_ARRIVAL_DATE:I_4_ARRIVAL_TIME:'
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
 p_id=>wwv_flow_api.id(819164863524187307)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(819163085181187308)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(119978609050743280)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(819164987221187307)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(819163085181187308)
,p_button_name=>'FINISH'
,p_button_static_id=>'finishBtn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(119978609050743280)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finish'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(819165064487187307)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(819163085181187308)
,p_button_name=>'PREVIOUS'
,p_button_static_id=>'previousBtn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(119978609050743279)
,p_button_image_alt=>'Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(819166549269187306)
,p_branch_name=>'Go To Page 2'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(819164987221187307)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(819165914767187306)
,p_branch_action=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(819165064487187307)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(819164544355187307)
,p_name=>'P8_IMPORT_MSG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(819163219485187308)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(830160897538279198)
,p_name=>'P8_IS_VALID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(819163219485187308)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(830161022524279199)
,p_name=>'P8_FILENAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(819163219485187308)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(830161095773279200)
,p_name=>'P8_FILENAME_DISPLAY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(819163219485187308)
,p_prompt=>'Filename'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(861960150602190685)
,p_name=>'P8_PLACE_OFFER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(819163219485187308)
,p_prompt=>'Place Offer'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_display_when=>'P8_USER_TYPE'
,p_display_when2=>'T'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(861960299438190686)
,p_name=>'P8_USER_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(819163219485187308)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(861959900303190682)
,p_name=>'Disable When Invalid'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P8_IS_VALID'
,p_display_when_cond2=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(861959957776190683)
,p_event_id=>wwv_flow_api.id(861959900303190682)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(819164987221187307)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(861960343821190687)
,p_event_id=>wwv_flow_api.id(861959900303190682)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_PLACE_OFFER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(861960630008190689)
,p_event_id=>wwv_flow_api.id(861959900303190682)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#previousBtn'').addClass(''pulse-button'').addClass(''prev-btn-highlight'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(861960813895190691)
,p_name=>'Highlight Finish When Valid'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P8_IS_VALID'
,p_display_when_cond2=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(861961063523190694)
,p_event_id=>wwv_flow_api.id(861960813895190691)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#finishBtn'').addClass(''pulse-button'');'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(861960046467190684)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_seq number(15);',
'    v_assignment_id number(10);',
'    v_person_id number(10);',
'    v_status number(3);',
'    v_place_offer_status number(3) := 2;',
'    v_rows_count number(10) := 0;',
'    v_rows_inserted number(10) := 0;',
'BEGIN',
':P8_IMPORT_MSG := null;',
'',
'select count(*) into v_rows_count',
'from apex_application_temp_files f,',
'table(apex_data_parser.parse(p_content=>f.blob_content,p_file_name=>f.filename,p_add_headers_row=>''N'',p_file_charset=>''IW8MSWIN1255'')) p --AL32UTF8',
'where f.name=:P8_FILENAME and p.line_number>1;',
'',
'FOR rec IN (select',
'p.line_number,',
'trim(p.col001) as name,',
'trim(p.col002) as camp_customer,',
'lpad(trim(p.col003), 9, ''0'') as israeli_id,',
'trim(p.col004) as handling_agent,               ',
'trim(p.col005) as offer_expiration_in_hours,',
'trim(p.col006) as pnr_number,',
'trim(p.col007) as flight_cost,',
'trim(p.col008) as booking_fee,',
'trim(p.col009) as markup_cost,',
'trim(p.col010) as cost_for_billing,               ',
'trim(p.col011) as passengers_payment,',
'trim(p.col012) as agency_remarks,',
'trim(p.col013) as o_1_airline,',
'upper(trim(p.col014)) as o_1_flight_number,',
'trim(p.col015) as o_1_departure_airport,',
'trim(p.col016) as o_1_departure_date,',
'trim(p.col017) as o_1_departure_time,',
'trim(p.col018) as o_1_destination_airport,',
'trim(p.col019) as o_1_arrival_date,',
'trim(p.col020) as o_1_arrival_time,',
'--trim(p.col019) as o_1_meal,',
'trim(p.col021) as o_2_airline,',
'upper(trim(p.col022)) as o_2_flight_number,',
'trim(p.col023) as o_2_departure_airport,',
'trim(p.col024) as o_2_departure_date,',
'trim(p.col025) as o_2_departure_time,',
'trim(p.col026) as o_2_destination_airport,',
'trim(p.col027) as o_2_arrival_date,',
'trim(p.col028) as o_2_arrival_time,',
'--trim(p.col028) as o_2_meal,',
'trim(p.col029) as o_3_airline,',
'upper(trim(p.col030)) as o_3_flight_number,',
'trim(p.col031) as o_3_departure_airport,',
'trim(p.col032) as o_3_departure_date,',
'trim(p.col033) as o_3_departure_time,',
'trim(p.col034) as o_3_destination_airport,',
'trim(p.col035) as o_3_arrival_date,',
'trim(p.col036) as o_3_arrival_time,',
'--trim(p.col037) as o_3_meal,',
'trim(p.col037) as o_4_airline,',
'upper(trim(p.col038)) as o_4_flight_number,',
'trim(p.col039) as o_4_departure_airport,',
'trim(p.col040) as o_4_departure_date,',
'trim(p.col041) as o_4_departure_time,',
'trim(p.col042) as o_4_destination_airport,',
'trim(p.col043) as o_4_arrival_date,',
'trim(p.col044) as o_4_arrival_time,',
'--trim(p.col046) as o_4_meal,',
'trim(p.col045) as i_1_airline,',
'upper(trim(p.col046)) as i_1_flight_number,',
'trim(p.col047) as i_1_departure_airport,',
'trim(p.col048) as i_1_departure_date,',
'trim(p.col049) as i_1_departure_time,',
'trim(p.col050) as i_1_destination_airport,',
'trim(p.col051) as i_1_arrival_date,',
'trim(p.col052) as i_1_arrival_time,',
'--trim(p.col055) as i_1_meal,',
'trim(p.col053) as i_2_airline,',
'upper(trim(p.col054)) as i_2_flight_number,',
'trim(p.col055) as i_2_departure_airport,',
'trim(p.col056) as i_2_departure_date,',
'trim(p.col057) as i_2_departure_time,',
'trim(p.col058) as i_2_destination_airport,',
'trim(p.col059) as i_2_arrival_date,',
'trim(p.col060) as i_2_arrival_time,',
'--trim(p.col064) as i_2_meal,',
'trim(p.col061) as i_3_airline,',
'upper(trim(p.col062)) as i_3_flight_number,',
'trim(p.col063) as i_3_departure_airport,',
'trim(p.col064) as i_3_departure_date,',
'trim(p.col065) as i_3_departure_time,',
'trim(p.col066) as i_3_destination_airport,',
'trim(p.col067) as i_3_arrival_date,',
'trim(p.col068) as i_3_arrival_time,',
'--trim(p.col073) as i_3_meal,',
'trim(p.col069) as i_4_airline,',
'upper(trim(p.col070)) as i_4_flight_number,',
'trim(p.col071) as i_4_departure_airport,',
'trim(p.col072) as i_4_departure_date,',
'trim(p.col073) as i_4_departure_time,',
'trim(p.col074) as i_4_destination_airport,',
'trim(p.col075) as i_4_arrival_date,',
'trim(p.col076) as i_4_arrival_time--,',
'--trim(p.col082) as i_4_meal',
'from apex_application_temp_files f,',
'table(apex_data_parser.parse(p_content=>f.blob_content,p_file_name=>f.filename,p_add_headers_row=>''N'',p_file_charset=>''IW8MSWIN1255'')) p --AL32UTF8',
'where f.name=:P8_FILENAME and p.line_number>1) LOOP',
'    v_assignment_id := null;',
'    v_person_id := null;',
'    ',
'    begin',
'        select ASSIGNMENT_ID,PERSON_ID into v_assignment_id, v_person_id from JAFI_FLIGHT_PASSPORT_INFO_V where NATIONAL_ID=rec.israeli_id;',
'        select seq, status into v_seq, v_status from jafi_apex_shlichut_flights where ASSGT_ID = v_assignment_id and PERSON_ID = v_person_id and status in (1, 4);',
'',
'        exception when no_data_found then v_seq := null;',
'    end;',
'    ',
'    if v_seq is not null then',
'        update jafi_apex_shlichut_flights',
'        set    proposal_year = EXTRACT(YEAR FROM SYSDATE),',
'               pnr_number = case when :P8_USER_TYPE = ''T'' then rec.pnr_number else pnr_number end,',
'               flight_cost = case when :P8_USER_TYPE = ''T'' and status in (1,4) then rec.flight_cost else flight_cost end,',
'               OFFERTIME = case when :P8_USER_TYPE = ''T'' and status in (1,4) then to_number(nvl(rec.offer_expiration_in_hours,0)) else OFFERTIME end,',
'               BOOKING_FEE = case when :P8_USER_TYPE = ''T'' then to_number(nvl(rec.booking_fee, 18)) else BOOKING_FEE end,',
'               MARKUP = case when :P8_USER_TYPE = ''M'' then to_number(nvl(rec.markup_cost, 0)) else MARKUP end,',
'               PASSANGERS_COST = to_number(rec.passengers_payment, 0),',
'               flight_cost_for_billing = case when :P8_USER_TYPE = ''M'' and status is not null and status != 1 then',
'                                             case when rec.cost_for_billing is null or rec.cost_for_billing = '''' then ',
'                                                  nvl(rec.flight_cost, 0) + nvl(rec.markup_cost, 0) + nvl(rec.booking_fee, 0)',
'                                                  else to_number(nvl(rec.cost_for_billing, nvl(flight_cost, 0) + nvl(markup, 0) + nvl(booking_fee, 0))) end',
'                                         else to_number(flight_cost_for_billing) end,',
'               agency_remarks = case when :P8_USER_TYPE = ''T'' then agency_remarks || CHR(13) || to_char(sysdate, ''DD/MM/YYYY HH24:MI'') || '' - User '' || :P0_USER_NAME || '' import remarks:'' || CHR(13) || rec.agency_remarks || CHR(13)',
'                                else agency_remarks end,',
'               status = case when :P8_USER_TYPE = ''T'' and :P8_PLACE_OFFER = ''Y'' then v_place_offer_status else status end,',
'               agent_name = case when rec.handling_agent is not null then (select LOOKUP_CODE from FND_LOOKUP_VALUES m',
'                                                                           where m.LOOKUP_TYPE= ''JAFI_SHLICHUT_FLIGHTS_USERS'' and ',
'                                                                           m.LANGUAGE = ''US'' and ATTRIBUTE1 = ''T'' and attribute4 = rec.handling_agent)',
'                            else agent_name end,',
'               last_update_date = sysdate,',
'               last_updated_by = :P0_USER_NAME,',
'               invoker = ''IMPORT''',
'        where SEQ = v_seq;',
'        ',
'        if :P8_USER_TYPE = ''T'' then',
'            update jafi_apex_shlichut_flights',
'            set    to_seg1_departure_airport = rec.o_1_departure_airport,',
'                   to_seg1_destination_airport = rec.o_1_destination_airport,',
'                   to_seg1_flight_number = rec.o_1_flight_number,',
'                   to_seg1_airline = rec.o_1_airline,',
'                   to_seg1_departure_date = rec.o_1_departure_date,',
'                   to_seg1_departure_time = rec.o_1_departure_time,',
'                   to_seg1_arrival_date = rec.o_1_arrival_date,',
'                   to_seg1_arrival_time = rec.o_1_arrival_time,',
'                   --to_seg1_meal = (select lookup_code from FND_LOOKUP_VALUES m where m.LOOKUP_TYPE=''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE=''US'' and trim(meaning) = rec.o_1_meal),',
'',
'                   to_seg2_departure_airport = rec.o_2_departure_airport,',
'                   to_seg2_destination_airport = rec.o_2_destination_airport,',
'                   to_seg2_flight_number = rec.o_2_flight_number,',
'                   to_seg2_airline = rec.o_2_airline,',
'                   to_seg2_departure_date = rec.o_2_departure_date,',
'                   to_seg2_departure_time = rec.o_2_departure_time,',
'                   to_seg2_arrival_date = rec.o_2_arrival_date,',
'                   to_seg2_arrival_time = rec.o_2_arrival_time,',
'                   --to_seg2_meal = (select lookup_code from FND_LOOKUP_VALUES m where m.LOOKUP_TYPE=''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE=''US'' and trim(meaning) = rec.o_2_meal),',
'',
'                   to_seg3_departure_airport = rec.o_3_departure_airport,',
'                   to_seg3_destination_airport = rec.o_3_destination_airport,',
'                   to_seg3_flight_number = rec.o_3_flight_number,',
'                   to_seg3_airline = rec.o_3_airline,',
'                   to_seg3_departure_date = rec.o_3_departure_date,',
'                   to_seg3_departure_time = rec.o_3_departure_time,',
'                   to_seg3_arrival_date = rec.o_3_arrival_date,',
'                   to_seg3_arrival_time = rec.o_3_arrival_time,',
'                   --to_seg3_meal = (select lookup_code from FND_LOOKUP_VALUES m where m.LOOKUP_TYPE=''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE=''US'' and trim(meaning) = rec.o_3_meal),',
'',
'                   to_seg4_departure_airport = rec.o_4_departure_airport,',
'                   to_seg4_destination_airport = rec.o_4_destination_airport,',
'                   to_seg4_flight_number = rec.o_4_flight_number,',
'                   to_seg4_airline = rec.o_4_airline,',
'                   to_seg4_departure_date = rec.o_4_departure_date,',
'                   to_seg4_departure_time = rec.o_4_departure_time,',
'                   to_seg4_arrival_date = rec.o_4_arrival_date,',
'                   to_seg4_arrival_time = rec.o_4_arrival_time,',
'                   --to_seg4_meal = (select lookup_code from FND_LOOKUP_VALUES m where m.LOOKUP_TYPE=''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE=''US'' and trim(meaning) = rec.o_4_meal),',
'',
'                   from_seg1_departure_airport = rec.i_1_departure_airport,',
'                   from_seg1_destination_airport = rec.i_1_destination_airport,',
'                   from_seg1_flight_number = rec.i_1_flight_number,',
'                   from_seg1_airline = rec.i_1_airline,',
'                   from_seg1_departure_date = rec.i_1_departure_date,',
'                   from_seg1_departure_time = rec.i_1_departure_time,',
'                   from_seg1_arrival_date = rec.i_1_arrival_date,',
'                   from_seg1_arrival_time = rec.i_1_arrival_time,',
'                   --from_seg1_meal = (select lookup_code from FND_LOOKUP_VALUES m where m.LOOKUP_TYPE=''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE=''US'' and trim(meaning) = rec.i_1_meal),',
'',
'                   from_seg2_departure_airport = rec.i_2_departure_airport,',
'                   from_seg2_destination_airport = rec.i_2_destination_airport,',
'                   from_seg2_flight_number = rec.i_2_flight_number,',
'                   from_seg2_airline = rec.i_2_airline,',
'                   from_seg2_departure_date = rec.i_2_departure_date,',
'                   from_seg2_departure_time = rec.i_2_departure_time,',
'                   from_seg2_arrival_date = rec.i_2_arrival_date,',
'                   from_seg2_arrival_time = rec.i_2_arrival_time,',
'                   --from_seg2_meal = (select lookup_code from FND_LOOKUP_VALUES m where m.LOOKUP_TYPE=''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE=''US'' and trim(meaning) = rec.i_2_meal),',
'',
'                   from_seg3_departure_airport = rec.i_3_departure_airport,',
'                   from_seg3_destination_airport = rec.i_3_destination_airport,',
'                   from_seg3_flight_number = rec.i_3_flight_number,',
'                   from_seg3_airline = rec.i_3_airline,',
'                   from_seg3_departure_date = rec.i_3_departure_date,',
'                   from_seg3_departure_time = rec.i_3_departure_time,',
'                   from_seg3_arrival_date = rec.i_3_arrival_date,',
'                   from_seg3_arrival_time = rec.i_3_arrival_time,',
'                   --from_seg3_meal = (select lookup_code from FND_LOOKUP_VALUES m where m.LOOKUP_TYPE=''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE=''US'' and trim(meaning) = rec.i_4_meal),',
'',
'                   from_seg4_departure_airport = rec.i_4_departure_airport,',
'                   from_seg4_destination_airport = rec.i_4_destination_airport,',
'                   from_seg4_flight_number = rec.i_4_flight_number,',
'                   from_seg4_airline = rec.i_4_airline,',
'                   from_seg4_departure_date = rec.i_4_departure_date,',
'                   from_seg4_departure_time = rec.i_4_departure_time,',
'                   from_seg4_arrival_date = rec.i_4_arrival_date,',
'                   from_seg4_arrival_time = rec.i_4_arrival_time,',
'                   --from_seg4_meal = (select lookup_code from FND_LOOKUP_VALUES m where m.LOOKUP_TYPE=''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE=''US'' and trim(meaning) = rec.i_4_meal),',
'',
'                   last_update_date = sysdate,',
'                   last_updated_by = :P0_USER_NAME,',
'                   invoker = ''IMPORT''',
'            where SEQ = v_seq;',
'        end if;',
'',
'        if :P8_USER_TYPE = ''T'' and :P8_PLACE_OFFER = ''Y'' then',
'            --insert audit record',
'            insert into jafi_apex_shl_flights_audit(AUDIT_ID, ENTITY_ID, ASSGT_ID, OLD_STATUS_ID, NEW_STATUS_ID, STATUS_UPDATE_DATE, STATUS_UPDATE_BY)',
'            values (JAFI_APEX_FLIGHTS_AUDIT_SEQ.nextval, v_seq, v_assignment_id, v_status, v_place_offer_status, sysdate, :P0_USER_NAME);',
'        end if;',
'        ',
'        v_rows_inserted := v_rows_inserted + 1;',
'    end if;',
'END LOOP;',
'',
'    if v_rows_inserted = v_rows_count then :P8_IMPORT_MSG := ''Flights imported successfully!'';',
'    else :P8_IMPORT_MSG := v_rows_inserted || '' out of '' || v_rows_count || '' flights were imported!'';',
'    end if;',
'',
'    exception when others then ',
'    begin',
'        :P8_IMPORT_MSG := v_rows_inserted || '' out of '' || v_rows_count || '' flights were imported and an error occured: '' || SQLCODE || '': '' || SQLERRM;',
'        raise;',
'    end;',
'END;'))
,p_process_error_message=>'&P8_IMPORT_MSG.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'select * from APEX_COLLECTIONS c WHERE c.collection_name=''IMPORT_INVALID_ROWS'''
,p_process_when_type=>'NOT_EXISTS'
,p_process_success_message=>'&P8_IMPORT_MSG.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(830160799940279197)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select max(m.ATTRIBUTE1)',
'into :P8_USER_TYPE',
'from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE = ''JAFI_SHLICHUT_FLIGHTS_USERS'' and m.LANGUAGE    = ''US'' and lower(m.meaning) = lower(:P0_USER_NAME);',
'',
':P8_FILENAME_DISPLAY := SUBSTR(:P8_FILENAME, INSTR(:P8_FILENAME, ''/'') + 1);',
'',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''IMPORT_INVALID_ROWS'');'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(849870750037554326)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate Validation Messages 1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FOR invalidRow IN (with ',
'airlines as (select lookup_code,trim(meaning) meaning from FND_LOOKUP_VALUES m where m.LOOKUP_TYPE=''JAFI_HR_SC_AIRLINES'' and m.LANGUAGE=''US''),',
'airports as (select lookup_code,trim(meaning) meaning from FND_LOOKUP_VALUES m where m.LOOKUP_TYPE=''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE=''US''),',
'meals as (select lookup_code,trim(meaning) meaning from FND_LOOKUP_VALUES m where m.LOOKUP_TYPE=''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE=''US''),',
'raw_content as(select',
'p.line_number,',
'trim(p.col001) as name,',
'trim(p.col002) as camp_customer,',
'lpad(trim(p.col003), 9, ''0'') as israeli_id,',
'trim(p.col004) as handling_agent,               ',
'trim(p.col005) as offer_expiration_in_hours,',
'trim(p.col006) as pnr_number,',
'trim(p.col007) as flight_cost,',
'trim(p.col008) as booking_fee,',
'trim(p.col009) as markup_cost,',
'trim(p.col010) as cost_for_billing,               ',
'trim(p.col011) as passengers_payment,',
'trim(p.col012) as agency_remarks,',
'trim(p.col013) as o_1_airline,',
'upper(trim(p.col014)) as o_1_flight_number,',
'trim(p.col015) as o_1_departure_airport,',
'trim(p.col016) as o_1_departure_date,',
'trim(p.col017) as o_1_departure_time,',
'trim(p.col018) as o_1_destination_airport,',
'trim(p.col019) as o_1_arrival_date,',
'trim(p.col020) as o_1_arrival_time,',
'--trim(p.col019) as o_1_meal,',
'trim(p.col021) as o_2_airline,',
'upper(trim(p.col022)) as o_2_flight_number,',
'trim(p.col023) as o_2_departure_airport,',
'trim(p.col024) as o_2_departure_date,',
'trim(p.col025) as o_2_departure_time,',
'trim(p.col026) as o_2_destination_airport,',
'trim(p.col027) as o_2_arrival_date,',
'trim(p.col028) as o_2_arrival_time,',
'--trim(p.col028) as o_2_meal,',
'trim(p.col029) as o_3_airline,',
'upper(trim(p.col030)) as o_3_flight_number,',
'trim(p.col031) as o_3_departure_airport,',
'trim(p.col032) as o_3_departure_date,',
'trim(p.col033) as o_3_departure_time,',
'trim(p.col034) as o_3_destination_airport,',
'trim(p.col035) as o_3_arrival_date,',
'trim(p.col036) as o_3_arrival_time,',
'--trim(p.col037) as o_3_meal,',
'trim(p.col037) as o_4_airline,',
'upper(trim(p.col038)) as o_4_flight_number,',
'trim(p.col039) as o_4_departure_airport,',
'trim(p.col040) as o_4_departure_date,',
'trim(p.col041) as o_4_departure_time,',
'trim(p.col042) as o_4_destination_airport,',
'trim(p.col043) as o_4_arrival_date,',
'trim(p.col044) as o_4_arrival_time,',
'--trim(p.col046) as o_4_meal,',
'trim(p.col045) as i_1_airline,',
'upper(trim(p.col046)) as i_1_flight_number,',
'trim(p.col047) as i_1_departure_airport,',
'trim(p.col048) as i_1_departure_date,',
'trim(p.col049) as i_1_departure_time,',
'trim(p.col050) as i_1_destination_airport,',
'trim(p.col051) as i_1_arrival_date,',
'trim(p.col052) as i_1_arrival_time,',
'--trim(p.col055) as i_1_meal,',
'trim(p.col053) as i_2_airline,',
'upper(trim(p.col054)) as i_2_flight_number,',
'trim(p.col055) as i_2_departure_airport,',
'trim(p.col056) as i_2_departure_date,',
'trim(p.col057) as i_2_departure_time,',
'trim(p.col058) as i_2_destination_airport,',
'trim(p.col059) as i_2_arrival_date,',
'trim(p.col060) as i_2_arrival_time,',
'--trim(p.col064) as i_2_meal,',
'trim(p.col061) as i_3_airline,',
'upper(trim(p.col062)) as i_3_flight_number,',
'trim(p.col063) as i_3_departure_airport,',
'trim(p.col064) as i_3_departure_date,',
'trim(p.col065) as i_3_departure_time,',
'trim(p.col066) as i_3_destination_airport,',
'trim(p.col067) as i_3_arrival_date,',
'trim(p.col068) as i_3_arrival_time,',
'--trim(p.col073) as i_3_meal,',
'trim(p.col069) as i_4_airline,',
'upper(trim(p.col070)) as i_4_flight_number,',
'trim(p.col071) as i_4_departure_airport,',
'trim(p.col072) as i_4_departure_date,',
'trim(p.col073) as i_4_departure_time,',
'trim(p.col074) as i_4_destination_airport,',
'trim(p.col075) as i_4_arrival_date,',
'trim(p.col076) as i_4_arrival_time--,',
'--trim(p.col082) as i_4_meal',
'from apex_application_temp_files f,',
'table(apex_data_parser.parse(p_content=>f.blob_content,p_file_name=>f.filename,p_add_headers_row=>''N'',p_file_charset=>''IW8MSWIN1255'')) p --AL32UTF8',
'where f.name=:P8_FILENAME and p.line_number>1),',
'file_content as (',
'select israeli_id id,line_number,1 idx,''National ID'' field_name,israeli_id field_value,case when not exists (select 1 from JAFI_FLIGHT_PASSPORT_INFO_V where NATIONAL_ID=c.israeli_id) then ''N'' else ''Y'' end is_valid,',
'case when not exists (select 1 from JAFI_FLIGHT_PASSPORT_INFO_V where NATIONAL_ID=c.israeli_id) then ''Invalid national ID'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,2 idx,''Offer Expiration In Hours'' field_name,offer_expiration_in_hours field_value,case when :P8_USER_TYPE = ''T'' and (offer_expiration_in_hours is null or not REGEXP_LIKE(offer_expiration_in_hours,''^\d+(\.\d+)?$'',''''))'
||' then ''N'' else ''Y'' end is_valid,',
'case when :P8_USER_TYPE = ''T'' and (offer_expiration_in_hours is null or not REGEXP_LIKE(offer_expiration_in_hours,''^\d+(\.\d+)?$'','''')) then ''Empty or invalid offer expiration'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,3 idx,''PNR Number'' field_name,pnr_number field_value,case when :P8_USER_TYPE = ''T'' and (pnr_number is not null and not regexp_like(pnr_number,''^[[:alnum:]]+$'')) then ''N'' else ''Y'' end is_valid,',
'case when :P8_USER_TYPE = ''T'' and (pnr_number is not null and not regexp_like(pnr_number,''^[[:alnum:]]+$'')) then ''Invalid PNR number'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,4 idx,''Flight Cost'' field_name,flight_cost field_value,case when :P8_USER_TYPE = ''T'' and (flight_cost is null or not REGEXP_LIKE(flight_cost,''^\d+(\.\d+)?$'','''')) then ''N'' else ''Y'' end is_valid,',
'case when :P8_USER_TYPE = ''T'' and (flight_cost is null or not REGEXP_LIKE(flight_cost,''^\d+(\.\d+)?$'','''')) then ''Empty or invalid flight cost'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,5 idx,''Booking Fee'' field_name,booking_fee field_value,case when :P8_USER_TYPE = ''T'' and (booking_fee is not null and not REGEXP_LIKE(booking_fee,''^\d+(\.\d+)?$'','''')) then ''N'' else ''Y'' end is_valid,',
'case when :P8_USER_TYPE = ''T'' and (booking_fee is not null and not REGEXP_LIKE(booking_fee, ''^\d+(\.\d+)?$'', '''')) then ''Invalid booking fee'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,6 idx,''Markup'' field_name,markup_cost field_value,case when :P8_USER_TYPE = ''M'' and (markup_cost is not null and not REGEXP_LIKE(markup_cost,''^\d+(\.\d+)?$'','''')) then ''N'' else ''Y'' end is_valid,',
'case when :P8_USER_TYPE = ''M'' and (markup_cost is not null and not REGEXP_LIKE(markup_cost,''^\d+(\.\d+)?$'','''')) then ''Invalid markup'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7 idx,''Passengers Payment'' field_name,passengers_payment field_value,case when :P8_USER_TYPE = ''T'' and (passengers_payment is not null and not REGEXP_LIKE(passengers_payment,''^\d+(\.\d+)?$'','''')) then ''N'' else ''Y'' end '
||'is_valid,',
'case when :P8_USER_TYPE = ''T'' and (passengers_payment is not null and not REGEXP_LIKE(passengers_payment,''^\d+(\.\d+)?$'','''')) then ''Invalid passengers payment'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.01 idx,''Outbound1 Airline'' field_name,o_1_airline field_value,case when o_1_airline is not null and not REGEXP_LIKE(o_1_airline,''^[A-Za-z]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when o_1_airline is not null and not REGEXP_LIKE(o_1_airline,''^[A-Za-z]+$'','''') then ''Invalid Outbound 1 Airline'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.02 idx,''Outbound2 Airline'' field_name,o_2_airline field_value,case when o_2_airline is not null and not REGEXP_LIKE(o_2_airline,''^[A-Za-z]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when o_2_airline is not null and not REGEXP_LIKE(o_2_airline,''^[A-Za-z]+$'','''') then ''Invalid Outbound 2 Airline'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.03 idx,''Outbound3 Airline'' field_name,o_3_airline field_value,case when o_3_airline is not null and not REGEXP_LIKE(o_3_airline,''^[A-Za-z]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when o_3_airline is not null and not REGEXP_LIKE(o_3_airline,''^[A-Za-z]+$'','''') then ''Invalid Outbound 3 Airline'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.04 idx,''Outbound4 Airline'' field_name,o_4_airline field_value,case when o_4_airline is not null and not REGEXP_LIKE(o_4_airline,''^[A-Za-z]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when o_4_airline is not null and not REGEXP_LIKE(o_4_airline,''^[A-Za-z]+$'','''') then ''Invalid Outbound 4 Airline'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.05 idx,''Inbound1 Airline'' field_name,i_1_airline field_value,case when i_1_airline is not null and not REGEXP_LIKE(i_1_airline,''^[A-Za-z]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when i_1_airline is not null and not REGEXP_LIKE(i_1_airline,''^[A-Za-z]+$'','''') then ''Invalid Inbound 1 Airline'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.06 idx,''Inbound2 Airline'' field_name,i_2_airline field_value,case when i_2_airline is not null and not REGEXP_LIKE(i_2_airline,''^[A-Za-z]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when i_2_airline is not null and not REGEXP_LIKE(i_2_airline,''^[A-Za-z]+$'','''') then ''Invalid Inbound 2 Airline'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.07 idx,''Inbound3 Airline'' field_name,i_3_airline field_value,case when i_3_airline is not null and not REGEXP_LIKE(i_3_airline,''^[A-Za-z]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when i_3_airline is not null and not REGEXP_LIKE(i_3_airline,''^[A-Za-z]+$'','''') then ''Invalid Inbound 3 Airline'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.08 idx,''Inbound4 Airline'' field_name,i_4_airline field_value,case when i_4_airline is not null and not REGEXP_LIKE(i_4_airline,''^[A-Za-z]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when i_4_airline is not null and not REGEXP_LIKE(i_4_airline,''^[A-Za-z]+$'','''') then ''Invalid Inbound 4 Airline'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.09 idx,''Outbound1 Flight Number'' field_name,o_1_flight_number field_value,case when o_1_airline is not null and not REGEXP_LIKE(o_1_flight_number,''^[[:alnum:]]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when o_1_airline is not null and not REGEXP_LIKE(o_1_flight_number,''^[[:alnum:]]+$'','''') then ''Invalid Outbound 1 Flight Number'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.10 idx,''Outbound2 Flight Number'' field_name,o_2_flight_number field_value,case when o_2_airline is not null and not REGEXP_LIKE(o_2_flight_number,''^[[:alnum:]]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when o_2_airline is not null and not REGEXP_LIKE(o_2_flight_number,''^[[:alnum:]]+$'','''') then ''Invalid Outbound 2 Flight Number'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.11 idx,''Outbound3 Flight Number'' field_name,o_3_flight_number field_value,case when o_3_airline is not null and not REGEXP_LIKE(o_3_flight_number,''^[[:alnum:]]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when o_3_airline is not null and not REGEXP_LIKE(o_3_flight_number,''^[[:alnum:]]+$'','''') then ''Invalid Outbound 3 Flight Number'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.12 idx,''Outbound4 Flight Number'' field_name,o_4_flight_number field_value,case when o_4_airline is not null and not REGEXP_LIKE(o_4_flight_number,''^[[:alnum:]]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when o_4_airline is not null and not REGEXP_LIKE(o_4_flight_number,''^[[:alnum:]]+$'','''') then ''Invalid Outbound 4 Flight Number'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.13 idx,''Inbound1 Flight Number'' field_name,i_1_flight_number field_value,case when i_1_airline is not null and not REGEXP_LIKE(i_1_flight_number,''^[[:alnum:]]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when i_1_airline is not null and not REGEXP_LIKE(i_1_flight_number,''^[[:alnum:]]+$'','''') then ''Invalid Inbound 1 Flight Number'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.14 idx,''Inbound2 Flight Number'' field_name,i_2_flight_number field_value,case when i_2_airline is not null and not REGEXP_LIKE(i_2_flight_number,''^[[:alnum:]]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when i_2_airline is not null and not REGEXP_LIKE(i_2_flight_number,''^[[:alnum:]]+$'','''') then ''Invalid Inbound 2 Flight Number'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.15 idx,''Inbound3 Flight Number'' field_name,i_3_flight_number field_value,case when i_3_airline is not null and not REGEXP_LIKE(i_3_flight_number,''^[[:alnum:]]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when i_3_airline is not null and not REGEXP_LIKE(i_3_flight_number,''^[[:alnum:]]+$'','''') then ''Invalid Inbound 3 Flight Number'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.16 idx,''Inbound4 Flight Number'' field_name,i_4_flight_number field_value,case when i_4_airline is not null and not REGEXP_LIKE(i_4_flight_number,''^[[:alnum:]]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when i_4_airline is not null and not REGEXP_LIKE(i_4_flight_number,''^[[:alnum:]]+$'','''') then ''Invalid Inbound 4 Flight Number'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.17 idx,''Outbound1 Departure Airport'' field_name,o_1_departure_airport field_value,case when o_1_airline is not null and not REGEXP_LIKE(o_1_departure_airport,''^[A-Za-z]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when o_1_airline is not null and not REGEXP_LIKE(o_1_departure_airport,''^[A-Za-z]+$'','''') then ''Invalid Outbound 1 Departure Airport'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.18 idx,''Outbound2 Departure Airport'' field_name,o_2_departure_airport field_value,case when o_2_airline is not null and not REGEXP_LIKE(o_2_departure_airport,''^[A-Za-z]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when o_2_airline is not null and not REGEXP_LIKE(o_2_departure_airport,''^[A-Za-z]+$'','''') then ''Invalid Outbound 2 Departure Airport'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.19 idx,''Outbound3 Departure Airport'' field_name,o_3_departure_airport field_value,case when o_3_airline is not null and not REGEXP_LIKE(o_3_departure_airport,''^[A-Za-z]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when o_3_airline is not null and not REGEXP_LIKE(o_3_departure_airport,''^[A-Za-z]+$'','''') then ''Invalid Outbound 3 Departure Airport'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.20 idx,''Outbound4 Departure Airport'' field_name,o_4_departure_airport field_value,case when o_4_airline is not null and not REGEXP_LIKE(o_4_departure_airport,''^[A-Za-z]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when o_4_airline is not null and not REGEXP_LIKE(o_4_departure_airport,''^[A-Za-z]+$'','''') then ''Invalid Outbound 4 Departure Airport'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.21 idx,''Inbound1 Departure Airport'' field_name,i_1_departure_airport field_value,case when i_1_airline is not null and not REGEXP_LIKE(i_1_departure_airport,''^[A-Za-z]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when i_1_airline is not null and not REGEXP_LIKE(i_1_departure_airport,''^[A-Za-z]+$'','''') then ''Invalid Inbound 1 Departure Airport'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.22 idx,''Inbound2 Departure Airport'' field_name,i_2_departure_airport field_value,case when i_2_airline is not null and not REGEXP_LIKE(i_2_departure_airport,''^[A-Za-z]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when i_2_airline is not null and not REGEXP_LIKE(i_2_departure_airport,''^[A-Za-z]+$'','''') then ''Invalid Inbound 2 Departure Airport'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.23 idx,''Inbound3 Departure Airport'' field_name,i_3_departure_airport field_value,case when i_3_airline is not null and not REGEXP_LIKE(i_3_departure_airport,''^[A-Za-z]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when i_3_airline is not null and not REGEXP_LIKE(i_3_departure_airport,''^[A-Za-z]+$'','''') then ''Invalid Inbound 3 Departure Airport'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.24 idx,''Inbound4 Departure Airport'' field_name,i_4_departure_airport field_value,case when i_4_airline is not null and not REGEXP_LIKE(i_4_departure_airport,''^[A-Za-z]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when i_4_airline is not null and not REGEXP_LIKE(i_4_departure_airport,''^[A-Za-z]+$'','''') then ''Invalid Inbound 4 Departure Airport'' else '''' end validation_message from raw_content c    ',
')',
'select * from file_content where is_valid = ''N'') LOOP',
'    APEX_COLLECTION.ADD_MEMBER(p_collection_name => ''IMPORT_INVALID_ROWS'',',
'         p_n001 => to_number(invalidRow.line_number),',
'         p_n002 => invalidRow.idx,',
'         p_c001 => invalidRow.id,',
'         p_c002 => invalidRow.field_name,',
'         p_c003 => invalidRow.field_value,',
'         p_c004 => invalidRow.validation_message);',
'END LOOP;'))
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
 p_id=>wwv_flow_api.id(861963501736190718)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate Validation Messages 2'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FOR invalidRow IN (with ',
'airlines as (select lookup_code,trim(meaning) meaning from FND_LOOKUP_VALUES m where m.LOOKUP_TYPE=''JAFI_HR_SC_AIRLINES'' and m.LANGUAGE=''US''),',
'airports as (select lookup_code,trim(meaning) meaning from FND_LOOKUP_VALUES m where m.LOOKUP_TYPE=''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE=''US''),',
'meals as (select lookup_code,trim(meaning) meaning from FND_LOOKUP_VALUES m where m.LOOKUP_TYPE=''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE=''US''),',
'raw_content as(select',
'p.line_number,',
'trim(p.col001) as name,',
'trim(p.col002) as camp_customer,',
'lpad(trim(p.col003), 9, ''0'') as israeli_id,',
'trim(p.col004) as handling_agent,               ',
'trim(p.col005) as offer_expiration_in_hours,',
'trim(p.col006) as pnr_number,',
'trim(p.col007) as flight_cost,',
'trim(p.col008) as booking_fee,',
'trim(p.col009) as markup_cost,',
'trim(p.col010) as cost_for_billing,               ',
'trim(p.col011) as passengers_payment,',
'trim(p.col012) as agency_remarks,',
'trim(p.col013) as o_1_airline,',
'upper(trim(p.col014)) as o_1_flight_number,',
'trim(p.col015) as o_1_departure_airport,',
'trim(p.col016) as o_1_departure_date,',
'trim(p.col017) as o_1_departure_time,',
'trim(p.col018) as o_1_destination_airport,',
'trim(p.col019) as o_1_arrival_date,',
'trim(p.col020) as o_1_arrival_time,',
'--trim(p.col019) as o_1_meal,',
'trim(p.col021) as o_2_airline,',
'upper(trim(p.col022)) as o_2_flight_number,',
'trim(p.col023) as o_2_departure_airport,',
'trim(p.col024) as o_2_departure_date,',
'trim(p.col025) as o_2_departure_time,',
'trim(p.col026) as o_2_destination_airport,',
'trim(p.col027) as o_2_arrival_date,',
'trim(p.col028) as o_2_arrival_time,',
'--trim(p.col028) as o_2_meal,',
'trim(p.col029) as o_3_airline,',
'upper(trim(p.col030)) as o_3_flight_number,',
'trim(p.col031) as o_3_departure_airport,',
'trim(p.col032) as o_3_departure_date,',
'trim(p.col033) as o_3_departure_time,',
'trim(p.col034) as o_3_destination_airport,',
'trim(p.col035) as o_3_arrival_date,',
'trim(p.col036) as o_3_arrival_time,',
'--trim(p.col037) as o_3_meal,',
'trim(p.col037) as o_4_airline,',
'upper(trim(p.col038)) as o_4_flight_number,',
'trim(p.col039) as o_4_departure_airport,',
'trim(p.col040) as o_4_departure_date,',
'trim(p.col041) as o_4_departure_time,',
'trim(p.col042) as o_4_destination_airport,',
'trim(p.col043) as o_4_arrival_date,',
'trim(p.col044) as o_4_arrival_time,',
'--trim(p.col046) as o_4_meal,',
'trim(p.col045) as i_1_airline,',
'upper(trim(p.col046)) as i_1_flight_number,',
'trim(p.col047) as i_1_departure_airport,',
'trim(p.col048) as i_1_departure_date,',
'trim(p.col049) as i_1_departure_time,',
'trim(p.col050) as i_1_destination_airport,',
'trim(p.col051) as i_1_arrival_date,',
'trim(p.col052) as i_1_arrival_time,',
'--trim(p.col055) as i_1_meal,',
'trim(p.col053) as i_2_airline,',
'upper(trim(p.col054)) as i_2_flight_number,',
'trim(p.col055) as i_2_departure_airport,',
'trim(p.col056) as i_2_departure_date,',
'trim(p.col057) as i_2_departure_time,',
'trim(p.col058) as i_2_destination_airport,',
'trim(p.col059) as i_2_arrival_date,',
'trim(p.col060) as i_2_arrival_time,',
'--trim(p.col064) as i_2_meal,',
'trim(p.col061) as i_3_airline,',
'upper(trim(p.col062)) as i_3_flight_number,',
'trim(p.col063) as i_3_departure_airport,',
'trim(p.col064) as i_3_departure_date,',
'trim(p.col065) as i_3_departure_time,',
'trim(p.col066) as i_3_destination_airport,',
'trim(p.col067) as i_3_arrival_date,',
'trim(p.col068) as i_3_arrival_time,',
'--trim(p.col073) as i_3_meal,',
'trim(p.col069) as i_4_airline,',
'upper(trim(p.col070)) as i_4_flight_number,',
'trim(p.col071) as i_4_departure_airport,',
'trim(p.col072) as i_4_departure_date,',
'trim(p.col073) as i_4_departure_time,',
'trim(p.col074) as i_4_destination_airport,',
'trim(p.col075) as i_4_arrival_date,',
'trim(p.col076) as i_4_arrival_time--,',
'--trim(p.col082) as i_4_meal',
'from apex_application_temp_files f,',
'table(apex_data_parser.parse(p_content=>f.blob_content,p_file_name=>f.filename,p_add_headers_row=>''N'',p_file_charset=>''IW8MSWIN1255'')) p --AL32UTF8',
'where f.name=:P8_FILENAME and p.line_number>1),',
'file_content as (',
'select israeli_id id,line_number,7.25 idx,''Outbound1 Destination Airport'' field_name,o_1_destination_airport field_value,case when o_1_airline is not null and not REGEXP_LIKE(o_1_destination_airport,''^[A-Za-z]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when o_1_airline is not null and not REGEXP_LIKE(o_1_destination_airport,''^[A-Za-z]+$'','''') then ''Invalid Outbound 1 Destination Airport'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.26 idx,''Outbound2 Destination Airport'' field_name,o_2_destination_airport field_value,case when o_2_airline is not null and not REGEXP_LIKE(o_2_destination_airport,''^[A-Za-z]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when o_2_airline is not null and not REGEXP_LIKE(o_2_destination_airport,''^[A-Za-z]+$'','''') then ''Invalid Outbound 2 Destination Airport'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.27 idx,''Outbound3 Destination Airport'' field_name,o_3_destination_airport field_value,case when o_3_airline is not null and not REGEXP_LIKE(o_3_destination_airport,''^[A-Za-z]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when o_3_airline is not null and not REGEXP_LIKE(o_3_destination_airport,''^[A-Za-z]+$'','''') then ''Invalid Outbound 3 Destination Airport'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.28 idx,''Outbound4 Destination Airport'' field_name,o_4_destination_airport field_value,case when o_4_airline is not null and not REGEXP_LIKE(o_4_destination_airport,''^[A-Za-z]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when o_4_airline is not null and not REGEXP_LIKE(o_4_destination_airport,''^[A-Za-z]+$'','''') then ''Invalid Outbound 4 Destination Airport'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.29 idx,''Inbound1 Destination Airport'' field_name,i_1_destination_airport field_value,case when i_1_airline is not null and not REGEXP_LIKE(i_1_destination_airport,''^[A-Za-z]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when i_1_airline is not null and not REGEXP_LIKE(i_1_destination_airport,''^[A-Za-z]+$'','''') then ''Invalid Inbound 1 Destination Airport'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.30 idx,''Inbound2 Destination Airport'' field_name,i_2_destination_airport field_value,case when i_2_airline is not null and not REGEXP_LIKE(i_2_destination_airport,''^[A-Za-z]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when i_2_airline is not null and not REGEXP_LIKE(i_2_destination_airport,''^[A-Za-z]+$'','''') then ''Invalid Inbound 2 Destination Airport'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.31 idx,''Inbound3 Destination Airport'' field_name,i_3_destination_airport field_value,case when i_3_airline is not null and not REGEXP_LIKE(i_3_destination_airport,''^[A-Za-z]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when i_3_airline is not null and not REGEXP_LIKE(i_3_destination_airport,''^[A-Za-z]+$'','''') then ''Invalid Inbound 3 Destination Airport'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,7.32 idx,''Inbound4 Destination Airport'' field_name,i_4_destination_airport field_value,case when i_4_airline is not null and not REGEXP_LIKE(i_4_destination_airport,''^[A-Za-z]+$'','''') then ''N'' else ''Y'' end is_valid,',
'case when i_4_airline is not null and not REGEXP_LIKE(i_4_destination_airport,''^[A-Za-z]+$'','''') then ''Invalid Inbound 4 Destination Airport'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number,1.1 idx,'''' field_name,'''' field_value,case when not exists(',
'    select 1 from jafi_apex_shlichut_flights where ',
'    ASSGT_ID = (select ASSIGNMENT_ID from JAFI_FLIGHT_PASSPORT_INFO_V where NATIONAL_ID=israeli_id) and ',
'    PERSON_ID = (select PERSON_ID from JAFI_FLIGHT_PASSPORT_INFO_V where NATIONAL_ID=israeli_id) and ',
'    (',
'        status in (1, 4)',
'        /*(:P8_USER_TYPE = ''T'' and status in (1, 4)) or (:P8_USER_TYPE = ''M'' and status in (2, 3))*/',
'    )) then ''N'' else ''Y'' end is_valid,',
'case when not exists(',
'    select 1 from jafi_apex_shlichut_flights where ',
'    ASSGT_ID = (select ASSIGNMENT_ID from JAFI_FLIGHT_PASSPORT_INFO_V where NATIONAL_ID=israeli_id) and ',
'    PERSON_ID = (select PERSON_ID from JAFI_FLIGHT_PASSPORT_INFO_V where NATIONAL_ID=israeli_id) and ',
'    (',
'        status in (1, 4)',
'        /*(:P8_USER_TYPE = ''T'' and status in (1, 4)) or (:P8_USER_TYPE = ''M'' and status in (2, 3))*/',
'    )) then ''Invalid flight status for import'' else '''' end validation_message from raw_content c    ',
'union',
'select israeli_id id,line_number,0.5 idx,''Handling Agent'' field_name,handling_agent field_value,case when c.handling_agent is not null and not exists (select 1 from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_SHLICHUT_FLIGHTS_USERS'' and m.LANGUAGE = ''US'' and ATTRIBUTE1 = ''T'' and attribute4 = c.handling_agent) then ''N'' else ''Y'' end is_valid,',
'case when c.handling_agent is not null and not exists (select 1 from FND_LOOKUP_VALUES m',
'where m.LOOKUP_TYPE= ''JAFI_SHLICHUT_FLIGHTS_USERS'' and m.LANGUAGE = ''US'' and ATTRIBUTE1 = ''T'' and attribute4 = c.handling_agent) then ''Invalid Handling Agent'' else '''' end validation_message from raw_content c',
')',
'select * from file_content where is_valid = ''N'') LOOP',
'    APEX_COLLECTION.ADD_MEMBER(p_collection_name => ''IMPORT_INVALID_ROWS'',',
'         p_n001 => to_number(invalidRow.line_number),',
'         p_n002 => invalidRow.idx,',
'         p_c001 => invalidRow.id,',
'         p_c002 => invalidRow.field_name,',
'         p_c003 => invalidRow.field_value,',
'         p_c004 => invalidRow.validation_message);',
'END LOOP;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(861963570557190719)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Is Valid 1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select case when count(*) > 0 then ''N'' else ''Y'' end into :P8_IS_VALID',
'    FROM APEX_COLLECTIONS ',
'    WHERE collection_name = ''IMPORT_INVALID_ROWS'';',
'    ',
'    exception when no_data_found then ',
'        :P8_IS_VALID := ''Y'';',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(861963336259190717)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate Validation Messages 3'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FOR invalidRow IN (with ',
'airlines as (select lookup_code,trim(meaning) meaning from FND_LOOKUP_VALUES m where m.LOOKUP_TYPE=''JAFI_HR_SC_AIRLINES'' and m.LANGUAGE=''US''),',
'airports as (select lookup_code,trim(meaning) meaning from FND_LOOKUP_VALUES m where m.LOOKUP_TYPE=''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE=''US''),',
'meals as (select lookup_code,trim(meaning) meaning from FND_LOOKUP_VALUES m where m.LOOKUP_TYPE=''JAFI_HR_SC_MEAL_FA'' and m.LANGUAGE=''US''),',
'raw_content as(select',
'p.line_number,',
'trim(p.col001) as name,',
'trim(p.col002) as camp_customer,',
'lpad(trim(p.col003), 9, ''0'') as israeli_id,',
'trim(p.col004) as handling_agent,               ',
'trim(p.col005) as offer_expiration_in_hours,',
'trim(p.col006) as pnr_number,',
'trim(p.col007) as flight_cost,',
'trim(p.col008) as booking_fee,',
'trim(p.col009) as markup_cost,',
'trim(p.col010) as cost_for_billing,               ',
'trim(p.col011) as passengers_payment,',
'trim(p.col012) as agency_remarks,',
'trim(p.col013) as o_1_airline,',
'upper(trim(p.col014)) as o_1_flight_number,',
'trim(p.col015) as o_1_departure_airport,',
'trim(p.col016) as o_1_departure_date,',
'trim(p.col017) as o_1_departure_time,',
'trim(p.col018) as o_1_destination_airport,',
'trim(p.col019) as o_1_arrival_date,',
'trim(p.col020) as o_1_arrival_time,',
'--trim(p.col019) as o_1_meal,',
'trim(p.col021) as o_2_airline,',
'upper(trim(p.col022)) as o_2_flight_number,',
'trim(p.col023) as o_2_departure_airport,',
'trim(p.col024) as o_2_departure_date,',
'trim(p.col025) as o_2_departure_time,',
'trim(p.col026) as o_2_destination_airport,',
'trim(p.col027) as o_2_arrival_date,',
'trim(p.col028) as o_2_arrival_time,',
'--trim(p.col028) as o_2_meal,',
'trim(p.col029) as o_3_airline,',
'upper(trim(p.col030)) as o_3_flight_number,',
'trim(p.col031) as o_3_departure_airport,',
'trim(p.col032) as o_3_departure_date,',
'trim(p.col033) as o_3_departure_time,',
'trim(p.col034) as o_3_destination_airport,',
'trim(p.col035) as o_3_arrival_date,',
'trim(p.col036) as o_3_arrival_time,',
'--trim(p.col037) as o_3_meal,',
'trim(p.col037) as o_4_airline,',
'upper(trim(p.col038)) as o_4_flight_number,',
'trim(p.col039) as o_4_departure_airport,',
'trim(p.col040) as o_4_departure_date,',
'trim(p.col041) as o_4_departure_time,',
'trim(p.col042) as o_4_destination_airport,',
'trim(p.col043) as o_4_arrival_date,',
'trim(p.col044) as o_4_arrival_time,',
'--trim(p.col046) as o_4_meal,',
'trim(p.col045) as i_1_airline,',
'upper(trim(p.col046)) as i_1_flight_number,',
'trim(p.col047) as i_1_departure_airport,',
'trim(p.col048) as i_1_departure_date,',
'trim(p.col049) as i_1_departure_time,',
'trim(p.col050) as i_1_destination_airport,',
'trim(p.col051) as i_1_arrival_date,',
'trim(p.col052) as i_1_arrival_time,',
'--trim(p.col055) as i_1_meal,',
'trim(p.col053) as i_2_airline,',
'upper(trim(p.col054)) as i_2_flight_number,',
'trim(p.col055) as i_2_departure_airport,',
'trim(p.col056) as i_2_departure_date,',
'trim(p.col057) as i_2_departure_time,',
'trim(p.col058) as i_2_destination_airport,',
'trim(p.col059) as i_2_arrival_date,',
'trim(p.col060) as i_2_arrival_time,',
'--trim(p.col064) as i_2_meal,',
'trim(p.col061) as i_3_airline,',
'upper(trim(p.col062)) as i_3_flight_number,',
'trim(p.col063) as i_3_departure_airport,',
'trim(p.col064) as i_3_departure_date,',
'trim(p.col065) as i_3_departure_time,',
'trim(p.col066) as i_3_destination_airport,',
'trim(p.col067) as i_3_arrival_date,',
'trim(p.col068) as i_3_arrival_time,',
'--trim(p.col073) as i_3_meal,',
'trim(p.col069) as i_4_airline,',
'upper(trim(p.col070)) as i_4_flight_number,',
'trim(p.col071) as i_4_departure_airport,',
'trim(p.col072) as i_4_departure_date,',
'trim(p.col073) as i_4_departure_time,',
'trim(p.col074) as i_4_destination_airport,',
'trim(p.col075) as i_4_arrival_date,',
'trim(p.col076) as i_4_arrival_time--,',
'--trim(p.col082) as i_4_meal',
'from apex_application_temp_files f,',
'table(apex_data_parser.parse(p_content=>f.blob_content,p_file_name=>f.filename,p_add_headers_row=>''N'',p_file_charset=>''IW8MSWIN1255'')) p --AL32UTF8',
'where f.name=:P8_FILENAME and p.line_number>1),',
'file_content as (',
'select israeli_id id,line_number, 8 idx,',
'case',
'when o_1_airline is not null and not exists (select 1 from airlines where lookup_code=c.o_1_airline) then ''Outbound1 Airline''',
'when o_2_airline is not null and not exists (select 1 from airlines where lookup_code=c.o_2_airline) then ''Outbound2 Airline''',
'when o_3_airline is not null and not exists (select 1 from airlines where lookup_code=c.o_3_airline) then ''Outbound3 Airline''',
'when o_4_airline is not null and not exists (select 1 from airlines where lookup_code=c.o_4_airline) then ''Outbound4 Airline''',
'when i_1_airline is not null and not exists (select 1 from airlines where lookup_code=c.i_1_airline) then ''Inbound1 Airline''',
'when i_2_airline is not null and not exists (select 1 from airlines where lookup_code=c.i_2_airline) then ''Inbound2 Airline''',
'when i_3_airline is not null and not exists (select 1 from airlines where lookup_code=c.i_3_airline) then ''Inbound3 Airline''',
'when i_4_airline is not null and not exists (select 1 from airlines where lookup_code=c.i_4_airline) then ''Inbound4 Airline'' end field_name,',
'case',
'when o_1_airline is not null and not exists (select 1 from airlines where lookup_code=c.o_1_airline) then o_1_airline',
'when o_2_airline is not null and not exists (select 1 from airlines where lookup_code=c.o_2_airline) then o_2_airline',
'when o_3_airline is not null and not exists (select 1 from airlines where lookup_code=c.o_3_airline) then o_3_airline',
'when o_4_airline is not null and not exists (select 1 from airlines where lookup_code=c.o_4_airline) then o_4_airline',
'when i_1_airline is not null and not exists (select 1 from airlines where lookup_code=c.i_1_airline) then i_1_airline',
'when i_2_airline is not null and not exists (select 1 from airlines where lookup_code=c.i_2_airline) then i_2_airline',
'when i_3_airline is not null and not exists (select 1 from airlines where lookup_code=c.i_3_airline) then i_3_airline',
'when i_4_airline is not null and not exists (select 1 from airlines where lookup_code=c.i_4_airline) then i_4_airline end field_value,',
'case',
'when (',
'(o_1_airline is not null and not exists (select 1 from airlines where lookup_code=c.o_1_airline)) or',
'(o_2_airline is not null and not exists (select 1 from airlines where lookup_code=c.o_2_airline)) or',
'(o_3_airline is not null and not exists (select 1 from airlines where lookup_code=c.o_3_airline)) or',
'(o_4_airline is not null and not exists (select 1 from airlines where lookup_code=c.o_4_airline)) or',
'(i_1_airline is not null and not exists (select 1 from airlines where lookup_code=c.i_1_airline)) or',
'(i_2_airline is not null and not exists (select 1 from airlines where lookup_code=c.i_2_airline)) or',
'(i_3_airline is not null and not exists (select 1 from airlines where lookup_code=c.i_3_airline)) or',
'(i_4_airline is not null and not exists (select 1 from airlines where lookup_code=c.i_4_airline))) then ''N'' else ''Y''end is_valid,',
'case',
'when o_1_airline is not null and not exists (select 1 from airlines where lookup_code=c.o_1_airline) then ''Invalid Outbound 1 Airline''',
'when o_2_airline is not null and not exists (select 1 from airlines where lookup_code=c.o_2_airline) then ''Invalid Outbound 2 Airline''',
'when o_3_airline is not null and not exists (select 1 from airlines where lookup_code=c.o_3_airline) then ''Invalid Outbound 3 Airline''',
'when o_4_airline is not null and not exists (select 1 from airlines where lookup_code=c.o_4_airline) then ''Invalid Outbound 4 Airline''',
'when i_1_airline is not null and not exists (select 1 from airlines where lookup_code=c.i_1_airline) then ''Invalid Inbound 1 Airline''',
'when i_2_airline is not null and not exists (select 1 from airlines where lookup_code=c.i_2_airline) then ''Invalid Inbound 2 Airline''',
'when i_3_airline is not null and not exists (select 1 from airlines where lookup_code=c.i_3_airline) then ''Invalid Inbound 3 Airline''',
'when i_4_airline is not null and not exists (select 1 from airlines where lookup_code=c.i_4_airline) then ''Invalid Inbound 4 Airline'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number, 12 idx,',
'case',
'when o_1_airline is not null and not exists (select 1 from airports where lookup_code=c.o_1_destination_airport) then ''Outbound1 Destination Airport''',
'when o_2_airline is not null and not exists (select 1 from airports where lookup_code=c.o_2_destination_airport) then ''Outbound2 Destination Airport''',
'when o_3_airline is not null and not exists (select 1 from airports where lookup_code=c.o_3_destination_airport) then ''Outbound3 Destination Airport''',
'when o_4_airline is not null and not exists (select 1 from airports where lookup_code=c.o_4_destination_airport) then ''Outbound4 Destination Airport''',
'when i_1_airline is not null and not exists (select 1 from airports where lookup_code=c.i_1_destination_airport) then ''Inbound1 Destination Airport''',
'when i_2_airline is not null and not exists (select 1 from airports where lookup_code=c.i_2_destination_airport) then ''Inbound2 Destination Airport''',
'when i_3_airline is not null and not exists (select 1 from airports where lookup_code=c.i_3_destination_airport) then ''Inbound3 Destination Airport''',
'when i_4_airline is not null and not exists (select 1 from airports where lookup_code=c.i_4_destination_airport) then ''Inbound4 Destination Airport'' end field_name,',
'case',
'when o_1_airline is not null and not exists (select 1 from airports where lookup_code=c.o_1_destination_airport) then o_1_destination_airport',
'when o_2_airline is not null and not exists (select 1 from airports where lookup_code=c.o_2_destination_airport) then o_2_destination_airport',
'when o_3_airline is not null and not exists (select 1 from airports where lookup_code=c.o_3_destination_airport) then o_3_destination_airport',
'when o_4_airline is not null and not exists (select 1 from airports where lookup_code=c.o_4_destination_airport) then o_4_destination_airport',
'when i_1_airline is not null and not exists (select 1 from airports where lookup_code=c.i_1_destination_airport) then i_1_destination_airport',
'when i_2_airline is not null and not exists (select 1 from airports where lookup_code=c.i_2_destination_airport) then i_2_destination_airport',
'when i_3_airline is not null and not exists (select 1 from airports where lookup_code=c.i_3_destination_airport) then i_3_destination_airport',
'when i_4_airline is not null and not exists (select 1 from airports where lookup_code=c.i_4_destination_airport) then i_4_destination_airport end field_value,',
'case',
'when (',
'(o_1_airline is not null and not exists (select 1 from airports where lookup_code=c.o_1_destination_airport)) or',
'(o_2_airline is not null and not exists (select 1 from airports where lookup_code=c.o_2_destination_airport)) or',
'(o_3_airline is not null and not exists (select 1 from airports where lookup_code=c.o_3_destination_airport)) or',
'(o_4_airline is not null and not exists (select 1 from airports where lookup_code=c.o_4_destination_airport)) or',
'(i_1_airline is not null and not exists (select 1 from airports where lookup_code=c.i_1_destination_airport)) or',
'(i_2_airline is not null and not exists (select 1 from airports where lookup_code=c.i_2_destination_airport)) or',
'(i_3_airline is not null and not exists (select 1 from airports where lookup_code=c.i_3_destination_airport)) or',
'(i_4_airline is not null and not exists (select 1 from airports where lookup_code=c.i_4_destination_airport))) then ''N'' else ''Y'' end is_valid,',
'case',
'when o_1_airline is not null and not exists (select 1 from airports where lookup_code=c.o_1_destination_airport) then ''Empty or invalid Outbound 1 Destination Airport''',
'when o_2_airline is not null and not exists (select 1 from airports where lookup_code=c.o_2_destination_airport) then ''Empty or invalid Outbound 2 Destination Airport''',
'when o_3_airline is not null and not exists (select 1 from airports where lookup_code=c.o_3_destination_airport) then ''Empty or invalid Outbound 3 Destination Airport''',
'when o_4_airline is not null and not exists (select 1 from airports where lookup_code=c.o_4_destination_airport) then ''Empty or invalid Outbound 4 Destination Airport''',
'when i_1_airline is not null and not exists (select 1 from airports where lookup_code=c.i_1_destination_airport) then ''Empty or invalid Inbound 1 Destination Airport''',
'when i_2_airline is not null and not exists (select 1 from airports where lookup_code=c.i_2_destination_airport) then ''Empty or invalid Inbound 2 Destination Airport''',
'when i_3_airline is not null and not exists (select 1 from airports where lookup_code=c.i_3_destination_airport) then ''Empty or invalid Inbound 3 Destination Airport''',
'when i_4_airline is not null and not exists (select 1 from airports where lookup_code=c.i_4_destination_airport) then ''Empty or invalid Inbound 4 Destination Airport'' else '''' end validation_message from raw_content c',
'/*union',
'select israeli_id id,line_number, 15 idx,',
'case',
'when o_1_meal is not null and not exists (select 1 from meals where meaning=c.o_1_meal) then ''Outbound1 Meal''',
'when o_2_meal is not null and not exists (select 1 from meals where meaning=c.o_2_meal) then ''Outbound2 Meal''',
'when o_3_meal is not null and not exists (select 1 from meals where meaning=c.o_3_meal) then ''Outbound3 Meal''',
'when o_4_meal is not null and not exists (select 1 from meals where meaning=c.o_4_meal) then ''Outbound4 Meal''',
'when i_1_meal is not null and not exists (select 1 from meals where meaning=c.i_1_meal) then ''Inbound1 Meal''',
'when i_2_meal is not null and not exists (select 1 from meals where meaning=c.i_2_meal) then ''Inbound2 Meal''',
'when i_3_meal is not null and not exists (select 1 from meals where meaning=c.i_3_meal) then ''Inbound3 Meal''',
'when i_4_meal is not null and not exists (select 1 from meals where meaning=c.i_4_meal) then ''Inbound4 Meal'' end field_name,',
'case',
'when o_1_meal is not null and not exists (select 1 from meals where meaning=c.o_1_meal) then o_1_meal',
'when o_2_meal is not null and not exists (select 1 from meals where meaning=c.o_2_meal) then o_2_meal',
'when o_3_meal is not null and not exists (select 1 from meals where meaning=c.o_3_meal) then o_3_meal',
'when o_4_meal is not null and not exists (select 1 from meals where meaning=c.o_4_meal) then o_4_meal',
'when i_1_meal is not null and not exists (select 1 from meals where meaning=c.i_1_meal) then i_1_meal',
'when i_2_meal is not null and not exists (select 1 from meals where meaning=c.i_2_meal) then i_2_meal',
'when i_3_meal is not null and not exists (select 1 from meals where meaning=c.i_3_meal) then i_3_meal',
'when i_4_meal is not null and not exists (select 1 from meals where meaning=c.i_4_meal) then i_4_meal end field_value,',
'case ',
'when ((o_1_meal is not null and not exists (select 1 from meals where meaning=c.o_1_meal)) or',
'(o_2_meal is not null and not exists (select 1 from meals where meaning=c.o_2_meal)) or',
'(o_3_meal is not null and not exists (select 1 from meals where meaning=c.o_3_meal)) or',
'(o_4_meal is not null and not exists (select 1 from meals where meaning=c.o_4_meal)) or',
'(i_1_meal is not null and not exists (select 1 from meals where meaning=c.i_1_meal)) or',
'(i_2_meal is not null and not exists (select 1 from meals where meaning=c.i_2_meal)) or',
'(i_3_meal is not null and not exists (select 1 from meals where meaning=c.i_3_meal)) or',
'(i_4_meal is not null and not exists (select 1 from meals where meaning=c.i_4_meal))) then ''N'' else ''Y'' end is_valid,',
'case',
'when o_1_meal is not null and not exists (select 1 from meals where meaning=c.o_1_meal) then ''Invalid Outbound 1 Meal''',
'when o_2_meal is not null and not exists (select 1 from meals where meaning=c.o_2_meal) then ''Invalid Outbound 2 Meal''',
'when o_3_meal is not null and not exists (select 1 from meals where meaning=c.o_3_meal) then ''Invalid Outbound 3 Meal''',
'when o_4_meal is not null and not exists (select 1 from meals where meaning=c.o_4_meal) then ''Invalid Outbound 4 Meal''',
'when i_1_meal is not null and not exists (select 1 from meals where meaning=c.i_1_meal) then ''Invalid Inbound 1 Meal''',
'when i_2_meal is not null and not exists (select 1 from meals where meaning=c.i_2_meal) then ''Invalid Inbound 2 Meal''',
'when i_3_meal is not null and not exists (select 1 from meals where meaning=c.i_3_meal) then ''Invalid Inbound 3 Meal''',
'when i_4_meal is not null and not exists (select 1 from meals where meaning=c.i_4_meal) then ''Invalid Inbound 4 Meal'' else '''' end validation_message from raw_content c*/',
'union',
'select israeli_id id,line_number, 10 idx,',
'case',
'when o_1_airline is not null and not REGEXP_LIKE(o_1_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Outbound1 Departure Date''',
'when o_2_airline is not null and not REGEXP_LIKE(o_2_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Outbound2 Departure Date''',
'when o_3_airline is not null and not REGEXP_LIKE(o_3_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Outbound3 Departure Date''',
'when o_4_airline is not null and not REGEXP_LIKE(o_4_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Outbound4 Departure Date''',
'when i_1_airline is not null and not REGEXP_LIKE(i_1_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Inbound1 Departure Date''',
'when i_2_airline is not null and not REGEXP_LIKE(i_2_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Inbound2 Departure Date''',
'when i_3_airline is not null and not REGEXP_LIKE(i_3_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Inbound3 Departure Date''',
'when i_4_airline is not null and not REGEXP_LIKE(i_4_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Inbound4 Departure Date'' end field_name,',
'case',
'when o_1_airline is not null and not REGEXP_LIKE(o_1_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then o_1_departure_date',
'when o_2_airline is not null and not REGEXP_LIKE(o_2_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then o_2_departure_date',
'when o_3_airline is not null and not REGEXP_LIKE(o_3_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then o_3_departure_date',
'when o_4_airline is not null and not REGEXP_LIKE(o_4_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then o_4_departure_date',
'when i_1_airline is not null and not REGEXP_LIKE(i_1_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then i_1_departure_date',
'when i_2_airline is not null and not REGEXP_LIKE(i_2_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then i_2_departure_date',
'when i_3_airline is not null and not REGEXP_LIKE(i_3_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then i_3_departure_date',
'when i_4_airline is not null and not REGEXP_LIKE(i_4_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then i_4_departure_date end field_value,',
'case',
'when (',
'(o_1_airline is not null and not REGEXP_LIKE(o_1_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'')) or',
'(o_2_airline is not null and not REGEXP_LIKE(o_2_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'')) or',
'(o_3_airline is not null and not REGEXP_LIKE(o_3_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'')) or',
'(o_4_airline is not null and not REGEXP_LIKE(o_4_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'')) or',
'(i_1_airline is not null and not REGEXP_LIKE(i_1_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'')) or',
'(i_2_airline is not null and not REGEXP_LIKE(i_2_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'')) or',
'(i_3_airline is not null and not REGEXP_LIKE(i_3_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'')) or',
'(i_4_airline is not null and not REGEXP_LIKE(i_4_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$''))) then ''N'' else ''Y'' end is_valid,',
'case',
'when o_1_airline is not null and not REGEXP_LIKE(o_1_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Empty or invalid Outbound 1 Departure Date''',
'when o_2_airline is not null and not REGEXP_LIKE(o_2_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Empty or invalid Outbound 2 Departure Date''',
'when o_3_airline is not null and not REGEXP_LIKE(o_3_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Empty or invalid Outbound 3 Departure Date''',
'when o_4_airline is not null and not REGEXP_LIKE(o_4_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Empty or invalid Outbound 4 Departure Date''',
'when i_1_airline is not null and not REGEXP_LIKE(i_1_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Empty or invalid Inbound 1 Departure Date''',
'when i_2_airline is not null and not REGEXP_LIKE(i_2_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Empty or invalid Inbound 2 Departure Date''',
'when i_3_airline is not null and not REGEXP_LIKE(i_3_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Empty or invalid Inbound 3 Departure Date''',
'when i_4_airline is not null and not REGEXP_LIKE(i_4_departure_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Empty or invalid Inbound 4 Departure Date'' else '''' end validation_message from raw_content c',
')',
'select * from file_content where is_valid = ''N'') LOOP',
'    APEX_COLLECTION.ADD_MEMBER(p_collection_name => ''IMPORT_INVALID_ROWS'',',
'         p_n001 => to_number(invalidRow.line_number),',
'         p_n002 => invalidRow.idx,',
'         p_c001 => invalidRow.id,',
'         p_c002 => invalidRow.field_name,',
'         p_c003 => invalidRow.field_value,',
'         p_c004 => invalidRow.validation_message);',
'END LOOP;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P8_IS_VALID'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Y'
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
 p_id=>wwv_flow_api.id(861959488152190678)
,p_process_sequence=>70
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate Validation Messages 4'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FOR invalidRow IN (with ',
'airports as (select lookup_code,trim(meaning) meaning from FND_LOOKUP_VALUES m where m.LOOKUP_TYPE=''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE=''US''),',
'raw_content as(select',
'p.line_number,',
'trim(p.col001) as name,',
'trim(p.col002) as camp_customer,',
'lpad(trim(p.col003), 9, ''0'') as israeli_id,',
'trim(p.col004) as handling_agent,               ',
'trim(p.col005) as offer_expiration_in_hours,',
'trim(p.col006) as pnr_number,',
'trim(p.col007) as flight_cost,',
'trim(p.col008) as booking_fee,',
'trim(p.col009) as markup_cost,',
'trim(p.col010) as cost_for_billing,               ',
'trim(p.col011) as passengers_payment,',
'trim(p.col012) as agency_remarks,',
'trim(p.col013) as o_1_airline,',
'upper(trim(p.col014)) as o_1_flight_number,',
'trim(p.col015) as o_1_departure_airport,',
'trim(p.col016) as o_1_departure_date,',
'trim(p.col017) as o_1_departure_time,',
'trim(p.col018) as o_1_destination_airport,',
'trim(p.col019) as o_1_arrival_date,',
'trim(p.col020) as o_1_arrival_time,',
'--trim(p.col019) as o_1_meal,',
'trim(p.col021) as o_2_airline,',
'upper(trim(p.col022)) as o_2_flight_number,',
'trim(p.col023) as o_2_departure_airport,',
'trim(p.col024) as o_2_departure_date,',
'trim(p.col025) as o_2_departure_time,',
'trim(p.col026) as o_2_destination_airport,',
'trim(p.col027) as o_2_arrival_date,',
'trim(p.col028) as o_2_arrival_time,',
'--trim(p.col028) as o_2_meal,',
'trim(p.col029) as o_3_airline,',
'upper(trim(p.col030)) as o_3_flight_number,',
'trim(p.col031) as o_3_departure_airport,',
'trim(p.col032) as o_3_departure_date,',
'trim(p.col033) as o_3_departure_time,',
'trim(p.col034) as o_3_destination_airport,',
'trim(p.col035) as o_3_arrival_date,',
'trim(p.col036) as o_3_arrival_time,',
'--trim(p.col037) as o_3_meal,',
'trim(p.col037) as o_4_airline,',
'upper(trim(p.col038)) as o_4_flight_number,',
'trim(p.col039) as o_4_departure_airport,',
'trim(p.col040) as o_4_departure_date,',
'trim(p.col041) as o_4_departure_time,',
'trim(p.col042) as o_4_destination_airport,',
'trim(p.col043) as o_4_arrival_date,',
'trim(p.col044) as o_4_arrival_time,',
'--trim(p.col046) as o_4_meal,',
'trim(p.col045) as i_1_airline,',
'upper(trim(p.col046)) as i_1_flight_number,',
'trim(p.col047) as i_1_departure_airport,',
'trim(p.col048) as i_1_departure_date,',
'trim(p.col049) as i_1_departure_time,',
'trim(p.col050) as i_1_destination_airport,',
'trim(p.col051) as i_1_arrival_date,',
'trim(p.col052) as i_1_arrival_time,',
'--trim(p.col055) as i_1_meal,',
'trim(p.col053) as i_2_airline,',
'upper(trim(p.col054)) as i_2_flight_number,',
'trim(p.col055) as i_2_departure_airport,',
'trim(p.col056) as i_2_departure_date,',
'trim(p.col057) as i_2_departure_time,',
'trim(p.col058) as i_2_destination_airport,',
'trim(p.col059) as i_2_arrival_date,',
'trim(p.col060) as i_2_arrival_time,',
'--trim(p.col064) as i_2_meal,',
'trim(p.col061) as i_3_airline,',
'upper(trim(p.col062)) as i_3_flight_number,',
'trim(p.col063) as i_3_departure_airport,',
'trim(p.col064) as i_3_departure_date,',
'trim(p.col065) as i_3_departure_time,',
'trim(p.col066) as i_3_destination_airport,',
'trim(p.col067) as i_3_arrival_date,',
'trim(p.col068) as i_3_arrival_time,',
'--trim(p.col073) as i_3_meal,',
'trim(p.col069) as i_4_airline,',
'upper(trim(p.col070)) as i_4_flight_number,',
'trim(p.col071) as i_4_departure_airport,',
'trim(p.col072) as i_4_departure_date,',
'trim(p.col073) as i_4_departure_time,',
'trim(p.col074) as i_4_destination_airport,',
'trim(p.col075) as i_4_arrival_date,',
'trim(p.col076) as i_4_arrival_time--,',
'--trim(p.col082) as i_4_meal',
'from apex_application_temp_files f,',
'table(apex_data_parser.parse(p_content=>f.blob_content,p_file_name=>f.filename,p_add_headers_row=>''N'',p_file_charset=>''IW8MSWIN1255'')) p --AL32UTF8',
'where f.name=:P8_FILENAME and p.line_number>1),',
'file_content as (',
'select israeli_id id,line_number, 11 idx,',
'case',
'when o_1_airline is not null and not REGEXP_LIKE(o_1_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Outbound1 Departure Time''',
'when o_2_airline is not null and not REGEXP_LIKE(o_2_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Outbound2 Departure Time''',
'when o_3_airline is not null and not REGEXP_LIKE(o_3_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Outbound3 Departure Time''',
'when o_4_airline is not null and not REGEXP_LIKE(o_4_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Outbound4 Departure Time''',
'when i_1_airline is not null and not REGEXP_LIKE(i_1_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Inbound1 Departure Time''',
'when i_2_airline is not null and not REGEXP_LIKE(i_2_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Inbound2 Departure Time''',
'when i_3_airline is not null and not REGEXP_LIKE(i_3_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Inbound3 Departure Time''',
'when i_4_airline is not null and not REGEXP_LIKE(i_4_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Inbound4 Departure Time'' end field_name,',
'case',
'when o_1_airline is not null and not REGEXP_LIKE(o_1_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then o_1_departure_time',
'when o_2_airline is not null and not REGEXP_LIKE(o_2_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then o_2_departure_time',
'when o_3_airline is not null and not REGEXP_LIKE(o_3_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then o_3_departure_time',
'when o_4_airline is not null and not REGEXP_LIKE(o_4_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then o_4_departure_time',
'when i_1_airline is not null and not REGEXP_LIKE(i_1_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then i_1_departure_time',
'when i_2_airline is not null and not REGEXP_LIKE(i_2_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then i_2_departure_time',
'when i_3_airline is not null and not REGEXP_LIKE(i_3_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then i_3_departure_time',
'when i_4_airline is not null and not REGEXP_LIKE(i_4_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then i_4_departure_time end field_value,',
'case',
'when (',
'(o_1_airline is not null and not REGEXP_LIKE(o_1_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'')) or',
'(o_2_airline is not null and not REGEXP_LIKE(o_2_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'')) or',
'(o_3_airline is not null and not REGEXP_LIKE(o_3_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'')) or',
'(o_4_airline is not null and not REGEXP_LIKE(o_4_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'')) or',
'(i_1_airline is not null and not REGEXP_LIKE(i_1_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'')) or',
'(i_2_airline is not null and not REGEXP_LIKE(i_2_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'')) or',
'(i_3_airline is not null and not REGEXP_LIKE(i_3_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'')) or',
'(i_4_airline is not null and not REGEXP_LIKE(i_4_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$''))) then ''N'' else ''Y'' end is_valid,',
'case',
'when o_1_airline is not null and not REGEXP_LIKE(o_1_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Empty or invalid Outbound 1 Departure Time''',
'when o_2_airline is not null and not REGEXP_LIKE(o_2_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Empty or invalid Outbound 2 Departure Time''',
'when o_3_airline is not null and not REGEXP_LIKE(o_3_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Empty or invalid Outbound 3 Departure Time''',
'when o_4_airline is not null and not REGEXP_LIKE(o_4_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Empty or invalid Outbound 4 Departure Time''',
'when i_1_airline is not null and not REGEXP_LIKE(i_1_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Empty or invalid Inbound 1 Departure Time''',
'when i_2_airline is not null and not REGEXP_LIKE(i_2_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Empty or invalid Inbound 2 Departure Time''',
'when i_3_airline is not null and not REGEXP_LIKE(i_3_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Empty or invalid Inbound 3 Departure Time''',
'when i_4_airline is not null and not REGEXP_LIKE(i_4_departure_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Empty or invalid Inbound 4 Departure Time'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number, 13 idx,',
'case',
'when o_1_airline is not null and not REGEXP_LIKE(o_1_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Outbound1 Arrival Date''',
'when o_2_airline is not null and not REGEXP_LIKE(o_2_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Outbound2 Arrival Date''',
'when o_3_airline is not null and not REGEXP_LIKE(o_3_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Outbound3 Arrival Date''',
'when o_4_airline is not null and not REGEXP_LIKE(o_4_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Outbound4 Arrival Date''',
'when i_1_airline is not null and not REGEXP_LIKE(i_1_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Inbound1 Arrival Date''',
'when i_2_airline is not null and not REGEXP_LIKE(i_2_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Inbound2 Arrival Date''',
'when i_3_airline is not null and not REGEXP_LIKE(i_3_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Inbound3 Arrival Date''',
'when i_4_airline is not null and not REGEXP_LIKE(i_4_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Inbound4 Arrival Date'' end field_name,',
'case',
'when o_1_airline is not null and not REGEXP_LIKE(o_1_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then o_1_arrival_date',
'when o_2_airline is not null and not REGEXP_LIKE(o_2_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then o_2_arrival_date',
'when o_3_airline is not null and not REGEXP_LIKE(o_3_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then o_3_arrival_date',
'when o_4_airline is not null and not REGEXP_LIKE(o_4_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then o_4_arrival_date',
'when i_1_airline is not null and not REGEXP_LIKE(i_1_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then i_1_arrival_date',
'when i_2_airline is not null and not REGEXP_LIKE(i_2_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then i_2_arrival_date',
'when i_3_airline is not null and not REGEXP_LIKE(i_3_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then i_3_arrival_date',
'when i_4_airline is not null and not REGEXP_LIKE(i_4_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then i_4_arrival_date end field_value,',
'case',
'when (',
'(o_1_airline is not null and not REGEXP_LIKE(o_1_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'')) or',
'(o_2_airline is not null and not REGEXP_LIKE(o_2_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'')) or',
'(o_3_airline is not null and not REGEXP_LIKE(o_3_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'')) or',
'(o_4_airline is not null and not REGEXP_LIKE(o_4_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'')) or',
'(i_1_airline is not null and not REGEXP_LIKE(i_1_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'')) or',
'(i_2_airline is not null and not REGEXP_LIKE(i_2_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'')) or',
'(i_3_airline is not null and not REGEXP_LIKE(i_3_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'')) or',
'(i_4_airline is not null and not REGEXP_LIKE(i_4_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$''))) then ''N'' else ''Y'' end is_valid,',
'case',
'when o_1_airline is not null and not REGEXP_LIKE(o_1_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Empty or invalid Outbound 1 Arrival Date''',
'when o_2_airline is not null and not REGEXP_LIKE(o_2_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Empty or invalid Outbound 2 Arrival Date''',
'when o_3_airline is not null and not REGEXP_LIKE(o_3_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Empty or invalid Outbound 3 Arrival Date''',
'when o_4_airline is not null and not REGEXP_LIKE(o_4_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Empty or invalid Outbound 4 Arrival Date''',
'when i_1_airline is not null and not REGEXP_LIKE(i_1_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Empty or invalid Inbound 1 Arrival Date''',
'when i_2_airline is not null and not REGEXP_LIKE(i_2_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Empty or invalid Inbound 2 Arrival Date''',
'when i_3_airline is not null and not REGEXP_LIKE(i_3_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Empty or invalid Inbound 3 Arrival Date''',
'when i_4_airline is not null and not REGEXP_LIKE(i_4_arrival_date, ''^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$'') then ''Empty or invalid Inbound 4 Arrival Date'' else '''' end validation_message from raw_content c',
'union',
'select israeli_id id,line_number, 14 idx,',
'case',
'when o_1_airline is not null and not REGEXP_LIKE(o_1_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Outbound1 Arrival Time''',
'when o_2_airline is not null and not REGEXP_LIKE(o_2_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Outbound2 Arrival Time''',
'when o_3_airline is not null and not REGEXP_LIKE(o_3_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Outbound3 Arrival Time''',
'when o_4_airline is not null and not REGEXP_LIKE(o_4_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Outbound4 Arrival Time''',
'when i_1_airline is not null and not REGEXP_LIKE(i_1_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Inbound1 Arrival Time''',
'when i_2_airline is not null and not REGEXP_LIKE(i_2_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Inbound2 Arrival Time''',
'when i_3_airline is not null and not REGEXP_LIKE(i_3_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Inbound3 Arrival Time''',
'when i_4_airline is not null and not REGEXP_LIKE(i_4_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Inbound4 Arrival Time'' end field_name,',
'case',
'when o_1_airline is not null and not REGEXP_LIKE(o_1_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then o_1_arrival_time',
'when o_2_airline is not null and not REGEXP_LIKE(o_2_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then o_2_arrival_time',
'when o_3_airline is not null and not REGEXP_LIKE(o_3_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then o_3_arrival_time',
'when o_4_airline is not null and not REGEXP_LIKE(o_4_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then o_4_arrival_time',
'when i_1_airline is not null and not REGEXP_LIKE(i_1_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then i_1_arrival_time',
'when i_2_airline is not null and not REGEXP_LIKE(i_2_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then i_2_arrival_time',
'when i_3_airline is not null and not REGEXP_LIKE(i_3_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then i_3_arrival_time',
'when i_4_airline is not null and not REGEXP_LIKE(i_4_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then i_4_arrival_time end field_value,',
'case',
'when (',
'(o_1_airline is not null and not REGEXP_LIKE(o_1_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'')) or',
'(o_2_airline is not null and not REGEXP_LIKE(o_2_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'')) or',
'(o_3_airline is not null and not REGEXP_LIKE(o_3_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'')) or',
'(o_4_airline is not null and not REGEXP_LIKE(o_4_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'')) or',
'(i_1_airline is not null and not REGEXP_LIKE(i_1_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'')) or',
'(i_2_airline is not null and not REGEXP_LIKE(i_2_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'')) or',
'(i_3_airline is not null and not REGEXP_LIKE(i_3_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'')) or',
'(i_4_airline is not null and not REGEXP_LIKE(i_4_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$''))) then ''N'' else ''Y'' end is_valid,',
'case',
'when o_1_airline is not null and not REGEXP_LIKE(o_1_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Empty or invalid Outbound 1 Arrival Time''',
'when o_2_airline is not null and not REGEXP_LIKE(o_2_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Empty or invalid Outbound 2 Arrival Time''',
'when o_3_airline is not null and not REGEXP_LIKE(o_3_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Empty or invalid Outbound 3 Arrival Time''',
'when o_4_airline is not null and not REGEXP_LIKE(o_4_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Empty or invalid Outbound 4 Arrival Time''',
'when i_1_airline is not null and not REGEXP_LIKE(i_1_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Empty or invalid Inbound 1 Arrival Time''',
'when i_2_airline is not null and not REGEXP_LIKE(i_2_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Empty or invalid Inbound 2 Arrival Time''',
'when i_3_airline is not null and not REGEXP_LIKE(i_3_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Empty or invalid Inbound 3 Arrival Time''',
'when i_4_airline is not null and not REGEXP_LIKE(i_4_arrival_time, ''^([01][0-9]|2[0-3]):([0-5][0-9])$'') then ''Empty or invalid Inbound 4 Arrival Time'' else '''' end validation_message from raw_content c',
')',
'select * from file_content where is_valid = ''N'') LOOP',
'    APEX_COLLECTION.ADD_MEMBER(p_collection_name => ''IMPORT_INVALID_ROWS'',',
'         p_n001 => to_number(invalidRow.line_number),',
'         p_n002 => invalidRow.idx,',
'         p_c001 => invalidRow.id,',
'         p_c002 => invalidRow.field_name,',
'         p_c003 => invalidRow.field_value,',
'         p_c004 => invalidRow.validation_message);',
'END LOOP;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P8_IS_VALID'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(861959649997190680)
,p_process_sequence=>80
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate Validation Messages 5'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FOR invalidRow IN (with ',
'airports as (select lookup_code,trim(meaning) meaning from FND_LOOKUP_VALUES m where m.LOOKUP_TYPE=''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE=''US''),',
'raw_content as (select',
'p.line_number,',
'trim(p.col001) as name,',
'trim(p.col002) as camp_customer,',
'lpad(trim(p.col003), 9, ''0'') as israeli_id,',
'trim(p.col004) as handling_agent,               ',
'trim(p.col005) as offer_expiration_in_hours,',
'trim(p.col006) as pnr_number,',
'trim(p.col007) as flight_cost,',
'trim(p.col008) as booking_fee,',
'trim(p.col009) as markup_cost,',
'trim(p.col010) as cost_for_billing,               ',
'trim(p.col011) as passengers_payment,',
'trim(p.col012) as agency_remarks,',
'trim(p.col013) as o_1_airline,',
'upper(trim(p.col014)) as o_1_flight_number,',
'trim(p.col015) as o_1_departure_airport,',
'trim(p.col016) as o_1_departure_date,',
'trim(p.col017) as o_1_departure_time,',
'trim(p.col018) as o_1_destination_airport,',
'trim(p.col019) as o_1_arrival_date,',
'trim(p.col020) as o_1_arrival_time,',
'--trim(p.col019) as o_1_meal,',
'trim(p.col021) as o_2_airline,',
'upper(trim(p.col022)) as o_2_flight_number,',
'trim(p.col023) as o_2_departure_airport,',
'trim(p.col024) as o_2_departure_date,',
'trim(p.col025) as o_2_departure_time,',
'trim(p.col026) as o_2_destination_airport,',
'trim(p.col027) as o_2_arrival_date,',
'trim(p.col028) as o_2_arrival_time,',
'--trim(p.col028) as o_2_meal,',
'trim(p.col029) as o_3_airline,',
'upper(trim(p.col030)) as o_3_flight_number,',
'trim(p.col031) as o_3_departure_airport,',
'trim(p.col032) as o_3_departure_date,',
'trim(p.col033) as o_3_departure_time,',
'trim(p.col034) as o_3_destination_airport,',
'trim(p.col035) as o_3_arrival_date,',
'trim(p.col036) as o_3_arrival_time,',
'--trim(p.col037) as o_3_meal,',
'trim(p.col037) as o_4_airline,',
'upper(trim(p.col038)) as o_4_flight_number,',
'trim(p.col039) as o_4_departure_airport,',
'trim(p.col040) as o_4_departure_date,',
'trim(p.col041) as o_4_departure_time,',
'trim(p.col042) as o_4_destination_airport,',
'trim(p.col043) as o_4_arrival_date,',
'trim(p.col044) as o_4_arrival_time,',
'--trim(p.col046) as o_4_meal,',
'trim(p.col045) as i_1_airline,',
'upper(trim(p.col046)) as i_1_flight_number,',
'trim(p.col047) as i_1_departure_airport,',
'trim(p.col048) as i_1_departure_date,',
'trim(p.col049) as i_1_departure_time,',
'trim(p.col050) as i_1_destination_airport,',
'trim(p.col051) as i_1_arrival_date,',
'trim(p.col052) as i_1_arrival_time,',
'--trim(p.col055) as i_1_meal,',
'trim(p.col053) as i_2_airline,',
'upper(trim(p.col054)) as i_2_flight_number,',
'trim(p.col055) as i_2_departure_airport,',
'trim(p.col056) as i_2_departure_date,',
'trim(p.col057) as i_2_departure_time,',
'trim(p.col058) as i_2_destination_airport,',
'trim(p.col059) as i_2_arrival_date,',
'trim(p.col060) as i_2_arrival_time,',
'--trim(p.col064) as i_2_meal,',
'trim(p.col061) as i_3_airline,',
'upper(trim(p.col062)) as i_3_flight_number,',
'trim(p.col063) as i_3_departure_airport,',
'trim(p.col064) as i_3_departure_date,',
'trim(p.col065) as i_3_departure_time,',
'trim(p.col066) as i_3_destination_airport,',
'trim(p.col067) as i_3_arrival_date,',
'trim(p.col068) as i_3_arrival_time,',
'--trim(p.col073) as i_3_meal,',
'trim(p.col069) as i_4_airline,',
'upper(trim(p.col070)) as i_4_flight_number,',
'trim(p.col071) as i_4_departure_airport,',
'trim(p.col072) as i_4_departure_date,',
'trim(p.col073) as i_4_departure_time,',
'trim(p.col074) as i_4_destination_airport,',
'trim(p.col075) as i_4_arrival_date,',
'trim(p.col076) as i_4_arrival_time--,',
'--trim(p.col082) as i_4_meal',
'from apex_application_temp_files f,',
'table(apex_data_parser.parse(p_content=>f.blob_content,p_file_name=>f.filename,p_add_headers_row=>''N'',p_file_charset=>''IW8MSWIN1255'')) p --AL32UTF8',
'where f.name=:P8_FILENAME and p.line_number>1),',
'file_content as (',
'select israeli_id id,line_number, 9 idx,',
'case',
'when o_1_airline is not null and not exists (select 1 from airports where lookup_code=c.o_1_departure_airport) then ''Outbound1 Departure Airport''',
'when o_2_airline is not null and not exists (select 1 from airports where lookup_code=c.o_2_departure_airport) then ''Outbound2 Departure Airport''',
'when o_3_airline is not null and not exists (select 1 from airports where lookup_code=c.o_3_departure_airport) then ''Outbound3 Departure Airport''',
'when o_4_airline is not null and not exists (select 1 from airports where lookup_code=c.o_4_departure_airport) then ''Outbound4 Departure Airport''',
'when i_1_airline is not null and not exists (select 1 from airports where lookup_code=c.i_1_departure_airport) then ''Inbound1 Departure Airport''',
'when i_2_airline is not null and not exists (select 1 from airports where lookup_code=c.i_2_departure_airport) then ''Inbound2 Departure Airport''',
'when i_3_airline is not null and not exists (select 1 from airports where lookup_code=c.i_3_departure_airport) then ''Inbound3 Departure Airport''',
'when i_4_airline is not null and not exists (select 1 from airports where lookup_code=c.i_4_departure_airport) then ''Inbound4 Departure Airport'' end field_name,',
'case',
'when o_1_airline is not null and not exists (select 1 from airports where lookup_code=c.o_1_departure_airport) then o_1_departure_airport',
'when o_2_airline is not null and not exists (select 1 from airports where lookup_code=c.o_2_departure_airport) then o_2_departure_airport',
'when o_3_airline is not null and not exists (select 1 from airports where lookup_code=c.o_3_departure_airport) then o_3_departure_airport',
'when o_4_airline is not null and not exists (select 1 from airports where lookup_code=c.o_4_departure_airport) then o_4_departure_airport',
'when i_1_airline is not null and not exists (select 1 from airports where lookup_code=c.i_1_departure_airport) then i_1_departure_airport',
'when i_2_airline is not null and not exists (select 1 from airports where lookup_code=c.i_2_departure_airport) then i_2_departure_airport',
'when i_3_airline is not null and not exists (select 1 from airports where lookup_code=c.i_3_departure_airport) then i_3_departure_airport',
'when i_4_airline is not null and not exists (select 1 from airports where lookup_code=c.i_4_departure_airport) then i_4_departure_airport end field_value,',
'case',
'when o_1_airline is not null and not exists (select 1 from airports where lookup_code=c.o_1_departure_airport) then ''N''',
'when o_2_airline is not null and not exists (select 1 from airports where lookup_code=c.o_2_departure_airport) then ''N''',
'when o_3_airline is not null and not exists (select 1 from airports where lookup_code=c.o_3_departure_airport) then ''N''',
'when o_4_airline is not null and not exists (select 1 from airports where lookup_code=c.o_4_departure_airport) then ''N''',
'when i_1_airline is not null and not exists (select 1 from airports where lookup_code=c.i_1_departure_airport) then ''N''',
'when i_2_airline is not null and not exists (select 1 from airports where lookup_code=c.i_2_departure_airport) then ''N''',
'when i_3_airline is not null and not exists (select 1 from airports where lookup_code=c.i_3_departure_airport) then ''N''',
'when i_4_airline is not null and not exists (select 1 from airports where lookup_code=c.i_4_departure_airport) then ''N'' else ''Y'' end is_valid,',
'case',
'when o_1_airline is not null and not exists (select 1 from airports where lookup_code=c.o_1_departure_airport) then ''Empty or invalid Outbound 1 Departure Airport''',
'when o_2_airline is not null and not exists (select 1 from airports where lookup_code=c.o_2_departure_airport) then ''Empty or invalid Outbound 2 Departure Airport''',
'when o_3_airline is not null and not exists (select 1 from airports where lookup_code=c.o_3_departure_airport) then ''Empty or invalid Outbound 3 Departure Airport''',
'when o_4_airline is not null and not exists (select 1 from airports where lookup_code=c.o_4_departure_airport) then ''Empty or invalid Outbound 4 Departure Airport''',
'when i_1_airline is not null and not exists (select 1 from airports where lookup_code=c.i_1_departure_airport) then ''Empty or invalid Inbound 1 Departure Airport''',
'when i_2_airline is not null and not exists (select 1 from airports where lookup_code=c.i_2_departure_airport) then ''Empty or invalid Inbound 2 Departure Airport''',
'when i_3_airline is not null and not exists (select 1 from airports where lookup_code=c.i_3_departure_airport) then ''Empty or invalid Inbound 3 Departure Airport''',
'when i_4_airline is not null and not exists (select 1 from airports where lookup_code=c.i_4_departure_airport) then ''Empty or invalid Inbound 4 Departure Airport'' else '''' end validation_message from raw_content c',
')',
'select * from file_content where is_valid = ''N'') LOOP',
'    APEX_COLLECTION.ADD_MEMBER(p_collection_name => ''IMPORT_INVALID_ROWS'',',
'         p_n001 => to_number(invalidRow.line_number),',
'         p_n002 => invalidRow.idx,',
'         p_c001 => invalidRow.id,',
'         p_c002 => invalidRow.field_name,',
'         p_c003 => invalidRow.field_value,',
'         p_c004 => invalidRow.validation_message);',
'END LOOP;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P8_IS_VALID'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(849869704398554315)
,p_process_sequence=>90
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Is Valid 2'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select case when count(*) > 0 then ''N'' else ''Y'' end into :P8_IS_VALID',
'    FROM APEX_COLLECTIONS ',
'    WHERE collection_name = ''IMPORT_INVALID_ROWS'';',
'    ',
'    exception when no_data_found then ',
'        :P8_IS_VALID := ''Y'';',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P8_IS_VALID'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Y'
);
wwv_flow_api.component_end;
end;
/
