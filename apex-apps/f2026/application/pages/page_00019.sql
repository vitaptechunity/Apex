prompt --application/pages/page_00019
begin
--   Manifest
--     PAGE: 00019
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
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'SHSH My Mishlachat'
,p_alias=>'SHSH-MY-MISHLACHAT'
,p_step_title=>'SHSH My Mishlachat'
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
'#myMishlachatContainer {',
'    width: 880px;',
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
'    .cards-container {',
'        justify-content: center !important;',
'        gap: 25px !important;',
'    }',
'',
'    .candidate-card {',
'        width: 165px !important;',
'        height: 165px !important;',
'        padding: 10px !important;',
'    }',
'    ',
'    .candidate-image {',
'        margin-top: 0 !important;',
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
,p_last_updated_by=>'MEITAVC'
,p_last_upd_yyyymmddhh24miss=>'20251204104336'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(673315121096150076)
,p_plug_name=>'Sub Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>Your incoming Mishlachat!</b><br />',
'<br />',
'Here you can view the final list of candidates<br />',
'you selected to join the Mishlachat.<br />',
'<br />',
'All approved candidates will appear here <br class="mobile-br" />automatically <br class="desktop-br" />',
'once a final decision <br class="mobile-br" />has been made.<br /><br class="mobile-br" />',
'If you have any questions or need assistance,<br />',
'please contact our team in Israel.'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(739404310836298998)
,p_plug_name=>'My Mishlachat Container'
,p_region_name=>'myMishlachatContainer'
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
 p_id=>wwv_flow_api.id(1335372711082144305)
,p_name=>'My Mishlachat Cards'
,p_region_name=>'myMishlachatCardsRegion'
,p_parent_plug_id=>wwv_flow_api.id(739404310836298998)
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
'                          ',
'with my_mishlachat as ',
'(',
'select',
'    papf.first_name || '' '' || papf.last_name name,',
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
'           and paaf1.effective_end_date = (',
'            select max(effective_end_date)',
'            from per_all_assignments_f paaf2',
'            where paaf2.assignment_id = paaf1.assignment_id)) video,',
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
'    from per_all_people_f            papf, ',
'per_all_assignments_f       paaf, ',
'per_all_vacancies           pav, ',
'irc_assignment_statuses     ias, ',
'per_assignment_status_types past ',
'where pav.organization_id = :P0_ORG_ID ',
'and papf.person_id = paaf.person_id ',
'and paaf.vacancy_id = pav.vacancy_id ',
'and ias.assignment_id = paaf.assignment_id ',
'and ias.assignment_status_type_id IN (47358,23357,23358,6, 1)',
'and trunc(sysdate) between papf.effective_start_date and papf.effective_end_date ',
'and trunc(sysdate) between paaf.effective_start_date and  paaf.effective_end_date ',
'and paaf.business_group_id = 4088 ',
'and pav.attribute11 = ''N'' ',
'AND PAV.ATTRIBUTE_CATEGORY =''SSH''',
'and past.assignment_status_type_id =paaf.assignment_status_type_id ',
'and past.assignment_status_type_id =ias.assignment_status_type_id ',
'and ias.status_change_date = (select max(status_change_date) ',
'                               from irc_assignment_statuses ias1 ',
'                               where ias.assignment_id = ias1.assignment_id)',
')',
'',
'select * from (',
'select',
'''Shaliach'' TYPE,',
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
'from my_mishlachat',
')',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(132185118284135875)
,p_query_num_rows=>100000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img src="#APP_IMAGES#no-candidates-chats-icon.svg" />',
'<span class="no-data-found-header">',
'No Mishlachat found.<br/>',
'</span>'))
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(132127231118285821)
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
 p_id=>wwv_flow_api.id(132126431963285820)
,p_query_column_id=>2
,p_column_alias=>'NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(132126750341285820)
,p_query_column_id=>3
,p_column_alias=>'GENDER'
,p_column_display_sequence=>2
,p_column_heading=>'Gender'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(132127558253285821)
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
 p_id=>wwv_flow_api.id(132128037574285822)
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
 p_id=>wwv_flow_api.id(132128393099285822)
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
 p_id=>wwv_flow_api.id(132128839548285822)
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
 p_id=>wwv_flow_api.id(132129149152285823)
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
 p_id=>wwv_flow_api.id(132129558733285823)
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
 p_id=>wwv_flow_api.id(132125964661285818)
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
 p_id=>wwv_flow_api.id(1272112203120890976)
,p_plug_name=>'Title'
,p_region_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(1491988443724117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'SHSH Program - <br class="mobile-br" />My Mishlachat'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1291118124466537035)
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
 p_id=>wwv_flow_api.id(132141168112285844)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1291118124466537035)
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
wwv_flow_api.component_end;
end;
/
