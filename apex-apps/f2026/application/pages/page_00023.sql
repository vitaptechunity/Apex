prompt --application/pages/page_00023
begin
--   Manifest
--     PAGE: 00023
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
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'Community Shlichut - My Mishlachat'
,p_alias=>'COMMUNITY-SHLICHUT-MY-MISHLACHAT'
,p_step_title=>'Community Shlichut - My Mishlachat'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>' '
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'.new-app-badge {',
'    margin-top: -4px;',
'    padding: 0 5px;',
'    border-radius: 7px;',
'    font-size: 8px;',
'    background-color: #F9E1CC;',
'    font-weight: 600;        ',
'}',
'',
'.show-new-app {',
'    display: inline-block;',
'}',
'',
'.hide-new-app {',
'    display: none;',
'}',
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
'#P16_AC_SEE_ALL,',
'#P16_CA_SEE_ALL {',
'    float: right;',
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
'#activeCandidatesContainer,',
'#closedApplicationsContainer {',
'    width: 880px;',
'}',
'',
'#acHeaderContainer,',
'#caHeaderContainer {',
'    width: 100%;',
'    padding-right: 5px;',
'    padding-left: 5px;',
'}',
'',
'#P16_ACTIVE_CANDIDATES .t-Button-label,',
'#P16_CLOSED_APPLICATIONS .t-Button-label {',
'    /*font-size: 16px !important;*/',
'    font-weight: 500 !important;',
'}',
'',
'#P16_ACTIVE_CANDIDATES,',
'#P16_CLOSED_APPLICATIONS {',
'    cursor: default;',
'}',
'',
'.accept-btn {',
'    background-color: #F9F7F4;',
'}',
'',
'.decline-btn:hover,',
'.accept-btn:hover',
'{',
'    background-color: #F9F7F4;',
'    cursor: pointer;',
'    border: 1px solid #E9DBC7;',
'}',
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
'',
'    .cards-container {',
'        justify-content: center !important;',
'        gap: 25px !important;',
'    }',
'',
'    .candidate-card {',
'        width: 165px !important;',
'        height: 241px !important;',
'        padding: 10px !important;',
'    }',
'    ',
'    .candidate-card .decision-buttons-container {',
'        flex-direction: column-reverse;',
'        width: 165px !important;',
'    }',
'    ',
'    .candidate-card .decision-buttons-container .decline-btn,',
'    .candidate-card .decision-buttons-container .decline-btn-inactive {',
'        width: 90% !important;',
'        margin-left: auto !important;',
'        margin-right: auto !important;',
'    }',
'    ',
'    .candidate-card .decision-buttons-container .accept-btn,',
'    .candidate-card .decision-buttons-container .accept-btn-inactive {',
'        width: 90% !important;',
'        margin-left: auto !important;',
'        margin-right: auto !important;',
'        margin-bottom: 5px;',
'    }',
'    ',
'    .candidate-files {',
'        height: 15px;',
'    }',
'    ',
'    .candidate-name {',
'        font-size: 16px !important;',
'        margin-top: 1px !important;',
'        line-height: 25px !important;',
'    }',
'  ',
'    .candidate-gender {',
'        font-size: 14px !important;',
'    }',
'}',
'',
'@media (max-width: 360px) {',
'    .cards-container {',
'        gap: 10px !important;',
'    }',
'}'))
,p_step_template=>wwv_flow_api.id(29244342218644)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MORIYAD'
,p_last_upd_yyyymmddhh24miss=>'20261006095916'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1306683451083748267)
,p_plug_name=>'Sub Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-weight: 700;">Your incoming Mishlachat!</div>',
'Here you can view the final list of candidates <br />',
'you selected to join the Mishlachat.<br />',
'<br />',
'All approved candidates will appear here <br class="mobile-br"/>automatically <br class="desktop-br"/>once a final decision <br class="mobile-br"/>has been made.<br />',
'<br class="mobile-br"/>',
'If you have any questions or need assistance, <br />please contact our team in Israel.'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1372772640823897189)
,p_plug_name=>'Active Candidates Container'
,p_region_name=>'activeCandidatesContainer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region '
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1968741041069742496)
,p_name=>'Active Candidates Cards'
,p_region_name=>'activeCandidatesCardsRegion'
,p_parent_plug_id=>wwv_flow_api.id(1372772640823897189)
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_grid_column_css_classes=>'center-region'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with my_mishlachat as ',
'(',
'select 	jafi_hr_pkg.get_org_name(paaf.organization_id),',
'		papf.first_name || '' '' || papf.last_name name,',
'		CASE WHEN PJ.job_id = 46484 THEN ''Young Shlichut (Ofek)''',
'		WHEN PJ.job_id in (''46482'',''46480'') then ''Senior Shlichut (Shahar/Bina)'' else null',
'		END maslul, ',
'		floor((trunc(sysdate)-papf.date_of_birth)/365) AGE,',
'		jafi_hr_utils.US_Decode_Lookup (''MAR_STATUS'', papf.marital_status) Status,',
'		(select count (*)',
'		from per_contact_relationships pcr,',
'		per_all_people_f papf1',
'		where pcr.person_id=papf.person_id',
'		and pcr.contact_person_id=papf1.PERSON_ID(+)',
'		and pcr.CONTACT_TYPE =''C'') Children,      ',
'		(select NVL(max(document_id), 0)',
'		from irc_documents',
'		where person_id = papf.person_id',
'		and end_date is null',
'		and type = ''PHOTO'') PHOTO,',
'		(select NVL(max(ird.document_id), 0)',
'		from irc_documents ird',
'		where papf.person_id = ird.PERSON_ID',
'		and ird.end_date is null',
'		and ird.type = ''LTSKEHILAPROFILE'') COMM_PROFILE,',
'     paaf.assignment_type ass_type,',
'    case when paaf.assignment_type = ''E'' then (select ppos.date_start from per_periods_of_service ppos',
'                                           where ppos.period_of_service_id = paaf.period_of_service_id',
'                                           and paaf.person_id = ppos.person_id )',
'  when  paaf.assignment_type = ''A'' then  (select pa.projected_hire_date from per_applications pa',
'                                                                                       where pa.person_id = paaf.person_id',
'                                                                                       and pa.application_id = paaf.application_id) else null end arrival_date',
'from per_all_people_f            papf, ',
'per_all_assignments_f       paaf, ',
'per_all_vacancies           pav, ',
'PER_JOBS PJ,',
'irc_assignment_statuses     ias, ',
'per_assignment_status_types past ',
'where pav.organization_id = :P0_ORG_ID ',
'and papf.person_id = paaf.person_id ',
'AND PAV.ATTRIBUTE_CATEGORY =''LTS''',
'and paaf.vacancy_id = pav.vacancy_id ',
'and ias.assignment_id = paaf.assignment_id ',
'and ias.assignment_status_type_id IN (47358,23357,23358,6, 1)',
'and trunc(sysdate) between papf.effective_start_date and papf.effective_end_date ',
'and trunc(sysdate) between paaf.effective_start_date and  paaf.effective_end_date ',
'and paaf.business_group_id = 4088 ',
'and pav.attribute11 = ''N'' ',
'and paaf.job_id=pj.job_id',
'and pj.job_id in (''46480'',''46484'',''46482'')',
'and past.assignment_status_type_id =paaf.assignment_status_type_id ',
'and past.assignment_status_type_id =ias.assignment_status_type_id ',
'and ias.status_change_date = (select max(status_change_date) ',
'from irc_assignment_statuses ias1 ',
'where ias.assignment_id = ias1.assignment_id)',
')',
'',
'select',
'''My Mishlachat'' TYPE,',
'NAME,',
'AGE,',
'STATUS || (case when CHILDREN > 0 then '' +'' || CHILDREN',
'           else '''' end) STATUS,',
'maslul SHLICHUT_TYPE,',
'case when COMM_PROFILE > 0 then '''' else ''hidden'' end DOWNLOAD_CLASS,',
'case when COMM_PROFILE > 0 then',
'    apex_page.get_url(p_page => ''12'', ',
'    p_request => ''APPLICATION_PROCESS=GetDocument'', ',
'    p_items => ''DOCUMENT_ID'', ',
'    p_values => COMM_PROFILE) else ''#'' end DOWNLOAD_LINK,',
'case when PHOTO > 0 then',
'    apex_page.get_url(p_page => ''12'', ',
'    p_request => ''APPLICATION_PROCESS=GetDocument'', ',
'    p_items => ''DOCUMENT_ID'', ',
'    p_values => PHOTO) else ''#APP_IMAGES#anonymous-user.jpeg'' end PHOTO_LINK,',
'    CASE',
'         WHEN ass_type = ''A'' THEN',
'          ''show-new-app''',
'         ELSE',
'          ''hide-new-app''',
'       END AS NEW_SHALIACH_CLASS,',
'       TO_CHAR(arrival_date, ''FMMonth DD, YYYY'', ''NLS_DATE_LANGUAGE=English'') AS ARRIVAL_DATE',
'from my_mishlachat',
'order by to_date( nvl(ARRIVAL_DATE,sysdate+1)) desc'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(137922710237473420)
,p_query_num_rows=>100000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img src="#APP_IMAGES#no-candidates-chats-icon.svg" />',
'<span class="no-data-found-header">',
'No Active Candidates found.<br/>',
'</span>'))
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(140434234646131118)
,p_query_column_id=>1
,p_column_alias=>'TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(140432978312131116)
,p_query_column_id=>2
,p_column_alias=>'NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121141667477222376)
,p_query_column_id=>3
,p_column_alias=>'AGE'
,p_column_display_sequence=>6
,p_column_heading=>'Age'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121141774791222377)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>7
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121141924408222378)
,p_query_column_id=>5
,p_column_alias=>'SHLICHUT_TYPE'
,p_column_display_sequence=>8
,p_column_heading=>'Shlichut Type'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(140435437116131119)
,p_query_column_id=>6
,p_column_alias=>'DOWNLOAD_CLASS'
,p_column_display_sequence=>3
,p_column_heading=>'Download Class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(140435782224131120)
,p_query_column_id=>7
,p_column_alias=>'DOWNLOAD_LINK'
,p_column_display_sequence=>4
,p_column_heading=>'Download Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(140436147464131120)
,p_query_column_id=>8
,p_column_alias=>'PHOTO_LINK'
,p_column_display_sequence=>5
,p_column_heading=>'Photo Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(649323774799106549)
,p_query_column_id=>9
,p_column_alias=>'NEW_SHALIACH_CLASS'
,p_column_display_sequence=>9
,p_column_heading=>'New Shaliach Class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(649323865226106550)
,p_query_column_id=>10
,p_column_alias=>'ARRIVAL_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Arrival Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1905480533108489167)
,p_plug_name=>'Title'
,p_region_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(1491988443724117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Community Shlichut - <br class="mobile-br" />My Mishlachat'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1924486454454135226)
,p_plug_name=>'Back To Menu Container'
,p_region_name=>'backToMenuContainer'
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(140430559013131113)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1924486454454135226)
,p_button_name=>'BACK_TO_MENU'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back to Menu'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RR,::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.component_end;
end;
/
