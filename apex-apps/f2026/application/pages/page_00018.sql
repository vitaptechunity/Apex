prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'SHSH Final Decision'
,p_alias=>'SHSH-FINAL-DECISION'
,p_step_title=>'SHSH Final Decision'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var candidateInfo = {',
'    ''personId'': null,',
'    ''assignmentId'': null, ',
'    ''photo'': null,',
'    ''name'': null,',
'    ''gender'': null,',
'    ''decision'': null',
'};'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.home-link {',
'    display: block !important;',
'}',
'',
'.hidden,',
'.mobile-br {',
'    display: none;',
'}',
'',
'.desktop-br {',
'    display: block;',
'}',
'',
'#P18_AC_SEE_ALL,',
'#P18_CA_SEE_ALL,',
'#P18_PA_SEE_ALL {',
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
'#closedApplicationsContainer,',
'#pendingForFinalApprovalContainer {',
'    width: 880px;',
'    margin-bottom: 20px;',
'}',
'',
'#acHeaderContainer,',
'#caHeaderContainer,',
'#paHeaderContainer {',
'    width: 100%;',
'    padding-right: 5px;',
'    padding-left: 5px;',
'    margin-bottom: 15px;',
'}',
'',
'#P18_ACTIVE_CANDIDATES .t-Button-label,',
'#P18_CLOSED_APPLICATIONS .t-Button-label,',
'#P18_PENDING_FOR_FINAL_APPROVAL .t-Button-label {',
'    /*font-size: 16px !important;*/',
'    font-weight: 500 !important;',
'}',
'',
'#P18_ACTIVE_CANDIDATES,',
'#P18_CLOSED_APPLICATIONS,',
'#P18_PENDING_FOR_FINAL_APPROVAL {',
'    cursor: default;',
'}',
'',
'.hire-btn,',
'.hire-btn-inactive {',
'    background-color: #F9F7F4;',
'}',
'',
'.decline-btn:hover,',
'.hire-btn:hover',
'{',
'    background-color: #F9F7F4;',
'    cursor: pointer;',
'    border: 1px solid #E9DBC7;',
'}',
'',
'.ui-dialog.ui-dialog--inline .ui-dialog-content,',
'.ui-dialog-titlebar.ui-corner-all.ui-widget-header.ui-helper-clearfix.ui-draggable-handle {',
'    border-radius: 10px !important;',
'}',
'',
'div[aria-describedby="hiringDecisionDialog"],',
'div[aria-describedby="confirmDecisionDialog"],',
'div[aria-describedby="decisionInfoDialog"] {',
'    width: 619px !important;',
'    /*height: 570px !important;*/',
'    box-shadow: 0px 4px 20px 0px #0000000D;',
'    font-size: 16px;',
'    font-weight: 400;',
'    /*top: 160px !important;*/',
'    border-radius: 10px !important;',
'}',
'',
'div[aria-describedby="hiringDecisionDialog"] .ui-dialog-content,',
'div[aria-describedby="hiringDecisionDialog"] .ui-dialog-title,',
'div[aria-describedby="confirmDecisionDialog"] .ui-dialog-content,',
'div[aria-describedby="confirmDecisionDialog"] .ui-dialog-title,',
'div[aria-describedby="decisionInfoDialog"] .ui-dialog-content,',
'div[aria-describedby="decisionInfoDialog"] .ui-dialog-title {',
'    color: #172B54 !important;',
'}',
'',
'div[aria-describedby="confirmDecisionDialog"] {',
'    height: 470px !important;',
'}',
'',
'div[aria-describedby="hiringDecisionDialog"] .ui-dialog-titlebar {',
'    border-bottom: 1px solid #D9D9D9 !important;',
'}',
'',
'div[aria-describedby="hiringDecisionDialog"] .ui-dialog-title {',
'    font-size: 16px !important;',
'    font-weight: 400 !important;',
'}',
'',
'div[aria-describedby="hiringDecisionDialog"] .t-DialogRegion-body {',
'    padding-left: 50px;',
'    padding-right: 50px;',
'    padding-bottom: 20px;',
'}',
'',
'div[aria-describedby="confirmDecisionDialog"] .ui-dialog-titlebar {',
'    display: none;',
'}',
'',
'div[aria-describedby="confirmDecisionDialog"] .t-DialogRegion-body {',
'    margin-right: auto;',
'    margin-left: auto;',
'    width: 498px;',
'}',
'',
'div[aria-describedby="confirmDecisionDialog"] #cancelBtn .t-Button-label {',
'    font-weight: 600 !important;',
'}',
'',
'div[aria-describedby="decisionInfoDialog"] .ui-dialog-title {',
'    display: none !important;',
'}',
'',
'div[aria-describedby="decisionInfoDialog"] .ui-dialog-titlebar-close {',
'    z-index: 9;',
'}',
'',
'#decisionInfoSubInfoText {',
'    margin-bottom: 40px;',
'}',
'',
'#backToMenuContainer {',
'    margin-bottom: 10px;',
'}',
'',
'.t-Form-fieldContainer.is-required .required-content::after {',
'    content: ''\e058'';',
'    font-family: apex-5-icon-font !important;',
'    font-size: 1.6rem;',
'    line-height: 1.2rem;',
'    vertical-align: bottom;',
'    color: red;',
'}',
'',
'.t-Form-fieldContainer.is-required .t-Form-label::after {',
'    content: none;',
'}',
'',
'.apex-item-group input:focus+label:before {',
'    background-color: #f9f9f9 !important;',
'}',
'',
'.apex-item-checkbox input+label:after {',
'    content: ''\e007'' !important;',
'}',
'',
'textarea,',
'.apex-item-group--textarea {',
'    width: 100%;',
'    font-size: 16px !important;',
'}',
'',
'',
'',
'@media (max-width: 575px), @media (max-width: 640px) {',
'    .mobile-br {',
'        display: block;',
'    }',
'    ',
'    .desktop-br {',
'        display: none !important;',
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
'        padding-bottom: 5px;',
'    }',
'    ',
'    .cards-container {',
'        justify-content: center !important;',
'        gap: 25px !important;',
'    }',
'    ',
'    .candidate-card {',
'        width: 165px !important;',
'        padding: 10px !important;',
'    }',
'    ',
'    #activeCandidatesCardsRegion .candidate-card {',
'        height: 318px !important;',
'    }',
'    ',
'    #pendingApplicationsCardsRegion .candidate-card {',
'        height: 195px !important;',
'    }',
'    ',
'    #closedApplicationsCardsRegion .candidate-card {',
'        height: 241px !important;',
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
'    .candidate-card .decision-buttons-container .hire-btn,',
'    .candidate-card .decision-buttons-container .hire-btn-inactive {',
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
'        text-wrap-mode: nowrap;',
'        width: 165px !important;',
'        overflow: hidden;',
'        text-align: center;',
'    }',
'  ',
'    .candidate-gender {',
'        font-size: 14px !important;',
'        margin-bottom: 5px !important;',
'    }',
'    ',
'    .candidate-days-left.mobile-br {',
'        display: flex !important;',
'        width: 147px !important;',
'        height: 68px !important;',
'        margin: 0 !important;',
'    }',
'',
'    .candidate-decision {',
'        width: 140px !important;',
'        justify-content: flex-start !important;',
'        height: 18px !important;',
'    }',
'    ',
'    .candidate-decision img.mobile-br {',
'        display: block !important;',
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
'    ',
'    div[aria-describedby="hiringDecisionDialog"] .ui-dialog-titlebar img,',
'    div[aria-describedby="confirmDecisionDialog"] .ui-dialog-titlebar img,',
'    div[aria-describedby="decisionInfoDialog"] .ui-dialog-titlebar img {',
'        margin-right: 5px !important;',
'    }',
'}'))
,p_step_template=>wwv_flow_api.id(29244342218644)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MEITAVC'
,p_last_upd_yyyymmddhh24miss=>'20251204092737'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(117121374828096188)
,p_plug_name=>'Hiring Decision'
,p_region_name=>'hiringDecisionDialog'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:t-DialogRegion--noPadding:js-dialog-size600x400'
,p_plug_template=>wwv_flow_api.id(491239719494075185)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex; align-items: center; margin-top: 0; padding-bottom: 30px; padding-top: 30px; border-bottom: 1px solid #D9D9D9;">',
'    <div id="hiringDecisionPhoto" style="width: 69px; height: 69px; border-radius: 35px; background-color: #D9D9D9; background-size: cover; background-repeat: no-repeat; background-position: center; margin-right: 20px;">',
'    </div>    ',
'    <div style="display: flex; flex-direction: column;">',
'        <div id="hiringDecisionName" style="font-weight: 700; margin-top: 5px; font-size: 20px; line-height: 35px; margin-top: auto;">Name</div>',
'        <div id="hiringDecisionGender" style="ffont-weight: 500; font-size: 16px;">Gender</div>',
'    </div>',
'</div>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(119539828047287073)
,p_plug_name=>'Confirm Decision'
,p_region_name=>'confirmDecisionDialog'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:t-DialogRegion--noPadding:js-dialog-size600x400'
,p_plug_template=>wwv_flow_api.id(491239719494075185)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex; align-items: center; justify-content: center; flex-direction: column; margin-top: 0; padding-bottom: 30px; padding-top: 30px; border-bottom: 1px solid #D9D9D9;">',
'    <div id="confirmDecisionPhoto" style="width: 69px; height: 69px; border-radius: 35px; background-color: #D9D9D9; background-size: cover; background-repeat: no-repeat; background-position: center;">',
'    </div>',
'    <div id="confirmDecisionName" style="font-weight: 700; margin-top: 5px; font-size: 20px; line-height: 35px;">Name</div>',
'    <div id="confirmDecisionGender" style="font-weight: 500; font-size: 16px;">Gender</div>',
'</div>'))
,p_plug_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex; align-items: center; justify-content: center; flex-direction: column; margin-top: 0; padding-bottom: 50px; padding-top: 30px;">',
'    <div id="confirmDecisionSubInfoHeader" style="font-weight: 500; margin-top: 5px; font-size: 20px; line-height: 35px;">',
'        Ready to welcome your new Shinshin?',
'    </div>',
'    <div id="confirmDecisionSubInfoText" style="font-weight: 400; font-size: 16px; line-height: 20px; margin-top: 10px; text-align: center;">',
unistr('        Once confirmed, your choice will be final \2014 <br />congratulations on moving forward!'),
'    </div>',
'</div>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(121138604881222345)
,p_plug_name=>'Buttons Container'
,p_parent_plug_id=>wwv_flow_api.id(119539828047287073)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(121139250217222352)
,p_plug_name=>'Pending For Final Approval Container'
,p_region_name=>'pendingForFinalApprovalContainer'
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(115234349968262270)
,p_name=>'Pending Applications Cards'
,p_region_name=>'pendingApplicationsCardsRegion'
,p_parent_plug_id=>wwv_flow_api.id(121139250217222352)
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
' with pending_applications as ',
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
'       where person_id = papf.person_id',
'         and end_date is null',
'         and type = ''PHOTO'') PHOTO,',
'       ',
'       (select NVL(max(ird.document_id), 0)',
'          from irc_documents ird',
'         where papf.person_id = ird.PERSON_ID',
'           and ird.end_date is null',
'           and ird.type = ''SSHKEHILAPROFILE'') COMM_PROFILE,',
'       ',
'       papf.person_id,',
'       paaf.assignment_id,',
'        past.user_status',
'',
'  from per_all_people_f            papf,',
'       per_all_assignments_f       paaf,',
'       per_all_vacancies           pav,',
'       per_assignment_status_types past',
'',
' where papf.person_id = paaf.person_id',
'   and pav.attribute_category = ''SSH''',
'   and paaf.business_group_id = 4088',
'   and paaf.vacancy_id = pav.vacancy_id',
'   and pav.attribute11 = ''N''',
'   and paaf.organization_id = :P0_ORG_ID',
'   and paaf.assignment_status_type_id = past.assignment_status_type_id',
'   and past.assignment_status_type_id in (''27357'', ''15360'')',
'      ',
'   and trunc(sysdate) between papf.effective_start_date and',
'       papf.effective_end_date',
'   and trunc(sysdate) between paaf.effective_start_date and',
'       paaf.effective_end_date',
')',
'',
'select',
'''Pending Application'' TYPE,',
'case when user_status = ''67.SSH Community Accept'' then 67',
'     when user_status = ''55.SSH Community Accept Second Choice'' then 55 end STATUS,',
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
'    ASSIGNMENT_ID ',
'from pending_applications',
'where ROWNUM <= :P18_PA_MAX_ROWS'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P18_PA_MAX_ROWS'
,p_query_row_template=>wwv_flow_api.id(121634478055229329)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img src="#APP_IMAGES#no-candidates-chats-icon.svg" />',
'<span class="no-data-found-header">',
'No Pending Candidates found.<br/>',
'</span>'))
,p_query_num_rows_item=>'P18_PA_MAX_ROWS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(115235273325262279)
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
 p_id=>wwv_flow_api.id(121140999547222369)
,p_query_column_id=>2
,p_column_alias=>'STATUS'
,p_column_display_sequence=>11
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(115235669650262283)
,p_query_column_id=>3
,p_column_alias=>'NAME'
,p_column_display_sequence=>7
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(115235204804262278)
,p_query_column_id=>4
,p_column_alias=>'GENDER'
,p_column_display_sequence=>2
,p_column_heading=>'Gender'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(115235355730262280)
,p_query_column_id=>5
,p_column_alias=>'VIDEO_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'Video Class'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(115235474480262281)
,p_query_column_id=>6
,p_column_alias=>'VIDEO_LINK'
,p_column_display_sequence=>5
,p_column_heading=>'Video Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(115235576568262282)
,p_query_column_id=>7
,p_column_alias=>'DOWNLOAD_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'Download Class'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(115235764391262284)
,p_query_column_id=>8
,p_column_alias=>'DOWNLOAD_LINK'
,p_column_display_sequence=>8
,p_column_heading=>'Download Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(115235856398262285)
,p_query_column_id=>9
,p_column_alias=>'PHOTO_LINK'
,p_column_display_sequence=>9
,p_column_heading=>'Photo Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(115236018065262286)
,p_query_column_id=>10
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Person Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(115235067473262277)
,p_query_column_id=>11
,p_column_alias=>'ASSIGNMENT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Assignment Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(121139620521222355)
,p_plug_name=>'PA Header Container'
,p_region_name=>'paHeaderContainer'
,p_parent_plug_id=>wwv_flow_api.id(121139250217222352)
,p_region_css_classes=>'header-container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(121139881638222358)
,p_plug_name=>'Decision Info'
,p_region_name=>'decisionInfoDialog'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:t-DialogRegion--noPadding:js-dialog-size600x400'
,p_plug_template=>wwv_flow_api.id(491239719494075185)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex; align-items: center; justify-content: center; flex-direction: column; margin-top: 0; padding-top: 30px;">',
'    <div id="decisionInfoPhoto" style="width: 69px; height: 69px; border-radius: 35px; background-color: #D9D9D9; background-size: cover; background-repeat: no-repeat; background-position: center;">',
'    </div>',
'    <div id="decisionInfoName" style="font-weight: 700; margin-top: 5px; font-size: 20px; line-height: 35px;">Name</div>',
'    <div id="decisionInfoGender" style="font-weight: 500; font-size: 16px;">Gender</div>',
'</div>'))
,p_plug_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="decisionInfoContainer" style="display: flex; align-items: center; justify-content: center; flex-direction: column; margin-top: 0;">',
'    <img id="decisionInfoBanner" />',
'    <div id="decisionInfoSubInfoHeader" style="font-weight: 500; margin-top: 5px; font-size: 20px; line-height: 35px;">',
'        Congratulations!',
'    </div>',
'    <div id="decisionInfoSubInfoText" style="font-weight: 400; font-size: 16px; line-height: 20px; margin-top: 10px; text-align: center;">',
unistr('        Once confirmed, your choice will be final \2014 <br />congratulations on moving forward!'),
'    </div>',
'</div>',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(121140314329222362)
,p_plug_name=>'Back To Menu Container'
,p_region_name=>'backToMenuContainer'
,p_parent_plug_id=>wwv_flow_api.id(121139881638222358)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>80
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(724983723592689978)
,p_plug_name=>'Active Candidates Container'
,p_region_name=>'activeCandidatesContainer'
,p_region_template_options=>'#DEFAULT#:margin-top-md'
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
 p_id=>wwv_flow_api.id(1320952123838535285)
,p_name=>'Active Candidates Cards'
,p_region_name=>'activeCandidatesCardsRegion'
,p_parent_plug_id=>wwv_flow_api.id(724983723592689978)
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
'       where person_id = papf.person_id',
'         and end_date is null',
'         and type = ''PHOTO'') PHOTO,',
'       ',
'       (select NVL(max(ird.document_id), 0)',
'          from irc_documents ird',
'         where papf.person_id = ird.PERSON_ID',
'           and ird.end_date is null',
'           and ird.type = ''SSHKEHILAPROFILE'') COMM_PROFILE,',
'           oe.course_start_date,',
'       papf.person_id,',
'       paaf.assignment_id               ',
'',
'  from per_all_people_f            papf,',
'       per_all_assignments_f       paaf,',
'       per_all_vacancies           pav,',
'       per_assignment_status_types past,',
'       ota_events oe, ',
'       ota_delegate_bookings odb',
'       ',
'       ',
' where papf.person_id = paaf.person_id',
'   and pav.attribute_category = ''SSH''',
'   and paaf.business_group_id = 4088',
'   and paaf.vacancy_id = pav.vacancy_id',
'   and pav.attribute11 = ''N''',
'   and paaf.organization_id = :P0_ORG_ID',
'   and paaf.assignment_status_type_id = past.assignment_status_type_id',
'  and past.assignment_status_type_id in (''45359'')',
'   ',
'   and oe.event_id = odb.event_id',
'   and odb.delegate_person_id = papf.person_id',
'   and oe.user_status = ''SSHCP''',
'   and odb.booking_status_type_id in (''2'',''2022'')',
'   and oe.evt_information11 = pav.organization_id',
'   and oe.course_start_date < trunc(sysdate)',
'    and oe.course_start_date >= trunc(sysdate)-100',
'   ',
'      ',
'   and trunc(sysdate) between papf.effective_start_date and',
'       papf.effective_end_date',
'   and trunc(sysdate) between paaf.effective_start_date and',
'       paaf.effective_end_date',
')',
'',
'',
'',
'select  TYPE,',
'        case when DAYS_LEFT > 0 then DAYS_LEFT else 0 end DAYS_LEFT,',
'        NAME,',
'        GENDER,',
'        VIDEO_CLASS,',
'        VIDEO_LINK,',
'        DOWNLOAD_CLASS,',
'        DOWNLOAD_LINK,',
'        PHOTO_LINK,',
'        PERSON_ID,',
'        ASSIGNMENT_ID',
'from (',
'select',
'''Active Candidate'' TYPE,',
'((trunc(course_start_date) + 7) - trunc(sysdate)) DAYS_LEFT,',
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
'    ASSIGNMENT_ID ',
'from active_candidates',
')',
'where ROWNUM <= :P18_AC_MAX_ROWS',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P18_AC_MAX_ROWS'
,p_query_row_template=>wwv_flow_api.id(119525255349540048)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img src="#APP_IMAGES#no-candidates-chats-icon.svg" />',
'<span class="no-data-found-header">',
'No Active Candidates found.<br/>',
'</span>'))
,p_query_num_rows_item=>'P18_AC_MAX_ROWS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117706054557676786)
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
 p_id=>wwv_flow_api.id(117121154436096186)
,p_query_column_id=>2
,p_column_alias=>'DAYS_LEFT'
,p_column_display_sequence=>10
,p_column_heading=>'Days Left'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117705273139676785)
,p_query_column_id=>3
,p_column_alias=>'NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117705654082676786)
,p_query_column_id=>4
,p_column_alias=>'GENDER'
,p_column_display_sequence=>2
,p_column_heading=>'Gender'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117706448078676787)
,p_query_column_id=>5
,p_column_alias=>'VIDEO_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'Video Class'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117706849175676787)
,p_query_column_id=>6
,p_column_alias=>'VIDEO_LINK'
,p_column_display_sequence=>5
,p_column_heading=>'Video Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117707326741676787)
,p_query_column_id=>7
,p_column_alias=>'DOWNLOAD_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'Download Class'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117707727040676787)
,p_query_column_id=>8
,p_column_alias=>'DOWNLOAD_LINK'
,p_column_display_sequence=>7
,p_column_heading=>'Download Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117708139592676787)
,p_query_column_id=>9
,p_column_alias=>'PHOTO_LINK'
,p_column_display_sequence=>8
,p_column_heading=>'Photo Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117708519591676788)
,p_query_column_id=>10
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>9
,p_column_heading=>'Person Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
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
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(115232657968262253)
,p_query_column_id=>11
,p_column_alias=>'ASSIGNMENT_ID'
,p_column_display_sequence=>11
,p_column_heading=>'Assignment Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1836474083424678052)
,p_plug_name=>'AC Show More Container'
,p_region_name=>'acShowMoreContainer'
,p_parent_plug_id=>wwv_flow_api.id(1320952123838535285)
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
 p_id=>wwv_flow_api.id(1333437391161606987)
,p_plug_name=>'AC Header Container'
,p_region_name=>'acHeaderContainer'
,p_parent_plug_id=>wwv_flow_api.id(724983723592689978)
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
 p_id=>wwv_flow_api.id(724985267250689993)
,p_plug_name=>'Closed Applications Container'
,p_region_name=>'closedApplicationsContainer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region '
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(724985372362689994)
,p_plug_name=>'CA Header Container'
,p_region_name=>'caHeaderContainer'
,p_parent_plug_id=>wwv_flow_api.id(724985267250689993)
,p_region_css_classes=>'header-container'
,p_region_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_api.id(726188398209687350)
,p_name=>'Closed Applications Cards'
,p_region_name=>'closedApplicationsCardsRegion'
,p_parent_plug_id=>wwv_flow_api.id(724985267250689993)
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
'    null START_DATE,',
'    null END_DATE,',
'   papf.first_name||'' ''||papf.last_name NAME,',
'    jafi_hr_utils.US_Decode_Lookup(''SEX'', papf.sex) GENDER,',
'    jhcd.PERSON_ID',
'    from JAFI.JAFI_HR_COM_DECISION jhcd,',
'         per_all_people_f papf,',
'         per_all_assignments_f paaf',
'    ',
'    ',
'    where jhcd.Assignment_Status_Type_Id = 340',
'      and jhcd.organization_id = :P0_ORG_ID',
'      and papf.person_id = jhcd.person_id',
'      and papf.person_id=paaf.person_id ',
'      and paaf.assignment_status_type_id not in (''280'',''45358'',''45359'',''47358'',''15360'',''27357'')',
'      and jhcd.organization_id=paaf.organization_id',
'      and trunc (sysdate) between papf.effective_start_date and papf.effective_end_date',
'      --and trunc (sysdate) between paaf.effective_start_date and paaf.effective_end_date',
'    ',
'    and paaf.effective_start_date = (',
'     select max(effective_start_date)',
'     from per_all_assignments_f paaf2',
'     where paaf2.person_id = paaf.person_id',
'      and paaf2.organization_id = jhcd.organization_id)',
'    ',
'      and jhcd.current_year = ( select  ',
'                                    case  ',
'                                      when (EXTRACT(month FROM sysdate)) <= 9  then (EXTRACT(year FROM sysdate)) ',
'                                      when (EXTRACT(month FROM sysdate)) >= 10 then (EXTRACT(year FROM sysdate)+1)  ',
'                                     end year  ',
'                             from dual)   ',
' ',
')',
'where ROWNUM <= :P18_CA_MAX_ROWS'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P18_CA_MAX_ROWS'
,p_query_row_template=>wwv_flow_api.id(119525255349540048)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img src="#APP_IMAGES#no-candidates-chats-icon.svg" />',
'<span class="no-data-found-header">',
'No Closed Applications found.<br/>',
'</span>',
''))
,p_query_num_rows_item=>'P18_CA_MAX_ROWS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117712882844676794)
,p_query_column_id=>1
,p_column_alias=>'TYPE'
,p_column_display_sequence=>1
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117713303476676794)
,p_query_column_id=>2
,p_column_alias=>'FORMATTED_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'Formatted Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117715716417676796)
,p_query_column_id=>3
,p_column_alias=>'NAME'
,p_column_display_sequence=>8
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117716116985676796)
,p_query_column_id=>4
,p_column_alias=>'GENDER'
,p_column_display_sequence=>9
,p_column_heading=>'Gender'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117713672375676794)
,p_query_column_id=>5
,p_column_alias=>'VIDEO_CLASS'
,p_column_display_sequence=>3
,p_column_heading=>'Video Class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117714106443676795)
,p_query_column_id=>6
,p_column_alias=>'VIDEO_LINK'
,p_column_display_sequence=>4
,p_column_heading=>'Video Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117714541659676795)
,p_query_column_id=>7
,p_column_alias=>'DOWNLOAD_CLASS'
,p_column_display_sequence=>5
,p_column_heading=>'Download Class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117714923276676795)
,p_query_column_id=>8
,p_column_alias=>'DOWNLOAD_LINK'
,p_column_display_sequence=>6
,p_column_heading=>'Download Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117715249848676796)
,p_query_column_id=>9
,p_column_alias=>'PHOTO_LINK'
,p_column_display_sequence=>7
,p_column_heading=>'Photo Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117716483123676797)
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
 p_id=>wwv_flow_api.id(726190110142687367)
,p_plug_name=>'CA Show More Container'
,p_region_name=>'caShowMoreContainer'
,p_parent_plug_id=>wwv_flow_api.id(726188398209687350)
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
 p_id=>wwv_flow_api.id(1257691615877281956)
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
 p_id=>wwv_flow_api.id(1257692040610283074)
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
 p_id=>wwv_flow_api.id(1276697537222928015)
,p_plug_name=>'Back To Menu Container'
,p_region_name=>'backToMenuContainer'
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1720722710214136131)
,p_plug_name=>'Sub Page Info'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('In this section, you\2019ll need to make a final <br class="mobile-br" />decision on <br class="desktop-br" />'),
unistr('whether you\2019d like the candidate to <br class="mobile-br" />serve as your shaliach. <br />'),
'<br />',
'You can also mark a candidate who did not pass <br class="mobile-br" />the interview <br class="desktop-br" />',
unistr('as a \201Csecond option\201D, in case one of <br class="mobile-br" />the accepted candidates <br class="desktop-br" />'),
'decides not to continue <br class="mobile-br" />with your community. <br />',
'<br />',
'Please make your decision as soon as possible, <br />',
'and within 7 days at the latest.'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(117718380972676798)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(726190110142687367)
,p_button_name=>'P18_CA_SHOW_MORE_BTN'
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
 p_id=>wwv_flow_api.id(121140349953222363)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(121140314329222362)
,p_button_name=>'BACK_TO_MENU_DECISION_INFO'
,p_button_static_id=>'decisionInfoBackToMenuBtn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back to Menu'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:RR,16,17,18::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(117704638032676776)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1333437391161606987)
,p_button_name=>'P18_ACTIVE_CANDIDATES'
,p_button_static_id=>'P16_ACTIVE_CANDIDATES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'Active Candidates'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-angle-up'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(117710834288676792)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1836474083424678052)
,p_button_name=>'P18_AC_SHOW_MORE_BTN'
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
 p_id=>wwv_flow_api.id(117712200508676793)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(724985372362689994)
,p_button_name=>'P18_CLOSED_APPLICATIONS'
,p_button_static_id=>'P18_CLOSED_APPLICATIONS'
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
 p_id=>wwv_flow_api.id(119540206958287077)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(121138604881222345)
,p_button_name=>'CONFIRM'
,p_button_static_id=>'confirmDecision'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2938281857134305)
,p_button_image_alt=>'Confirm Selection'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'center-region'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(121139354791222353)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(121139620521222355)
,p_button_name=>'P18_PENDING_FOR_FINAL_APPROVAL'
,p_button_static_id=>'P18_PENDING_FOR_FINAL_APPROVAL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'Pending for Final Approval'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-angle-up'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(115236108847262287)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1333437391161606987)
,p_button_name=>'P18_AC_SEE_ALL_VITA'
,p_button_static_id=>'P18_AC_SEE_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'See All (&P18_AC_ROWS_COUNT.)'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(117711748335676793)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(724985372362689994)
,p_button_name=>'P18_CA_SEE_ALL'
,p_button_static_id=>'P18_CA_SEE_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'See All (&P18_CA_ROWS_COUNT.)'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P18_CA_ROWS_COUNT IS NOT NULL AND :P18_CA_ROWS_COUNT > 0'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(117719692040676799)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1276697537222928015)
,p_button_name=>'BACK_TO_MENU'
,p_button_static_id=>'backToMenuBtn'
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
 p_id=>wwv_flow_api.id(121138771637222347)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(121138604881222345)
,p_button_name=>'CANCEL'
,p_button_static_id=>'cancelBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'center-region'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(121139750229222357)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(121139620521222355)
,p_button_name=>'P18_PA_SEE_ALL'
,p_button_static_id=>'P18_PA_SEE_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'See All (&P18_PA_ROWS_COUNT.)'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P18_PA_ROWS_COUNT IS NOT NULL AND :P18_PA_ROWS_COUNT > 0'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(117704182679676776)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1333437391161606987)
,p_button_name=>'P18_AC_SEE_ALL'
,p_button_static_id=>'P18_AC_SEE_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'See All  (&P18_AC_ROWS_COUNT.)'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P18_AC_ROWS_COUNT IS NOT NULL AND :P18_AC_ROWS_COUNT > 0'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(119538799818287063)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(117121374828096188)
,p_button_name=>'SUBMIT'
,p_button_static_id=>'submitDecision'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2938281857134305)
,p_button_image_alt=>'Submit'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'center-region'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(115232591032262252)
,p_name=>'P18_AC_SELECTED_ASSIGN_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(1320952123838535285)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(115234449347262271)
,p_name=>'P18_PA_ROWS_INCREMENTAL_DIF'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(115234349968262270)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(115234584091262272)
,p_name=>'P18_PA_MAX_ROWS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(115234349968262270)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(115234672485262273)
,p_name=>'P18_PA_ROWS_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(115234349968262270)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117708931489676788)
,p_name=>'P18_AC_ROWS_INCREMENTAL_DIF'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1320952123838535285)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117709248505676791)
,p_name=>'P18_AC_MAX_ROWS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1320952123838535285)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117709714140676791)
,p_name=>'P18_AC_ROWS_COUNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1320952123838535285)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117710118110676791)
,p_name=>'P18_AC_SELECTED_PERSON_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1320952123838535285)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117716907965676797)
,p_name=>'P18_CA_ROWS_INCREMENTAL_DIF'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(726188398209687350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117717289699676797)
,p_name=>'P18_CA_MAX_ROWS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(726188398209687350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117717739870676797)
,p_name=>'P18_CA_ROWS_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(726188398209687350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(119537781887287053)
,p_name=>'P18_DECISION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(117121374828096188)
,p_prompt=>'Hiring Decision'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Decline;Decline,Hire;Hire'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(119538400702287059)
,p_name=>'P18_SECOND_OPTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(117121374828096188)
,p_prompt=>'Mark this candidate as a second option'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Mark this candidate as a second option;Y'
,p_grid_column_css_classes=>'decline-fields'
,p_field_template=>wwv_flow_api.id(18523912527015802)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(119538463326287060)
,p_name=>'P18_DECLINE_REASON'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(117121374828096188)
,p_prompt=>'Please specify the reasons for declining this candidate'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_grid_column_css_classes=>'decline-fields'
,p_field_template=>wwv_flow_api.id(2906604405248175)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(117720197547676804)
,p_computation_sequence=>10
,p_computation_item=>'P18_AC_ROWS_INCREMENTAL_DIF'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'9'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(117720620856676805)
,p_computation_sequence=>30
,p_computation_item=>'P18_AC_MAX_ROWS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P18_AC_ROWS_INCREMENTAL_DIF'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(117720983528676805)
,p_computation_sequence=>50
,p_computation_item=>'P18_AC_ROWS_COUNT'
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
'       where person_id = papf.person_id',
'         and end_date is null',
'         and type = ''PHOTO'') PHOTO,',
'       ',
'       (select NVL(max(ird.document_id), 0)',
'          from irc_documents ird',
'         where papf.person_id = ird.PERSON_ID',
'           and ird.end_date is null',
'           and ird.type = ''SSHKEHILAPROFILE'') COMM_PROFILE,',
'           oe.course_start_date,',
'       papf.person_id',
'  from per_all_people_f            papf,',
'       per_all_assignments_f       paaf,',
'       per_all_vacancies           pav,',
'       per_assignment_status_types past,',
'       ota_events oe, ',
'       ota_delegate_bookings odb',
'       ',
'       ',
' where papf.person_id = paaf.person_id',
'   and pav.attribute_category = ''SSH''',
'   and paaf.business_group_id = 4088',
'   and paaf.vacancy_id = pav.vacancy_id',
'   and pav.attribute11 = ''N''',
'   and paaf.organization_id = :P0_ORG_ID',
'   and paaf.assignment_status_type_id = past.assignment_status_type_id',
'  and past.assignment_status_type_id in (''45359'')',
'   ',
'   and oe.event_id = odb.event_id',
'   and odb.delegate_person_id = papf.person_id',
'   and oe.user_status = ''SSHCP''',
'   and odb.booking_status_type_id in (''2'',''2022'')',
'   and oe.evt_information11 = pav.organization_id',
'   and oe.course_start_date < trunc(sysdate)',
'    and oe.course_start_date >= trunc(sysdate)-100',
'   ',
'      ',
'   and trunc(sysdate) between papf.effective_start_date and',
'       papf.effective_end_date',
'   and trunc(sysdate) between paaf.effective_start_date and',
'       paaf.effective_end_date',
')',
'',
'',
'select count(*)',
'from active_candidates'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(117721379830676805)
,p_computation_sequence=>60
,p_computation_item=>'P18_CA_ROWS_INCREMENTAL_DIF'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'9'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(117721832108676805)
,p_computation_sequence=>70
,p_computation_item=>'P18_CA_MAX_ROWS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P18_CA_ROWS_INCREMENTAL_DIF'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(117722231659676806)
,p_computation_sequence=>80
,p_computation_item=>'P18_CA_ROWS_COUNT'
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
'   papf.first_name||'' ''||papf.last_name NAME,',
'    jafi_hr_utils.US_Decode_Lookup(''SEX'', papf.sex) GENDER,',
'    jhcd.PERSON_ID',
'    from JAFI.JAFI_HR_COM_DECISION jhcd,',
'         per_all_people_f papf,',
'         per_all_assignments_f paaf',
'    ',
'    ',
'    where jhcd.Assignment_Status_Type_Id in (15360, 340)',
'      and jhcd.organization_id = :P0_ORG_ID',
'      and papf.person_id = jhcd.person_id',
'      and papf.person_id=paaf.person_id ',
'      and paaf.assignment_status_type_id not in (''280'',''45358'',''45359'',''47358'',''15360'',''27357'')',
'      and jhcd.organization_id=paaf.organization_id',
'      and trunc (sysdate) between papf.effective_start_date and papf.effective_end_date',
'      --and trunc (sysdate) between paaf.effective_start_date and paaf.effective_end_date',
'    ',
'    and paaf.effective_start_date = (',
'     select max(effective_start_date)',
'     from per_all_assignments_f paaf2',
'     where paaf2.person_id = paaf.person_id',
'      and paaf2.organization_id = jhcd.organization_id)',
'    ',
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
'select count(*)',
'from closed_applications'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(121140748866222367)
,p_computation_sequence=>90
,p_computation_item=>'P18_PA_ROWS_INCREMENTAL_DIF'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'9'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(121140734165222366)
,p_computation_sequence=>100
,p_computation_item=>'P18_PA_MAX_ROWS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P18_PA_ROWS_INCREMENTAL_DIF'
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
 p_id=>wwv_flow_api.id(121140922724222368)
,p_computation_sequence=>110
,p_computation_item=>'P18_PA_ROWS_COUNT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
' with pending_applications as ',
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
'       where person_id = papf.person_id',
'         and end_date is null',
'         and type = ''PHOTO'') PHOTO,',
'       ',
'       (select NVL(max(ird.document_id), 0)',
'          from irc_documents ird',
'         where papf.person_id = ird.PERSON_ID',
'           and ird.end_date is null',
'           and ird.type = ''SSHKEHILAPROFILE'') COMM_PROFILE,',
'       ',
'       papf.person_id,',
'       paaf.assignment_id               ',
'',
'  from per_all_people_f            papf,',
'       per_all_assignments_f       paaf,',
'       per_all_vacancies           pav,',
'       per_assignment_status_types past',
'',
' where papf.person_id = paaf.person_id',
'   and pav.attribute_category = ''SSH''',
'   and paaf.business_group_id = 4088',
'   and paaf.vacancy_id = pav.vacancy_id',
'   and pav.attribute11 = ''N''',
'   and paaf.organization_id = :P0_ORG_ID',
'   and paaf.assignment_status_type_id = past.assignment_status_type_id',
'   and past.assignment_status_type_id in (''27357'', ''15360'')',
'      ',
'   and trunc(sysdate) between papf.effective_start_date and',
'       papf.effective_end_date',
'   and trunc(sysdate) between paaf.effective_start_date and',
'       paaf.effective_end_date',
')',
'',
'',
'',
'select count(*) from pending_applications'))
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(119539452840287070)
,p_validation_name=>'Decline reason is not null'
,p_validation_sequence=>10
,p_validation=>':P18_DECISION = ''Hire'' or :P18_DECLINE_REASON is not null'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'This field is required'
,p_always_execute=>'Y'
,p_validation_condition=>':REQUEST = ''SUBMIT'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(119538463326287060)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(117723265919676807)
,p_name=>'AC Hide Show All When All Rows Are Displayed'
,p_event_sequence=>10
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'parseInt($v(''P18_AC_MAX_ROWS'')) >= parseInt($v(''P18_AC_ROWS_COUNT''))',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117723810808676808)
,p_event_id=>wwv_flow_api.id(117723265919676807)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(117704182679676776)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(117734406388676815)
,p_name=>'CA Hide Show All When All Rows Are Displayed'
,p_event_sequence=>20
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'parseInt($v(''P18_CA_MAX_ROWS'')) >= parseInt($v(''P18_CA_ROWS_COUNT''))',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117734857140676815)
,p_event_id=>wwv_flow_api.id(117734406388676815)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(117711748335676793)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(117724168148676809)
,p_name=>'AC Hide Show More On Max Rows Change'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_AC_MAX_ROWS'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'parseInt($v(''P18_AC_MAX_ROWS'')) >= parseInt($v(''P18_AC_ROWS_COUNT''))',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117724691918676810)
,p_event_id=>wwv_flow_api.id(117724168148676809)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1836474083424678052)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(117732132143676814)
,p_name=>'CA Hide Show More On Max Rows Change'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_CA_MAX_ROWS'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'parseInt($v(''P18_CA_MAX_ROWS'')) >= parseInt($v(''P18_CA_ROWS_COUNT''))',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117732615528676814)
,p_event_id=>wwv_flow_api.id(117732132143676814)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(726190110142687367)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(117725078065676810)
,p_name=>'AC See All Click'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(117704182679676776)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117725569005676810)
,p_event_id=>wwv_flow_api.id(117725078065676810)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_AC_MAX_ROWS'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P18_AC_ROWS_COUNT'
,p_attribute_07=>'P18_AC_ROWS_COUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117726091415676811)
,p_event_id=>wwv_flow_api.id(117725078065676810)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1320952123838535285)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(117730719095676814)
,p_name=>'CA See All Click'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(117711748335676793)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117731232000676814)
,p_event_id=>wwv_flow_api.id(117730719095676814)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_CA_MAX_ROWS'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P18_CA_ROWS_COUNT'
,p_attribute_07=>'P18_CA_ROWS_COUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117731679464676814)
,p_event_id=>wwv_flow_api.id(117730719095676814)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(726188398209687350)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(117726541428676811)
,p_name=>'AC Show More Click'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(117710834288676792)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117727025184676811)
,p_event_id=>wwv_flow_api.id(117726541428676811)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_AC_MAX_ROWS'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P18_AC_MAX_ROWS + :P18_AC_ROWS_INCREMENTAL_DIF'
,p_attribute_07=>'P18_AC_MAX_ROWS,P18_AC_ROWS_INCREMENTAL_DIF'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117727459602676812)
,p_event_id=>wwv_flow_api.id(117726541428676811)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1320952123838535285)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(117733027872676815)
,p_name=>'CA Show More Click'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(117718380972676798)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117733458839676815)
,p_event_id=>wwv_flow_api.id(117733027872676815)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_CA_MAX_ROWS'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P18_CA_MAX_ROWS + :P18_CA_ROWS_INCREMENTAL_DIF'
,p_attribute_07=>'P18_CA_MAX_ROWS,P18_CA_ROWS_INCREMENTAL_DIF'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117733958424676815)
,p_event_id=>wwv_flow_api.id(117733027872676815)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(726188398209687350)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(117727935232676812)
,p_name=>'Decline Click'
,p_event_sequence=>90
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.decline-btn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117728857090676813)
,p_event_id=>wwv_flow_api.id(117727935232676812)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'candidateInfo.personId = $(this.triggeringElement).data(''person-id'');',
'candidateInfo.assignmentId = $(this.triggeringElement).data(''assignment-id'');',
'',
'//alert(''Accept SELECTED_ASSIG_ID '' +  $(this.triggeringElement).data(''assignment-id'') );',
'',
'candidateInfo.photo = $(this.triggeringElement).data(''photo-link'');',
'candidateInfo.name = $(this.triggeringElement).data(''name'');',
'candidateInfo.gender = $(this.triggeringElement).data(''gender'');',
'candidateInfo.decision = ''Decline'';',
'',
'$s(''P18_AC_SELECTED_PERSON_ID'', candidateInfo.personId);',
'$s(''P18_AC_SELECTED_ASSIGN_ID'', candidateInfo.assignmentId);',
'',
'//alert(''Accept SELECTED_ASSIG_ID '' +  candidateInfo.assignmentId );',
'',
'$s(''P18_DECISION'', candidateInfo.decision);',
'',
'',
'',
'$(''#hiringDecisionPhoto'').css({''background-image'':''url('' + candidateInfo.photo + '')''});',
'$(''#hiringDecisionName'').text(candidateInfo.name);',
'$(''#hiringDecisionGender'').text(candidateInfo.gender);',
'',
'openModal("hiringDecisionDialog");',
'',
'$(''#P18_DECISION_0'').focus();'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(117729342563676813)
,p_name=>'Hire Click'
,p_event_sequence=>100
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.hire-btn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117730268392676813)
,p_event_id=>wwv_flow_api.id(117729342563676813)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'candidateInfo.personId = $(this.triggeringElement).data(''person-id'');',
'candidateInfo.assignmentId = $(this.triggeringElement).data(''assignment-id'');',
'//alert(''Accept SELECTED_ASSIG_ID '' +  $(this.triggeringElement).data(''assignment-id'') );',
'',
'candidateInfo.photo = $(this.triggeringElement).data(''photo-link'');',
'candidateInfo.name = $(this.triggeringElement).data(''name'');',
'candidateInfo.gender = $(this.triggeringElement).data(''gender'');',
'candidateInfo.decision = ''Hire'';',
'',
'$s(''P18_AC_SELECTED_PERSON_ID'', candidateInfo.personId);',
'$s(''P18_AC_SELECTED_ASSIGN_ID'', candidateInfo.assignmentId);',
'$s(''P18_DECISION'', candidateInfo.decision);',
'$(''#hiringDecisionPhoto'').css({''background-image'':''url('' + candidateInfo.photo + '')''});',
'$(''#hiringDecisionName'').text(candidateInfo.name);',
'$(''#hiringDecisionGender'').text(candidateInfo.gender);',
'',
'openModal("hiringDecisionDialog");',
'',
'$(''#P18_DECISION_1'').focus();'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(117121563445096190)
,p_name=>'Set Dialogs'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117121712747096191)
,p_event_id=>wwv_flow_api.id(117121563445096190)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    //Set mobile items',
'    if ($(''.candidate-days-left.mobile-br'').css(''display'') == ''flex'') {',
'        $(''.candidate-name'').filter(function() {',
'            return $(this).text().length > 17;',
'        }).each(function() {',
'            var text = $(this).text();',
'            $(this).html(''<marquee>'' + text + ''</marquee>'');',
'        });',
'    }',
'    ',
'    //Set hiring decision dialog',
'    $(''div[aria-describedby="hiringDecisionDialog"] .ui-dialog-titlebar .ui-dialog-title'')',
'        .before(''<img style="margin-right: 10px; float: left;" src="#APP_IMAGES#user-icon.svg" />'');',
'    ',
'    //Set decision info dialog',
'    var selectedCandidateDecision = sessionStorage.getItem(''SelectedCandidateDecision'');',
'    if (selectedCandidateDecision) {',
'        candidateInfo = JSON.parse(selectedCandidateDecision);',
'        if (candidateInfo) {',
'            $(''#decisionInfoPhoto'').css({''background-image'':''url('' + candidateInfo.photo + '')''});',
'            $(''#decisionInfoName'').text(candidateInfo.name);',
'            $(''#decisionInfoGender'').text(candidateInfo.gender);',
'            ',
'            var banner = '''', header = '''', html = '''';',
'            ',
'            if (candidateInfo.decision == ''Hire'') { ',
'                //HIRED',
'                banner = ''#APP_IMAGES#hire-candidate-banner.svg'';',
'                header = ''Congratulations!'';',
unistr('                html = ''You\2019ve successfully accepted '' + candidateInfo.name + '' <br />to your Community.'';'),
'                $(''#decisionInfoContainer'').css({''margin-top'':''0''});',
'                $(''#decisionInfoBanner'').css({''margin-bottom'':''0''});',
'            }',
'            else { ',
'                //DECLINED',
'                banner = ''#APP_IMAGES#decline-candidate-banner.svg'';',
'                header = ''Thank you for your review.'';',
'                html = candidateInfo.name + '' will not be moving forward<br />in your Community\''s selection process.'';',
'                $(''#decisionInfoContainer'').css({''margin-top'':''20px''});',
'                $(''#decisionInfoBanner'').css({''margin-bottom'':''10px''});',
'            }',
'            $(''#decisionInfoBanner'').attr(''src'', banner);',
'            $(''#decisionInfoSubInfoHeader'').text(header);',
'            $(''#decisionInfoSubInfoText'').html(html);',
'',
'            openModal(''decisionInfoDialog'');',
'        }',
'    }',
'});',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(119538594990287061)
,p_name=>'Decision Change'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_DECISION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(119538734555287062)
,p_event_id=>wwv_flow_api.id(119538594990287061)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P18_DECISION'') == ''Hire'') {',
'    $(''.decline-fields'').hide();',
'}',
'else {',
'    apex.message.clearErrors();',
'    $(''.decline-fields'').show();',
'}',
'',
'$s(''P18_DECLINE_REASON'', null);',
'$s(''P18_SECOND_OPTION'', null);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(119539634942287071)
,p_name=>'Decision Submit Click'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(119538799818287063)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(119539739262287072)
,p_event_id=>wwv_flow_api.id(119539634942287071)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P18_DECISION'') == ''Decline'') {    ',
'    sessionStorage.setItem(''SelectedCandidateDecision'', JSON.stringify(candidateInfo));',
'    apex.submit(''SUBMIT'');',
'}',
'else {',
'    closeModal("hiringDecisionDialog");',
'    ',
'    $(''#confirmDecisionPhoto'').css({''background-image'' : ''url('' + candidateInfo.photo + '')''});',
'    $(''#confirmDecisionName'').text(candidateInfo.name);',
'    $(''#confirmDecisionGender'').text(candidateInfo.gender);',
'    ',
'    openModal("confirmDecisionDialog");',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121138893199222348)
,p_name=>'Cancel Confirm Decision Click'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(121138771637222347)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121139023930222349)
,p_event_id=>wwv_flow_api.id(121138893199222348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sessionStorage.removeItem(''SelectedCandidateDecision'');',
'',
'closeModal("confirmDecisionDialog");'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121139043752222350)
,p_name=>'Confirm Decision Click'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(119540206958287077)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121139945535222359)
,p_event_id=>wwv_flow_api.id(121139043752222350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'sessionStorage.setItem(''SelectedCandidateDecision'', JSON.stringify(candidateInfo));'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121139170823222351)
,p_event_id=>wwv_flow_api.id(121139043752222350)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'SUBMIT'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121140514071222364)
,p_name=>'Decision Info Close Dialog Click'
,p_event_sequence=>160
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.ui-dialog-titlebar-close, #decisionInfoBackToMenuBtn'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121140638557222365)
,p_event_id=>wwv_flow_api.id(121140514071222364)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'sessionStorage.removeItem(''SelectedCandidateDecision'');'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(117722506164676806)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process Candidate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'VITA!',
'Use these page items to save the decision: ',
':P18_AC_SELECTED_PERSON_ID (personal id)',
':''P18_AC_SELECTED_ASSIGN_ID'' (assignmentId)',
':P18_DECISION (''hire'' \ ''decline'')',
':P18_DECLINE_REASON (text)',
':P18_SECOND_OPTION (''Y'' or null)',
'Goodluck!',
'*/',
'',
'DECLARE',
'v_forward_status varchar2(10);',
'v_reason varchar2(100);',
'l_reasons_id number;',
'v_remarks varchar2(4000);',
'v_assignment_id number;',
'v_year          number;',
'v_first_name    varchar2(100);     ',
'v_last_name     varchar2(100);',
'v_gender        varchar2(10);',
'v_last_update_status_user   number;',
'',
'',
'BEGIN',
'',
'',
'  select decode (instance_name, ''THR'',121130, 123025  )',
'     into v_last_update_status_user',
'     from   v$instance  ',
'     where rownum = 1 ;   ',
'     ',
'fnd_global.APPS_INITIALIZE(v_last_update_status_user,60328,800); ',
'',
' v_reason := '''';',
' v_remarks := :P18_DECLINE_REASON;',
' ',
'IF :P18_DECISION = ''Hire'' THEN ',
'   v_forward_status :=  27357  ; -- ',
'   v_remarks := '''';',
'ELSIF :P18_DECISION = ''Decline'' and :P18_SECOND_OPTION = ''Y'' THEN ',
'   v_forward_status :=  15360  ; -- ',
'   v_reason := ''SSHSECOND'';',
'    ',
'ELSIF :P18_DECISION = ''Decline'' and :P18_SECOND_OPTION is null  THEN ',
'  v_forward_status :=  340 ; ',
' ',
'END IF;',
'       ',
'',
'-----------------------------------------------------',
' select  ',
'    case  ',
'      when (EXTRACT(month FROM sysdate)) <= 9  then (EXTRACT(year FROM sysdate)) ',
'      when (EXTRACT(month FROM sysdate)) >= 10 then (EXTRACT(year FROM sysdate)+1)  ',
'    end year  ',
'into v_year ',
'from dual   ;   ',
'',
'',
'-----------------------------------------------------',
'/*',
'select papf.first_name, papf.last_name , decode(papf.sex, ''M'', ''Male'', ''Female'') gender',
'  into v_first_name,  v_last_name , v_gender ',
'  from per_all_people_f            papf',
' where papf.person_id = :P18_AC_SELECTED_PERSON_ID ',
'   and trunc(sysdate)   between trunc(papf.effective_start_date) and trunc(papf.effective_end_date) ; ',
'  */ ',
'       XX_MY_UTILS.add_msg('':P18_AC_SELECTED_ASSIGN_ID  '' ||:P18_AC_SELECTED_ASSIGN_ID ); ',
'       ',
'   ',
'------------------------------------------------------ ',
'',
'         jafi_irc_apl_status.change_status(p_assignment_id  => :P18_AC_SELECTED_ASSIGN_ID,',
'                                                          p_status_type_id => v_forward_status,',
'                                                          p_change_reason  => v_reason,',
'                                                          p_remarks        => v_remarks);',
'                                                          ',
'                                                           ',
'     ',
'    ',
'       XX_MY_UTILS.add_msg('':AFTER '' ||:P18_AC_SELECTED_PERSON_ID ); ',
'       XX_MY_UTILS.add_msg('':AFTER v_forward_status '' ||v_forward_status ); ',
'       ',
' IF  v_forward_status <>  27357 THEN ',
'    insert into JAFI.JAFI_HR_COM_DECISION',
'                   ( person_id,  ',
'                     assignment_id,  ',
'                     assignment_status_type_id,',
'                     organization_id,  ',
'                     current_year,  ',
'                     decision , ',
'                     decline_remarks, ',
'                     second_option, ',
'                     creation_date,',
'                     MASLUL_TYPE) ',
'              values',
'                   (:P18_AC_SELECTED_PERSON_ID , ',
'                    :P18_AC_SELECTED_ASSIGN_ID, ',
'                    v_forward_status,  ',
'                    :P0_ORG_ID,',
'                    v_year,',
'                    :P18_DECISION,',
'                    :P18_DECLINE_REASON, ',
'                    :P18_SECOND_OPTION, ',
'                     sysdate,',
'                    ''SSH'');',
'   ',
'   END IF;',
'   commit; ',
'  ',
'            ',
'',
'       exception  when others then',
'            XX_MY_UTILS.add_msg(''ERROR 220 Page18''||SQLERRM); ',
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
,p_process_when=>'SUBMIT'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.component_end;
end;
/
