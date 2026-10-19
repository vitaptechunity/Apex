prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
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
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'SHSH Interview Schedule'
,p_alias=>'SHSH-INTERVIEW-SCHEDULE'
,p_step_title=>'SHSH Interview Schedule'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'.see-all-col {',
'    width: 897px;',
'}',
'',
'#P17_SEE_ALL {',
'    float: right;',
'}',
'',
'#interviewScheduleCardsRegion {',
'    ',
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
'    .candidate-card .schedule-container {',
'        width: 147px !important;',
'        font-weight: 500 !important;',
'        height: 68px !important;',
'        align-items: center;',
'    }',
'    ',
'    .candidate-files {',
'        height: 15px;',
'    }',
'    ',
'    .candidate-card .schedule-container img {',
'        top: -10px !important;',
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
'    ',
'    .t-custom-sub-list-Tab {',
'        gap: 5px !important;',
'    }',
'}'))
,p_step_template=>wwv_flow_api.id(29244342218644)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DRORA'
,p_last_upd_yyyymmddhh24miss=>'20251123132208'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49823302345949852)
,p_plug_name=>'Sub Page Info'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>'Here you can view the  interview times for all <br class="mobile-br" />candidates, as well <br class="desktop-br" /> as those who have not yet <br class="mobile-br" />been scheduled for an interview.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(103423886224006456)
,p_name=>'InterviewScheduleCards'
,p_region_name=>'interviewScheduleCardsRegion'
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_grid_column_css_classes=>'center-region'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with interview_schedule as ',
'(',
'select papf.first_name ||'' ''|| papf.last_name name,',
'       decode (papf.sex, ''M'', ''Male'', ''Female'')gender,',
'        (select paei.aei_information1 ',
'         from per_assignment_extra_info paei, ',
'          per_all_assignments_f     paaf1, ',
'          per_all_vacancies         pav1 ',
'          where paei.assignment_id = paaf1.assignment_id ',
'          and pav1.vacancy_id = paaf1.vacancy_id ',
'          and pav1.attribute11 = ''Y'' ',
'          and pav1.attribute_category = ''SSH'' ',
'          and paei.information_type =''JAFI_SSH_VIDEO_MOVIE'' ',
'          and paaf1.person_id = paaf.person_id ',
'          and trunc(sysdate) between paaf1.effective_start_date and paaf1.effective_end_date) video,',
'          ',
'         (select NVL(max(document_id), 0)',
'	     from irc_documents',
'	     where person_id = papf.person_id',
'		 and end_date is null',
'		 and type = ''PHOTO'') PHOTO,',
'         ',
'         ',
'	   (select NVL(max(ird.document_id), 0) ',
'		from irc_documents ird ',
'		where papf.person_id = ird.PERSON_ID ',
'			   and ird.end_date is null ',
'			   and ird.type = ''SSHKEHILAPROFILE'') COMM_PROFILE, ',
'         ',
'      null event',
'         ',
'',
'from per_all_people_f papf,',
'     per_all_assignments_f paaf,',
'     per_all_vacancies pav,',
'     per_assignment_status_types past',
'     ',
'where papf.person_id=paaf.person_id',
'and pav.attribute_category=''SSH''',
'and paaf.business_group_id=4088',
'and paaf.vacancy_id=pav.vacancy_id',
'and pav.attribute11=''N''',
'and paaf.organization_id= :P0_ORG_ID',
'and paaf.assignment_status_type_id=past.assignment_status_type_id',
'and past.assignment_status_type_id in (''45358'')',
'',
'and trunc (sysdate) between papf.effective_start_date and papf.effective_end_date',
'and trunc (sysdate) between paaf.effective_start_date and paaf.effective_end_date',
'',
'union all',
'',
'select papf.first_name ||'' ''||papf.last_name name,',
'       decode (papf.sex, ''M'', ''Male'', ''Female'')gender,',
'        (select paei.aei_information1 ',
'         from per_assignment_extra_info paei, ',
'          per_all_assignments_f     paaf1, ',
'          per_all_vacancies         pav1 ',
'          where paei.assignment_id = paaf1.assignment_id ',
'          and pav1.vacancy_id = paaf1.vacancy_id ',
'          and pav1.attribute11 = ''Y'' ',
'          and pav1.attribute_category = ''SSH'' ',
'          and paei.information_type =''JAFI_SSH_VIDEO_MOVIE'' ',
'          and paaf1.person_id = paaf.person_id ',
'          and trunc(sysdate) between paaf1.effective_start_date and paaf1.effective_end_date) video,',
'          ',
'         (select NVL(max(document_id), 0)',
'		 from irc_documents',
'		 where person_id = papf.person_id',
'			and end_date is null',
'			and type = ''PHOTO'') PHOTO,',
'         ',
'         (select NVL(max(ird.document_id), 0) ',
'                       from irc_documents ird ',
'                       where papf.person_id = ird.PERSON_ID ',
'                       and ird.end_date is null ',
'                       and ird.type = ''SSHKEHILAPROFILE'') COMM_PROFILE,          ',
'         ',
'    To_char(To_date (oe.course_start_date,''MM-DD-YY''), ''Mon DD, YYYY'')  ||'' ''|| oe.course_start_time ||''-''|| oe.course_end_time event',
'    ',
'         ',
'',
'from per_all_people_f papf,',
'     per_all_assignments_f paaf,',
'     per_all_vacancies pav,',
'     per_assignment_status_types past,',
'    ota_events oe,',
'    ota_delegate_bookings odb',
'     ',
'where papf.person_id=paaf.person_id',
'and pav.attribute_category=''SSH''',
'and paaf.business_group_id=4088',
'and paaf.vacancy_id=pav.vacancy_id',
'and pav.attribute11=''N''',
'and paaf.organization_id= :P0_ORG_ID',
'and paaf.assignment_status_type_id=past.assignment_status_type_id',
'and past.assignment_status_type_id in (''45359'')',
'and oe.event_id=odb.event_id',
'and odb.delegate_person_id=papf.person_id',
'and oe.user_status=''SSHCP''',
'and odb.booking_status_type_id = 2',
'and oe.evt_information11 =  pav.organization_id',
'and oe.course_start_date >= trunc  (sysdate)',
'',
'and trunc (sysdate) between papf.effective_start_date and papf.effective_end_date',
'and trunc (sysdate) between paaf.effective_start_date and paaf.effective_end_date',
')',
'',
'select',
'case when EVENT is not null and length(EVENT) > 0 then ''Scheduled'' else ''Not Scheduled'' end TYPE,',
'EVENT FORMATTED_DATE,',
'NAME,',
'GENDER,',
'case when VIDEO is not null and length(VIDEO) > 0 then '''' else ''hidden'' end VIDEO_CLASS,',
'case when VIDEO is not null and length(VIDEO) > 0 then VIDEO else ''#'' end VIDEO_LINK,',
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
'    p_values => PHOTO) else ''#APP_IMAGES#anonymous-user.jpeg'' end PHOTO_LINK',
'from interview_schedule',
'where ROWNUM <= :P17_MAX_ROWS',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P17_MAX_ROWS'
,p_query_row_template=>wwv_flow_api.id(112326828171015346)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img src="#APP_IMAGES#no-candidates-chats-icon.svg" />',
'<span class="no-data-found-header">',
'No Candidates Selected for Interviews Yet.<br/>',
'</span>',
'Once you select candidates to move forward,<br/>',
'they will appear here for scheduling interviews.',
''))
,p_query_num_rows_item=>'P17_MAX_ROWS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(103425158020006469)
,p_query_column_id=>1
,p_column_alias=>'TYPE'
,p_column_display_sequence=>1
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(103425338248006470)
,p_query_column_id=>2
,p_column_alias=>'FORMATTED_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'Formatted Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(103426005378006477)
,p_query_column_id=>3
,p_column_alias=>'NAME'
,p_column_display_sequence=>8
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(103426116412006478)
,p_query_column_id=>4
,p_column_alias=>'GENDER'
,p_column_display_sequence=>9
,p_column_heading=>'Gender'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(103425392182006471)
,p_query_column_id=>5
,p_column_alias=>'VIDEO_CLASS'
,p_column_display_sequence=>3
,p_column_heading=>'Video Class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(103425472269006472)
,p_query_column_id=>6
,p_column_alias=>'VIDEO_LINK'
,p_column_display_sequence=>4
,p_column_heading=>'Video Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(103425637767006473)
,p_query_column_id=>7
,p_column_alias=>'DOWNLOAD_CLASS'
,p_column_display_sequence=>5
,p_column_heading=>'Download Class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(103425642810006474)
,p_query_column_id=>8
,p_column_alias=>'DOWNLOAD_LINK'
,p_column_display_sequence=>6
,p_column_heading=>'Download Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(103425883569006476)
,p_query_column_id=>9
,p_column_alias=>'PHOTO_LINK'
,p_column_display_sequence=>7
,p_column_heading=>'Photo Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(618945845810149223)
,p_plug_name=>'Show More Container'
,p_parent_plug_id=>wwv_flow_api.id(103423886224006456)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>60
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(115910310781098752)
,p_plug_name=>'Show All Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1252209895754256203)
,p_plug_name=>'Title'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(1491988443724117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'SHSH Program - <br class="mobile-br" />My Candidates'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1252210320487257321)
,p_plug_name=>'Prograss Bar'
,p_region_name=>'progressBar'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall:t-Form--noPadding:margin-top-md:margin-bottom-lg'
,p_component_template_options=>'#DEFAULT#:t-Tabs--simple'
,p_plug_template=>wwv_flow_api.id(1572085619207170)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(112122255929510488)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(2125342479223692)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1271218608152929374)
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
 p_id=>wwv_flow_api.id(116536082670146303)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(618945845810149223)
,p_button_name=>'SHOW_MORE_BTN'
,p_button_static_id=>'showMoreBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'Show more'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'center-region'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(112224807173678106)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1271218608152929374)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(116530781152038624)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(115910310781098752)
,p_button_name=>'P17_SEE_ALL'
,p_button_static_id=>'P17_SEE_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'See All (&P17_ROWS_COUNT.)'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'float-right see-all-col'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(115909800083098747)
,p_name=>'P17_MAX_ROWS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(103423886224006456)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(115909883418098748)
,p_name=>'P17_ROWS_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(103423886224006456)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(115912176100098771)
,p_name=>'P17_ROWS_INCREMENTAL_DIF'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(103423886224006456)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(115912288961098772)
,p_computation_sequence=>10
,p_computation_item=>'P17_ROWS_INCREMENTAL_DIF'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation=>'9'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(115910162581098751)
,p_computation_sequence=>20
,p_computation_item=>'P17_MAX_ROWS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P17_ROWS_INCREMENTAL_DIF'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(115909959239098749)
,p_computation_sequence=>30
,p_computation_item=>'P17_ROWS_COUNT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with interview_schedule as ',
'(',
'select papf.first_name ||'' ''|| papf.last_name name,',
'       decode (papf.sex, ''M'', ''Male'', ''Female'')gender,',
'        (select paei.aei_information1 ',
'         from per_assignment_extra_info paei, ',
'          per_all_assignments_f     paaf1, ',
'          per_all_vacancies         pav1 ',
'          where paei.assignment_id = paaf1.assignment_id ',
'          and pav1.vacancy_id = paaf1.vacancy_id ',
'          and pav1.attribute11 = ''Y'' ',
'          and pav1.attribute_category = ''SSH'' ',
'          and paei.information_type =''JAFI_SSH_VIDEO_MOVIE'' ',
'          and paaf1.person_id = paaf.person_id ',
'          and trunc(sysdate) between paaf1.effective_start_date and paaf1.effective_end_date) video,',
'          ',
'         (select NVL(max(document_id), 0)',
'	     from irc_documents',
'	     where person_id = papf.person_id',
'		 and end_date is null',
'		 and type = ''PHOTO'') PHOTO,',
'         ',
'         ',
'	   (select NVL(max(ird.document_id), 0) ',
'		from irc_documents ird ',
'		where papf.person_id = ird.PERSON_ID ',
'			   and ird.end_date is null ',
'			   and ird.type = ''SSHKEHILAPROFILE'') COMM_PROFILE, ',
'         ',
'      null event',
'         ',
'',
'from per_all_people_f papf,',
'     per_all_assignments_f paaf,',
'     per_all_vacancies pav,',
'     per_assignment_status_types past',
'     ',
'where papf.person_id=paaf.person_id',
'and pav.attribute_category=''SSH''',
'and paaf.business_group_id=4088',
'and paaf.vacancy_id=pav.vacancy_id',
'and pav.attribute11=''N''',
'and paaf.organization_id= :P0_ORG_ID',
'and paaf.assignment_status_type_id=past.assignment_status_type_id',
'and past.assignment_status_type_id in (''45358'')',
'',
'and trunc (sysdate) between papf.effective_start_date and papf.effective_end_date',
'and trunc (sysdate) between paaf.effective_start_date and paaf.effective_end_date',
'',
'union all',
'',
'select papf.first_name ||'' ''||papf.last_name name,',
'       decode (papf.sex, ''M'', ''Male'', ''Female'')gender,',
'        (select paei.aei_information1 ',
'         from per_assignment_extra_info paei, ',
'          per_all_assignments_f     paaf1, ',
'          per_all_vacancies         pav1 ',
'          where paei.assignment_id = paaf1.assignment_id ',
'          and pav1.vacancy_id = paaf1.vacancy_id ',
'          and pav1.attribute11 = ''Y'' ',
'          and pav1.attribute_category = ''SSH'' ',
'          and paei.information_type =''JAFI_SSH_VIDEO_MOVIE'' ',
'          and paaf1.person_id = paaf.person_id ',
'          and trunc(sysdate) between paaf1.effective_start_date and paaf1.effective_end_date) video,',
'          ',
'         (select NVL(max(document_id), 0)',
'		 from irc_documents',
'		 where person_id = papf.person_id',
'			and end_date is null',
'			and type = ''PHOTO'') PHOTO,',
'         ',
'         (select NVL(max(ird.document_id), 0) ',
'                       from irc_documents ird ',
'                       where papf.person_id = ird.PERSON_ID ',
'                       and ird.end_date is null ',
'                       and ird.type = ''SSHKEHILAPROFILE'') COMM_PROFILE,          ',
'         ',
'    To_char(To_date (oe.course_start_date,''MM-DD-YY''), ''Mon DD, YYYY'')  ||'' ''|| oe.course_start_time ||''-''|| oe.course_end_time event',
'    ',
'         ',
'',
'from per_all_people_f papf,',
'     per_all_assignments_f paaf,',
'     per_all_vacancies pav,',
'     per_assignment_status_types past,',
'    ota_events oe,',
'    ota_delegate_bookings odb',
'     ',
'where papf.person_id=paaf.person_id',
'and pav.attribute_category=''SSH''',
'and paaf.business_group_id=4088',
'and paaf.vacancy_id=pav.vacancy_id',
'and pav.attribute11=''N''',
'and paaf.organization_id= :P0_ORG_ID',
'and paaf.assignment_status_type_id=past.assignment_status_type_id',
'and past.assignment_status_type_id in (''45359'')',
'and oe.event_id=odb.event_id',
'and odb.delegate_person_id=papf.person_id',
'and oe.user_status=''SSHCP''',
'and odb.booking_status_type_id = 2',
'and oe.evt_information11 =  pav.organization_id',
'and oe.course_start_date >= trunc  (sysdate)',
'',
'and trunc (sysdate) between papf.effective_start_date and papf.effective_end_date',
'and trunc (sysdate) between paaf.effective_start_date and paaf.effective_end_date',
')',
'',
'select count(*)',
'from interview_schedule'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(115910469958098754)
,p_name=>'See All Click'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(116530781152038624)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(115910571539098755)
,p_event_id=>wwv_flow_api.id(115910469958098754)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_MAX_ROWS'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P17_ROWS_COUNT'
,p_attribute_07=>'P17_ROWS_COUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(115910767061098757)
,p_event_id=>wwv_flow_api.id(115910469958098754)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(103423886224006456)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(115910924784098758)
,p_name=>'Show More Click'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(116536082670146303)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(115911069800098760)
,p_event_id=>wwv_flow_api.id(115910924784098758)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_MAX_ROWS'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P17_MAX_ROWS + :P17_ROWS_INCREMENTAL_DIF'
,p_attribute_07=>'P17_MAX_ROWS,P17_ROWS_INCREMENTAL_DIF'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(115911157242098761)
,p_event_id=>wwv_flow_api.id(115910924784098758)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(103423886224006456)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(115911581207098765)
,p_name=>'Hide Show More On Max Rows Change'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_MAX_ROWS'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'parseInt($v(''P17_MAX_ROWS'')) >= parseInt($v(''P17_ROWS_COUNT''))',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(115911833142098767)
,p_event_id=>wwv_flow_api.id(115911581207098765)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(618945845810149223)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(115911860990098768)
,p_name=>'Hide Show All When All Rows Are Displayed'
,p_event_sequence=>40
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'parseInt($v(''P17_MAX_ROWS'')) >= parseInt($v(''P17_ROWS_COUNT''))',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(115912019636098769)
,p_event_id=>wwv_flow_api.id(115911860990098768)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(115910310781098752)
);
wwv_flow_api.component_end;
end;
/
