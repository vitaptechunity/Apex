prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'Community Shlichut - Candidate Profiles'
,p_alias=>'COMMUNITY-SHLICHUT-CANDIDATE-PROFILES'
,p_step_title=>'Community Shlichut - Candidate Profiles'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>' '
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
'.candidate-gender {',
'    margin-top: 10px;',
'}',
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
'    #progressBar .t-custom-sub-list-Tab {',
'        width: 100% !important;',
'    }',
'    ',
'    #progressBar .t-custom-sub-list-Tab .t-Tabs-item {',
'        width: 50% !important;',
'        height: 57px;',
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
'        height: 57px;',
'        justify-content: center;',
'        display: flex;',
'        align-items: center;',
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
'        height: 0;',
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
'        margin-top: 0;',
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
,p_last_updated_by=>'MEITAVC'
,p_last_upd_yyyymmddhh24miss=>'20260531103827'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(674893665622702758)
,p_plug_name=>'Sub Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Welcome to the Candidate Profiles section.<br />',
'Here you can review the profiles of candidates<br class="mobile-br" /> who<br class="desktop-br" />',
'have been matched with your community.<br />',
'<br />',
'Please take some time to go through each <br class="mobile-br" />profile carefully<br class="desktop-br" />',
unistr('and decide whether you\2019d like to <br class="mobile-br" />invite the candidate<br class="desktop-br" />'),
'for an interview.<br />',
'<br />',
unistr('If you choose\00A0not\00A0to proceed with an interview, <br class="mobile-br" />you\2019ll be asked<br class="desktop-br" />'),
'to briefly share the reason for <br class="mobile-br" />your decision before continuing.<br />',
'If you have any questions or need assistance, <br class="mobile-br" />feel free to<br class="desktop-br" />',
'contact our team in Israel.'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(740982855362851680)
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
 p_id=>wwv_flow_api.id(1336951255608696987)
,p_name=>'Active Candidates Cards'
,p_region_name=>'activeCandidatesCardsRegion'
,p_parent_plug_id=>wwv_flow_api.id(740982855362851680)
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
'       null video,',
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
'           and ird.type = ''LTSKEHILAPROFILE'') COMM_PROFILE,',
'    papf.person_id,',
'    paaf.assignment_id',
'',
'  from per_all_people_f            papf,',
'       per_all_assignments_f       paaf,',
'       per_all_vacancies           pav,',
'    irc_assignment_statuses ias, ',
'       per_assignment_status_types past,',
'       PER_JOBS PJ',
'',
' where papf.person_id = paaf.person_id',
'   and pav.attribute_category = ''LTS''',
'   and paaf.business_group_id = 4088',
'   and paaf.vacancy_id = pav.vacancy_id',
'   and pav.attribute11 = ''N''',
'   and paaf.organization_id = :P0_ORG_ID',
'    and ias.assignment_status_type_id=past.assignment_status_type_id',
'   and ias.assignment_id=paaf.assignment_id',
'   and past.assignment_status_type_id in (''280'')',
'    and pj.job_id in (''46480'',''46484'',''46482'')',
'    and ias.status_change_date =',
'    (select max(ias1.status_change_date)',
'     from irc_assignment_statuses ias1',
'     where ias1.assignment_id = ias.assignment_id)',
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
'where ROWNUM <= :P20_AC_MAX_ROWS',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P20_AC_MAX_ROWS'
,p_query_row_template=>wwv_flow_api.id(137922710237473420)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img src="#APP_IMAGES#no-candidates-chats-icon.svg" />',
'<span class="no-data-found-header">',
'No Active Candidates found.<br/>',
'</span>'))
,p_query_num_rows_item=>'P20_AC_MAX_ROWS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133705678058838456)
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
 p_id=>wwv_flow_api.id(133704861423838455)
,p_query_column_id=>2
,p_column_alias=>'NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133705253883838455)
,p_query_column_id=>3
,p_column_alias=>'GENDER'
,p_column_display_sequence=>2
,p_column_heading=>'Gender'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133706140463838456)
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
 p_id=>wwv_flow_api.id(133706504869838458)
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
 p_id=>wwv_flow_api.id(133706905194838460)
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
 p_id=>wwv_flow_api.id(133707306868838461)
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
 p_id=>wwv_flow_api.id(133707693157838462)
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
 p_id=>wwv_flow_api.id(133708136813838464)
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
 p_id=>wwv_flow_api.id(133704497167838454)
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
 p_id=>wwv_flow_api.id(1852473215194839754)
,p_plug_name=>'AC Show More Container'
,p_parent_plug_id=>wwv_flow_api.id(1336951255608696987)
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
 p_id=>wwv_flow_api.id(1349436522931768689)
,p_plug_name=>'AC Header Container'
,p_region_name=>'acHeaderContainer'
,p_parent_plug_id=>wwv_flow_api.id(740982855362851680)
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
 p_id=>wwv_flow_api.id(740984399020851695)
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
 p_id=>wwv_flow_api.id(740984504132851696)
,p_plug_name=>'CA Header Container'
,p_region_name=>'caHeaderContainer'
,p_parent_plug_id=>wwv_flow_api.id(740984399020851695)
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
 p_id=>wwv_flow_api.id(742187529979849052)
,p_name=>'Closed Applications Cards'
,p_region_name=>'closedApplicationsCardsRegion'
,p_parent_plug_id=>wwv_flow_api.id(740984399020851695)
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
'    null VIDEO_LINK,',
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
'    where jhcd.Assignment_Status_Type_Id = 290-- Meitav 16112025',
'         and jhcd.organization_id = :P0_ORG_ID',
'         and papf.person_id = jhcd.person_id',
'         and jhcd.maslul_type=''LTS''',
'         and trunc (sysdate) between papf.effective_start_date and papf.effective_end_date',
'         and jhcd.current_year = ( select  ',
'                                       case  ',
'                                         when (EXTRACT(month FROM sysdate)) <= 9  then (EXTRACT(year FROM sysdate)) ',
'                                         when (EXTRACT(month FROM sysdate)) >= 10 then (EXTRACT(year FROM sysdate)+1)  ',
'                                        end year  ',
'                                from dual)',
'    ',
'    /*',
'    where jhcd.Assignment_Status_Type_Id = 15361',
'      and jhcd.organization_id = :P0_ORG_ID',
'      and papf.person_id = jhcd.person_id',
'      and paaf.organization_id=jhcd.organization_id',
'      and papf.person_id=paaf.person_id ',
'      and paaf.assignment_status_type_id=past.assignment_status_type_id',
'      and past.assignment_status_type_id not in (''280'',''45358'',''45359'',''47358'')',
'      and paaf.vacancy_id=pav.vacancy_id',
'      and pav.attribute11=''N''',
'      and trunc (sysdate) between papf.effective_start_date and papf.effective_end_date',
'     -- and trunc (sysdate) between paaf.effective_start_date and paaf.effective_end_date',
'     ',
'     and paaf.effective_start_date = (',
'     select max(effective_start_date)',
'     from per_all_assignments_f paaf2',
'     where paaf2.person_id = paaf.person_id',
'      and paaf2.organization_id = jhcd.organization_id)',
'      ',
'      and jhcd.current_year = ( select  ',
'                                    case  ',
'                                      when (EXTRACT(month FROM sysdate)) <= 9  then (EXTRACT(year FROM sysdate)) ',
'                                      when (EXTRACT(month FROM sysdate)) >= 10 then (EXTRACT(year FROM sysdate)+1)  ',
'                                     end year  ',
'                             from dual)   ',
'    */',
')',
'where ROWNUM <= :P20_CA_MAX_ROWS'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P20_CA_MAX_ROWS'
,p_query_row_template=>wwv_flow_api.id(137922710237473420)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img src="#APP_IMAGES#no-candidates-chats-icon.svg" />',
'<span class="no-data-found-header">',
'No Closed Applications found.<br/>',
'</span>',
''))
,p_query_num_rows_item=>'P20_CA_MAX_ROWS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133712759503838470)
,p_query_column_id=>1
,p_column_alias=>'TYPE'
,p_column_display_sequence=>1
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133713150158838471)
,p_query_column_id=>2
,p_column_alias=>'FORMATTED_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'Formatted Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133715604980838474)
,p_query_column_id=>3
,p_column_alias=>'NAME'
,p_column_display_sequence=>8
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133716012126838475)
,p_query_column_id=>4
,p_column_alias=>'GENDER'
,p_column_display_sequence=>9
,p_column_heading=>'Gender'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133713593164838471)
,p_query_column_id=>5
,p_column_alias=>'VIDEO_CLASS'
,p_column_display_sequence=>3
,p_column_heading=>'Video Class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133714009533838472)
,p_query_column_id=>6
,p_column_alias=>'VIDEO_LINK'
,p_column_display_sequence=>4
,p_column_heading=>'Video Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133714378294838472)
,p_query_column_id=>7
,p_column_alias=>'DOWNLOAD_CLASS'
,p_column_display_sequence=>5
,p_column_heading=>'Download Class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133714818351838473)
,p_query_column_id=>8
,p_column_alias=>'DOWNLOAD_LINK'
,p_column_display_sequence=>6
,p_column_heading=>'Download Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133715179004838474)
,p_query_column_id=>9
,p_column_alias=>'PHOTO_LINK'
,p_column_display_sequence=>7
,p_column_heading=>'Photo Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133716421998838475)
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
 p_id=>wwv_flow_api.id(742189241912849069)
,p_plug_name=>'CA Show More Container'
,p_parent_plug_id=>wwv_flow_api.id(742187529979849052)
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
 p_id=>wwv_flow_api.id(1273690747647443658)
,p_plug_name=>'Title'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(1491988443724117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Community Shlichut - <br class="mobile-br" />My Candidates'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1273691172380444776)
,p_plug_name=>'Prograss Bar'
,p_region_name=>'progressBar'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall:t-Form--noPadding:margin-top-md:margin-bottom-lg'
,p_component_template_options=>'#DEFAULT#:t-Tabs--simple'
,p_plug_template=>wwv_flow_api.id(1572085619207170)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(133736891141851532)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(2125342479223692)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1292696668993089717)
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
 p_id=>wwv_flow_api.id(133718259716838476)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(742189241912849069)
,p_button_name=>'P20_CA_SHOW_MORE_BTN'
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
 p_id=>wwv_flow_api.id(133703828487838453)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1349436522931768689)
,p_button_name=>'P20_ACTIVE_CANDIDATES'
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
 p_id=>wwv_flow_api.id(133710800298838468)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1852473215194839754)
,p_button_name=>'P20_AC_SHOW_MORE_BTN'
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
 p_id=>wwv_flow_api.id(133712197780838469)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(740984504132851696)
,p_button_name=>'P20_CLOSED_APPLICATIONS'
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
 p_id=>wwv_flow_api.id(133703347768838452)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1349436522931768689)
,p_button_name=>'P20_AC_SEE_ALL'
,p_button_static_id=>'P16_AC_SEE_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'See All (&P20_AC_ROWS_COUNT.)'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'float-right region-header'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(133711825015838469)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(740984504132851696)
,p_button_name=>'P20_CA_SEE_ALL'
,p_button_static_id=>'P16_CA_SEE_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'See All (&P20_CA_ROWS_COUNT.)'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(133719578257838481)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1292696668993089717)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133708489434838464)
,p_name=>'P20_AC_ROWS_INCREMENTAL_DIF'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1336951255608696987)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133708886380838465)
,p_name=>'P20_AC_MAX_ROWS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1336951255608696987)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133709248495838466)
,p_name=>'P20_AC_ROWS_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1336951255608696987)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133709663433838466)
,p_name=>'P20_AC_SELECTED_PERSON_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1336951255608696987)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133710072521838466)
,p_name=>'P20_AC_SELECTED_ASSIG_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1336951255608696987)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133716820632838475)
,p_name=>'P20_CA_ROWS_INCREMENTAL_DIF'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(742187529979849052)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133717148613838475)
,p_name=>'P20_CA_MAX_ROWS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(742187529979849052)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133717632819838476)
,p_name=>'P20_CA_ROWS_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(742187529979849052)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(133720428600838482)
,p_computation_sequence=>10
,p_computation_item=>'P20_AC_ROWS_INCREMENTAL_DIF'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'9'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(133720805199838482)
,p_computation_sequence=>30
,p_computation_item=>'P20_AC_MAX_ROWS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P20_AC_ROWS_INCREMENTAL_DIF'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(133721171029838482)
,p_computation_sequence=>50
,p_computation_item=>'P20_AC_ROWS_COUNT'
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
'    irc_assignment_statuses ias, ',
'       per_assignment_status_types past',
'',
' where papf.person_id = paaf.person_id',
'   and pav.attribute_category = ''LTS''',
'   and paaf.business_group_id = 4088',
'   and paaf.vacancy_id = pav.vacancy_id',
'   and pav.attribute11 = ''N''',
'   and paaf.organization_id = :P0_ORG_ID',
'    and ias.assignment_status_type_id=past.assignment_status_type_id',
'   and ias.assignment_id=paaf.assignment_id',
'   and past.assignment_status_type_id in (''280'')',
'    and ias.status_change_date =',
'    (select max(ias1.status_change_date)',
'     from irc_assignment_statuses ias1',
'     where ias1.assignment_id = ias.assignment_id)',
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
 p_id=>wwv_flow_api.id(133721579518838486)
,p_computation_sequence=>60
,p_computation_item=>'P20_CA_ROWS_INCREMENTAL_DIF'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'9'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(133721979440838486)
,p_computation_sequence=>70
,p_computation_item=>'P20_CA_MAX_ROWS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P20_CA_ROWS_INCREMENTAL_DIF'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(133722346630838486)
,p_computation_sequence=>80
,p_computation_item=>'P20_CA_ROWS_COUNT'
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
'    where jhcd.Assignment_Status_Type_Id = 290-- Meitav 16112025',
'         and jhcd.organization_id = :P0_ORG_ID',
'         and papf.person_id = jhcd.person_id',
'         and trunc (sysdate) between papf.effective_start_date and papf.effective_end_date',
'         and jhcd.current_year = ( select  ',
'                                       case  ',
'                                         when (EXTRACT(month FROM sysdate)) <= 9  then (EXTRACT(year FROM sysdate)) ',
'                                         when (EXTRACT(month FROM sysdate)) >= 10 then (EXTRACT(year FROM sysdate)+1)  ',
'                                        end year  ',
'                                from dual)',
' ',
')',
')',
'',
'',
'select count(*) ',
'from closed_applications'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(133723536675838487)
,p_name=>'AC Hide Show All When All Rows Are Displayed'
,p_event_sequence=>10
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'parseInt($v(''P20_AC_MAX_ROWS'')) >= parseInt($v(''P20_AC_ROWS_COUNT''))',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(133724038716838487)
,p_event_id=>wwv_flow_api.id(133723536675838487)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(133703347768838452)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(133735637627838492)
,p_name=>'CA Hide Show All When All Rows Are Displayed'
,p_event_sequence=>20
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'parseInt($v(''P20_CA_MAX_ROWS'')) >= parseInt($v(''P20_CA_ROWS_COUNT''))',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(133736100596838492)
,p_event_id=>wwv_flow_api.id(133735637627838492)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(133711825015838469)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(133724407080838488)
,p_name=>'AC Hide Show More On Max Rows Change'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_AC_MAX_ROWS'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'parseInt($v(''P20_AC_MAX_ROWS'')) >= parseInt($v(''P20_AC_ROWS_COUNT''))',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(133724931108838488)
,p_event_id=>wwv_flow_api.id(133724407080838488)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1852473215194839754)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(133733321102838491)
,p_name=>'CA Hide Show More On Max Rows Change'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_CA_MAX_ROWS'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'parseInt($v(''P20_CA_MAX_ROWS'')) >= parseInt($v(''P20_CA_ROWS_COUNT''))',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(133733803816838492)
,p_event_id=>wwv_flow_api.id(133733321102838491)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(742189241912849069)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(133725247623838488)
,p_name=>'AC See All Click'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(133703347768838452)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(133725827226838488)
,p_event_id=>wwv_flow_api.id(133725247623838488)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_AC_MAX_ROWS'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P20_AC_ROWS_COUNT'
,p_attribute_07=>'P20_AC_ROWS_COUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(133726321010838488)
,p_event_id=>wwv_flow_api.id(133725247623838488)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1336951255608696987)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(133731928958838491)
,p_name=>'CA See All Click'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(133711825015838469)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(133732343278838491)
,p_event_id=>wwv_flow_api.id(133731928958838491)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_CA_MAX_ROWS'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P20_CA_ROWS_COUNT'
,p_attribute_07=>'P20_CA_ROWS_COUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(133732913841838491)
,p_event_id=>wwv_flow_api.id(133731928958838491)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(742187529979849052)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(133726724077838489)
,p_name=>'AC Show More Click'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(133710800298838468)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(133727195668838489)
,p_event_id=>wwv_flow_api.id(133726724077838489)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_AC_MAX_ROWS'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P20_AC_MAX_ROWS + :P20_AC_ROWS_INCREMENTAL_DIF'
,p_attribute_07=>'P20_AC_MAX_ROWS,P20_AC_ROWS_INCREMENTAL_DIF'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(133727737046838489)
,p_event_id=>wwv_flow_api.id(133726724077838489)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1336951255608696987)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(133734238214838492)
,p_name=>'CA Show More Click'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(133718259716838476)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(133734690158838492)
,p_event_id=>wwv_flow_api.id(133734238214838492)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_CA_MAX_ROWS'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P20_CA_MAX_ROWS + :P20_CA_ROWS_INCREMENTAL_DIF'
,p_attribute_07=>'P20_CA_MAX_ROWS,P20_CA_ROWS_INCREMENTAL_DIF'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(133735150827838492)
,p_event_id=>wwv_flow_api.id(133734238214838492)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(742187529979849052)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(133728134472838489)
,p_name=>'Decline Click'
,p_event_sequence=>90
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.decline-btn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(133729089181838490)
,p_event_id=>wwv_flow_api.id(133728134472838489)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_AC_SELECTED_PERSON_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'parseInt($(this.triggeringElement).data(''person-id''))'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(133728588332838490)
,p_event_id=>wwv_flow_api.id(133728134472838489)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_AC_SELECTED_ASSIG_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'parseInt($(this.triggeringElement).data(''assignment-id''))'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(133729562402838490)
,p_event_id=>wwv_flow_api.id(133728134472838489)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//var selectedPersonId = $v("P20_AC_SELECTED_PERSON_ID");',
'//var selectedAccigId = $v("P20_AC_SELECTED_ASSIG_ID");',
'//alert(''Accept SELECTED_ASSIG_ID '' + selectedAccigId + ''\n\nVita,\nComplete implementing the login in the submit ----process.\nGoodluck,\nDror.'');',
'',
'apex.page.submit(''DECLINE'');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(133730019469838490)
,p_name=>'Accept Click'
,p_event_sequence=>100
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.accept-btn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(133731007228838490)
,p_event_id=>wwv_flow_api.id(133730019469838490)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_AC_SELECTED_PERSON_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'parseInt($(this.triggeringElement).data(''person-id''))'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(133730519806838490)
,p_event_id=>wwv_flow_api.id(133730019469838490)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_AC_SELECTED_ASSIG_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'parseInt($(this.triggeringElement).data(''assignment-id''))'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(133731445261838491)
,p_event_id=>wwv_flow_api.id(133730019469838490)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//var selectedPersonId = $v("P20_AC_SELECTED_PERSON_ID");',
'//var selectedAccigId = $v("P20_AC_SELECTED_ASSIG_ID");',
'',
'//alert(''Accept SELECTED_ASSIG_ID '' + selectedAccigId + ''\n\nVita,\nComplete implementing the login in the submit ----process.\nGoodluck,\nDror.'');',
'',
'apex.page.submit(''ACCEPT'');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121142207621222381)
,p_name=>'Set Marquee On Long Names'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121142278704222382)
,p_event_id=>wwv_flow_api.id(121142207621222381)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''.candidate-name'').filter(function() {',
'    return $(this).text().length > 16;',
'}).each(function() {',
'    var text = $(this).text();',
'    $(this).html(''<marquee>'' + text + ''</marquee>'');',
'});'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(133722651323838486)
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
'   v_assignment_id  := :P20_AC_SELECTED_ASSIG_ID; ',
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
'                        jafi_irc_apl_status.change_status(p_assignment_id  => :P20_AC_SELECTED_ASSIG_ID,--:P15_ASSIGNMENT_ID,',
'                                                          p_status_type_id => v_forward_status,',
'                                                          p_change_reason  => v_reason,',
'                                                          p_remarks        => '''');',
'                                                          ',
'                                                          ',
'                                                          ',
' -------------------------------------          ',
'        insert into JAFI.JAFI_HR_COM_DECISION',
'                   ( person_id,   assignment_status_type_id,   assignment_id, organization_id,  current_year,   creation_date, MASLUL_TYPE,   DECISION ) ',
'              values',
unistr('                   (:P20_AC_SELECTED_PERSON_ID , v_forward_status,  :P20_AC_SELECTED_ASSIG_ID , :P0_ORG_ID,   v_year,    sysdate, ''LTS'', ''\05E7\05D4\05D9\05DC\05D4 \05DC\05D0 \05DE\05E2\05D5\05E0\05D9\05D9\05E0\05EA \05DC\05E8\05D0\05D9\05D9\05DF'');'),
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
 p_id=>wwv_flow_api.id(133723129431838487)
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
'                        jafi_irc_apl_status.change_status(p_assignment_id  => :P20_AC_SELECTED_ASSIG_ID,--:P15_ASSIGNMENT_ID,',
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
