prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
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
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'SHSH Candidate Profiles'
,p_alias=>'SHSH-SELECT-CANDIDATES'
,p_step_title=>'SHSH Candidate Profiles'
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
'    ',
'    .t-custom-sub-list-Tab {',
'        gap: 5px !important;',
'    }',
'}'))
,p_step_template=>wwv_flow_api.id(29244342218644)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DRORA'
,p_last_upd_yyyymmddhh24miss=>'20251203140851'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49823187125949851)
,p_plug_name=>'Sub Page Info'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>Here you can see all the candidates who might <br class="mobile-br" />be a good fit <br class="desktop-br" /> for your community.</b> <br />',
'<br />',
'Each candidate has a short video and a profile <br class="mobile-br" />for you to review.<br />',
unistr('You can choose to\00A0proceed\00A0with the candidate <br class="mobile-br" />to the group<br class="desktop-br" />'),
unistr('dynamics and interview stage <br class="mobile-br" />or\00A0<b>decline</b>\00A0the candidate.<br />'),
'<br />',
unistr('<em>Note: once you Decline a candidate, <br class="mobile-br" />you won\2019t be able to <br class="desktop-br" />'),
'undo this action.</em>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(115912376866098773)
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
 p_id=>wwv_flow_api.id(711880777111944080)
,p_name=>'Active Candidates Cards'
,p_region_name=>'activeCandidatesCardsRegion'
,p_parent_plug_id=>wwv_flow_api.id(115912376866098773)
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
'with active_candidates as ',
'(',
'select papf.first_name || '' '' || papf.last_name name,',
'       decode(papf.sex, ''M'', ''Male'', ''Female'') gender,',
'       (select paei.aei_information1',
'          from per_assignment_extra_info paei,',
'               per_all_assignments_f     paaf1,',
'               per_all_vacancies         pav1',
'         where paei.assignment_id = paaf1.assignment_id',
'           and pav1.vacancy_id = paaf1.vacancy_id',
'           and pav1.attribute11 = ''Y''',
'           and pav1.attribute_category = ''SSH''',
'           and paei.information_type = ''JAFI_SSH_VIDEO_MOVIE''',
'           and paaf1.person_id = paaf.person_id',
'           and trunc(sysdate) between paaf1.effective_start_date and',
'               paaf1.effective_end_date) video,',
'       ',
'       (select NVL(max(document_id), 0)',
'        from irc_documents',
'        where person_id = papf.person_id',
'         and end_date is null',
'         and type = ''PHOTO'') PHOTO,',
'       ',
'       (select NVL(max(ird.document_id), 0)',
'          from irc_documents ird',
'         where papf.person_id = ird.PERSON_ID',
'           and ird.end_date is null',
'           and ird.type = ''SSHKEHILAPROFILE'') COMM_PROFILE,',
'    papf.person_id,',
'    paaf.assignment_id',
'',
'  from per_all_people_f            papf,',
'       per_all_assignments_f       paaf,',
'       per_all_vacancies           pav,',
'    irc_assignment_statuses ias, ---Meitav 16112025',
'       per_assignment_status_types past',
'',
' where papf.person_id = paaf.person_id',
'   and pav.attribute_category = ''SSH''',
'   and paaf.business_group_id = 4088',
'   and paaf.vacancy_id = pav.vacancy_id',
'   and pav.attribute11 = ''N''',
'   and paaf.organization_id = :P0_ORG_ID',
'    and ias.assignment_status_type_id=past.assignment_status_type_id --Meitav 16112025',
'   and ias.assignment_id=paaf.assignment_id --Meitav 16112025',
'   and past.assignment_status_type_id in (''280'')',
'    ',
'    ',
'    and ias.status_change_date =',
'    (select max(ias1.status_change_date)',
'     from irc_assignment_statuses ias1',
'     where ias1.assignment_id = ias.assignment_id) --Meitav 16112025',
'      ',
'   and trunc(sysdate) between papf.effective_start_date and',
'       papf.effective_end_date',
'   and trunc(sysdate) between paaf.effective_start_date and',
'       paaf.effective_end_date',
')',
'',
'',
'',
'select * from (',
'select',
'''Active Candidate'' TYPE,',
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
'    p_values => PHOTO) else ''#APP_IMAGES#anonymous-user.jpeg'' end PHOTO_LINK,',
'    PERSON_ID,',
'    ASSIGNMENT_ID',
'from active_candidates',
')',
'where ROWNUM <= :P16_AC_MAX_ROWS',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P16_AC_MAX_ROWS'
,p_query_row_template=>wwv_flow_api.id(117108447783424822)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img src="#APP_IMAGES#no-candidates-chats-icon.svg" />',
'<span class="no-data-found-header">',
'No Active Candidates found.<br/>',
'</span>'))
,p_query_num_rows_item=>'P16_AC_MAX_ROWS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117120478219096179)
,p_query_column_id=>1
,p_column_alias=>'TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117091972152023185)
,p_query_column_id=>2
,p_column_alias=>'NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117092355203023186)
,p_query_column_id=>3
,p_column_alias=>'GENDER'
,p_column_display_sequence=>2
,p_column_heading=>'Gender'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117120599832096180)
,p_query_column_id=>4
,p_column_alias=>'VIDEO_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'Video Class'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117120686124096181)
,p_query_column_id=>5
,p_column_alias=>'VIDEO_LINK'
,p_column_display_sequence=>5
,p_column_heading=>'Video Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117120814300096182)
,p_query_column_id=>6
,p_column_alias=>'DOWNLOAD_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'Download Class'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117120941366096183)
,p_query_column_id=>7
,p_column_alias=>'DOWNLOAD_LINK'
,p_column_display_sequence=>7
,p_column_heading=>'Download Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117121003880096184)
,p_query_column_id=>8
,p_column_alias=>'PHOTO_LINK'
,p_column_display_sequence=>8
,p_column_heading=>'Photo Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117121101193096185)
,p_query_column_id=>9
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>9
,p_column_heading=>'Person Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(115232309205262249)
,p_query_column_id=>10
,p_column_alias=>'ASSIGNMENT_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Assignment Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1227402736698086847)
,p_plug_name=>'AC Show More Container'
,p_parent_plug_id=>wwv_flow_api.id(711880777111944080)
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
 p_id=>wwv_flow_api.id(724366044435015782)
,p_plug_name=>'AC Header Container'
,p_region_name=>'acHeaderContainer'
,p_parent_plug_id=>wwv_flow_api.id(115912376866098773)
,p_region_css_classes=>'header-container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(115913920524098788)
,p_plug_name=>'Closed Applications Container'
,p_region_name=>'closedApplicationsContainer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region '
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(115914025636098789)
,p_plug_name=>'CA Header Container'
,p_region_name=>'caHeaderContainer'
,p_parent_plug_id=>wwv_flow_api.id(115913920524098788)
,p_region_css_classes=>'header-container'
,p_region_template_options=>'#DEFAULT#:margin-top-lg'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(117117051483096145)
,p_name=>'Closed Applications Cards'
,p_region_name=>'closedApplicationsCardsRegion'
,p_parent_plug_id=>wwv_flow_api.id(115913920524098788)
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_grid_column_css_classes=>'center-region'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct ',
'''Closed Application'' TYPE,',
'case when START_DATE is not null and END_DATE is not null then to_char(START_DATE, ''Month DD, HH12:MI'') || to_char(END_DATE, '' - HH12:MI AM'') else null end FORMATTED_DATE,',
'NAME,',
'GENDER,',
'case when VIDEO_LINK is null then ''hidden'' else '''' end VIDEO_CLASS,',
'VIDEO_LINK,',
'case when DOWNLOAD_LINK is null then ''hidden'' else '''' end DOWNLOAD_CLASS,',
'DOWNLOAD_LINK,',
'case when PHOTO > 0 then',
'    apex_page.get_url(p_page => ''12'', ',
'    p_request => ''APPLICATION_PROCESS=GetDocument'', ',
'    p_items => ''DOCUMENT_ID'', ',
'    p_values => PHOTO) else ''#APP_IMAGES#anonymous-user.jpeg'' end PHOTO_LINK, ',
'PERSON_ID',
'from ',
'(',
'    select',
'    --''http://www.google.com/search?q=video 1'' VIDEO_LINK,',
'    ''http://www.google.com/search?q=download 1'' VIDEO_LINK,',
'    ''http://www.google.com/search?q=download 1'' DOWNLOAD_LINK,',
'   ',
'      (select NVL(max(document_id), 0)',
'     from irc_documents',
'     where person_id = jhcd.person_id',
'      and end_date is null',
'      and type = ''PHOTO'') PHOTO,',
'   ',
'    sysdate - 3/24 START_DATE,',
'    sysdate - 2.5/24 END_DATE,',
'    papf.first_name||'' ''||papf.last_name NAME,',
'    jafi_hr_utils.US_Decode_Lookup(''SEX'', papf.sex) GENDER,',
'    jhcd.PERSON_ID',
'    from JAFI.JAFI_HR_COM_DECISION jhcd,',
'         per_all_people_f papf',
'    ',
'    ',
'    where jhcd.Assignment_Status_Type_Id IN (15361, 290)-- Meitav 16112025',
'      and jhcd.organization_id = :P0_ORG_ID',
'      and papf.person_id = jhcd.person_id',
'      and jhcd.maslul_type=''SSH''',
'      and trunc (sysdate) between papf.effective_start_date and papf.effective_end_date',
'     -- and trunc (sysdate) between paaf.effective_start_date and paaf.effective_end_date',
'      ',
'      and jhcd.current_year = ( select  ',
'                                    case  ',
'                                      when (EXTRACT(month FROM sysdate)) <= 9  then (EXTRACT(year FROM sysdate)) ',
'                                      when (EXTRACT(month FROM sysdate)) >= 10 then (EXTRACT(year FROM sysdate)+1)  ',
'                                     end year  ',
'                             from dual)   ',
' ',
')',
'where ROWNUM <= :P16_CA_MAX_ROWS'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P16_CA_MAX_ROWS'
,p_query_row_template=>wwv_flow_api.id(117108447783424822)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img src="#APP_IMAGES#no-candidates-chats-icon.svg" />',
'<span class="no-data-found-header">',
'No Closed Applications found.<br/>',
'</span>',
''))
,p_query_num_rows_item=>'P16_CA_MAX_ROWS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117117596755096150)
,p_query_column_id=>1
,p_column_alias=>'TYPE'
,p_column_display_sequence=>1
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117117692337096151)
,p_query_column_id=>2
,p_column_alias=>'FORMATTED_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'Formatted Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117118276287096157)
,p_query_column_id=>3
,p_column_alias=>'NAME'
,p_column_display_sequence=>8
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117118401627096158)
,p_query_column_id=>4
,p_column_alias=>'GENDER'
,p_column_display_sequence=>9
,p_column_heading=>'Gender'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117117779910096152)
,p_query_column_id=>5
,p_column_alias=>'VIDEO_CLASS'
,p_column_display_sequence=>3
,p_column_heading=>'Video Class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117117873085096153)
,p_query_column_id=>6
,p_column_alias=>'VIDEO_LINK'
,p_column_display_sequence=>4
,p_column_heading=>'Video Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117117972391096154)
,p_query_column_id=>7
,p_column_alias=>'DOWNLOAD_CLASS'
,p_column_display_sequence=>5
,p_column_heading=>'Download Class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117118046492096155)
,p_query_column_id=>8
,p_column_alias=>'DOWNLOAD_LINK'
,p_column_display_sequence=>6
,p_column_heading=>'Download Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117118172206096156)
,p_query_column_id=>9
,p_column_alias=>'PHOTO_LINK'
,p_column_display_sequence=>7
,p_column_heading=>'Photo Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117118538348096159)
,p_query_column_id=>10
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Person Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(117118763416096162)
,p_plug_name=>'CA Show More Container'
,p_parent_plug_id=>wwv_flow_api.id(117117051483096145)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>70
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(648620269150690751)
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
 p_id=>wwv_flow_api.id(648620693883691869)
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
 p_id=>wwv_flow_api.id(667626190496336810)
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
 p_id=>wwv_flow_api.id(117118885659096163)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(117118763416096162)
,p_button_name=>'P16_CA_SHOW_MORE_BTN'
,p_button_static_id=>'caShowMoreBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'Show more'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'center-region'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(115912866540098778)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(724366044435015782)
,p_button_name=>'P16_ACTIVE_CANDIDATES'
,p_button_static_id=>'P16_ACTIVE_CANDIDATES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'Active Candidates'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-angle-up'
,p_grid_column_css_classes=>'region-header'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(115914157537098791)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(115914025636098789)
,p_button_name=>'P16_CLOSED_APPLICATIONS'
,p_button_static_id=>'P16_CLOSED_APPLICATIONS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'Closed Applications'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-angle-up'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(117094260112023205)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1227402736698086847)
,p_button_name=>'P16_AC_SHOW_MORE_BTN'
,p_button_static_id=>'acShowMoreBtn'
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
 p_id=>wwv_flow_api.id(112223887944668597)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(667626190496336810)
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
 p_id=>wwv_flow_api.id(115914102699098790)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(115914025636098789)
,p_button_name=>'P16_CA_SEE_ALL'
,p_button_static_id=>'P16_CA_SEE_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'See All (&P16_CA_ROWS_COUNT.)'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(117088058300002585)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(724366044435015782)
,p_button_name=>'P16_AC_SEE_ALL'
,p_button_static_id=>'P16_AC_SEE_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'See All (&P16_AC_ROWS_COUNT.)'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'float-right region-header'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(115232087349262247)
,p_name=>'P16_AC_SELECTED_ASSIG_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(711880777111944080)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(115913275462098782)
,p_name=>'P16_AC_SELECTED_PERSON_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(711880777111944080)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117092782993023191)
,p_name=>'P16_AC_ROWS_INCREMENTAL_DIF'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(711880777111944080)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117093199375023204)
,p_name=>'P16_AC_MAX_ROWS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(711880777111944080)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117093574989023204)
,p_name=>'P16_AC_ROWS_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(711880777111944080)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117117181564096146)
,p_name=>'P16_CA_ROWS_INCREMENTAL_DIF'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(117117051483096145)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117117313962096147)
,p_name=>'P16_CA_MAX_ROWS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(117117051483096145)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117117394662096148)
,p_name=>'P16_CA_ROWS_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(117117051483096145)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(115912604909098775)
,p_computation_sequence=>10
,p_computation_item=>'P16_AC_ROWS_INCREMENTAL_DIF'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'9'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(115912670851098776)
,p_computation_sequence=>30
,p_computation_item=>'P16_AC_MAX_ROWS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P16_AC_ROWS_INCREMENTAL_DIF'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(115912774385098777)
,p_computation_sequence=>50
,p_computation_item=>'P16_AC_ROWS_COUNT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with active_candidates as ',
'(',
'select papf.first_name || '' '' || papf.last_name name,',
'       decode(papf.sex, ''M'', ''Male'', ''Female'') gender,',
'       (select paei.aei_information1',
'          from per_assignment_extra_info paei,',
'               per_all_assignments_f     paaf1,',
'               per_all_vacancies         pav1',
'         where paei.assignment_id = paaf1.assignment_id',
'           and pav1.vacancy_id = paaf1.vacancy_id',
'           and pav1.attribute11 = ''Y''',
'           and pav1.attribute_category = ''SSH''',
'           and paei.information_type = ''JAFI_SSH_VIDEO_MOVIE''',
'           and paaf1.person_id = paaf.person_id',
'           and trunc(sysdate) between paaf1.effective_start_date and',
'               paaf1.effective_end_date) video,',
'       ',
'       (select NVL(max(document_id), 0)',
'        from irc_documents',
'        where person_id = papf.person_id',
'         and end_date is null',
'         and type = ''PHOTO'') PHOTO,',
'       ',
'       (select NVL(max(ird.document_id), 0)',
'          from irc_documents ird',
'         where papf.person_id = ird.PERSON_ID',
'           and ird.end_date is null',
'           and ird.type = ''SSHKEHILAPROFILE'') COMM_PROFILE,',
'    papf.person_id,',
'    paaf.assignment_id',
'',
'  from per_all_people_f            papf,',
'       per_all_assignments_f       paaf,',
'       per_all_vacancies           pav,',
'    irc_assignment_statuses ias, ---Meitav 16112025',
'       per_assignment_status_types past',
'',
' where papf.person_id = paaf.person_id',
'   and pav.attribute_category = ''SSH''',
'   and paaf.business_group_id = 4088',
'   and paaf.vacancy_id = pav.vacancy_id',
'   and pav.attribute11 = ''N''',
'   and paaf.organization_id = :P0_ORG_ID',
'    and ias.assignment_status_type_id=past.assignment_status_type_id --Meitav 16112025',
'   and ias.assignment_id=paaf.assignment_id --Meitav 16112025',
'   and past.assignment_status_type_id in (''280'')',
'    ',
'    ',
'    and ias.status_change_date =',
'    (select max(ias1.status_change_date)',
'     from irc_assignment_statuses ias1',
'     where ias1.assignment_id = ias.assignment_id) --Meitav 16112025',
'      ',
'   and trunc(sysdate) between papf.effective_start_date and',
'       papf.effective_end_date',
'   and trunc(sysdate) between paaf.effective_start_date and',
'       paaf.effective_end_date',
')',
'',
'',
'',
'select count(*)',
'from active_candidates'))
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
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(117119326758096167)
,p_computation_sequence=>60
,p_computation_item=>'P16_CA_ROWS_INCREMENTAL_DIF'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'9'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(117119402177096168)
,p_computation_sequence=>70
,p_computation_item=>'P16_CA_MAX_ROWS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P16_CA_ROWS_INCREMENTAL_DIF'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(117119458360096169)
,p_computation_sequence=>80
,p_computation_item=>'P16_CA_ROWS_COUNT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with closed_applications as ',
'(',
'select distinct ',
'''Closed Application'' TYPE,',
'case when START_DATE is not null and END_DATE is not null then to_char(START_DATE, ''Month DD, HH12:MI'') || to_char(END_DATE, '' - HH12:MI AM'') else null end FORMATTED_DATE,',
'NAME,',
'GENDER,',
'case when VIDEO_LINK is null then ''hidden'' else '''' end VIDEO_CLASS,',
'VIDEO_LINK,',
'case when DOWNLOAD_LINK is null then ''hidden'' else '''' end DOWNLOAD_CLASS,',
'DOWNLOAD_LINK,',
'case when PHOTO > 0 then',
'    apex_page.get_url(p_page => ''12'', ',
'    p_request => ''APPLICATION_PROCESS=GetDocument'', ',
'    p_items => ''DOCUMENT_ID'', ',
'    p_values => PHOTO) else ''#APP_IMAGES#anonymous-user.jpeg'' end PHOTO_LINK, ',
'PERSON_ID',
'from ',
'(',
'    select',
'    --''http://www.google.com/search?q=video 1'' VIDEO_LINK,',
'    ''http://www.google.com/search?q=download 1'' VIDEO_LINK,',
'    ''http://www.google.com/search?q=download 1'' DOWNLOAD_LINK,',
'   ',
'      (select NVL(max(document_id), 0)',
'     from irc_documents',
'     where person_id = jhcd.person_id',
'      and end_date is null',
'      and type = ''PHOTO'') PHOTO,',
'   ',
'    sysdate - 3/24 START_DATE,',
'    sysdate - 2.5/24 END_DATE,',
'    jhcd.first_name||'' ''||jhcd.last_name NAME,',
'    jhcd.GENDER,',
'    jhcd.PERSON_ID',
'    from JAFI.JAFI_HR_COM_DECISION jhcd,',
'         per_all_people_f papf',
'    ',
'    ',
'    where jhcd.Assignment_Status_Type_Id IN (15361, 290)-- Meitav 16112025',
'      and jhcd.organization_id = :P0_ORG_ID',
'      and papf.person_id = jhcd.person_id',
'      and jhcd.maslul_type=''SSH''',
'      and trunc (sysdate) between papf.effective_start_date and papf.effective_end_date',
'     -- and trunc (sysdate) between paaf.effective_start_date and paaf.effective_end_date',
'      ',
'      and jhcd.current_year = ( select  ',
'                                    case  ',
'                                      when (EXTRACT(month FROM sysdate)) <= 9  then (EXTRACT(year FROM sysdate)) ',
'                                      when (EXTRACT(month FROM sysdate)) >= 10 then (EXTRACT(year FROM sysdate)+1)  ',
'                                     end year  ',
'                             from dual)   ',
' ',
')',
')',
'',
'',
'select count(*) ',
'from closed_applications'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(117098012863077130)
,p_name=>'AC Hide Show All When All Rows Are Displayed'
,p_event_sequence=>10
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'parseInt($v(''P16_AC_MAX_ROWS'')) >= parseInt($v(''P16_AC_ROWS_COUNT''))',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117098382190077136)
,p_event_id=>wwv_flow_api.id(117098012863077130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(117088058300002585)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(117119651984096171)
,p_name=>'CA Hide Show All When All Rows Are Displayed'
,p_event_sequence=>20
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'parseInt($v(''P16_CA_MAX_ROWS'')) >= parseInt($v(''P16_CA_ROWS_COUNT''))',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117119841022096172)
,p_event_id=>wwv_flow_api.id(117119651984096171)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(115914102699098790)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(117098838643085262)
,p_name=>'AC Hide Show More On Max Rows Change'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P16_AC_MAX_ROWS'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'parseInt($v(''P16_AC_MAX_ROWS'')) >= parseInt($v(''P16_AC_ROWS_COUNT''))',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117099195953085263)
,p_event_id=>wwv_flow_api.id(117098838643085262)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1227402736698086847)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(117118619155096160)
,p_name=>'CA Hide Show More On Max Rows Change'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P16_CA_MAX_ROWS'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'parseInt($v(''P16_CA_MAX_ROWS'')) >= parseInt($v(''P16_CA_ROWS_COUNT''))',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117118687813096161)
,p_event_id=>wwv_flow_api.id(117118619155096160)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(117118763416096162)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(117099572857087937)
,p_name=>'AC See All Click'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(117088058300002585)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117100493264087938)
,p_event_id=>wwv_flow_api.id(117099572857087937)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_AC_MAX_ROWS'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P16_AC_ROWS_COUNT'
,p_attribute_07=>'P16_AC_ROWS_COUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117100042701087938)
,p_event_id=>wwv_flow_api.id(117099572857087937)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(711880777111944080)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(115914336033098792)
,p_name=>'CA See All Click'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(115914102699098790)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117116933249096143)
,p_event_id=>wwv_flow_api.id(115914336033098792)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_CA_MAX_ROWS'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P16_CA_ROWS_COUNT'
,p_attribute_07=>'P16_CA_ROWS_COUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117116983098096144)
,p_event_id=>wwv_flow_api.id(115914336033098792)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(117117051483096145)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(117100848088089558)
,p_name=>'AC Show More Click'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(117094260112023205)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117101263665089559)
,p_event_id=>wwv_flow_api.id(117100848088089558)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_AC_MAX_ROWS'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P16_AC_MAX_ROWS + :P16_AC_ROWS_INCREMENTAL_DIF'
,p_attribute_07=>'P16_AC_MAX_ROWS,P16_AC_ROWS_INCREMENTAL_DIF'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117101790121089559)
,p_event_id=>wwv_flow_api.id(117100848088089558)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(711880777111944080)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(117119027192096164)
,p_name=>'CA Show More Click'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(117118885659096163)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117119044761096165)
,p_event_id=>wwv_flow_api.id(117119027192096164)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_CA_MAX_ROWS'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P16_CA_MAX_ROWS + :P16_CA_ROWS_INCREMENTAL_DIF'
,p_attribute_07=>'P16_CA_MAX_ROWS,P16_CA_ROWS_INCREMENTAL_DIF'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117119173376096166)
,p_event_id=>wwv_flow_api.id(117119027192096164)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(117117051483096145)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(115913089135098780)
,p_name=>'Decline Click'
,p_event_sequence=>90
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.decline-btn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(115913147457098781)
,p_event_id=>wwv_flow_api.id(115913089135098780)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_AC_SELECTED_PERSON_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'parseInt($(this.triggeringElement).data(''person-id''))'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(115232538768262251)
,p_event_id=>wwv_flow_api.id(115913089135098780)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_AC_SELECTED_ASSIG_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'parseInt($(this.triggeringElement).data(''assignment-id''))'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(115913442066098783)
,p_event_id=>wwv_flow_api.id(115913089135098780)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//var selectedPersonId = $v("P16_AC_SELECTED_PERSON_ID");',
'//var selectedAccigId = $v("P16_AC_SELECTED_ASSIG_ID");',
'//alert(''Accept SELECTED_ASSIG_ID '' + selectedAccigId + ''\n\nVita,\nComplete implementing the login in the submit ----process.\nGoodluck,\nDror.'');',
'',
'apex.page.submit(''DECLINE'');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(115913541835098784)
,p_name=>'Accept Click'
,p_event_sequence=>100
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.accept-btn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(115913641617098785)
,p_event_id=>wwv_flow_api.id(115913541835098784)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_AC_SELECTED_PERSON_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'parseInt($(this.triggeringElement).data(''person-id''))'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(115232381294262250)
,p_event_id=>wwv_flow_api.id(115913541835098784)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_AC_SELECTED_ASSIG_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'parseInt($(this.triggeringElement).data(''assignment-id''))'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(115913650049098786)
,p_event_id=>wwv_flow_api.id(115913541835098784)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//var selectedPersonId = $v("P16_AC_SELECTED_PERSON_ID");',
'//var selectedAccigId = $v("P16_AC_SELECTED_ASSIG_ID");',
'',
'//alert(''Accept SELECTED_ASSIG_ID '' + selectedAccigId + ''\n\nVita,\nComplete implementing the login in the submit ----process.\nGoodluck,\nDror.'');',
'',
'apex.page.submit(''ACCEPT'');'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(117119985059096174)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Decline Candidate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'v_forward_status varchar2(10);',
'--v_assignment_status_type_id number;',
'v_reason varchar2(100);',
'l_reasons_id number;',
'v_assignment_id number;',
'v_year          number;',
'v_first_name    varchar2(100);     ',
'v_last_name     varchar2(100);',
'v_gender        varchar2(10);',
'v_last_update_status_user number;',
'BEGIN',
'',
'',
'',
'',
'  select decode (instance_name, ''THR'',121130, 123025  )',
'     into v_last_update_status_user',
'     from   v$instance  ',
'     where rownum = 1 ;   ',
'     ',
'',
'  fnd_global.APPS_INITIALIZE(v_last_update_status_user,60328,800); ',
'',
'  ',
'   ',
'   v_forward_status := 290  ; -- 56',
'   v_reason := ''64'';',
'   v_assignment_id  := :P16_AC_SELECTED_ASSIG_ID; ',
'',
'------------------------------------------------------',
'  select  ',
'case  ',
'  when (EXTRACT(month FROM sysdate)) <= 9  then (EXTRACT(year FROM sysdate)) ',
'  when (EXTRACT(month FROM sysdate)) >= 10 then (EXTRACT(year FROM sysdate)+1)  ',
'end year  ',
'into v_year ',
'from dual   ;   ',
'',
'------',
'/*',
' select papf.first_name, papf.last_name , decode(papf.sex, ''M'', ''Male'', ''Female'') gender',
' ',
'  into v_first_name,  v_last_name , v_gender ',
'  from per_all_people_f            papf',
' where papf.person_id = :P16_AC_SELECTED_PERSON_ID ',
'   and trunc(sysdate)   between trunc(papf.effective_start_date) and trunc(papf.effective_end_date) ; ',
'*/   ',
' ------------------------------------------------------ ',
'                        jafi_irc_apl_status.change_status(p_assignment_id  => :P16_AC_SELECTED_ASSIG_ID,--:P15_ASSIGNMENT_ID,',
'                                                          p_status_type_id => v_forward_status,',
'                                                          p_change_reason  => v_reason,',
'                                                          p_remarks        => '''');',
'                                                          ',
'                                                          ',
'                                                          ',
' -------------------------------------          ',
'        insert into JAFI.JAFI_HR_COM_DECISION',
'                   ( person_id,   assignment_status_type_id,   assignment_id, organization_id,  current_year,   creation_date, MASLUL_TYPE, DECISION)',
'              values',
unistr('                   (:P16_AC_SELECTED_PERSON_ID , v_forward_status,  :P16_AC_SELECTED_ASSIG_ID , :P0_ORG_ID,   v_year,    sysdate, ''SSH'', ''\05E7\05D4\05D9\05DC\05D4 \05DC\05D0 \05DE\05E2\05D5\05E0\05D9\05D9\05E0\05EA \05DC\05E8\05D0\05D9\05D9\05DF'');'),
'   ',
'        commit; ',
' ',
' exception  when others then',
'            XX_MY_UTILS.add_msg(''Main ERROR 220 Page 3 Community Contact ''||SQLERRM); ',
'',
'             apex_error.add_error (',
'                      p_message          => ''Failed to update =>''||SQLERRM,   p_display_location => apex_error.c_inline_in_notification );',
'',
'     ',
'     ',
' END;',
'              ',
'              ',
'              ',
'',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DECLINE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(117120139410096175)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Accept Candidate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'v_forward_status varchar2(10);',
'v_reason varchar2(100);',
'l_reasons_id number;',
'v_last_update_status_user   number;',
'BEGIN',
'',
' ',
'',
'  select decode (instance_name, ''THR'',121130, 123025  )',
'     into v_last_update_status_user',
'     from   v$instance  ',
'     where rownum = 1 ;   ',
'     ',
'     ',
'   fnd_global.APPS_INITIALIZE(v_last_update_status_user,60328,800); ',
'  ',
'   v_forward_status :=  45358  ; -- 21',
'   v_reason := '''';',
'      ',
' -- XX_MY_UTILS.add_msg(''P16_AC_SELECTED_ASSIG_ID  : '' || :P16_AC_SELECTED_ASSIG_ID); ',
'   ',
'           ',
'                        jafi_irc_apl_status.change_status(p_assignment_id  => :P16_AC_SELECTED_ASSIG_ID,--:P15_ASSIGNMENT_ID,',
'                                                          p_status_type_id => v_forward_status,',
'                                                          p_change_reason  => v_reason,',
'                                                          p_remarks        => '''');',
'        commit; ',
'        exception  when others then',
'            XX_MY_UTILS.add_msg(''Main ERROR 220 Page 3 Community Contact ''||SQLERRM); ',
'',
'             apex_error.add_error (',
'                      p_message          => ''Failed to update =>''||SQLERRM,   p_display_location => apex_error.c_inline_in_notification );',
'',
'     ',
'     ',
' END;',
'              ',
'              ',
'              ',
'',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ACCEPT'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.component_end;
end;
/
