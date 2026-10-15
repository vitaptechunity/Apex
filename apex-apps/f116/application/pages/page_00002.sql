prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(119978609050743808)
,p_name=>'Flights'
,p_alias=>'FLIGHTS'
,p_step_title=>'Flights'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'',
'',
'',
'',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var buttonsHtmlSC;',
'var buttonsHtmlSSH;',
'',
'function getDateFromText(dateTimeText) {',
'    var day, month, year, hour, min; ',
'    var offerTimeDate = null;',
'    var dateTimeParts = dateTimeText.split('' '');',
'    ',
'    if (dateTimeParts.length == 2) {',
'        var dateParts = dateTimeParts[0].split(''/'');',
'        var timeParts = dateTimeParts[1].split('':'');',
'        if (dateParts.length == 3 && timeParts.length == 2) {',
'            day = parseInt(dateParts[0]);',
'            month = parseInt(dateParts[1]) - 1;',
'            year = parseInt(dateParts[2]);',
'            hour = parseInt(timeParts[0]);',
'            min = parseInt(timeParts[1]);',
'            offerTimeDate = new Date(year, month, day, hour, min);',
'        }',
'    }',
'    return offerTimeDate;',
'}',
'',
'function timeToBook(dateTimeText) {',
'    var offerTimeDate = getDateFromText(dateTimeText);',
'    if (offerTimeDate == null)',
'        return '''';',
'    ',
'    var diff = offerTimeDate - new Date();',
'    var expired = diff < 0;',
'',
'    diff = Math.abs(diff);',
'    ',
'    var days = diff / 864e5 | 0;',
'    var hours = diff % 864e5 / 3.6e6 | 0;',
'    var mins  = diff % 3.6e6 / 6e4 | 0;',
'    var returnValue = expired == true ? ''Offer expired '' : ''Book in '';',
'',
'    if (days > 0) returnValue += days + (days > 1 ? '' Days '' : '' Day '');',
'    if (hours > 0) returnValue += hours + (hours > 1 ? '' Hours '' : '' Hour '');',
'    if (mins > 0) returnValue += mins + (mins > 1 ? '' Minutes '' : '' Minute '');',
'    ',
'    returnValue = returnValue.substring(0, returnValue.length - 1);',
'    ',
'    if (expired) returnValue += '' ago!'';',
'    else returnValue += ''!'';',
'',
'    return returnValue;   ',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'$(document).ready(function() {',
'    $(''#summerCampsInfoRegion .t-fht-thead'').scroll(function() {',
'        $(".top-scroll-wrapper-sc").scrollLeft($("#summerCampsInfoRegion .t-fht-thead").scrollLeft());',
'    });',
'    $(''.top-scroll-wrapper-sc'').scroll(function() {',
'        $("#summerCampsInfoRegion .t-fht-thead").scrollLeft($(".top-scroll-wrapper-sc").scrollLeft());',
'    });',
'    ',
'    $(''#shinshinimInfoRegion .t-fht-thead'').scroll(function() {',
'        $(".top-scroll-wrapper-ssh").scrollLeft($("#shinshinimInfoRegion .t-fht-thead").scrollLeft());',
'    });',
'    $(''.top-scroll-wrapper-ssh'').scroll(function() {',
'        $("#shinshinimInfoRegion .t-fht-thead").scrollLeft($(".top-scroll-wrapper-ssh").scrollLeft());',
'    });',
'    ',
'    ',
'    //Handle Approve Until Tooltip Refresh In Real Time (Get AssignmentID and PersonID from .valid-until span attributes)',
'    ',
'    //var timeToBookVal = timeToBook($v(''P2_C_VALID_UNTIL''));',
'    //var expired = timeToBookVal.substring(0,4) != ''Book'';',
'    //$(''.valid-until[data-assignment-id="'' + assignmentId + ''"][data-person-id="'' + personId + ''"]'').text($v(''P2_C_VALID_UNTIL'')).attr(''title'', timeToBookVal).parent().attr(''style'', expired === true ? ''color: rgb(255, 0, 0); font-weight: bold;'' : '''''
||');',
'});',
'*/'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.load-from-ai-dialog .ui-dialog-content {',
'    height: auto !important;',
'}',
'',
'#summerCampsInfoRegion_toolbar_controls > div.a-IRR-controlGroup.a-IRR-controlGroup--options > div.a-IRR-actions,',
'#shinshinimInfoRegion_toolbar_controls > div.a-IRR-controlGroup.a-IRR-controlGroup--options > div.a-IRR-actions {',
'    display: none;',
'}',
'',
'.apex-rds-hover.left,',
'.apex-rds-hover.right {',
'    display: none !important;',
'}',
'',
'.apex-rds a:focus {',
'    box-shadow: none;',
'}',
'',
'#P2_ACTIVE_SWITCH_LABEL {',
'    font-size: 14px;',
'}',
'',
'#P2_ACTIVE_SWITCH_CONTAINER {',
'    display: flex;',
'    align-items: center;',
'    justify-content: end;',
'}',
'',
'#P2_ACTIVE_SWITCH_CONTAINER .col-2,',
'#P2_ACTIVE_SWITCH_CONTAINER .col-10 {',
'    width: auto !important;',
'}',
'',
'.t-fht-thead.js-stickyTableHeader.js-stickyWidget-toggle.is-stuck,',
'.top-scroll-wrapper-sc.is-stuck,',
'.top-scroll-wrapper-ssh.is-stuck {',
'    top: 50px !important;',
'}',
'',
'.t-Button--iconLeft .t-Icon {',
'    margin-right: 10px;',
'}',
'',
'.t-fht-thead.js-stickyTableHeader {',
'    padding-top: 8px;',
'}',
'',
'#summerCampsInfoRegion_data_panel .t-fht-wrapper .js-stickyWidget-placeholder,',
'#shinshinimInfoRegion_data_panel .t-fht-wrapper .js-stickyWidget-placeholder {',
'    height: 50px !important;',
'}',
'',
'.t-Header-logo-link {',
'    max-width: 170px !important;',
'}',
'',
'.t-Header-navBar {',
'    right: 0;',
'    position: absolute;',
'}',
'',
'.flights-region table.a-IRR-table,',
'.top-scroll-div-sc,',
'.top-scroll-div-ssh {',
'    width: 6000px;',
'}',
'',
'.flights-region .a-IRR-buttons {',
'    width: 130px;',
'}',
'',
'.top-scroll-wrapper-sc,',
'.top-scroll-wrapper-ssh {',
'    overflow-x: scroll; ',
'    overflow-y: hidden;',
'    z-index: 305 !important;',
'}',
'',
'.top-scroll-wrapper-sc,',
'.top-scroll-wrapper-ssh,',
'.top-scroll-div-sc,',
'.top-scroll-div-ssh {',
'    height: 15px;',
'}',
'',
'.remarks-span {',
'    color: red;',
'    font-size: 23px;',
'}',
'',
'.show-tickets-btn {',
'    color: #056abf;',
'    font-size: 23px;',
'}',
'',
'#FLIGHT .a-IRR-headerLabel,',
'#FLIGHT_TICKET .a-IRR-headerLabel,',
'#PIC .a-IRR-headerLabel,',
'#FLIGHT_REMARKS_APPLICANT .a-IRR-headerLabel,',
'#FLIGHTS_REMARKS_MASLUL .a-IRR-headerLabel {',
'    color: #056abf;',
'}',
'',
'.a-IRR-controlGroup--options {',
'    display: flex;',
'}',
'',
'#downloadBtnSC,',
'#importBtnSC,',
'#downloadTemplateBtnSC,',
'#downloadBtnSSH,',
'#importBtnSSH,',
'#downloadTemplateBtnSSH {',
'    height: 32px;',
'    margin-right: 10px;',
'}',
'',
'#summerCampsInfoRegion_toolbar_controls,',
'#shinshinimInfoRegion_toolbar_controls {',
'    display: flex;',
'}',
'',
'#summerCampsInfoRegion_toolbar_controls .a-IRR-controlGroup--search,',
'#shinshinimInfoRegion_toolbar_controls .a-IRR-controlGroup--search {',
'    flex-grow: 1;',
'}',
'',
'tr.family-member td /*:not(td[headers="STATUS"])*/ {',
'    background-color: #edf4ff;',
'}',
'',
'th[id="STATUS"],',
'td[headers="STATUS"] {',
'    width: 150px;',
'}',
'',
'.flights-management-dialog .ui-dialog-titlebar {',
'    padding-top: 7px !important;',
'    padding-bottom: 7px !important;',
'}',
'',
'.flights-management-dialog .ui-dialog-titlebar .ui-dialog-titlebar-close {',
'    top: 8px;',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_last_updated_by=>'DRORA'
,p_last_upd_yyyymmddhh24miss=>'20261004124858'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1698416708881892330)
,p_plug_name=>'Floating Header Controls'
,p_region_name=>'floatingHeaderControlsRegion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57284967489128318)
,p_plug_name=>'Summer Camps'
,p_region_name=>'summerCampsInfoRegion'
,p_region_template_options=>'#DEFAULT#:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'class="flights-region"'
,p_plug_template=>wwv_flow_api.id(119978609050743302)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    CASE WHEN vf.c015 IN (''1'', ''4'') THEN',
'        CASE WHEN ac.c001 IS NULL THEN APEX_ITEM.CHECKBOX(1, vf.c012)',
'             ELSE APEX_ITEM.CHECKBOX(1, vf.c012, ''CHECKED'')',
'        END',
'    ELSE '''' END AS rowSelector,',
'    ''<a class="fa fa-plane check-flights-btn" title="Manage Flight" href="'' ||',
'                apex_page.get_url(',
'                    p_page        => 4,',
'                    p_items       => ''P4_IS_ACTIVE,P4_ASSIGNMENT_ID,P4_PERSON_ID,P4_REQUEST_ID'',',
'                    p_values      => vfe.c014 || '','' || vf.c001 || '','' || vf.c002 || '','',',
'                    p_clear_cache => ''4''',
'                ) || ''"></a>'' flight,',
'    ''<a class="fa fa-picture-o view-passports-btn" title="View Passports" href="'' ||',
'                apex_page.get_url(',
'                    p_page   => 5,',
'                    p_items  => ''P5_PERSON_ID'',',
'                    p_values => vf.c002',
'                ) || ''"></a>'' AS pic,',
'    CASE WHEN vf.c039 IS NOT NULL',
'         THEN ''<span class="fa fa-comment-o remarks-span" title="'' || vf.c039 || ''"></span>'' else '''' END AS flight_remarks_applicant,',
'    CASE WHEN vf.c040 IS NOT NULL',
'         THEN ''<span class="fa fa-comment-o remarks-span" title="'' || vf.c040 || ''"></span>'' else '''' END AS flights_remarks_maslul,',
'    CASE WHEN vf.c049 IS NOT NULL',
'         THEN ''<a class="fa fa-image show-tickets-btn" data-assignment-id="'' || vf.c001 ||',
'              ''" data-person-id="'' || vf.c002 || ''" data-request-id="'' || vf.c044 || ''" title="View Flight Ticket" href="'' ||',
'              apex_page.get_url(',
'                  p_page        => 6,',
'                  p_items       => ''P6_DOC_ID,P6_ASSIGNMENT_ID,P6_PERSON_ID,P6_REQUEST_ID'',',
'                  p_values      => vf.c049 || '','' || vf.c001 || '','' || vf.c002 || '','' || vf.c049,',
'                  p_clear_cache => ''6''',
'              ) || ''"></a>''',
'         ELSE ''<span class="show-tickets-btn" data-assignment-id="'' || vf.c001 ||',
'              ''" data-person-id="'' || vf.c002 || ''" data-request-id="'' || vf.c049 || ''" title="View Flight Ticket"></span>'' END AS FLIGHT_TICKET,',
'    vf.c001	assignment_id,',
'    vf.c002	person_id,',
'    vf.c003	mobile,',
'    vf.c004	last_name,',
'    vf.c005	first_name,',
'    vf.c006	gender,',
'    vf.c007	date_of_birth,',
'    vf.c008	camp_name,',
'    vf.c009	city_of_birth,',
'    vf.c010	country_of_birth,',
'    vf.c011	email_address,',
'    vf.c012	national_id,',
'    vf.c013	passport_number,',
'    vf.c014	passport_expiration,',
'    vf.c015	status_code,',
'    vf.c016	coordinator_name,',
'    vf.c017	is_us_or_ca_citizen,',
'    case when vfe.c014 = ''0'' and vf.c018 = ''Not Started'' then ''Inactive'' else vf.c018 end status,',
'    case when vfe.c014 = ''0'' and vf.c018 = ''Not Started'' then ''rgb(209 209 209 / 40%)'' else vf.c019 end status_color,',
'    case when vfe.c014 = ''0'' and vf.c018 = ''Not Started'' then ''box-shadow: 0 0 5px 2px gray;'' else vf.c020 end status_color_shadow,',
'    case when vfe.c014 = ''0'' and vf.c018 = ''Not Started'' then 999 else to_number(vf.c021) end status_order,',
'    vf.c022	maslul,',
'    vf.c023	maslul_short_name,',
'    vf.c024	main_airport,',
'    vf.c025	sec_airport,',
'    vf.c026	individual_arrival_date,',
'    vf.c027	camp_arrival_time,',
'    vf.c028	camp_arrival_date,',
'    vf.c029	requested_return_date,',
'    vf.c030	meal,',
'    vf.c031	departure_airport,',
'    vf.c032	j1_permit_end_date,',
'    case when vf.c018 != ''Booked'' then vf.c033 else null end offer_time,',
'    case when vf.c018 != ''Booked'' then vf.c034 else null end offer_time_raw,',
'    vf.c035	main_family_member_id,',
'    vf.c036	departure_time,',
'    vf.c037	shlichut_end_date,',
'    vf.c038	cost,',
'    vf.c039	flight_remarks_applicant_csv,',
'    vf.c040	flights_remarks_maslul_csv,',
'    vf.c041	flight_ticket_csv,',
'    vf.c042	is_us_or_ca_citizen_csv,',
'    vf.c043	country,',
'    vf.c044	state,',
'    vf.c045	city,',
'    vf.c046	preferred_arrival_time,',
'    vf.c047	flight_cost,',
'    vf.c048	agent_name,',
'    vfe.c014 active',
'FROM apex_collections  vf,',
'     apex_collections  vfe,',
'     apex_collections  ac',
'WHERE vf.collection_name = ''MAIN_VIEW_SC''',
'    AND NVL(ac.collection_name, ''VIEW_SELECTION_SC'') = ''VIEW_SELECTION_SC''',
'    AND NVL(vfe.collection_name, ''EXTRA_INFO_VIEW'') = ''EXTRA_INFO_VIEW''',
'    AND vf.c012 = ac.c001(+)',
'    AND vf.c001 = vfe.c001(+)',
'    AND instr(:P2_USER_MASLULIM, vf.c023) > 0',
'    AND ((:P2_ACTIVE_SWITCH IS NULL OR :P2_ACTIVE_SWITCH = ''N'') OR (:P2_ACTIVE_SWITCH = ''Y'' and vfe.c014 = ''0''))',
'ORDER BY vfe.c014 desc, to_date(vf.c033, ''DD/MM/YYYY HH24:MI'') NULLS LAST, to_number(vf.c021), vf.c008, vf.c004, vf.c005'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P2_USER_MASLULIM,P2_USER_TYPE,P2_ACTIVE_SWITCH'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P2_SC_ROWS_COUNT > 0'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Summer Camps'
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
 p_id=>wwv_flow_api.id(57285073513128319)
,p_no_data_found_message=>'No Data Found'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'NONE'
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KERENT'
,p_internal_uid=>57285073513128319
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(642462926184910706)
,p_db_column_name=>'MASLUL_SHORT_NAME'
,p_display_order=>40
,p_column_identifier=>'AE'
,p_column_label=>'Maslul Short Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57285351996128322)
,p_db_column_name=>'GENDER'
,p_display_order=>50
,p_column_identifier=>'C'
,p_column_label=>'Gender'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57285491990128323)
,p_db_column_name=>'DATE_OF_BIRTH'
,p_display_order=>60
,p_column_identifier=>'D'
,p_column_label=>'Date Of Birth'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57285600619128325)
,p_db_column_name=>'CITY_OF_BIRTH'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'City Of Birth'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57285724724128326)
,p_db_column_name=>'COUNTRY_OF_BIRTH'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Country Of Birth'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57285592672128324)
,p_db_column_name=>'CAMP_NAME'
,p_display_order=>90
,p_column_identifier=>'E'
,p_column_label=>'Camp'
,p_column_html_expression=>'<div class="camp-name">#CAMP_NAME#</div>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(295405428196961)
,p_db_column_name=>'COORDINATOR_NAME'
,p_display_order=>100
,p_column_identifier=>'U'
,p_column_label=>'Coordinator'
,p_column_html_expression=>'<div class="coordinator-name">#COORDINATOR_NAME#</div>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57285844755128327)
,p_db_column_name=>'EMAIL_ADDRESS'
,p_display_order=>110
,p_column_identifier=>'H'
,p_column_label=>'Email Address'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57286053308128329)
,p_db_column_name=>'PASSPORT_NUMBER'
,p_display_order=>120
,p_column_identifier=>'J'
,p_column_label=>'Passport Number'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'PASSPORT_NUMBER_COL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57286132095128330)
,p_db_column_name=>'PASSPORT_EXPIRATION'
,p_display_order=>130
,p_column_identifier=>'K'
,p_column_label=>'Passport Expiration'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(295525476196962)
,p_db_column_name=>'PIC'
,p_display_order=>140
,p_column_identifier=>'T'
,p_column_label=>'Passport'
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
,p_static_id=>'PIC'
,p_display_condition_type=>'REQUEST_NOT_IN_CONDITION'
,p_display_condition=>'CSV,IR[summerCampsInfoRegion]_CSV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(295155855196959)
,p_db_column_name=>'MOBILE'
,p_display_order=>150
,p_column_identifier=>'V'
,p_column_label=>'Mobile'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(187706044005817111)
,p_db_column_name=>'IS_US_OR_CA_CITIZEN'
,p_display_order=>160
,p_column_identifier=>'W'
,p_column_label=>'Other Citizenship '
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'REQUEST_NOT_IN_CONDITION'
,p_display_condition=>'CSV,IR[summerCampsInfoRegion]_CSV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(729765484227698306)
,p_db_column_name=>'IS_US_OR_CA_CITIZEN_CSV'
,p_display_order=>170
,p_column_identifier=>'BD'
,p_column_label=>'Other Citizenship '
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
,p_display_condition_type=>'REQUEST_IN_CONDITION'
,p_display_condition=>'CSV,IR[summerCampsInfoRegion]_CSV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(600851004567743692)
,p_db_column_name=>'FLIGHT'
,p_display_order=>180
,p_column_identifier=>'Z'
,p_column_label=>'Flight'
,p_column_html_expression=>'<div is-active-record="#ACTIVE#">#FLIGHT#</div>'
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
,p_static_id=>'FLIGHT'
,p_display_condition_type=>'REQUEST_NOT_IN_CONDITION'
,p_display_condition=>'CSV,IR[summerCampsInfoRegion]_CSV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(618275902867405907)
,p_db_column_name=>'STATUS'
,p_display_order=>190
,p_column_identifier=>'AA'
,p_column_label=>'Status'
,p_column_html_expression=>'<span data-assignment-id="#ASSIGNMENT_ID#" data-person-id="#PERSON_ID#" data-request-id class="status-cell" style="box-shadow: 0 0 5px 2px #STATUS_COLOR_SHADOW#; background: rgb(#STATUS_COLOR# / 40%);">#STATUS#</span>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(618275995564405908)
,p_db_column_name=>'NATIONAL_ID'
,p_display_order=>200
,p_column_identifier=>'AB'
,p_column_label=>'Israeli Id Number'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(642460840533910686)
,p_db_column_name=>'MASLUL'
,p_display_order=>220
,p_column_identifier=>'AD'
,p_column_label=>'Maslul'
,p_column_html_expression=>'<div class="maslul">#MASLUL#</div>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(685653707892334310)
,p_db_column_name=>'MAIN_AIRPORT'
,p_display_order=>230
,p_column_identifier=>'AF'
,p_column_label=>'Main Airport'
,p_column_html_expression=>'<div class="main-airport">#MAIN_AIRPORT#</div>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(685653740129334311)
,p_db_column_name=>'SEC_AIRPORT'
,p_display_order=>240
,p_column_identifier=>'AG'
,p_column_label=>'Sec Airport'
,p_column_html_expression=>'<div class="sec-airport">#SEC_AIRPORT#</div>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(685654062985334314)
,p_db_column_name=>'CAMP_ARRIVAL_TIME'
,p_display_order=>270
,p_column_identifier=>'AJ'
,p_column_label=>'Camp Arrival Time'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(685654364555334317)
,p_db_column_name=>'MEAL'
,p_display_order=>300
,p_column_identifier=>'AM'
,p_column_label=>'Meal'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(685654477590334318)
,p_db_column_name=>'DEPARTURE_AIRPORT'
,p_display_order=>310
,p_column_identifier=>'AN'
,p_column_label=>'Departure Airport'
,p_column_html_expression=>'<div class="departure-airport">#DEPARTURE_AIRPORT#</div>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(685654677729334320)
,p_db_column_name=>'FLIGHT_REMARKS_APPLICANT'
,p_display_order=>330
,p_column_identifier=>'AP'
,p_column_label=>'Applicant Remarks '
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
,p_static_id=>'FLIGHT_REMARKS_APPLICANT'
,p_display_condition_type=>'REQUEST_NOT_IN_CONDITION'
,p_display_condition=>'CSV,IR[summerCampsInfoRegion]_CSV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(685654797229334321)
,p_db_column_name=>'FLIGHTS_REMARKS_MASLUL'
,p_display_order=>340
,p_column_identifier=>'AQ'
,p_column_label=>'Maslul Remarks '
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
,p_static_id=>'FLIGHTS_REMARKS_MASLUL'
,p_display_condition_type=>'REQUEST_NOT_IN_CONDITION'
,p_display_condition=>'CSV,IR[summerCampsInfoRegion]_CSV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(685654971894334323)
,p_db_column_name=>'OFFER_TIME'
,p_display_order=>350
,p_column_identifier=>'AS'
,p_column_label=>'Approve Until'
,p_column_html_expression=>'<span class="valid-until" data-assignment-id="#ASSIGNMENT_ID#" data-person-id="#PERSON_ID#" data-request-id>#OFFER_TIME#</span>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'OFFER_TIME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(685655094110334324)
,p_db_column_name=>'MAIN_FAMILY_MEMBER_ID'
,p_display_order=>360
,p_column_identifier=>'AT'
,p_column_label=>'Main Family Member Id'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'MAIN_FAMILY_MEMBER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(721161663191152716)
,p_db_column_name=>'COST'
,p_display_order=>380
,p_column_identifier=>'AW'
,p_column_label=>'Cost For Billing'
,p_column_html_expression=>'<span class="cost-for-billing" data-assignment-id="#ASSIGNMENT_ID#" data-person-id="#PERSON_ID#" data-request-id>#COST#</span>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'COST'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>':P2_USER_TYPE = ''M'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(729765428380698305)
,p_db_column_name=>'FLIGHT_TICKET_CSV'
,p_display_order=>400
,p_column_identifier=>'BC'
,p_column_label=>'Flight Ticket'
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
,p_display_condition_type=>'REQUEST_IN_CONDITION'
,p_display_condition=>'CSV,IR[summerCampsInfoRegion]_CSV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(729765158243698303)
,p_db_column_name=>'FLIGHT_REMARKS_APPLICANT_CSV'
,p_display_order=>410
,p_column_identifier=>'BA'
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
,p_display_condition_type=>'REQUEST_IN_CONDITION'
,p_display_condition=>'CSV,IR[summerCampsInfoRegion]_CSV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(729765286334698304)
,p_db_column_name=>'FLIGHTS_REMARKS_MASLUL_CSV'
,p_display_order=>420
,p_column_identifier=>'BB'
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
,p_display_condition_type=>'REQUEST_IN_CONDITION'
,p_display_condition=>'CSV,IR[summerCampsInfoRegion]_CSV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(740228411699543785)
,p_db_column_name=>'DEPARTURE_TIME'
,p_display_order=>450
,p_column_identifier=>'BH'
,p_column_label=>'Departure Time'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(801860209808360491)
,p_db_column_name=>'COUNTRY'
,p_display_order=>460
,p_column_identifier=>'BI'
,p_column_label=>'Country'
,p_column_html_expression=>'<div class="country">#COUNTRY#</div>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(801860235670360492)
,p_db_column_name=>'STATE'
,p_display_order=>470
,p_column_identifier=>'BJ'
,p_column_label=>'State'
,p_column_html_expression=>'<div class="state">#STATE#</div>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(801860387117360493)
,p_db_column_name=>'CITY'
,p_display_order=>480
,p_column_identifier=>'BK'
,p_column_label=>'City'
,p_column_html_expression=>'<div class="city">#CITY#</div>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849870081359554319)
,p_db_column_name=>'STATUS_COLOR'
,p_display_order=>510
,p_column_identifier=>'BN'
,p_column_label=>'Status Color'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(849870169084554320)
,p_db_column_name=>'STATUS_COLOR_SHADOW'
,p_display_order=>520
,p_column_identifier=>'BO'
,p_column_label=>'Status Color Shadow'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(861961442228190698)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>530
,p_column_identifier=>'BP'
,p_column_label=>'Last Name'
,p_column_html_expression=>'#LAST_NAME# <span class="fa fa-users" style="margin-left: 10px; display: none;"></span>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'LAST_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(861961596145190699)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>540
,p_column_identifier=>'BQ'
,p_column_label=>'First Name'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468945414151370312)
,p_db_column_name=>'INDIVIDUAL_ARRIVAL_DATE'
,p_display_order=>580
,p_column_identifier=>'BU'
,p_column_label=>'Arrival date'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468945460910370313)
,p_db_column_name=>'REQUESTED_RETURN_DATE'
,p_display_order=>590
,p_column_identifier=>'BV'
,p_column_label=>'Requested Return Date'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235167059932586449)
,p_db_column_name=>'ASSIGNMENT_ID'
,p_display_order=>600
,p_column_identifier=>'BX'
,p_column_label=>'Assignment Id'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235166982978586448)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>610
,p_column_identifier=>'BY'
,p_column_label=>'Person Id'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235166798416586447)
,p_db_column_name=>'CAMP_ARRIVAL_DATE'
,p_display_order=>620
,p_column_identifier=>'BZ'
,p_column_label=>'Camp Arrival Date'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
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
 p_id=>wwv_flow_api.id(235166718216586446)
,p_db_column_name=>'J1_PERMIT_END_DATE'
,p_display_order=>630
,p_column_identifier=>'CA'
,p_column_label=>'J1 Permit End Date'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235166632126586445)
,p_db_column_name=>'OFFER_TIME_RAW'
,p_display_order=>640
,p_column_identifier=>'CB'
,p_column_label=>'Offer Time Raw'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235166564332586444)
,p_db_column_name=>'SHLICHUT_END_DATE'
,p_display_order=>650
,p_column_identifier=>'CC'
,p_column_label=>'Shlichut End Date'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(224064026328875425)
,p_db_column_name=>'ROWSELECTOR'
,p_display_order=>660
,p_column_identifier=>'CD'
,p_column_label=>'&nbsp;'
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
,p_static_id=>'ROWSELECTOR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(224063991346875424)
,p_db_column_name=>'PREFERRED_ARRIVAL_TIME'
,p_display_order=>670
,p_column_identifier=>'CE'
,p_column_label=>'Preferred Arrival Time'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(224063835594875423)
,p_db_column_name=>'FLIGHT_COST'
,p_display_order=>680
,p_column_identifier=>'CF'
,p_column_label=>'Flight Cost'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(224063741066875422)
,p_db_column_name=>'AGENT_NAME'
,p_display_order=>690
,p_column_identifier=>'CG'
,p_column_label=>'Handling Agent'
,p_column_html_expression=>'<span data-assignment-id="#ASSIGNMENT_ID#" data-person-id="#PERSON_ID#" data-request-id class="agent-name">#AGENT_NAME#</span>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'AGENT_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(224063583182875420)
,p_db_column_name=>'FLIGHT_TICKET'
,p_display_order=>710
,p_column_identifier=>'CI'
,p_column_label=>'Flight Ticket'
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
,p_static_id=>'FLIGHT_TICKET'
,p_display_condition_type=>'REQUEST_NOT_IN_CONDITION'
,p_display_condition=>'CSV,IR[summerCampsInfoRegion]_CSV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(224063414300875419)
,p_db_column_name=>'STATUS_CODE'
,p_display_order=>720
,p_column_identifier=>'CJ'
,p_column_label=>'Status Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1698417763488892341)
,p_db_column_name=>'ACTIVE'
,p_display_order=>730
,p_column_identifier=>'CK'
,p_column_label=>'Active'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1698417703128892340)
,p_db_column_name=>'STATUS_ORDER'
,p_display_order=>740
,p_column_identifier=>'CL'
,p_column_label=>'Status Order'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(57496893739274426)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'574969'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>25
,p_report_columns=>'ROWSELECTOR:FLIGHT:AGENT_NAME:OFFER_TIME:STATUS:CAMP_NAME:LAST_NAME:FIRST_NAME:DATE_OF_BIRTH:GENDER:INDIVIDUAL_ARRIVAL_DATE:PREFERRED_ARRIVAL_TIME:MAIN_AIRPORT:SEC_AIRPORT:COUNTRY:IS_US_OR_CA_CITIZEN_CSV:STATE:CITY:REQUESTED_RETURN_DATE:DEPARTURE_TIM'
||'E:DEPARTURE_AIRPORT:IS_US_OR_CA_CITIZEN:SHLICHUT_END_DATE:MEAL:PASSPORT_NUMBER:PASSPORT_EXPIRATION:J1_PERMIT_END_DATE:NATIONAL_ID:MAIN_FAMILY_MEMBER_ID:FLIGHT_REMARKS_APPLICANT_CSV:FLIGHTS_REMARKS_MASLUL_CSV:EMAIL_ADDRESS:MOBILE:MASLUL:COORDINATOR_NA'
||'ME:FLIGHT_COST:COST:FLIGHT_TICKET:PIC:FLIGHT_REMARKS_APPLICANT:FLIGHTS_REMARKS_MASLUL::STATUS_CODE:ACTIVE'
,p_sort_column_1=>'0'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(801862746307360517)
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
'select distinct * from (',
'    select ',
'    vf.c004 || '' '' || vf.c005 name,',
'    vf.c008 camp_customer,',
'    vf.c012 national_id,',
'    '''' handling_agent,',
'    '''' offer_expiration_in_hours,',
'    '''' pnr_number,',
'    '''' flight_cost,',
'    '''' booking_fee,',
'    '''' markup_cost,',
'    '''' flight_cost_for_billing,',
'    '''' passengers_cost,',
'    '''' agency_remarks,',
'    '''' outbound1_airline,',
'    '''' outbound1_flight_number,',
'    '''' outbound1_departure_airport,',
'    '''' outbound1_departure_date,',
'    '''' outbound1_departure_time,',
'    '''' outbound1_destination_airport,',
'    '''' outbound1_arrival_date,',
'    '''' outbound1_arrival_time,',
'    --'''' outbound1_meal,',
'    '''' outbound2_airline,',
'    '''' outbound2_flight_number,',
'    '''' outbound2_departure_airport,',
'    '''' outbound2_departure_date,',
'    '''' outbound2_departure_time,',
'    '''' outbound2_destination_airport,',
'    '''' outbound2_arrival_date,',
'    '''' outbound2_arrival_time,',
'    --'''' outbound2_meal,',
'    '''' outbound3_airline,',
'    '''' outbound3_flight_number,',
'    '''' outbound3_departure_airport,',
'    '''' outbound3_departure_date,',
'    '''' outbound3_departure_time,',
'    '''' outbound3_destination_airport,',
'    '''' outbound3_arrival_date,',
'    '''' outbound3_arrival_time,',
'    --'''' outbound3_meal,',
'    '''' outbound4_airline,',
'    '''' outbound4_flight_number,',
'    '''' outbound4_departure_airport,',
'    '''' outbound4_departure_date,',
'    '''' outbound4_departure_time,',
'    '''' outbound4_destination_airport,',
'    '''' outbound4_arrival_date,',
'    '''' outbound4_arrival_time,',
'    --'''' outbound4_meal,',
'	'''' inbound1_airline,',
'    '''' inbound1_flight_number,',
'    '''' inbound1_departure_airport,',
'    '''' inbound1_departure_date,',
'    '''' inbound1_departure_time,',
'    '''' inbound1_destination_airport,',
'    '''' inbound1_arrival_date,',
'    '''' inbound1_arrival_time,',
'    --'''' inbound1_meal,',
'    '''' inbound2_airline,',
'    '''' inbound2_flight_number,',
'    '''' inbound2_departure_airport,',
'    '''' inbound2_departure_date,',
'    '''' inbound2_departure_time,',
'    '''' inbound2_destination_airport,',
'    '''' inbound2_arrival_date,',
'    '''' inbound2_arrival_time,',
'    '''' inbound2_meal,',
'    '''' inbound3_airline,',
'    '''' inbound3_flight_number,',
'    '''' inbound3_departure_airport,',
'    '''' inbound3_departure_date,',
'    '''' inbound3_departure_time,',
'    '''' inbound3_destination_airport,',
'    '''' inbound3_arrival_date,',
'    '''' inbound3_arrival_time,',
'    --'''' inbound3_meal,',
'    '''' inbound4_airline,',
'    '''' inbound4_flight_number,',
'    '''' inbound4_departure_airport,',
'    '''' inbound4_departure_date,',
'    '''' inbound4_departure_time,',
'    '''' inbound4_destination_airport,',
'    '''' inbound4_arrival_date,',
'    '''' inbound4_arrival_time--,',
'    --'''' inbound4_meal',
'    from apex_collections vf,',
'         apex_collections ac ',
'    where ((:P2_SELECTED_RDS = ''#summerCampsInfoRegion'' and ac.collection_name = ''VIEW_SELECTION_SC'' and vf.collection_name = ''MAIN_VIEW_SC'') or',
'          (:P2_SELECTED_RDS = ''#shinshinimInfoRegion'' and ac.collection_name = ''VIEW_SELECTION_SSH'' and vf.collection_name = ''MAIN_VIEW_SSH''))',
'        AND vf.c012 = ac.c001(+)',
'        AND ac.c001 = vf.c012',
'    order by vf.c008, vf.c004, vf.c005',
')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P2_USER_MASLULIM,P2_SELECTED_RDS'
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
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(801862910495360518)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DRORA'
,p_internal_uid=>1032829975786292542
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(801863384155360523)
,p_db_column_name=>'NAME'
,p_display_order=>50
,p_column_identifier=>'A'
,p_column_label=>'Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822559037631674580)
,p_db_column_name=>'NATIONAL_ID'
,p_display_order=>120
,p_column_identifier=>'B'
,p_column_label=>'National Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822562589709674615)
,p_db_column_name=>'CAMP_CUSTOMER'
,p_display_order=>130
,p_column_identifier=>'C'
,p_column_label=>'Camp Customer'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822562824301674617)
,p_db_column_name=>'PNR_NUMBER'
,p_display_order=>150
,p_column_identifier=>'E'
,p_column_label=>'Pnr Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822562908846674618)
,p_db_column_name=>'FLIGHT_COST'
,p_display_order=>160
,p_column_identifier=>'F'
,p_column_label=>'Flight Cost'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822562994605674619)
,p_db_column_name=>'BOOKING_FEE'
,p_display_order=>170
,p_column_identifier=>'G'
,p_column_label=>'Booking Fee'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822563048211674620)
,p_db_column_name=>'MARKUP_COST'
,p_display_order=>180
,p_column_identifier=>'H'
,p_column_label=>'Markup'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822563317853674622)
,p_db_column_name=>'PASSENGERS_COST'
,p_display_order=>200
,p_column_identifier=>'J'
,p_column_label=>'Passengers Payment'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822563400452674623)
,p_db_column_name=>'OUTBOUND1_AIRLINE'
,p_display_order=>210
,p_column_identifier=>'K'
,p_column_label=>'Outbound1 Airline'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822563493055674624)
,p_db_column_name=>'OUTBOUND1_FLIGHT_NUMBER'
,p_display_order=>220
,p_column_identifier=>'L'
,p_column_label=>'Outbound1 Flight Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822563573830674625)
,p_db_column_name=>'OUTBOUND1_DEPARTURE_AIRPORT'
,p_display_order=>230
,p_column_identifier=>'M'
,p_column_label=>'Outbound1 Departure Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822563635528674626)
,p_db_column_name=>'OUTBOUND1_DEPARTURE_DATE'
,p_display_order=>240
,p_column_identifier=>'N'
,p_column_label=>'Outbound1 Departure Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822958804201561577)
,p_db_column_name=>'OUTBOUND1_DEPARTURE_TIME'
,p_display_order=>250
,p_column_identifier=>'O'
,p_column_label=>'Outbound1 Departure Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822958917278561578)
,p_db_column_name=>'OUTBOUND1_DESTINATION_AIRPORT'
,p_display_order=>260
,p_column_identifier=>'P'
,p_column_label=>'Outbound1 Destination Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822959019582561579)
,p_db_column_name=>'OUTBOUND1_ARRIVAL_DATE'
,p_display_order=>270
,p_column_identifier=>'Q'
,p_column_label=>'Outbound1 Arrival Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822959040639561580)
,p_db_column_name=>'OUTBOUND1_ARRIVAL_TIME'
,p_display_order=>280
,p_column_identifier=>'R'
,p_column_label=>'Outbound1 Arrival Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822959281361561582)
,p_db_column_name=>'OUTBOUND2_AIRLINE'
,p_display_order=>300
,p_column_identifier=>'T'
,p_column_label=>'Outbound2 Airline'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822959348446561583)
,p_db_column_name=>'OUTBOUND2_FLIGHT_NUMBER'
,p_display_order=>310
,p_column_identifier=>'U'
,p_column_label=>'Outbound2 Flight Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822959489012561584)
,p_db_column_name=>'OUTBOUND2_DEPARTURE_AIRPORT'
,p_display_order=>320
,p_column_identifier=>'V'
,p_column_label=>'Outbound2 Departure Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822959605292561585)
,p_db_column_name=>'OUTBOUND2_DEPARTURE_DATE'
,p_display_order=>330
,p_column_identifier=>'W'
,p_column_label=>'Outbound2 Departure Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822959681274561586)
,p_db_column_name=>'OUTBOUND2_DEPARTURE_TIME'
,p_display_order=>340
,p_column_identifier=>'X'
,p_column_label=>'Outbound2 Departure Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822959760137561587)
,p_db_column_name=>'OUTBOUND2_DESTINATION_AIRPORT'
,p_display_order=>350
,p_column_identifier=>'Y'
,p_column_label=>'Outbound2 Destination Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822959871452561588)
,p_db_column_name=>'OUTBOUND2_ARRIVAL_DATE'
,p_display_order=>360
,p_column_identifier=>'Z'
,p_column_label=>'Outbound2 Arrival Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822959956475561589)
,p_db_column_name=>'OUTBOUND2_ARRIVAL_TIME'
,p_display_order=>370
,p_column_identifier=>'AA'
,p_column_label=>'Outbound2 Arrival Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822960214643561591)
,p_db_column_name=>'OUTBOUND3_AIRLINE'
,p_display_order=>390
,p_column_identifier=>'AC'
,p_column_label=>'Outbound3 Airline'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822960301045561592)
,p_db_column_name=>'OUTBOUND3_FLIGHT_NUMBER'
,p_display_order=>400
,p_column_identifier=>'AD'
,p_column_label=>'Outbound3 Flight Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822960370649561593)
,p_db_column_name=>'OUTBOUND3_DEPARTURE_AIRPORT'
,p_display_order=>410
,p_column_identifier=>'AE'
,p_column_label=>'Outbound3 Departure Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822960444793561594)
,p_db_column_name=>'OUTBOUND3_DEPARTURE_DATE'
,p_display_order=>420
,p_column_identifier=>'AF'
,p_column_label=>'Outbound3 Departure Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822960535650561595)
,p_db_column_name=>'OUTBOUND3_DEPARTURE_TIME'
,p_display_order=>430
,p_column_identifier=>'AG'
,p_column_label=>'Outbound3 Departure Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822960715246561596)
,p_db_column_name=>'OUTBOUND3_DESTINATION_AIRPORT'
,p_display_order=>440
,p_column_identifier=>'AH'
,p_column_label=>'Outbound3 Destination Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822960753232561597)
,p_db_column_name=>'OUTBOUND3_ARRIVAL_DATE'
,p_display_order=>450
,p_column_identifier=>'AI'
,p_column_label=>'Outbound3 Arrival Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822960886323561598)
,p_db_column_name=>'OUTBOUND3_ARRIVAL_TIME'
,p_display_order=>460
,p_column_identifier=>'AJ'
,p_column_label=>'Outbound3 Arrival Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822961114331561600)
,p_db_column_name=>'OUTBOUND4_AIRLINE'
,p_display_order=>480
,p_column_identifier=>'AL'
,p_column_label=>'Outbound4 Airline'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822961230050561601)
,p_db_column_name=>'OUTBOUND4_FLIGHT_NUMBER'
,p_display_order=>490
,p_column_identifier=>'AM'
,p_column_label=>'Outbound4 Flight Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822961236377561602)
,p_db_column_name=>'OUTBOUND4_DEPARTURE_AIRPORT'
,p_display_order=>500
,p_column_identifier=>'AN'
,p_column_label=>'Outbound4 Departure Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822961407880561603)
,p_db_column_name=>'OUTBOUND4_DEPARTURE_DATE'
,p_display_order=>510
,p_column_identifier=>'AO'
,p_column_label=>'Outbound4 Departure Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822961443215561604)
,p_db_column_name=>'OUTBOUND4_DEPARTURE_TIME'
,p_display_order=>520
,p_column_identifier=>'AP'
,p_column_label=>'Outbound4 Departure Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822961594097561605)
,p_db_column_name=>'OUTBOUND4_DESTINATION_AIRPORT'
,p_display_order=>530
,p_column_identifier=>'AQ'
,p_column_label=>'Outbound4 Destination Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822961709385561606)
,p_db_column_name=>'OUTBOUND4_ARRIVAL_DATE'
,p_display_order=>540
,p_column_identifier=>'AR'
,p_column_label=>'Outbound4 Arrival Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822961746479561607)
,p_db_column_name=>'OUTBOUND4_ARRIVAL_TIME'
,p_display_order=>550
,p_column_identifier=>'AS'
,p_column_label=>'Outbound4 Arrival Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822961993527561609)
,p_db_column_name=>'INBOUND1_AIRLINE'
,p_display_order=>570
,p_column_identifier=>'AU'
,p_column_label=>'Inbound1 Airline'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822962080454561610)
,p_db_column_name=>'INBOUND1_FLIGHT_NUMBER'
,p_display_order=>580
,p_column_identifier=>'AV'
,p_column_label=>'Inbound1 Flight Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822962230949561611)
,p_db_column_name=>'INBOUND1_DEPARTURE_AIRPORT'
,p_display_order=>590
,p_column_identifier=>'AW'
,p_column_label=>'Inbound1 Departure Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822962269722561612)
,p_db_column_name=>'INBOUND1_DEPARTURE_DATE'
,p_display_order=>600
,p_column_identifier=>'AX'
,p_column_label=>'Inbound1 Departure Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822962385442561613)
,p_db_column_name=>'INBOUND1_DEPARTURE_TIME'
,p_display_order=>610
,p_column_identifier=>'AY'
,p_column_label=>'Inbound1 Departure Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822962482109561614)
,p_db_column_name=>'INBOUND1_DESTINATION_AIRPORT'
,p_display_order=>620
,p_column_identifier=>'AZ'
,p_column_label=>'Inbound1 Destination Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822962564473561615)
,p_db_column_name=>'INBOUND1_ARRIVAL_DATE'
,p_display_order=>630
,p_column_identifier=>'BA'
,p_column_label=>'Inbound1 Arrival Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822962717328561616)
,p_db_column_name=>'INBOUND1_ARRIVAL_TIME'
,p_display_order=>640
,p_column_identifier=>'BB'
,p_column_label=>'Inbound1 Arrival Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822962920935561618)
,p_db_column_name=>'INBOUND2_AIRLINE'
,p_display_order=>660
,p_column_identifier=>'BD'
,p_column_label=>'Inbound2 Airline'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822962991419561619)
,p_db_column_name=>'INBOUND2_FLIGHT_NUMBER'
,p_display_order=>670
,p_column_identifier=>'BE'
,p_column_label=>'Inbound2 Flight Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822963035792561620)
,p_db_column_name=>'INBOUND2_DEPARTURE_AIRPORT'
,p_display_order=>680
,p_column_identifier=>'BF'
,p_column_label=>'Inbound2 Departure Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822963175853561621)
,p_db_column_name=>'INBOUND2_DEPARTURE_DATE'
,p_display_order=>690
,p_column_identifier=>'BG'
,p_column_label=>'Inbound2 Departure Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822963274862561622)
,p_db_column_name=>'INBOUND2_DEPARTURE_TIME'
,p_display_order=>700
,p_column_identifier=>'BH'
,p_column_label=>'Inbound2 Departure Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822963409483561623)
,p_db_column_name=>'INBOUND2_DESTINATION_AIRPORT'
,p_display_order=>710
,p_column_identifier=>'BI'
,p_column_label=>'Inbound2 Destination Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822963528516561624)
,p_db_column_name=>'INBOUND2_ARRIVAL_DATE'
,p_display_order=>720
,p_column_identifier=>'BJ'
,p_column_label=>'Inbound2 Arrival Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822963563097561625)
,p_db_column_name=>'INBOUND2_ARRIVAL_TIME'
,p_display_order=>730
,p_column_identifier=>'BK'
,p_column_label=>'Inbound2 Arrival Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822963671456561626)
,p_db_column_name=>'INBOUND2_MEAL'
,p_display_order=>740
,p_column_identifier=>'BL'
,p_column_label=>'Inbound2 Meal'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822963799897561577)
,p_db_column_name=>'INBOUND3_AIRLINE'
,p_display_order=>750
,p_column_identifier=>'BM'
,p_column_label=>'Inbound3 Airline'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822963879817561578)
,p_db_column_name=>'INBOUND3_FLIGHT_NUMBER'
,p_display_order=>760
,p_column_identifier=>'BN'
,p_column_label=>'Inbound3 Flight Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822963983030561579)
,p_db_column_name=>'INBOUND3_DEPARTURE_AIRPORT'
,p_display_order=>770
,p_column_identifier=>'BO'
,p_column_label=>'Inbound3 Departure Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822964083617561580)
,p_db_column_name=>'INBOUND3_DEPARTURE_DATE'
,p_display_order=>780
,p_column_identifier=>'BP'
,p_column_label=>'Inbound3 Departure Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822964171352561581)
,p_db_column_name=>'INBOUND3_DEPARTURE_TIME'
,p_display_order=>790
,p_column_identifier=>'BQ'
,p_column_label=>'Inbound3 Departure Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822964247826561582)
,p_db_column_name=>'INBOUND3_DESTINATION_AIRPORT'
,p_display_order=>800
,p_column_identifier=>'BR'
,p_column_label=>'Inbound3 Destination Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822964396210561583)
,p_db_column_name=>'INBOUND3_ARRIVAL_DATE'
,p_display_order=>810
,p_column_identifier=>'BS'
,p_column_label=>'Inbound3 Arrival Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822964501025561584)
,p_db_column_name=>'INBOUND3_ARRIVAL_TIME'
,p_display_order=>820
,p_column_identifier=>'BT'
,p_column_label=>'Inbound3 Arrival Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822964636627561586)
,p_db_column_name=>'INBOUND4_AIRLINE'
,p_display_order=>840
,p_column_identifier=>'BV'
,p_column_label=>'Inbound4 Airline'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822964806544561587)
,p_db_column_name=>'INBOUND4_FLIGHT_NUMBER'
,p_display_order=>850
,p_column_identifier=>'BW'
,p_column_label=>'Inbound4 Flight Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822964877614561588)
,p_db_column_name=>'INBOUND4_DEPARTURE_AIRPORT'
,p_display_order=>860
,p_column_identifier=>'BX'
,p_column_label=>'Inbound4 Departure Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822964943109561589)
,p_db_column_name=>'INBOUND4_DEPARTURE_DATE'
,p_display_order=>870
,p_column_identifier=>'BY'
,p_column_label=>'Inbound4 Departure Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822965125925561590)
,p_db_column_name=>'INBOUND4_DEPARTURE_TIME'
,p_display_order=>880
,p_column_identifier=>'BZ'
,p_column_label=>'Inbound4 Departure Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822965164080561591)
,p_db_column_name=>'INBOUND4_DESTINATION_AIRPORT'
,p_display_order=>890
,p_column_identifier=>'CA'
,p_column_label=>'Inbound4 Destination Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822965283453561592)
,p_db_column_name=>'INBOUND4_ARRIVAL_DATE'
,p_display_order=>900
,p_column_identifier=>'CB'
,p_column_label=>'Inbound4 Arrival Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(822965384334561593)
,p_db_column_name=>'INBOUND4_ARRIVAL_TIME'
,p_display_order=>910
,p_column_identifier=>'CC'
,p_column_label=>'Inbound4 Arrival Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830158944514279179)
,p_db_column_name=>'OFFER_EXPIRATION_IN_HOURS'
,p_display_order=>930
,p_column_identifier=>'CE'
,p_column_label=>'Offer Expiration In Hours'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(830160731414279196)
,p_db_column_name=>'AGENCY_REMARKS'
,p_display_order=>940
,p_column_identifier=>'CF'
,p_column_label=>'Agency Remarks'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(884526979828354384)
,p_db_column_name=>'FLIGHT_COST_FOR_BILLING'
,p_display_order=>950
,p_column_identifier=>'CG'
,p_column_label=>'Flight Cost For Billing'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(884527799474354392)
,p_db_column_name=>'HANDLING_AGENT'
,p_display_order=>960
,p_column_identifier=>'CH'
,p_column_label=>'Handling Agent'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(823058746337558240)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'10540259'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NAME:CAMP_CUSTOMER:NATIONAL_ID:HANDLING_AGENT:OFFER_EXPIRATION_IN_HOURS:PNR_NUMBER:FLIGHT_COST:BOOKING_FEE:MARKUP_COST:FLIGHT_COST_FOR_BILLING:PASSENGERS_COST:AGENCY_REMARKS:OUTBOUND1_AIRLINE:OUTBOUND1_FLIGHT_NUMBER:OUTBOUND1_DEPARTURE_AIRPORT:OUTBOU'
||'ND1_DEPARTURE_DATE:OUTBOUND1_DEPARTURE_TIME:OUTBOUND1_DESTINATION_AIRPORT:OUTBOUND1_ARRIVAL_DATE:OUTBOUND1_ARRIVAL_TIME:OUTBOUND2_AIRLINE:OUTBOUND2_FLIGHT_NUMBER:OUTBOUND2_DEPARTURE_AIRPORT:OUTBOUND2_DEPARTURE_DATE:OUTBOUND2_DEPARTURE_TIME:OUTBOUND2_'
||'DESTINATION_AIRPORT:OUTBOUND2_ARRIVAL_DATE:OUTBOUND2_ARRIVAL_TIME:OUTBOUND3_AIRLINE:OUTBOUND3_FLIGHT_NUMBER:OUTBOUND3_DEPARTURE_AIRPORT:OUTBOUND3_DEPARTURE_DATE:OUTBOUND3_DEPARTURE_TIME:OUTBOUND3_DESTINATION_AIRPORT:OUTBOUND3_ARRIVAL_DATE:OUTBOUND3_A'
||'RRIVAL_TIME:OUTBOUND4_AIRLINE:OUTBOUND4_FLIGHT_NUMBER:OUTBOUND4_DEPARTURE_AIRPORT:OUTBOUND4_DEPARTURE_DATE:OUTBOUND4_DEPARTURE_TIME:OUTBOUND4_DESTINATION_AIRPORT:OUTBOUND4_ARRIVAL_DATE:OUTBOUND4_ARRIVAL_TIME:INBOUND1_AIRLINE:INBOUND1_FLIGHT_NUMBER:IN'
||'BOUND1_DEPARTURE_AIRPORT:INBOUND1_DEPARTURE_DATE:INBOUND1_DEPARTURE_TIME:INBOUND1_DESTINATION_AIRPORT:INBOUND1_ARRIVAL_DATE:INBOUND1_ARRIVAL_TIME:INBOUND2_AIRLINE:INBOUND2_FLIGHT_NUMBER:INBOUND2_DEPARTURE_AIRPORT:INBOUND2_DEPARTURE_DATE:INBOUND2_DEPA'
||'RTURE_TIME:INBOUND2_DESTINATION_AIRPORT:INBOUND2_ARRIVAL_DATE:INBOUND2_ARRIVAL_TIME:INBOUND2_MEAL:INBOUND3_AIRLINE:INBOUND3_FLIGHT_NUMBER:INBOUND3_DEPARTURE_AIRPORT:INBOUND3_DEPARTURE_DATE:INBOUND3_DEPARTURE_TIME:INBOUND3_DESTINATION_AIRPORT:INBOUND3'
||'_ARRIVAL_DATE:INBOUND3_ARRIVAL_TIME:INBOUND4_AIRLINE:INBOUND4_FLIGHT_NUMBER:INBOUND4_DEPARTURE_AIRPORT:INBOUND4_DEPARTURE_DATE:INBOUND4_DEPARTURE_TIME:INBOUND4_DESTINATION_AIRPORT:INBOUND4_ARRIVAL_DATE:INBOUND4_ARRIVAL_TIME:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(861961781352190701)
,p_plug_name=>'&nbsp;'
,p_region_name=>'remarksDialog'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_api.id(119978609050743300)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(940251864675063677)
,p_plug_name=>'RDS'
,p_region_name=>'rds'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(940251997393063678)
,p_plug_name=>'Shinshinim \ Long Term Shlichut'
,p_region_name=>'shinshinimInfoRegion'
,p_region_css_classes=>'flights-region'
,p_region_template_options=>'#DEFAULT#:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'class="flights-region"'
,p_plug_template=>wwv_flow_api.id(119978609050743302)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with lts_data as (',
'    SELECT',
'    vf.c001	assignment_id,',
'    vf.c002	person_id,',
'    vf.c049	request_id,',
'    vf.c012	national_id,',
'    vf.c035	main_family_member_id',
'FROM apex_collections  vf,',
'     apex_collections  vfe,',
'     apex_collections  ac',
'WHERE vf.collection_name = ''MAIN_VIEW_SSH'' AND vf.c023 = ''LTS''',
'    AND NVL(vfe.collection_name, ''EXTRA_INFO_VIEW'') = ''EXTRA_INFO_VIEW'' AND vf.c001 = vfe.c001(+) and vf.c002 = vfe.c002(+) and vf.c049 = vfe.c003(+)',
'    AND NVL(ac.collection_name, ''VIEW_SELECTION_SSH'') = ''VIEW_SELECTION_SSH''',
'    AND vf.c012 = ac.c001(+)',
')',
'',
'select data.*, case when data.is_family = ''Yes'' then ''<span class="fa fa-users"></span>'' else '''' end is_family_icon from (',
'SELECT',
'    CASE WHEN vf.c015 IN (''1'', ''4'') THEN',
'        CASE WHEN ac.c001 IS NULL THEN APEX_ITEM.CHECKBOX(1, vf.c012)',
'             ELSE APEX_ITEM.CHECKBOX(1, vf.c012, ''CHECKED'')',
'        END',
'    ELSE '''' END AS rowSelector,',
'    ''<a class="fa fa-plane check-flights-btn" title="Manage Flight" href="'' ||',
'                apex_page.get_url(',
'                    p_page        => 4,',
'                    p_items       => ''P4_ASSIGNMENT_ID,P4_PERSON_ID,P4_REQUEST_ID'',',
'                    p_values      => vf.c001 || '','' || vf.c002 || '','' || vf.c049,',
'                    p_clear_cache => ''4''',
'                ) || ''"></a>'' flight,',
'    ''<a class="fa fa-picture-o view-passports-btn" title="View Passports" href="'' ||',
'                apex_page.get_url(',
'                    p_page   => 5,',
'                    p_items  => ''P5_PERSON_ID'',',
'                    p_values => vf.c002',
'                ) || ''"></a>'' AS pic,',
'    CASE WHEN vf.c039 IS NOT NULL',
'         THEN ''<span class="fa fa-comment-o remarks-span" title="'' || vf.c039 || ''"></span>'' else '''' END AS flight_remarks_applicant,',
'    CASE WHEN vf.c040 IS NOT NULL',
'         THEN ''<span class="fa fa-comment-o remarks-span" title="'' || vf.c040 || ''"></span>'' else '''' END AS flights_remarks_maslul,',
'    CASE WHEN vf.c050 IS NOT NULL',
'         THEN ''<a class="fa fa-image show-tickets-btn" data-assignment-id="'' || vf.c001 ||',
'              ''" data-person-id="'' || vf.c002 || ''" data-request-id="'' || vf.c044 || ''" title="View Flight Ticket" href="'' ||',
'              apex_page.get_url(',
'                  p_page        => 6,',
'                  p_items       => ''P6_DOC_ID,P6_ASSIGNMENT_ID,P6_PERSON_ID,P6_REQUEST_ID'',',
'                  p_values      => vf.c050 || '','' || vf.c001 || '','' || vf.c002 || '','' || vf.c049,',
'                  p_clear_cache => ''6''',
'              ) || ''"></a>''',
'         ELSE ''<span class="show-tickets-btn" data-assignment-id="'' || vf.c001 ||',
'              ''" data-person-id="'' || vf.c002 || ''" data-request-id="'' || vf.c049 || ''" title="View Flight Ticket"></span>'' END AS FLIGHT_TICKET,',
'    vf.c001	assignment_id,',
'    vf.c002	person_id,',
'    vf.c003	mobile,',
'    vf.c004	last_name,',
'    vf.c005	first_name,',
'    vf.c006	gender,',
'    vf.c007	date_of_birth,',
'    vf.c008	camp_name,',
'    vf.c009	city_of_birth,',
'    vf.c010	country_of_birth,',
'    vf.c011	email_address,',
'    vf.c012	national_id,',
'    vf.c013	passport_number,',
'    vf.c014	passport_expiration,',
'    vf.c015	status_code,',
'    vf.c016	coordinator_name,',
'    vf.c017	is_us_or_ca_citizen,',
'    vf.c018	status,',
'    vf.c019	status_color,',
'    vf.c020	status_color_shadow,',
'    vf.c021	status_order,',
'    vf.c022	maslul,',
'    vf.c023	maslul_short_name,',
'    vf.c024	main_airport,',
'    vf.c025	sec_airport,',
'    vf.c026	individual_arrival_date,',
'    vf.c027	camp_arrival_time,',
'    vf.c028	camp_arrival_date,',
'    vf.c029	requested_return_date,',
'    vf.c030	meal,',
'    vf.c031	departure_airport,',
'    vf.c032	j1_permit_end_date,',
'    vf.c033	offer_time,',
'    vf.c034	offer_time_raw,',
'    vf.c035	main_family_member_id,',
'    vf.c036	departure_time,',
'    vf.c037	shlichut_end_date,',
'    vf.c038	cost,',
'    vf.c039	flight_remarks_applicant_csv,',
'    vf.c040	flights_remarks_maslul_csv,',
'    vf.c041	flight_ticket_csv,',
'    vf.c042	is_us_or_ca_citizen_csv,',
'    vf.c043	country,',
'    vf.c044	state,',
'    vf.c045	city,',
'    vf.c046	preferred_arrival_time,',
'    vf.c047	flight_cost,',
'    vf.c048	agent_name,',
'    vf.c049	request_id,',
'    vfe.c004 ARRIVAL_DATE_APPROVED,',
'    case when vfe.c004 = ''No'' then vfe.c005 || chr(10) || vfe.c006 end ARRIVAL_DATE_APPROVED_TITLE,',
'    vfe.c005 REQUESTED_ARRIVAL_DATE,',
'    vfe.c006 CHANGE_DATE_REASON,',
'    vfe.c007 LUGGAGE,',
'    vfe.c008 JOINING,',
'    vfe.c009 JOINING_DATE,',
'    vfe.c010 COUNT_PETS,',
'    vfe.c011 PET1_INFO,',
'    vfe.c012 PET2_INFO,',
'    vfe.c013 PET3_INFO,',
'    case when vf.c023 = ''LTS'' and vf.c012 = vf.c035 then 0 ',
'         when vf.c023 = ''LTS'' and vf.c012 != vf.c035 then 1 ',
'    else null end family_sort_order,',
'    case when exists (',
'            select 1 from lts_data d',
'            where d.national_id != vf.c012 and (d.national_id = vf.c035 or d.main_family_member_id = vf.c012)) ',
'        then ''Yes'' else '''' end is_family,',
'    case when vfe.c015 is not null then vfe.c015 || '' - '' || HR_GENERAL.DECODE_LOOKUP(''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'', vfe.c015) else '''' end OUTBOUND_DEP_AIRPORT,',
'    case when vfe.c016 is not null then vfe.c016 || '' - '' || HR_GENERAL.DECODE_LOOKUP(''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'', vfe.c016) else '''' end INBOUND_ARR_AIRPORT',
'FROM apex_collections  vf,',
'     apex_collections  vfe,',
'     apex_collections  ac',
'WHERE vf.collection_name = ''MAIN_VIEW_SSH'' AND NVL(vfe.collection_name, ''EXTRA_INFO_VIEW'') = ''EXTRA_INFO_VIEW''',
'    AND vf.c001 = vfe.c001(+) and vf.c002 = vfe.c002(+) and vf.c049 = vfe.c003(+)',
'    AND NVL(ac.collection_name, ''VIEW_SELECTION_SSH'') = ''VIEW_SELECTION_SSH''',
'    AND vf.c012 = ac.c001(+)',
'    AND instr(:P2_USER_MASLULIM, vf.c023) > 0',
'    AND ((:P2_ACTIVE_SWITCH IS NULL OR :P2_ACTIVE_SWITCH = ''N'') OR (:P2_ACTIVE_SWITCH = ''Y'' and vfe.c014 = ''0''))) data',
'    ',
'ORDER BY to_date(offer_time, ''DD/MM/YYYY HH24:MI'') NULLS LAST, status_order, main_family_member_id, family_sort_order NULLS LAST, camp_name, last_name, first_name'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P2_USER_MASLULIM,P2_USER_TYPE,P2_ACTIVE_SWITCH'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P2_SSH_ROWS_COUNT > 0'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Shinshinim \ Long Term Shlichut'
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
 p_id=>wwv_flow_api.id(940254130887063699)
,p_no_data_found_message=>'No Data Found'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'NONE'
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DRORA'
,p_internal_uid=>1171221196177995723
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940254197954063700)
,p_db_column_name=>'STATUS'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Status'
,p_column_html_expression=>'<span data-assignment-id="#ASSIGNMENT_ID#" data-person-id="#PERSON_ID#" data-request-id="#REQUEST_ID#" class="status-cell" style="box-shadow: 0 0 5px 2px #STATUS_COLOR_SHADOW#; background: rgb(#STATUS_COLOR# / 40%);">#STATUS#</span>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940254331136063701)
,p_db_column_name=>'NATIONAL_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Israeli Id Number'
,p_column_html_expression=>'<span class="national-id-col" data-national-id="#NATIONAL_ID#">#NATIONAL_ID#</span>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'NATIONAL_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940254386099063702)
,p_db_column_name=>'MASLUL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Maslul'
,p_column_html_expression=>'<div class="maslul">#MASLUL#</div>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940254499182063703)
,p_db_column_name=>'MASLUL_SHORT_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Maslul Short Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940254606319063704)
,p_db_column_name=>'MAIN_AIRPORT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Outbound Arrival Airport - Main'
,p_column_html_expression=>'<div class="main-airport">#MAIN_AIRPORT#</div>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940254688917063705)
,p_db_column_name=>'SEC_AIRPORT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Outbound Arrival Airport - Sec'
,p_column_html_expression=>'<div class="sec-airport">#SEC_AIRPORT#</div>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940254918009063707)
,p_db_column_name=>'CAMP_ARRIVAL_TIME'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Camp Arrival Time'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940255199089063710)
,p_db_column_name=>'MEAL'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Meal'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940255321780063711)
,p_db_column_name=>'DEPARTURE_AIRPORT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Inbound Departure Airport'
,p_column_html_expression=>'<div class="departure-airport">#DEPARTURE_AIRPORT#</div>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940255527855063713)
,p_db_column_name=>'FLIGHT_REMARKS_APPLICANT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Applicant Remarks '
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
,p_static_id=>'FLIGHT_REMARKS_APPLICANT'
,p_display_condition_type=>'REQUEST_NOT_IN_CONDITION'
,p_display_condition=>'CSV,IR[shinshinimInfoRegion]_CSV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940255560013063714)
,p_db_column_name=>'FLIGHTS_REMARKS_MASLUL'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Maslul Remarks '
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
,p_static_id=>'FLIGHTS_REMARKS_MASLUL'
,p_display_condition_type=>'REQUEST_NOT_IN_CONDITION'
,p_display_condition=>'CSV,IR[shinshinimInfoRegion]_CSV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940255694012063715)
,p_db_column_name=>'OFFER_TIME'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Approve Until'
,p_column_html_expression=>'<span class="valid-until" data-assignment-id="#ASSIGNMENT_ID#" data-person-id="#PERSON_ID#" data-request-id="#REQUEST_ID#">#OFFER_TIME#</span>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'OFFER_TIME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940255766196063716)
,p_db_column_name=>'MAIN_FAMILY_MEMBER_ID'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Main Family Member Id'
,p_column_html_expression=>'<span class="main-family-member-id" data-family-sort-order="#FAMILY_SORT_ORDER#">#MAIN_FAMILY_MEMBER_ID#</span>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'MAIN_FAMILY_MEMBER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940255861974063717)
,p_db_column_name=>'COST'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cost For Billing'
,p_column_html_expression=>'<span class="cost-for-billing" data-assignment-id="#ASSIGNMENT_ID#" data-person-id="#PERSON_ID#" data-request-id="#REQUEST_ID#">#COST#</span>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'COST'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_display_condition=>':P2_USER_TYPE = ''M'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940255996004063718)
,p_db_column_name=>'FLIGHT_TICKET'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Flight Ticket'
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
,p_static_id=>'FLIGHT_TICKET'
,p_display_condition_type=>'REQUEST_NOT_IN_CONDITION'
,p_display_condition=>'CSV,IR[shinshinimInfoRegion]_CSV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940256125334063719)
,p_db_column_name=>'FLIGHT_REMARKS_APPLICANT_CSV'
,p_display_order=>200
,p_column_identifier=>'T'
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
,p_display_condition_type=>'REQUEST_IN_CONDITION'
,p_display_condition=>'CSV,IR[shinshinimInfoRegion]_CSV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940256227576063720)
,p_db_column_name=>'FLIGHTS_REMARKS_MASLUL_CSV'
,p_display_order=>210
,p_column_identifier=>'U'
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
,p_display_condition_type=>'REQUEST_IN_CONDITION'
,p_display_condition=>'CSV,IR[shinshinimInfoRegion]_CSV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940256322608063721)
,p_db_column_name=>'FLIGHT_TICKET_CSV'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Flight Ticket'
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
,p_display_condition_type=>'REQUEST_IN_CONDITION'
,p_display_condition=>'CSV,IR[shinshinimInfoRegion]_CSV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940256400965063722)
,p_db_column_name=>'IS_US_OR_CA_CITIZEN_CSV'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Other Citizenship '
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
,p_display_condition_type=>'REQUEST_IN_CONDITION'
,p_display_condition=>'CSV,IR[shinshinimInfoRegion]_CSV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940256547791063724)
,p_db_column_name=>'DEPARTURE_TIME'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Inbound Departure Time'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940256710525063725)
,p_db_column_name=>'COUNTRY'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Country'
,p_column_html_expression=>'<div class="country">#COUNTRY#</div>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940256780559063726)
,p_db_column_name=>'STATE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'State'
,p_column_html_expression=>'<div class="state">#STATE#</div>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940259044311026977)
,p_db_column_name=>'CITY'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'City'
,p_column_html_expression=>'<div class="city">#CITY#</div>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940259228484026978)
,p_db_column_name=>'PREFERRED_ARRIVAL_TIME'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Outbound Arrival Time'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940259254894026979)
,p_db_column_name=>'ROWSELECTOR'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'&nbsp;'
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
,p_static_id=>'ROWSELECTOR'
,p_display_condition_type=>'REQUEST_NOT_IN_CONDITION'
,p_display_condition=>'CSV,IR[shinshinimInfoRegion]_CSV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940259390664026980)
,p_db_column_name=>'STATUS_COLOR'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Status Color'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940259497719026981)
,p_db_column_name=>'STATUS_COLOR_SHADOW'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Status Color Shadow'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940259592898026982)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Last Name'
,p_column_html_expression=>'#LAST_NAME# <span class="fa fa-users" style="margin-left: 10px; display: none;"></span>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'LAST_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940259668543026983)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'First Name'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940259757820026984)
,p_db_column_name=>'FLIGHT_COST'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Flight Cost'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940259851427026985)
,p_db_column_name=>'AGENT_NAME'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Handling Agent'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span data-assignment-id="#ASSIGNMENT_ID#" data-person-id="#PERSON_ID#" data-request-id="#REQUEST_ID#" class="agent-name">#AGENT_NAME#</span>',
''))
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940259959332026986)
,p_db_column_name=>'STATUS_ORDER'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Status Order'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940260115608026987)
,p_db_column_name=>'GENDER'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Gender'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940260159915026988)
,p_db_column_name=>'DATE_OF_BIRTH'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Date Of Birth'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940260298864026989)
,p_db_column_name=>'CAMP_NAME'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Customer'
,p_column_html_expression=>'<div class="camp-name">#CAMP_NAME#</div>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940260376449026990)
,p_db_column_name=>'CITY_OF_BIRTH'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'City Of Birth'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940260531072026991)
,p_db_column_name=>'COUNTRY_OF_BIRTH'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Country Of Birth'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940260588218026992)
,p_db_column_name=>'EMAIL_ADDRESS'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Email Address'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940260695734026993)
,p_db_column_name=>'PASSPORT_NUMBER'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Passport Number'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'PASSPORT_NUMBER_COL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940260834594026994)
,p_db_column_name=>'PASSPORT_EXPIRATION'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Passport Expiration'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940261206927026998)
,p_db_column_name=>'PIC'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Passport'
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
,p_static_id=>'PIC'
,p_display_condition_type=>'REQUEST_NOT_IN_CONDITION'
,p_display_condition=>'CSV,IR[shinshinimInfoRegion]_CSV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940261295178026999)
,p_db_column_name=>'COORDINATOR_NAME'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Coordinator'
,p_column_html_expression=>'<div class="coordinator-name">#COORDINATOR_NAME#</div>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940261422527027000)
,p_db_column_name=>'MOBILE'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Mobile'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940261488181027001)
,p_db_column_name=>'IS_US_OR_CA_CITIZEN'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Other Citizenship '
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'REQUEST_NOT_IN_CONDITION'
,p_display_condition=>'CSV,IR[shinshinimInfoRegion]_CSV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(940261574210027002)
,p_db_column_name=>'FLIGHT'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Flight'
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
,p_static_id=>'FLIGHT'
,p_display_condition_type=>'REQUEST_NOT_IN_CONDITION'
,p_display_condition=>'CSV,IR[shinshinimInfoRegion]_CSV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468944186454370300)
,p_db_column_name=>'REQUEST_ID'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Request Id'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468945090815370309)
,p_db_column_name=>'INDIVIDUAL_ARRIVAL_DATE'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Outbound Arrival Date'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468945227581370310)
,p_db_column_name=>'REQUESTED_RETURN_DATE'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Inbound Departure Date'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(224063386389875418)
,p_db_column_name=>'ASSIGNMENT_ID'
,p_display_order=>570
,p_column_identifier=>'BF'
,p_column_label=>'Assignment Id'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(224063239625875417)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>580
,p_column_identifier=>'BG'
,p_column_label=>'Person Id'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(224063187384875416)
,p_db_column_name=>'STATUS_CODE'
,p_display_order=>590
,p_column_identifier=>'BH'
,p_column_label=>'Status Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(224063089959875415)
,p_db_column_name=>'CAMP_ARRIVAL_DATE'
,p_display_order=>600
,p_column_identifier=>'BI'
,p_column_label=>'Camp Arrival Date'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(224062974629875414)
,p_db_column_name=>'J1_PERMIT_END_DATE'
,p_display_order=>610
,p_column_identifier=>'BJ'
,p_column_label=>'J1 Permit End Date'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(224062805727875413)
,p_db_column_name=>'OFFER_TIME_RAW'
,p_display_order=>620
,p_column_identifier=>'BK'
,p_column_label=>'Offer Time Raw'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(224062714026875412)
,p_db_column_name=>'SHLICHUT_END_DATE'
,p_display_order=>630
,p_column_identifier=>'BL'
,p_column_label=>'Shlichut End Date'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(960299380040389754)
,p_db_column_name=>'ARRIVAL_DATE_APPROVED'
,p_display_order=>640
,p_column_identifier=>'BM'
,p_column_label=>'Arrival Date Approved'
,p_column_html_expression=>'<span class="arrival-date-approved-span" style="width: 100%; line-height: 35px; display: block;" title="#ARRIVAL_DATE_APPROVED_TITLE#">#ARRIVAL_DATE_APPROVED#</span>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(960299324869389753)
,p_db_column_name=>'REQUESTED_ARRIVAL_DATE'
,p_display_order=>650
,p_column_identifier=>'BN'
,p_column_label=>'Requested Arrival Date'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(960299251435389752)
,p_db_column_name=>'CHANGE_DATE_REASON'
,p_display_order=>660
,p_column_identifier=>'BO'
,p_column_label=>'Change Date Reason'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(960299099836389751)
,p_db_column_name=>'LUGGAGE'
,p_display_order=>670
,p_column_identifier=>'BP'
,p_column_label=>'Luggage'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(960299009321389750)
,p_db_column_name=>'JOINING'
,p_display_order=>680
,p_column_identifier=>'BQ'
,p_column_label=>'Separated'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
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
 p_id=>wwv_flow_api.id(960298922818389749)
,p_db_column_name=>'JOINING_DATE'
,p_display_order=>690
,p_column_identifier=>'BR'
,p_column_label=>'Joining Date'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(960298836850389748)
,p_db_column_name=>'COUNT_PETS'
,p_display_order=>700
,p_column_identifier=>'BS'
,p_column_label=>'Pets'
,p_column_html_expression=>'<span class="pets-span" style="width: 100%; line-height: 35px; display: block;" title="#PET1_INFO#&#013;&#013;#PET2_INFO#&#013;&#013;#PET3_INFO#">#COUNT_PETS#</span>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(960298765185389747)
,p_db_column_name=>'PET1_INFO'
,p_display_order=>710
,p_column_identifier=>'BT'
,p_column_label=>'Pet1 Info'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(960298588767389746)
,p_db_column_name=>'PET2_INFO'
,p_display_order=>720
,p_column_identifier=>'BU'
,p_column_label=>'Pet2 Info'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(960298565028389745)
,p_db_column_name=>'PET3_INFO'
,p_display_order=>730
,p_column_identifier=>'BV'
,p_column_label=>'Pet3 Info'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(960298474649389744)
,p_db_column_name=>'ARRIVAL_DATE_APPROVED_TITLE'
,p_display_order=>740
,p_column_identifier=>'BW'
,p_column_label=>'Arrival Date Approved Title'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(960294691961389707)
,p_db_column_name=>'FAMILY_SORT_ORDER'
,p_display_order=>750
,p_column_identifier=>'BY'
,p_column_label=>'Family Sort Order'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(949322217996558155)
,p_db_column_name=>'IS_FAMILY'
,p_display_order=>760
,p_column_identifier=>'CA'
,p_column_label=>'Is Family'
,p_column_html_expression=>'#IS_FAMILY_ICON#'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(949322088749558154)
,p_db_column_name=>'IS_FAMILY_ICON'
,p_display_order=>770
,p_column_identifier=>'CB'
,p_column_label=>'Is Family Icon'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1443674124602738250)
,p_db_column_name=>'OUTBOUND_DEP_AIRPORT'
,p_display_order=>780
,p_column_identifier=>'CC'
,p_column_label=>'Outbound Departure Airport'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1443674042615738249)
,p_db_column_name=>'INBOUND_ARR_AIRPORT'
,p_display_order=>790
,p_column_identifier=>'CD'
,p_column_label=>'Inbound Arrival Airport'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(940286883306012574)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'11712540'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROWSELECTOR:FLIGHT:STATUS:OFFER_TIME:AGENT_NAME:CAMP_NAME:LAST_NAME:FIRST_NAME:GENDER:DATE_OF_BIRTH:MASLUL:OUTBOUND_DEP_AIRPORT:MAIN_AIRPORT:SEC_AIRPORT:INDIVIDUAL_ARRIVAL_DATE:PREFERRED_ARRIVAL_TIME:DEPARTURE_AIRPORT:INBOUND_ARR_AIRPORT:FLIGHT_REMAR'
||'KS_APPLICANT_CSV:FLIGHTS_REMARKS_MASLUL_CSV:FLIGHT_TICKET_CSV:IS_US_OR_CA_CITIZEN_CSV:REQUESTED_RETURN_DATE:DEPARTURE_TIME:MEAL:IS_FAMILY:ARRIVAL_DATE_APPROVED:FLIGHT_REMARKS_APPLICANT:FLIGHTS_REMARKS_MASLUL:MAIN_FAMILY_MEMBER_ID:JOINING:JOINING_DATE'
||':LUGGAGE:COUNT_PETS:PASSPORT_NUMBER:PASSPORT_EXPIRATION:PIC:J1_PERMIT_END_DATE:SHLICHUT_END_DATE:IS_US_OR_CA_CITIZEN:COUNTRY:STATE:CITY:COST:COORDINATOR_NAME:NATIONAL_ID:EMAIL_ADDRESS:MOBILE:FLIGHT_COST:FLIGHT_TICKET:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(822968613134561625)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(57284967489128318)
,p_button_name=>'Download_Template_Hidden_SC'
,p_button_static_id=>'downloadTemplateHiddenBtnSC'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(119978609050743280)
,p_button_image_alt=>'Download Template Hidden Sc'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.:IR[importTemplateIR]_CSV:&DEBUG.:::'
,p_button_cattributes=>'style="display:none"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(940253845731063697)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(940251997393063678)
,p_button_name=>'Download_Template_Hidden_SSH'
,p_button_static_id=>'downloadTemplateHiddenBtnSSH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(119978609050743280)
,p_button_image_alt=>'Download Template Hidden SSH'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.:IR[importTemplateIR]_CSV:&DEBUG.:::'
,p_button_cattributes=>'style="display:none"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(822965754106561597)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(57284967489128318)
,p_button_name=>'Download_Import_Template_SC'
,p_button_static_id=>'downloadTemplateBtnSC'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download Import Template'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-download'
,p_button_cattributes=>'style="display: none;"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(940253635292063695)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(940251997393063678)
,p_button_name=>'Download_Import_Template_SSH'
,p_button_static_id=>'downloadTemplateBtnSSH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download Import Template'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-download'
,p_button_cattributes=>'style="display: none;"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(801862675188360516)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(57284967489128318)
,p_button_name=>'Import_Flight_Legs_SC'
,p_button_static_id=>'importBtnSC'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Import Flight Legs'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-upload'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(940253788062063696)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(940251997393063678)
,p_button_name=>'Import_Flight_Legs_SSH'
,p_button_static_id=>'importBtnSSH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Import Flight Legs'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-upload'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(729767113995698322)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(57284967489128318)
,p_button_name=>'Download_CSV_SC'
,p_button_static_id=>'downloadBtnSC'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download CSV'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.:IR[summerCampsInfoRegion]_CSV:&DEBUG.:::'
,p_icon_css_classes=>'fa-download'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(940253984799063698)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(940251997393063678)
,p_button_name=>'Download_CSV_SSH'
,p_button_static_id=>'downloadBtnSSH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download CSV'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.:IR[shinshinimInfoRegion]_CSV:&DEBUG.:::'
,p_icon_css_classes=>'fa-download'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1698416582953892329)
,p_name=>'P2_ACTIVE_SWITCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1698416708881892330)
,p_prompt=>'View only inactive flights'
,p_display_as=>'NATIVE_YES_NO'
,p_tag_attributes=>'style="float: right"'
,p_field_template=>wwv_flow_api.id(119978609050743336)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(296068158196968)
,p_name=>'P2_EMPNO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(674150852101946689)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(295990961196967)
,p_name=>'P2_URL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(674150852101946689)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(443962900465771923)
,p_name=>'P2_SELECTED_RDS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(674150852101946689)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(453549111386549098)
,p_name=>'P2_DOWNLOAD_TEMPLATE_SC'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(57284967489128318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(453549224687549099)
,p_name=>'P2_DOWNLOAD_TEMPLATE_SSH'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(940251997393063678)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(453549536576549103)
,p_name=>'P2_SC_ROWS_COUNT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(57284967489128318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(453549825419549105)
,p_name=>'P2_SSH_ROWS_COUNT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(940251997393063678)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(468945670639370315)
,p_name=>'P2_C_REQUEST_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(57284967489128318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(468945789147370316)
,p_name=>'P2_C1_REQUEST_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(940251997393063678)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(511234117020222678)
,p_name=>'P11_PERSON_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(674150852101946689)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(511234207240222679)
,p_name=>'P12_PERSON_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(674150852101946689)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642461923039910696)
,p_name=>'P2_USER_TYPE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(674150852101946689)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642461940520910697)
,p_name=>'P2_USER_MASLULIM'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(674150852101946689)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(642462126394910698)
,p_name=>'P2_USER_STATUSES'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(674150852101946689)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655784475194142508)
,p_name=>'P2_C_ASSIGNMENT_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(57284967489128318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655784572619142509)
,p_name=>'P2_C_PERSON_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(57284967489128318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655784701016142510)
,p_name=>'P2_C_STATUS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(57284967489128318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655784817428142511)
,p_name=>'P2_C_SEQ'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(57284967489128318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(655785002222142513)
,p_name=>'P2_C_STATUS_HTML'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(57284967489128318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(729765669198698308)
,p_name=>'P2_C_COST_FOR_BILLING'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(57284967489128318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(740228730414543788)
,p_name=>'P2_C_VALID_UNTIL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(57284967489128318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(740230203761543803)
,p_name=>'P2_C_TICKET_HTML'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(57284967489128318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(822968635338561626)
,p_name=>'P2_C_SELECTOR_HTML'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(57284967489128318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(830158833646279177)
,p_name=>'P2_C_NATIONAL_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(57284967489128318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(861961853287190702)
,p_name=>'P2_REMARKS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(861961781352190701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(861962437716190708)
,p_name=>'P2_C_AGENT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(57284967489128318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(940252591084063684)
,p_name=>'P2_C1_SEQ'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(940251997393063678)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(940252697161063685)
,p_name=>'P2_C1_ASSIGNMENT_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(940251997393063678)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(940252769918063686)
,p_name=>'P2_C1_PERSON_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(940251997393063678)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(940252862414063687)
,p_name=>'P2_C1_STATUS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(940251997393063678)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(940252958394063688)
,p_name=>'P2_C1_STATUS_HTML'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(940251997393063678)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(940253085295063689)
,p_name=>'P2_C1_COST_FOR_BILLING'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(940251997393063678)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(940253139476063690)
,p_name=>'P2_C1_VALID_UNTIL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(940251997393063678)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(940253259408063691)
,p_name=>'P2_C1_TICKET_HTML'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(940251997393063678)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(940253351536063692)
,p_name=>'P2_C1_SELECTOR_HTML'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(940251997393063678)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(940253501624063693)
,p_name=>'P2_C1_NATIONAL_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(940251997393063678)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(940253597395063694)
,p_name=>'P2_C1_AGENT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(940251997393063678)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(655783866850142502)
,p_name=>'FM Summer Camps Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data.dialogPageId == 4 && $v(''P2_SELECTED_RDS'') == ''#summerCampsInfoRegion'''
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(993889412683261421)
,p_event_id=>wwv_flow_api.id(655783866850142502)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sessionStorage.removeItem(''currentFlightState'');',
'return;',
'',
'var currentFlightState = JSON.parse(sessionStorage.getItem(''currentFlightState''));',
'if (currentFlightState != undefined && currentFlightState.seq > 0) {',
'    $(''#summerCampsInfoRegion .status-cell[data-assignment-id="'' + currentFlightState.assignmentId + ''"][data-person-id="'' + currentFlightState.personId + ''"]'').parent().html(currentFlightState.statusHtml);',
'    $(''#summerCampsInfoRegion .cost-for-billing[data-assignment-id="'' + currentFlightState.assignmentId + ''"][data-person-id="'' + currentFlightState.personId + ''"]'').text(currentFlightState.costForBilling);',
'    $(''#summerCampsInfoRegion .show-tickets-btn[data-assignment-id="'' + currentFlightState.assignmentId + ''"][data-person-id="'' + currentFlightState.personId + ''"]'').parent().html(currentFlightState.ticketHtml);',
'    $(''#summerCampsInfoRegion .agent-name[data-assignment-id="'' + currentFlightState.assignmentId + ''"][data-person-id="'' + currentFlightState.personId + ''"]'').text(currentFlightState.agentName);',
'    ',
'    if (currentFlightState.status != 6 && currentFlightState.validUntil.length > 0) {',
'        var timeToBookVal = timeToBook(currentFlightState.validUntil);',
'        var expired = timeToBookVal.substring(0,4) != ''Book'';',
'        $(''#summerCampsInfoRegion .valid-until[data-assignment-id="'' + currentFlightState.assignmentId + ''"][data-person-id="'' + currentFlightState.personId + ''"]'').text(currentFlightState.validUntil).attr(''title'', timeToBookVal)',
'            .parent().attr(''style'', expired === true ? ''color: rgb(255, 0, 0); font-weight: bold;'' : '''');',
'    }',
'    ',
'    if (currentFlightState.status == 1 || currentFlightState.status == 4) {',
'        $(''#summerCampsInfoRegion .status-cell[data-assignment-id="'' + currentFlightState.assignmentId + ''"][data-person-id="'' + currentFlightState.personId + ''"]'').parent().parent().find(''td[headers="ROWSELECTOR"]'').html(''<input type="checkbox" name'
||'="f01" value="'' + currentFlightState.nationalId + ''">'');',
'    }',
'    ',
'    sessionStorage.removeItem(''currentFlightState'');',
'}'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(993889300741261420)
,p_event_id=>wwv_flow_api.id(655783866850142502)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*$.each($(''#summerCampsInfoRegion_data_panel .t-fht-tbody table tr:first-child'').children(), function(index, currentTH) {',
'    $($(''#summerCampsInfoRegion_data_panel .t-fht-thead table tr:first-child'').children()[index]).find(''div.t-fht-cell'').attr(''style'', ''width: '' + $(currentTH).width() + ''px;'');',
'});*/',
'',
'var processName = ''REMOVE_MEMBER'';',
'apex.server.process(processName,',
'{',
'    x01: $v(''P2_C_NATIONAL_ID'') //Maps to APEX_APPLICATION.G_X01       ',
'},',
'{',
'    success: function (pResponse) {',
'        apex.region("importTemplateIR").refresh();',
'    },',
'    error: function (pResponse) {',
'        // Error callback',
'        alert("Error " + processName + ": " + pResponse.responseText);',
'    },',
'    dataType: "text"',
'});',
'',
'apex.server.process(''POPULATE_FLIGHT_DATA'', { }, {',
'    success: function (pResponse) {',
'        apex.server.process(''POPULATE_SC_COLLECTION'', { }, {',
'            success: function (pResponse) {',
'                apex.region("summerCampsInfoRegion").refresh();',
'                $(''#summerCampsInfoRegion td[headers="ROWSELECTOR"] input:checked'').length > 0 ? $(''#summerCampsInfoRegion #downloadTemplateBtn'').show() : $(''#summerCampsInfoRegion #downloadTemplateBtn'').hide();',
'            },',
'            error: function (pResponse) {',
'                // Error callback',
'                alert("Error POPULATE_SC_COLLECTION: " + pResponse.responseText);',
'            },',
'            dataType: "text"',
'        });',
'    },',
'    error: function (pResponse) {',
'        // Error callback',
'        alert("Error POPULATE_FLIGHT_DATA: " + pResponse.responseText);',
'    },',
'    dataType: "text"',
'});',
'',
'//$(''#summerCampsInfoRegion td[headers="ROWSELECTOR"] input:checked'').length > 0 ? $(''#summerCampsInfoRegion #downloadTemplateBtn'').show() : $(''#summerCampsInfoRegion #downloadTemplateBtn'').hide();'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(219263928304926728)
,p_name=>'FM Shinshinim Dialog Closed'
,p_event_sequence=>40
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data.dialogPageId == 4 && $v(''P2_SELECTED_RDS'') == ''#shinshinimInfoRegion'''
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(219263820936926727)
,p_event_id=>wwv_flow_api.id(219263928304926728)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sessionStorage.removeItem(''currentFlightState'');',
'return;',
'',
'var currentFlightState = JSON.parse(sessionStorage.getItem(''currentFlightState''));',
'if (currentFlightState != undefined && currentFlightState.seq > 0) {',
'    $(''#shinshinimInfoRegion .status-cell[data-assignment-id="'' + currentFlightState.assignmentId + ''"][data-person-id="'' + currentFlightState.personId + ''"][data-request-id="'' + currentFlightState.requestId + ''"]'').parent().html(currentFlightState.s'
||'tatusHtml);',
'    $(''#shinshinimInfoRegion .cost-for-billing[data-assignment-id="'' + currentFlightState.assignmentId + ''"][data-person-id="'' + currentFlightState.personId + ''"][data-request-id="'' + currentFlightState.requestId + ''"]'').text(currentFlightState.costF'
||'orBilling);',
'    $(''#shinshinimInfoRegion .show-tickets-btn[data-assignment-id="'' + currentFlightState.assignmentId + ''"][data-person-id="'' + currentFlightState.personId + ''"][data-request-id="'' + currentFlightState.requestId + ''"]'').parent().html(currentFlightSt'
||'ate.ticketHtml);',
'    $(''#shinshinimInfoRegion .agent-name[data-assignment-id="'' + currentFlightState.assignmentId + ''"][data-person-id="'' + currentFlightState.personId + ''"][data-request-id="'' + currentFlightState.requestId + ''"]'').text(currentFlightState.agentName);',
'    ',
'    if (currentFlightState.status != 6 && currentFlightState.validUntil.length > 0) {',
'        var timeToBookVal = timeToBook(currentFlightState.validUntil);',
'        var expired = timeToBookVal.substring(0,4) != ''Book'';',
'        $(''#shinshinimInfoRegion .valid-until[data-assignment-id="'' + currentFlightState.assignmentId + ''"][data-person-id="'' + currentFlightState.personId + ''"][data-request-id="'' + currentFlightState.requestId + ''"]'').text(currentFlightState.validU'
||'ntil).attr(''title'', timeToBookVal)',
'            .parent().attr(''style'', expired === true ? ''color: rgb(255, 0, 0); font-weight: bold;'' : '''');',
'    }',
'    ',
'    if (currentFlightState.status == 1 || currentFlightState.status == 4) {',
'        $(''#shinshinimInfoRegion .status-cell[data-assignment-id="'' + currentFlightState.assignmentId + ''"][data-person-id="'' + currentFlightState.personId + ''"][data-request-id="'' + currentFlightState.requestId + ''"]'').parent().parent().find(''td[hea'
||'ders="ROWSELECTOR"]'').html(''<input type="checkbox" name="f01" value="'' + currentFlightState.nationalId + ''">'');',
'    }',
'    ',
'    sessionStorage.removeItem(''currentFlightState'');',
'}'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(219263598104926725)
,p_event_id=>wwv_flow_api.id(219263928304926728)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*$.each($(''#shinshinimInfoRegion_data_panel .t-fht-tbody table tr:first-child'').children(), function(index, currentTH) {',
'    $($(''#shinshinimInfoRegion_data_panel .t-fht-thead table tr:first-child'').children()[index]).find(''div.t-fht-cell'').attr(''style'', ''width: '' + $(currentTH).width() + ''px;'');',
'});*/',
'',
'var processName = ''REMOVE_MEMBER'';',
'apex.server.process(processName,',
'{',
'    x01: $v(''P2_C1_NATIONAL_ID'') //Maps to APEX_APPLICATION.G_X01       ',
'},',
'{',
'    success: function (pResponse) {',
'        apex.region("importTemplateIR").refresh();',
'    },',
'    error: function (pResponse) {',
'        // Error callback',
'        alert("Error " + processName + ": " + pResponse.responseText);',
'    },',
'    dataType: "text"',
'});',
'',
'apex.server.process(''POPULATE_FLIGHT_DATA'', { }, {',
'    success: function (pResponse) {',
'        apex.server.process(''POPULATE_SSH_COLLECTION'', { }, {',
'            success: function (pResponse) {',
'                apex.region("shinshinimInfoRegion").refresh();',
'                $(''#shinshinimInfoRegion td[headers="ROWSELECTOR"] input:checked'').length > 0 ? $(''#shinshinimInfoRegion #downloadTemplateBtn'').show() : $(''#shinshinimInfoRegion #downloadTemplateBtn'').hide();',
'            },',
'            error: function (pResponse) {',
'                // Error callback',
'                alert("Error POPULATE_SSH_COLLECTION: " + pResponse.responseText);',
'            },',
'            dataType: "text"',
'        });',
'    },',
'    error: function (pResponse) {',
'        // Error callback',
'        alert("Error POPULATE_FLIGHT_DATA: " + pResponse.responseText);',
'    },',
'    dataType: "text"',
'});',
'',
'//$(''#shinshinimInfoRegion td[headers="ROWSELECTOR"] input:checked'').length > 0 ? $(''#shinshinimInfoRegion #downloadTemplateBtn'').show() : $(''#shinshinimInfoRegion #downloadTemplateBtn'').hide();'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(685655220056334325)
,p_name=>'Set GUI'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(453549304146549100)
,p_event_id=>wwv_flow_api.id(685655220056334325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DOWNLOAD_TEMPLATE_SC'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count number;',
'begin',
'    select count(*) into v_count from apex_collections where collection_name = ''VIEW_SELECTION_SC'';',
'    ',
'    if v_count > 0 then ',
'        return ''Y'';',
'    end if;',
'    ',
'    ',
'    return ''N'';',
'end;'))
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(453549471232549102)
,p_event_id=>wwv_flow_api.id(685655220056334325)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DOWNLOAD_TEMPLATE_SSH'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count number;',
'begin',
'    select count(*) into v_count from apex_collections where collection_name = ''VIEW_SELECTION_SSH'';',
'    ',
'    if v_count > 0 then ',
'        return ''Y'';',
'    end if;',
'    return ''N'';',
'end;'))
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(685655314083334326)
,p_event_id=>wwv_flow_api.id(685655220056334325)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P2_SC_ROWS_COUNT'') != ''0'') {',
'    $(''<div class="top-scroll-wrapper-sc"><div class="top-scroll-div-sc"></div></div>'').insertAfter(''#summerCampsInfoRegion_toolbar'');',
'    $(''.top-scroll-wrapper-sc'').stickyWidget({toggleWidth:true});',
'    $(''#summerCampsInfoRegion .t-fht-thead'').scroll(function() {',
'        $(".top-scroll-wrapper-sc").scrollLeft($("#summerCampsInfoRegion .t-fht-thead").scrollLeft());',
'    });',
'    $(''.top-scroll-wrapper-sc'').scroll(function() {',
'        $("#summerCampsInfoRegion .t-fht-thead").scrollLeft($(".top-scroll-wrapper-sc").scrollLeft());',
'    });',
'    ',
'    $v(''P2_DOWNLOAD_TEMPLATE_SC'') == ''Y'' ? $(''#downloadTemplateBtnSC'').show() : $(''#downloadTemplateBtnSC'').hide();',
'    ',
'    $.each($(''#summerCampsInfoRegion .t-fht-tbody table tr:not(:first-child)''), function( index, value ) {',
'        var mainFamilyMemberHasValue = $(value).find(''td[headers="MAIN_FAMILY_MEMBER_ID"]'').text().length > 0;',
'        if (mainFamilyMemberHasValue === true)',
'            $(value).find(''td[headers="LAST_NAME"] span.fa-users'').show();',
'    });',
'    ',
'    $.each($(''#summerCampsInfoRegion_data_panel .t-fht-tbody table tr:first-child'').children(), function(index, currentTH) {',
'        $($(''#summerCampsInfoRegion_data_panel .t-fht-thead table tr:first-child'').children()[index]).find(''div.t-fht-cell'').attr(''style'', ''width: '' + $(currentTH).width() + ''px;'');',
'    });',
'}',
'',
'if ($v(''P2_SSH_ROWS_COUNT'') != ''0'') {',
'    $(''<div class="top-scroll-wrapper-ssh"><div class="top-scroll-div-ssh"></div></div>'').insertAfter(''#shinshinimInfoRegion_toolbar'');',
'    $(''.top-scroll-wrapper-ssh'').stickyWidget({toggleWidth:true});',
'    $(''#shinshinimInfoRegion .t-fht-thead'').scroll(function() {',
'        $(".top-scroll-wrapper-ssh").scrollLeft($("#shinshinimInfoRegion .t-fht-thead").scrollLeft());',
'    });',
'    $(''.top-scroll-wrapper-ssh'').scroll(function() {',
'        $("#shinshinimInfoRegion .t-fht-thead").scrollLeft($(".top-scroll-wrapper-ssh").scrollLeft());',
'    });',
'',
'    $v(''P2_DOWNLOAD_TEMPLATE_SSH'') == ''Y'' ? $(''#downloadTemplateBtnSSH'').show() : $(''#downloadTemplateBtnSSH'').hide();',
'',
'    $.each($(''#shinshinimInfoRegion .t-fht-tbody table tr:not(:first-child)''), function( index, value ) {',
'        var familyMemberIdCell = $(value).find(''td[headers="MAIN_FAMILY_MEMBER_ID"] .main-family-member-id'');',
'        var isLTS = $(familyMemberIdCell).data(''family-sort-order'') != '''';',
'        if (isLTS === true) {',
'            var isMainFamilyMember = $(familyMemberIdCell).data(''family-sort-order'') == 0;',
'            if (isMainFamilyMember === false) {',
'                $(value).addClass(''family-member'');',
'                $(value).find(''td[headers="LAST_NAME"] span.fa-users'').show();',
'                $(''.national-id-col[data-national-id="'' + $(familyMemberIdCell).text() + ''"]'').parents(''tr'').find(''td[headers="LAST_NAME"] span.fa-users'').show();',
'            }',
'        }',
'    });',
'',
'    $.each($(''#shinshinimInfoRegion_data_panel .t-fht-tbody table tr:first-child'').children(), function(index, currentTH) {',
'        $($(''#shinshinimInfoRegion_data_panel .t-fht-thead table tr:first-child'').children()[index]).find(''div.t-fht-cell'').attr(''style'', ''width: '' + $(currentTH).width() + ''px;'');',
'    });',
'}',
'',
'var selectedRds = null;',
'if ($(''.apex-rds-selected a'').length > 0) {',
'    selectedRds = $(''.apex-rds-selected a'').attr(''href'');',
'}',
'else {',
'    if ($(''#summerCampsInfoRegion'').length > 0) {',
'        selectedRds = ''#summerCampsInfoRegion'';',
'    }',
'    else if ($(''#shinshinimInfoRegion'').length > 0) {',
'        selectedRds = ''#shinshinimInfoRegion'';',
'    }',
'    $(''#rds'').parent().css({ ''display'': ''none'' });',
'}',
'',
'if (selectedRds) {',
'    $s(''P2_SELECTED_RDS'', selectedRds);',
'}'))
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
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1717452734433844925)
,p_event_id=>wwv_flow_api.id(685655220056334325)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process(''GET_AIRLINES_LOOKUP'', { }, {',
'    success: function (res) {',
'        if (res.success == true && res.airlines.length > 0)  {',
'            sessionStorage.setItem(''Airlines'', JSON.stringify(res.airlines));',
'        }',
'    },',
'    error: function (res) {',
'        alert("Error GET_AIRLINES_LOOKUP: " + res.message);',
'    },',
'    dataType: "json"',
'});',
'',
'apex.server.process(''GET_AIRPORTS_LOOKUP'', { }, {',
'    success: function (res) {',
'        if (res.success == true && res.airports.length > 0)  {',
'            sessionStorage.setItem(''Airports'', JSON.stringify(res.airports));',
'        }',
'    },',
'    error: function (res) {',
'        alert("Error GET_AIRPORTS_LOOKUP: " + res.message);',
'    },',
'    dataType: "json"',
'});'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(453549946822549107)
,p_event_id=>wwv_flow_api.id(685655220056334325)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'APEX_UTIL.SET_SESSION_STATE(''P2_SELECTED_RDS'', :P2_SELECTED_RDS);'
,p_attribute_02=>'P2_SELECTED_RDS'
,p_attribute_03=>'P2_SELECTED_RDS'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(822966995184561609)
,p_name=>'Summer Camps Info Refresh'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(57284967489128318)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(822967090206561610)
,p_event_id=>wwv_flow_api.id(822966995184561609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    if (!buttonsHtmlSC || buttonsHtmlSC.length == 0) {',
'        buttonsHtmlSC = $(''#summerCampsInfoRegion_toolbar .a-IRR-buttons'').html();',
'        $(''#summerCampsInfoRegion_toolbar .a-IRR-buttons'').remove();',
'    }',
'    $(buttonsHtmlSC).insertBefore(''#summerCampsInfoRegion_toolbar_controls .a-IRR-controlGroup--options'');',
'',
'    $.each($(''#summerCampsInfoRegion .t-fht-tbody table tr:not(:first-child)''), function( index, row ) {',
'        var isActiveRecord = $(row).find(''div[is-active-record="1"]'').length > 0;',
'        if (!isActiveRecord) {',
'            $(row).find(''td'').css({ ''background-color'': ''#ebebeb'' });',
'        }',
'        ',
'        var mainFamilyMemberHasValue = $(row).find(''td[headers="MAIN_FAMILY_MEMBER_ID"]'').text().length > 0;',
'        if (mainFamilyMemberHasValue === true) {',
'            $(row).find(''td[headers="LAST_NAME"] span.fa-users'').show();',
'        }',
'',
'        var offertimeHasValue = $(row).find(''td[headers="OFFER_TIME"] span'').text().length > 0;',
'        if (offertimeHasValue) {',
'            var day, month, year, hour, min, today = new Date();',
'            var dateTimeText = $(row).find(''td[headers="OFFER_TIME"] span'').text();',
'',
'            var dateTimeParts = dateTimeText.split('' '');',
'            if (dateTimeParts.length == 2) {',
'                var dateParts = dateTimeParts[0].split(''/'');',
'                var timeParts = dateTimeParts[1].split('':'');',
'                if (dateParts.length == 3 && timeParts.length == 2) {',
'                    day = parseInt(dateParts[0]);',
'                    month = parseInt(dateParts[1]) - 1;',
'                    year = parseInt(dateParts[2]);',
'                    hour = parseInt(timeParts[0]);',
'                    min = parseInt(timeParts[1]);',
'',
'                    var offerTimeDate = new Date(year, month, day, hour, min);',
'                    if (offerTimeDate < today) {',
'                        $(row).find(''td[headers="OFFER_TIME"]'').css({ ''color'': ''red'', ''font-weight'': ''bold'' }).attr(''title'','''');',
'                    }',
'                    $(row).find(''td[headers="OFFER_TIME"]'').attr(''title'', timeToBook(dateTimeText));',
'                }',
'            }',
'        }',
'    });',
'',
'    $.each($(''#summerCampsInfoRegion_data_panel .t-fht-tbody table tr:first-child'').children(), function(index, currentTH) {',
'        $($(''#summerCampsInfoRegion_data_panel .t-fht-thead table tr:first-child'').children()[index]).find(''div.t-fht-cell'').attr(''style'', ''width: '' + $(currentTH).width() + ''px;'');',
'}); ',
'});'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(940261924795027005)
,p_name=>'Shinshinim Info Refresh'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(940251997393063678)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(940262017018027006)
,p_event_id=>wwv_flow_api.id(940261924795027005)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    if (!buttonsHtmlSSH || buttonsHtmlSSH.length == 0) {',
'        buttonsHtmlSSH = $(''#shinshinimInfoRegion_toolbar .a-IRR-buttons'').html();',
'        $(''#shinshinimInfoRegion_toolbar .a-IRR-buttons'').remove();',
'    }',
'    $(buttonsHtmlSSH).insertBefore(''#shinshinimInfoRegion_toolbar_controls .a-IRR-controlGroup--options'');',
'',
'    $.each($(''#shinshinimInfoRegion .t-fht-tbody table tr:not(:first-child)''), function( index, row ) {',
'        var familyMemberIdCell = $(row).find(''td[headers="MAIN_FAMILY_MEMBER_ID"] .main-family-member-id'');',
'        var isLTS = $(familyMemberIdCell).data(''family-sort-order'') != '''';',
'        if (isLTS === true) {',
'            var isMainFamilyMember = $(familyMemberIdCell).data(''family-sort-order'') == 0;',
'            if (isMainFamilyMember === false) {',
'                $(row).addClass(''family-member'');',
'                $(row).find(''td[headers="LAST_NAME"] span.fa-users'').show();',
'                $(''.national-id-col[data-national-id="'' + $(familyMemberIdCell).text() + ''"]'').parents(''tr'').find(''td[headers="LAST_NAME"] span.fa-users'').show();',
'            }',
'        }',
'',
'        var offertimeHasValue = $(row).find(''td[headers="OFFER_TIME"] span'').text().length > 0;',
'        if (offertimeHasValue) {',
'            var day, month, year, hour, min, today = new Date();',
'            var dateTimeText = $(row).find(''td[headers="OFFER_TIME"] span'').text();',
'',
'            var dateTimeParts = dateTimeText.split('' '');',
'            if (dateTimeParts.length == 2) {',
'                var dateParts = dateTimeParts[0].split(''/'');',
'                var timeParts = dateTimeParts[1].split('':'');',
'                if (dateParts.length == 3 && timeParts.length == 2) {',
'                    day = parseInt(dateParts[0]);',
'                    month = parseInt(dateParts[1]) - 1;',
'                    year = parseInt(dateParts[2]);',
'                    hour = parseInt(timeParts[0]);',
'                    min = parseInt(timeParts[1]);',
'',
'                    var offerTimeDate = new Date(year, month, day, hour, min);',
'                    if (offerTimeDate < today) {',
'                        $(row).find(''td[headers="OFFER_TIME"]'').css({ ''color'': ''red'', ''font-weight'': ''bold'' }).attr(''title'','''');',
'                    }',
'                    $(row).find(''td[headers="OFFER_TIME"]'').attr(''title'', timeToBook(dateTimeText));',
'                }',
'            }',
'        }',
'    });',
'',
'    $.each($(''#shinshinimInfoRegion_data_panel .t-fht-tbody table tr:first-child'').children(), function(index, currentTH) {',
'        $($(''#shinshinimInfoRegion_data_panel .t-fht-thead table tr:first-child'').children()[index]).find(''div.t-fht-cell'').attr(''style'', ''width: '' + $(currentTH).width() + ''px;'');',
'    });    ',
'});',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(822967304084561612)
,p_name=>'Row Selector Change'
,p_event_sequence=>80
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'td[headers="ROWSELECTOR"] input'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(822967388112561613)
,p_event_id=>wwv_flow_api.id(822967304084561612)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#summerCampsInfoRegion td[headers="ROWSELECTOR"] input:checked'').length > 0 ? $(''#downloadTemplateBtnSC'').show() : $(''#downloadTemplateBtnSC'').hide();',
'$(''#shinshinimInfoRegion td[headers="ROWSELECTOR"] input:checked'').length > 0 ? $(''#downloadTemplateBtnSSH'').show() : $(''#downloadTemplateBtnSSH'').hide();',
'',
'var processName = ''REMOVE_MEMBER'';',
'',
'if (this.triggeringElement.checked) {',
'    processName = ''ADD_MEMBER'';',
'}',
'',
'var selectedRds = null;',
'if ($(''.apex-rds-selected a'').length > 0) {',
'    selectedRds = $(''.apex-rds-selected a'').attr(''href'');',
'}',
'else {',
'    if ($(''#summerCampsInfoRegion'').length > 0) {',
'        selectedRds = ''#summerCampsInfoRegion'';',
'    }',
'    else if ($(''#shinshinimInfoRegion'').length > 0) {',
'        selectedRds = ''#shinshinimInfoRegion'';',
'    }',
'}',
'',
'if (selectedRds) {',
'    $s(''P2_SELECTED_RDS'', selectedRds);',
'    ',
'    apex.server.process(processName,',
'    {',
'        x01: this.triggeringElement.value, //Maps to APEX_APPLICATION.G_X01   ',
'        x02: selectedRds',
'    },',
'    {',
'        success: function (pResponse) {',
'            apex.region("importTemplateIR").refresh();',
'        },',
'        error: function (pResponse) {',
'            // Error callback',
'            alert("Error " + processName + ": " + pResponse.responseText);',
'        },',
'        dataType: "text"',
'    });',
'}'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(453548453426549092)
,p_event_id=>wwv_flow_api.id(822967304084561612)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(801862746307360517)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(822967990907561619)
,p_name=>'Download Import Template Click SC'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(822965754106561597)
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(822968331679561622)
,p_event_id=>wwv_flow_api.id(822967990907561619)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#downloadTemplateHiddenBtnSC'').click();',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(940261638617027003)
,p_name=>'Download Import Template Click SSH'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(940253635292063695)
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(940261810715027004)
,p_event_id=>wwv_flow_api.id(940261638617027003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#downloadTemplateHiddenBtnSSH'').click();',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(861962009482190703)
,p_name=>'Remarks Click'
,p_event_sequence=>110
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.remarks-span,.pets-span,.arrival-date-approved-span'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$(this.triggeringElement).attr(''title'').length > 0'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(861962149027190705)
,p_event_id=>wwv_flow_api.id(861962009482190703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var remark = $(this.triggeringElement).attr(''title'').replaceAll(''\r'',''<br/>'').replaceAll(''\n\t'',''<br/>'').replaceAll(''\n'',''<br/>'').replaceAll(''"'', ''&quot;'');',
'var hasHebrew = /[\u0590-\u05FF]/.test(remark);',
'var direction = hasHebrew ? ''rtl'' : ''ltr'';',
'$(''#remarksDialog'').find(''.t-DialogRegion-body'').html(''<h3 style="direction: '' + direction + '';">'' + remark + ''</h3>'');',
'',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(861962131139190704)
,p_event_id=>wwv_flow_api.id(861962009482190703)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(861961781352190701)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(443962968122771924)
,p_name=>'RDS Click'
,p_event_sequence=>120
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#rds a'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$(''.apex-rds-selected a'').attr(''href'') && $(''.apex-rds-selected a'').attr(''href'').length > 1'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(443963039639771925)
,p_event_id=>wwv_flow_api.id(443962968122771924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_SELECTED_RDS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(''.apex-rds-selected a'').attr(''href'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(993889230084261419)
,p_event_id=>wwv_flow_api.id(443962968122771924)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'APEX_UTIL.SET_SESSION_STATE(''P2_SELECTED_RDS'', :P2_SELECTED_RDS);'
,p_attribute_02=>'P2_SELECTED_RDS'
,p_attribute_03=>'P2_SELECTED_RDS'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(453548071678549088)
,p_event_id=>wwv_flow_api.id(443962968122771924)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(801862746307360517)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1698416480429892328)
,p_name=>'Active Switch Change'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_ACTIVE_SWITCH'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1698416277972892326)
,p_event_id=>wwv_flow_api.id(1698416480429892328)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(57284967489128318)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1659060815940203070)
,p_event_id=>wwv_flow_api.id(1698416480429892328)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(940251997393063678)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(642461755129910695)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get User Restrictions'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select m.ATTRIBUTE1, m.ATTRIBUTE2, m.ATTRIBUTE3',
'    into :P2_USER_TYPE, :P2_USER_MASLULIM, :P2_USER_STATUSES',
'    from FND_LOOKUP_VALUES m',
'    where m.LOOKUP_TYPE= ''JAFI_SHLICHUT_FLIGHTS_USERS'' and m.LANGUAGE = ''US'' and lower(m.meaning) = lower(:P0_USER_NAME);',
'',
'    exception when no_data_found then',
'        :P2_USER_TYPE := NULL;',
'        :P2_USER_MASLULIM := NULL;',
'        :P2_USER_STATUSES := NULL;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(224062684097875411)
,p_process_sequence=>20
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize Global Collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Checkbox collections',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(p_collection_name => ''VIEW_SELECTION_SC'') THEN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''VIEW_SELECTION_SC'');',
'END IF;',
'',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(p_collection_name => ''VIEW_SELECTION_SSH'') THEN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''VIEW_SELECTION_SSH'');',
'END IF;',
'',
'--Lookup collections',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(p_collection_name => ''AGENTS_LOOKUP'') THEN',
'APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY(',
'    p_collection_name => ''AGENTS_LOOKUP'', ',
'    p_query => ',
'    ''SELECT LOOKUP_CODE AS R, ',
'            ATTRIBUTE4 AS D ',
'     FROM FND_LOOKUP_VALUES m WHERE m.LOOKUP_TYPE = ''''JAFI_SHLICHUT_FLIGHTS_USERS'''' AND m.LANGUAGE = ''''US'''' AND ATTRIBUTE1 = ''''T'''''',',
'    p_truncate_if_exists => ''YES'');',
'END IF;',
'',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(p_collection_name => ''STATUSES_LOOKUP'') THEN',
'APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY(',
'    p_collection_name => ''STATUSES_LOOKUP'', ',
'    p_query => ',
'    ''SELECT lookup_code, ',
'            meaning, ',
'            attribute1, ',
'            attribute2, ',
'            attribute3 ',
'     FROM FND_LOOKUP_VALUES WHERE LOOKUP_TYPE = ''''JAFI_HR_FLIGHT_STATUS'''' AND LANGUAGE = ''''US'''''',',
'    p_truncate_if_exists => ''YES'');',
'END IF;',
'    ',
'--Flight info collection',
'APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY(',
'    p_collection_name => ''INFO_VIEW'', ',
'    p_query => ',
'    ''select assignment_id,            person_id,                    mobile,                       last_name,                first_name,',
'            gender,                   date_of_birth,                camp_name,                    city_of_birth,            country_of_birth,         ',
'            email_address,            national_id,                  passport_number,              passport_expiration,      passport_photo,',
'            mymetype,                 pic,                          coordinator_name,             is_us_or_ca_citizen,      us_pic,',
'            ca_pic,                   main_airport,                 main_airport_code,            sec_airport,              sec_airport_code,        ',
'            individual_arrival_date,  individual_departure_date,    camp_arrival_time,            camp_arrival_date,        requested_return_date,',
'            meal,                     departure_airport,            departure_airport_code,       j1_permit_end_date,       flight_remarks_applicant,     ',
'            flights_remarks_maslul,   maslul,                       maslul_short_name,            head_of_family_tz,        country,',
'            city,                     state,                        preferred_arrival_time,       request_id,               flight_reason',
'     from JAFI_FLIGHT_PASSPORT_INFO_MV where maslul_short_name in ('' || :P2_USER_MASLULIM || '')'',',
'    p_truncate_if_exists => ''YES'');',
'    ',
'APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY(',
'    p_collection_name => ''EXTRA_INFO_VIEW'', ',
'    p_query => ',
'    ''select assignment_id,',
'            person_id,',
'            request_id,',
'            case when maslul_short_name = ''''LTS'''' and ARRIVAL_DATE_APPROVED = ''''Y'''' then ''''Yes'''' ',
'                 when maslul_short_name = ''''LTS'''' and ARRIVAL_DATE_APPROVED = ''''N'''' then ''''No'''' else '''''''' end ARRIVAL_DATE_APPROVED,',
'            case when maslul_short_name = ''''LTS'''' then REQUESTED_ARRIVAL_DATE end REQUESTED_ARRIVAL_DATE,',
'            case when maslul_short_name = ''''LTS'''' then CHANGE_DATE_REASON end CHANGE_DATE_REASON,',
'            case when maslul_short_name = ''''LTS'''' then LUGGAGE end LUGGAGE,',
'            case when maslul_short_name = ''''LTS'''' and JOINING = ''''Y'''' then ''''Yes'''' ',
'                 when maslul_short_name = ''''LTS'''' and JOINING = ''''N'''' then ''''No'''' else '''''''' end JOINING,',
'            case when maslul_short_name = ''''LTS'''' then JOINING_DATE end JOINING_DATE,',
'            case when maslul_short_name = ''''LTS'''' then COUNT_PETS end COUNT_PETS,         ',
'            case when maslul_short_name = ''''LTS'''' then PET1_INFO end PET1_INFO,',
'            case when maslul_short_name = ''''LTS'''' then PET2_INFO end PET2_INFO,',
'            case when maslul_short_name = ''''LTS'''' then PET3_INFO end PET3_INFO,',
'            ACTIVE,',
'            OUTBOUND_DEP_AIRPORT,',
'            INBOUND_ARR_AIRPORT',
'     from JAFI_FLIGHT_PASSPORT_INFO_MV where maslul_short_name in ('' || :P2_USER_MASLULIM || '')'',',
'    p_truncate_if_exists => ''YES'');',
'    ',
'--Flight data collection - general Info',
'APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY(',
'    p_collection_name => ''FLIGHT_DATA'', ',
'    p_query => ',
'    ''SELECT jsf.person_id, ',
'            jsf.assgt_id,',
'            MAX(CASE WHEN jsf.status != 6 THEN jsf.seq END) AS seq,',
'            MAX(CASE WHEN jsf.status  = 6 THEN jsf.status END) AS booked_status,',
'            MAX(CASE WHEN jsf.status != 6 THEN jsf.status END) AS other_status,',
'            MAX(jsf.flight_cost_for_billing) AS flight_cost_for_billing,',
'            MAX(CASE WHEN jsf.status IN (5, 6) THEN jsf.ticket_doc_id END) AS ticket_doc_id,',
'            MAX(CASE WHEN jsf.status != 6 THEN jsf.creation_date END) AS creation_date,',
'            MAX(CASE WHEN jsf.status != 6 THEN jsf.OFFERTIME END) AS OFFERTIME,',
'            NVL(MAX(CASE WHEN jsf.status != 6 THEN jsf.status END),',
'                MAX(CASE WHEN jsf.status  = 6 THEN jsf.status END)) AS effective_status,',
'            MAX(CASE WHEN jsf.status != 7 THEN jsf.flight_cost END) AS flight_cost,',
'            MAX(CASE WHEN jsf.status != 7 THEN ag.c002 END) AS agent_name,',
'            jsf.request_id,',
'            MAX(CASE WHEN jsf.status != 6 THEN to_char(jsf.OFFER_CREATION_DATE, ''''DD/MM/YYYY HH24:MI'''') END) AS OFFER_CREATION_DATE',
'     FROM jafi_apex_shlichut_flights jsf, apex_collections ag',
'     WHERE jsf.status != ''''7'''' AND nvl(ag.collection_name, ''''AGENTS_LOOKUP'''') = ''''AGENTS_LOOKUP'''' and jsf.agent_name = ag.c001(+)',
'     GROUP BY jsf.person_id, jsf.assgt_id, jsf.request_id'',',
'    p_truncate_if_exists => ''YES'');'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(235167242100586451)
,p_process_sequence=>30
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize SC Collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY(',
'    p_collection_name => ''MAIN_VIEW_SC'', ',
'    p_query => ',
'    ''SELECT vf.c001,',
'            vf.c002,',
'            vf.c003,',
'            vf.c004,',
'            vf.c005,',
'            vf.c006,',
'            TO_CHAR(TO_DATE(vf.c007, ''''DD-MON-YY''''), ''''DD/MM/YYYY'''') AS DATE_OF_BIRTH,',
'            REPLACE(vf.c008, ''''&'''', ''''&amp;'''') AS Camp_Name,',
'            vf.c009,',
'            vf.c010,',
'            vf.c011,',
'            vf.c012,',
'            vf.c013,',
'            vf.c014,',
'            s.c001,',
'            vf.c018,',
'            CASE vf.c019',
'                WHEN ''''US'''' THEN ''''<img width="38" src="#APP_IMAGES#us.svg" />''''',
'                WHEN ''''CA'''' THEN ''''<img width="38" src="#APP_IMAGES#ca.svg" />''''',
'                ELSE vf.c019',
'            END AS IS_US_OR_CA_CITIZEN,',
'            CASE WHEN f.c010 IS NULL OR s.c001 IS NULL THEN ''''Not Started''''',
'                 ELSE s.c002 END AS status,',
'            CASE WHEN f.c010 IS NULL OR s.c001 IS NULL THEN ''''209 209 209''''',
'                 ELSE s.c004 END AS status_color,',
'            CASE WHEN f.c010 IS NULL OR s.c001 IS NULL THEN ''''gray''''',
'                 ELSE s.c003 END AS status_color_shadow,',
'            CASE WHEN f.c010 IS NULL OR s.c001 IS NULL THEN ''''1.1''''',
'                 ELSE s.c005 END AS status_order,',
'            vf.c037,',
'            vf.c038,',
'            CASE WHEN vf.c023 IS NOT NULL',
'                 THEN vf.c023 || '''' - '''' || vf.c022',
'                 ELSE vf.c022 END AS main_airport,',
'            CASE WHEN vf.c025 IS NOT NULL',
'                 THEN vf.c025 || '''' - '''' || vf.c024',
'                 ELSE vf.c024 END AS sec_airport,',
'            vf.c026,',
'            vf.c028,',
'            vf.c029,',
'            vf.c030,',
'            vf.c031,',
'            CASE WHEN vf.c033 IS NOT NULL',
'                 THEN vf.c033 || '''' - '''' || vf.c032',
'                 ELSE vf.c032 END AS departure_airport,',
'            vf.c034,',
'            CASE WHEN s.c001 != 6 and f.c014 IS NOT NULL',
'                 THEN TO_CHAR(to_date(f.c014,''''DD/MM/YYYY HH24:MI'''') + (to_number(nvl(f.c009,0)) / 24), ''''DD/MM/YYYY HH24:MI'''') END AS Offer_Time,',
'            CASE WHEN s.c001 != 6 AND f.c014 IS NOT NULL',
'                 THEN to_date(f.c014,''''DD/MM/YYYY HH24:MI'''') + (to_number(nvl(f.c009,0)) / 24) END AS offer_time_raw,',
'            vf.c039 AS MAIN_FAMILY_MEMBER_ID,',
'            vf.c028 AS DEPARTURE_TIME,',
'            vf.c027 AS SHLICHUT_END_DATE,',
'            CASE WHEN V(''''P2_USER_TYPE'''') = ''''M'''' THEN f.c006 ELSE NULL END AS COST,',
'            NVL(vf.c035, '''''''') AS flight_remarks_applicant_csv,',
'            NVL(vf.c036, '''''''') AS flights_remarks_maslul_csv,',
'            CASE WHEN f.c007 IS NOT NULL THEN ''''Yes'''' ELSE ''''No'''' END AS FLIGHT_TICKET_CSV,',
'            vf.c019 AS IS_US_OR_CA_CITIZEN_CSV,',
'            vf.c040,',
'            vf.c042,',
'            vf.c041,',
'            vf.c043,',
'            f.c011,',
'            f.c012,',
'            f.c007',
'        FROM apex_collections vf,',
'             apex_collections f,',
'             apex_collections s',
'        WHERE vf.collection_name = ''''INFO_VIEW'''' AND vf.c038 = ''''SC''''',
'          AND nvl(f.collection_name, ''''FLIGHT_DATA'''') = ''''FLIGHT_DATA'''' AND vf.c001 = f.c002(+) AND vf.c002 = f.c001(+)',
'          AND nvl(s.collection_name, ''''STATUSES_LOOKUP'''') = ''''STATUSES_LOOKUP'''' AND f.c010 = s.c001(+)'',',
'    p_truncate_if_exists => ''YES'');',
'    ',
'select count(*) into :P2_SC_ROWS_COUNT',
'from apex_collections ',
'where collection_name = ''MAIN_VIEW_SC'';'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'instr(:P2_USER_MASLULIM, ''''''SC'''''') > 0'
,p_process_when_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(219264445409926733)
,p_process_sequence=>40
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize SSH Collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY(',
'    p_collection_name => ''MAIN_VIEW_SSH'', ',
'    p_query => ',
'    ''SELECT vf.c001,',
'            vf.c002,',
'            vf.c003,',
'            vf.c004,',
'            vf.c005,',
'            vf.c006,',
'            TO_CHAR(TO_DATE(vf.c007, ''''DD-MON-YY''''), ''''DD/MM/YYYY'''') AS DATE_OF_BIRTH,',
'            REPLACE(vf.c008, ''''&'''', ''''&amp;'''') AS Camp_Name,',
'            vf.c009,',
'            vf.c010,',
'            vf.c011,',
'            vf.c012,',
'            vf.c013,',
'            vf.c014,',
'            s.c001,',
'            vf.c018,',
'            CASE vf.c019 WHEN ''''US'''' THEN ''''<img width="38" src="#APP_IMAGES#us.svg" />'''' WHEN ''''CA'''' THEN ''''<img width="38" src="#APP_IMAGES#ca.svg" />'''' ELSE vf.c019 END AS IS_US_OR_CA_CITIZEN,',
'            CASE WHEN f.c010 IS NULL OR s.c001 IS NULL THEN ''''Not Started'''' ELSE s.c002 END AS status,',
'            CASE WHEN f.c010 IS NULL OR s.c001 IS NULL THEN ''''209 209 209'''' ELSE s.c004 END AS status_color,',
'            CASE WHEN f.c010 IS NULL OR s.c001 IS NULL THEN ''''gray'''' ELSE s.c003 END AS status_color_shadow,',
'            CASE WHEN f.c010 IS NULL OR s.c001 IS NULL THEN ''''1.1'''' ELSE s.c005 END AS status_order,',
'            vf.c037,',
'            vf.c038,',
'            CASE WHEN vf.c023 IS NOT NULL THEN vf.c023 || '''' - '''' || vf.c022 ELSE vf.c022 END AS main_airport,',
'            CASE WHEN vf.c025 IS NOT NULL THEN vf.c025 || '''' - '''' || vf.c024 ELSE vf.c024 END AS sec_airport,',
'            vf.c026,',
'            vf.c028,',
'            vf.c029,',
'            vf.c030,',
'            vf.c031,',
'            CASE WHEN vf.c033 IS NOT NULL THEN vf.c033 || '''' - '''' || vf.c032 ELSE vf.c032 END AS departure_airport,',
'            vf.c034,',
'            CASE WHEN s.c001 != 6 and f.c014 IS NOT NULL THEN TO_CHAR(to_date(f.c014,''''DD/MM/YYYY HH24:MI'''') + (to_number(nvl(f.c009,0)) / 24), ''''DD/MM/YYYY HH24:MI'''') END AS Offer_Time,',
'            CASE WHEN s.c001 != 6 AND f.c014 IS NOT NULL THEN to_date(f.c014,''''DD/MM/YYYY HH24:MI'''') + (to_number(nvl(f.c009,0)) / 24) END AS offer_time_raw,',
'            vf.c039 AS MAIN_FAMILY_MEMBER_ID,',
'            vf.c028 AS DEPARTURE_TIME,',
'            vf.c027 AS SHLICHUT_END_DATE,',
'            CASE WHEN V(''''P2_USER_TYPE'''') = ''''M'''' THEN f.c006 ELSE NULL END AS COST,',
'            NVL(vf.c035, '''''''') AS flight_remarks_applicant_csv,',
'            NVL(vf.c036, '''''''') AS flights_remarks_maslul_csv,',
'            CASE WHEN f.c007 IS NOT NULL THEN ''''Yes'''' ELSE ''''No'''' END AS FLIGHT_TICKET_CSV,',
'            vf.c019 AS IS_US_OR_CA_CITIZEN_CSV,',
'            vf.c040,',
'            vf.c042,',
'            vf.c041,',
'            vf.c043,',
'            f.c011,',
'            f.c012,',
'            vf.c044,',
'            f.c007',
'        FROM apex_collections vf,',
'             apex_collections f,',
'             apex_collections s',
'        WHERE vf.collection_name = ''''INFO_VIEW'''' AND vf.c038 in (''''SSH'''',''''LTS'''')',
'          AND nvl(f.collection_name, ''''FLIGHT_DATA'''') = ''''FLIGHT_DATA''''',
'          AND nvl(s.collection_name, ''''STATUSES_LOOKUP'''') = ''''STATUSES_LOOKUP''''',
'          AND vf.c001 = f.c002(+) AND vf.c002 = f.c001(+) AND vf.c044 = f.c013(+)',
'          AND f.c010 = s.c001(+)'',',
'    p_truncate_if_exists => ''YES'');',
'    ',
'select count(*) into :P2_SSH_ROWS_COUNT',
'from apex_collections ',
'where collection_name = ''MAIN_VIEW_SSH'';'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'instr(:P2_USER_MASLULIM, ''''''SSH'''''') > 0 OR instr(:P2_USER_MASLULIM, ''''''LTS'''''') > 0'
,p_process_when_type=>'PLSQL_EXPRESSION'
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
 p_id=>wwv_flow_api.id(822967176100561611)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ADD_MEMBER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if APEX_APPLICATION.G_X02 = ''#summerCampsInfoRegion'' then',
'    APEX_COLLECTION.ADD_MEMBER(p_collection_name => ''VIEW_SELECTION_SC'',',
'                               p_c001            => APEX_APPLICATION.G_X01);',
'elsif APEX_APPLICATION.G_X02 = ''#shinshinimInfoRegion'' then',
'    APEX_COLLECTION.ADD_MEMBER(p_collection_name => ''VIEW_SELECTION_SSH'',',
'                               p_c001            => APEX_APPLICATION.G_X01);',
'end if;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(822967490418561614)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'REMOVE_MEMBER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if APEX_APPLICATION.G_X02 = ''#summerCampsInfoRegion'' then',
'    APEX_COLLECTION.DELETE_MEMBERS (',
'        p_collection_name => ''VIEW_SELECTION_SC'',',
'        p_attr_number     => 1,',
'        p_attr_value      => APEX_APPLICATION.G_X01',
'    );',
'elsif APEX_APPLICATION.G_X02 = ''#shinshinimInfoRegion'' then',
'    APEX_COLLECTION.DELETE_MEMBERS (',
'        p_collection_name => ''VIEW_SELECTION_SSH'',',
'        p_attr_number     => 1,',
'        p_attr_value      => APEX_APPLICATION.G_X01',
'    );',
'end if;',
'',
'',
'',
'',
'',
'',
'',
'',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1745623901756490540)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'POPULATE_FLIGHT_DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.TRUNCATE_COLLECTION(''FLIGHT_DATA'');',
'',
'APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY(',
'    p_collection_name => ''FLIGHT_DATA'', ',
'    p_query => ',
'    ''SELECT jsf.person_id, ',
'            jsf.assgt_id,',
'            MAX(CASE WHEN jsf.status != 6 THEN jsf.seq END) AS seq,',
'            MAX(CASE WHEN jsf.status  = 6 THEN jsf.status END) AS booked_status,',
'            MAX(CASE WHEN jsf.status != 6 THEN jsf.status END) AS other_status,',
'            MAX(jsf.flight_cost_for_billing) AS flight_cost_for_billing,',
'            MAX(CASE WHEN jsf.status IN (5, 6) THEN jsf.ticket_doc_id END) AS ticket_doc_id,',
'            MAX(CASE WHEN jsf.status != 6 THEN jsf.creation_date END) AS creation_date,',
'            MAX(CASE WHEN jsf.status != 6 THEN jsf.OFFERTIME END) AS OFFERTIME,',
'            NVL(MAX(CASE WHEN jsf.status != 6 THEN jsf.status END),',
'                MAX(CASE WHEN jsf.status  = 6 THEN jsf.status END)) AS effective_status,',
'            MAX(CASE WHEN jsf.status != 7 THEN jsf.flight_cost END) AS flight_cost,',
'            MAX(CASE WHEN jsf.status != 7 THEN ag.c002 END) AS agent_name,',
'            jsf.request_id,',
'            MAX(CASE WHEN jsf.status != 6 THEN to_char(jsf.OFFER_CREATION_DATE, ''''DD/MM/YYYY HH24:MI'''') END) AS OFFER_CREATION_DATE',
'     FROM jafi_apex_shlichut_flights jsf, apex_collections ag',
'     WHERE jsf.status != ''''7'''' AND nvl(ag.collection_name, ''''AGENTS_LOOKUP'''') = ''''AGENTS_LOOKUP'''' and jsf.agent_name = ag.c001(+)',
'     GROUP BY jsf.person_id, jsf.assgt_id, jsf.request_id'',',
'    p_truncate_if_exists => ''YES'');',
'',
'',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1745623753886490539)
,p_process_sequence=>60
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'POPULATE_SC_COLLECTION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.TRUNCATE_COLLECTION(''MAIN_VIEW_SC'');',
'',
'APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY(',
'    p_collection_name => ''MAIN_VIEW_SC'', ',
'    p_query => ',
'    ''SELECT vf.c001,',
'            vf.c002,',
'            vf.c003,',
'            vf.c004,',
'            vf.c005,',
'            vf.c006,',
'            TO_CHAR(TO_DATE(vf.c007, ''''DD-MON-YY''''), ''''DD/MM/YYYY'''') AS DATE_OF_BIRTH,',
'            REPLACE(vf.c008, ''''&'''', ''''&amp;'''') AS Camp_Name,',
'            vf.c009,',
'            vf.c010,',
'            vf.c011,',
'            vf.c012,',
'            vf.c013,',
'            vf.c014,',
'            s.c001,',
'            vf.c018,',
'            CASE vf.c019',
'                WHEN ''''US'''' THEN ''''<img width="38" src="#APP_IMAGES#us.svg" />''''',
'                WHEN ''''CA'''' THEN ''''<img width="38" src="#APP_IMAGES#ca.svg" />''''',
'                ELSE vf.c019',
'            END AS IS_US_OR_CA_CITIZEN,',
'            CASE WHEN f.c010 IS NULL OR s.c001 IS NULL THEN ''''Not Started''''',
'                 ELSE s.c002 END AS status,',
'            CASE WHEN f.c010 IS NULL OR s.c001 IS NULL THEN ''''209 209 209''''',
'                 ELSE s.c004 END AS status_color,',
'            CASE WHEN f.c010 IS NULL OR s.c001 IS NULL THEN ''''gray''''',
'                 ELSE s.c003 END AS status_color_shadow,',
'            CASE WHEN f.c010 IS NULL OR s.c001 IS NULL THEN ''''1.1''''',
'                 ELSE s.c005 END AS status_order,',
'            vf.c037,',
'            vf.c038,',
'            CASE WHEN vf.c023 IS NOT NULL',
'                 THEN vf.c023 || '''' - '''' || vf.c022',
'                 ELSE vf.c022 END AS main_airport,',
'            CASE WHEN vf.c025 IS NOT NULL',
'                 THEN vf.c025 || '''' - '''' || vf.c024',
'                 ELSE vf.c024 END AS sec_airport,',
'            vf.c026,',
'            vf.c028,',
'            vf.c029,',
'            vf.c030,',
'            vf.c031,',
'            CASE WHEN vf.c033 IS NOT NULL',
'                 THEN vf.c033 || '''' - '''' || vf.c032',
'                 ELSE vf.c032 END AS departure_airport,',
'            vf.c034,',
'            CASE WHEN s.c001 != 6 and f.c014 IS NOT NULL',
'                 THEN TO_CHAR(to_date(f.c014,''''DD/MM/YYYY HH24:MI'''') + (to_number(nvl(f.c009,0)) / 24), ''''DD/MM/YYYY HH24:MI'''') END AS Offer_Time,',
'            CASE WHEN s.c001 != 6 AND f.c014 IS NOT NULL',
'                 THEN to_date(f.c014,''''DD/MM/YYYY HH24:MI'''') + (to_number(nvl(f.c009,0)) / 24) END AS offer_time_raw,',
'            vf.c039 AS MAIN_FAMILY_MEMBER_ID,',
'            vf.c028 AS DEPARTURE_TIME,',
'            vf.c027 AS SHLICHUT_END_DATE,',
'            CASE WHEN V(''''P2_USER_TYPE'''') = ''''M'''' THEN f.c006 ELSE NULL END AS COST,',
'            NVL(vf.c035, '''''''') AS flight_remarks_applicant_csv,',
'            NVL(vf.c036, '''''''') AS flights_remarks_maslul_csv,',
'            CASE WHEN f.c007 IS NOT NULL THEN ''''Yes'''' ELSE ''''No'''' END AS FLIGHT_TICKET_CSV,',
'            vf.c019 AS IS_US_OR_CA_CITIZEN_CSV,',
'            vf.c040,',
'            vf.c042,',
'            vf.c041,',
'            vf.c043,',
'            f.c011,',
'            f.c012,',
'            f.c007',
'        FROM apex_collections vf,',
'             apex_collections f,',
'             apex_collections s',
'        WHERE vf.collection_name = ''''INFO_VIEW'''' AND vf.c038 = ''''SC''''',
'          AND nvl(f.collection_name, ''''FLIGHT_DATA'''') = ''''FLIGHT_DATA'''' AND vf.c001 = f.c002(+) AND vf.c002 = f.c001(+)',
'          AND nvl(s.collection_name, ''''STATUSES_LOOKUP'''') = ''''STATUSES_LOOKUP'''' AND f.c010 = s.c001(+)'',',
'    p_truncate_if_exists => ''YES'');',
'    ',
'select count(*) into :P2_SC_ROWS_COUNT',
'from apex_collections ',
'where collection_name = ''MAIN_VIEW_SC'';'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1745623680957490538)
,p_process_sequence=>70
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'POPULATE_SSH_COLLECTION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.TRUNCATE_COLLECTION(''MAIN_VIEW_SSH'');',
'',
'APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY(',
'    p_collection_name => ''MAIN_VIEW_SSH'', ',
'    p_query => ',
'    ''SELECT vf.c001,',
'            vf.c002,',
'            vf.c003,',
'            vf.c004,',
'            vf.c005,',
'            vf.c006,',
'            TO_CHAR(TO_DATE(vf.c007, ''''DD-MON-YY''''), ''''DD/MM/YYYY'''') AS DATE_OF_BIRTH,',
'            REPLACE(vf.c008, ''''&'''', ''''&amp;'''') AS Camp_Name,',
'            vf.c009,',
'            vf.c010,',
'            vf.c011,',
'            vf.c012,',
'            vf.c013,',
'            vf.c014,',
'            s.c001,',
'            vf.c018,',
'            CASE vf.c019 WHEN ''''US'''' THEN ''''<img width="38" src="#APP_IMAGES#us.svg" />'''' WHEN ''''CA'''' THEN ''''<img width="38" src="#APP_IMAGES#ca.svg" />'''' ELSE vf.c019 END AS IS_US_OR_CA_CITIZEN,',
'            CASE WHEN f.c010 IS NULL OR s.c001 IS NULL THEN ''''Not Started'''' ELSE s.c002 END AS status,',
'            CASE WHEN f.c010 IS NULL OR s.c001 IS NULL THEN ''''209 209 209'''' ELSE s.c004 END AS status_color,',
'            CASE WHEN f.c010 IS NULL OR s.c001 IS NULL THEN ''''gray'''' ELSE s.c003 END AS status_color_shadow,',
'            CASE WHEN f.c010 IS NULL OR s.c001 IS NULL THEN ''''1.1'''' ELSE s.c005 END AS status_order,',
'            vf.c037,',
'            vf.c038,',
'            CASE WHEN vf.c023 IS NOT NULL THEN vf.c023 || '''' - '''' || vf.c022 ELSE vf.c022 END AS main_airport,',
'            CASE WHEN vf.c025 IS NOT NULL THEN vf.c025 || '''' - '''' || vf.c024 ELSE vf.c024 END AS sec_airport,',
'            vf.c026,',
'            vf.c028,',
'            vf.c029,',
'            vf.c030,',
'            vf.c031,',
'            CASE WHEN vf.c033 IS NOT NULL THEN vf.c033 || '''' - '''' || vf.c032 ELSE vf.c032 END AS departure_airport,',
'            vf.c034,',
'            CASE WHEN s.c001 != 6 and f.c014 IS NOT NULL THEN TO_CHAR(to_date(f.c014,''''DD/MM/YYYY HH24:MI'''') + (to_number(nvl(f.c009,0)) / 24), ''''DD/MM/YYYY HH24:MI'''') END AS Offer_Time,',
'            CASE WHEN s.c001 != 6 AND f.c014 IS NOT NULL THEN to_date(f.c014,''''DD/MM/YYYY HH24:MI'''') + (to_number(nvl(f.c009,0)) / 24) END AS offer_time_raw,',
'            vf.c039 AS MAIN_FAMILY_MEMBER_ID,',
'            vf.c028 AS DEPARTURE_TIME,',
'            vf.c027 AS SHLICHUT_END_DATE,',
'            CASE WHEN V(''''P2_USER_TYPE'''') = ''''M'''' THEN f.c006 ELSE NULL END AS COST,',
'            NVL(vf.c035, '''''''') AS flight_remarks_applicant_csv,',
'            NVL(vf.c036, '''''''') AS flights_remarks_maslul_csv,',
'            CASE WHEN f.c007 IS NOT NULL THEN ''''Yes'''' ELSE ''''No'''' END AS FLIGHT_TICKET_CSV,',
'            vf.c019 AS IS_US_OR_CA_CITIZEN_CSV,',
'            vf.c040,',
'            vf.c042,',
'            vf.c041,',
'            vf.c043,',
'            f.c011,',
'            f.c012,',
'            vf.c044,',
'            f.c007',
'        FROM apex_collections vf,',
'             apex_collections f,',
'             apex_collections s',
'        WHERE vf.collection_name = ''''INFO_VIEW'''' AND vf.c038 in (''''SSH'''',''''LTS'''')',
'          AND nvl(f.collection_name, ''''FLIGHT_DATA'''') = ''''FLIGHT_DATA''''',
'          AND nvl(s.collection_name, ''''STATUSES_LOOKUP'''') = ''''STATUSES_LOOKUP''''',
'          AND vf.c001 = f.c002(+) AND vf.c002 = f.c001(+) AND vf.c044 = f.c013(+)',
'          AND f.c010 = s.c001(+)'',',
'    p_truncate_if_exists => ''YES'');',
'    ',
'select count(*) into :P2_SSH_ROWS_COUNT',
'from apex_collections ',
'where collection_name = ''MAIN_VIEW_SSH'';'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1717452976880844927)
,p_process_sequence=>80
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_AIRLINES_LOOKUP'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'APEX_JSON.open_object;',
'APEX_JSON.open_array(''airlines''); ',
'',
'FOR r IN ',
'(',
'	select lookup_code v, lookup_code || '' - '' || meaning d',
'	from FND_LOOKUP_VALUES m',
'	where m.LOOKUP_TYPE= ''JAFI_HR_SC_AIRLINES'' and m.LANGUAGE = ''US''',
'	order by meaning',
')',
'LOOP',
'    apex_json.open_object;',
'    apex_json.write(''v'', r.v, TRUE);',
'    apex_json.write(''d'', r.d, TRUE);',
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
 p_id=>wwv_flow_api.id(1717452825773844926)
,p_process_sequence=>90
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_AIRPORTS_LOOKUP'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'APEX_JSON.open_object;',
'APEX_JSON.open_array(''airports''); ',
'',
'FOR r IN ',
'(',
'	select lookup_code v, lookup_code || '' - '' || meaning d',
'	from FND_LOOKUP_VALUES m',
'	where m.LOOKUP_TYPE= ''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'' and m.LANGUAGE = ''US''',
'	order by meaning',
')',
'LOOP',
'    apex_json.open_object;',
'    apex_json.write(''v'', r.v, TRUE);',
'    apex_json.write(''d'', r.d, TRUE);',
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
