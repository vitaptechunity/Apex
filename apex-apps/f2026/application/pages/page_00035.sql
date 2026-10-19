prompt --application/pages/page_00035
begin
--   Manifest
--     PAGE: 00035
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
 p_id=>35
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'SHSH - Documents & Contracts'
,p_alias=>'SHSH-DOCUMENTS-CONTRACTS'
,p_step_title=>'SHSH - Documents & Contracts'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    $(''#home-page-cards a[href="#"]'').addClass(''disabled-card'').parent().addClass(''do-not-transform'');    ',
'});',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.home-link {',
'    display: block !important;',
'}',
'',
'.weight700 {',
'    font-weight: 700 !important;',
'}',
'',
'.mobile-br {',
'    display: none;',
'}',
'',
'.t-Card-info {',
'    margin-top: 30px;',
'}',
'',
'#home-page-cards {',
'    width: 750px;',
'}',
'',
'.t-Card-info {',
'    max-width: none !important;',
'    width: 100% !important;',
'}',
'',
'.t-card-land:hover {',
'    transform: scale(1.03);',
'    transform-origin: center center;',
'}',
'',
'.do-not-transform:hover {',
'    transform: none !important;',
'}',
'',
'.disabled-card {',
'    cursor: default !important;',
'    border: none !important;',
'    box-shadow: none !important;',
'}',
'',
'#buttonsRegion {',
'    display: flex;',
'    justify-content: center;',
'    align-items: center;',
'    margin-top: 40px !important;',
'}',
'',
'@media (max-width: 768px) {',
'    .mobile-br {',
'        display: block;',
'    }',
'    ',
'    .desktop-br {',
'        display: none;',
'    }',
'}',
''))
,p_step_template=>wwv_flow_api.id(29244342218644)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MORIYAD'
,p_last_upd_yyyymmddhh24miss=>'20261006142925'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2908368101122231871)
,p_plug_name=>'Back To Home Container'
,p_region_name=>'backToHomeContainer'
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3319521738582981600)
,p_plug_name=>'ButtonRegion'
,p_region_name=>'buttonsRegion'
,p_region_css_classes=>'width-900 bottom-btn-container'
,p_region_template_options=>'#DEFAULT#:margin-top-none'
,p_plug_template=>wwv_flow_api.id(2942455427172219)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8103842564030341151)
,p_plug_name=>'Title'
,p_region_css_classes=>'bigger-title-page1'
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(1491988443724117)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Documents & Contracts',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(8155239587550890033)
,p_name=>'OptionsList'
,p_region_name=>'home-page-cards'
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#:t-Cards--animColorFill:t-Cards--iconsRounded:t-Cards--3cols:t-Cards--basic'
,p_report_attributes=>'style="min-height:300px; justify-content: center;"'
,p_grid_column_css_classes=>'center-region'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  ''1'' title, ',
'  ''''  CARD_TITLE,    ',
'  null CARD_TEXT, ',
'  ''#APP_IMAGES#MOU_icon.svg'' CARD_IMG,',
'  ''MOU'' card_subtext,   ',
'  apex_util.prepare_url(''f?p=&APP_ID.:11:&APP_SESSION.::::'') CARD_LINK',
'from dual ',
'union',
'select',
'  ''2'' title, ',
'  null CARD_TITLE,   ',
'  null CARD_TEXT,',
'  ''#APP_IMAGES#sec_icon.svg'' CARD_IMG,',
'  ''Security Approvals'' card_subtext,   ',
'  apex_util.prepare_url(''f?p=&APP_ID.:36:&APP_SESSION.::::'') CARD_LINK',
'from dual',
'order by title'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P35_IS_MOU_CONFIRMED,P35_MISHLACHAT_MEMBERS_COUNT'
,p_query_row_template=>wwv_flow_api.id(661091971921572856)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(658794630675116895)
,p_query_column_id=>1
,p_column_alias=>'TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(658794997240116896)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(658795425252116896)
,p_query_column_id=>3
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(658795816709116897)
,p_query_column_id=>4
,p_column_alias=>'CARD_IMG'
,p_column_display_sequence=>6
,p_column_heading=>'Card Img'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(658796154821116897)
,p_query_column_id=>5
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>4
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(658796635397116897)
,p_query_column_id=>6
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>5
,p_column_heading=>'Card Link'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(658792885746116888)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(2908368101122231871)
,p_button_name=>'BACK_TO_HOME'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back to homepage'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RR,8::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(658793636247116892)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(3319521738582981600)
,p_button_name=>'PrevStep'
,p_button_static_id=>'prevStepBtn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_image_alt=>'<img src="#APP_IMAGES#ic-back.svg"/>Back'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'prev-btn'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(658799499987116920)
,p_branch_name=>'Go To Page &P8_PAGE_REDIRECT.'
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(658797020723116897)
,p_name=>'P35_IS_MOU_CONFIRMED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8155239587550890033)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(658797429475116900)
,p_name=>'P35_MISHLACHAT_MEMBERS_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8155239587550890033)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(658797877163116917)
,p_computation_sequence=>10
,p_computation_item=>'P35_IS_MOU_CONFIRMED'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Y''',
'from hr_organization_information hoi',
'where hoi.organization_id = :P0_ORG_ID and hoi.org_information_context =''JAFI_HR_SHLICHUT_ORG_DETAILS'' and hoi.org_information17 is not null',
'AND (',
'	(EXTRACT(month FROM sysdate) <= 10 and',
'	trunc(to_date(hoi.org_information17, ''DD/MM/YYYY'')) >= to_date(''01/10/'' || to_char(EXTRACT(year FROM sysdate) - 1),''DD/MM/YYYY'') and',
'	trunc(to_date(hoi.org_information17, ''DD/MM/YYYY'')) < to_date(''31/10/'' || to_char(EXTRACT(year FROM sysdate)),''DD/MM/YYYY'')) or',
'	(EXTRACT(month FROM sysdate) >= 11 and',
'	trunc(to_date(hoi.org_information17, ''DD/MM/YYYY'')) >= to_date(''01/11/'' || to_char(EXTRACT(year FROM sysdate)),''DD/MM/YYYY'')) --or',
'	--(EXTRACT(month FROM sysdate) = 10 and',
'	--trunc(to_date(hoi.org_information17, ''DD/MM/YYYY'')) >= to_date(''01/11/'' || to_char(EXTRACT(year FROM sysdate) - 1),''DD/MM/YYYY''))',
')'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(658798304729116918)
,p_computation_sequence=>20
,p_computation_item=>'P35_MISHLACHAT_MEMBERS_COUNT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'from per_all_people_f            papf, ',
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
'and past.assignment_status_type_id =paaf.assignment_status_type_id ',
'and past.assignment_status_type_id =ias.assignment_status_type_id ',
'and ias.status_change_date = (select max(status_change_date) ',
'                               from irc_assignment_statuses ias1 ',
'                               where ias.assignment_id = ias1.assignment_id)'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(658798554938116918)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UpdateType'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'p_status varchar2(200):='''';',
'v_org_info_id number;',
'l_ovn  number;',
'',
'begin',
'--XX_MY_UTILS.add_msg(''KEREN  :P71_INTERVIEWER_ISR''|| :P71_INTERVIEWER_ISR);  ',
'',
'Select t.org_information_id,',
'       t.object_version_number',
'into v_org_info_id,',
'     l_ovn',
'  From Hr_Organization_Information_v t',
' Where t.Org_Information_Context = ''JAFI_SC_GENERAL''',
'   And t.organization_id = :P0_ORG_ID;',
'     ',
'     fnd_global.APPS_INITIALIZE(:P0_USER_ID,60608,800);',
'     ',
'     BEGIN',
'             hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                                       ,p_object_version_number => l_ovn',
'                                                       ,p_org_info_type_code  =>  ''JAFI_SC_GENERAL''',
'                                                       ,p_org_information_id  => v_org_info_id',
'                                                       ,p_org_information3    => :P11_INT_TYPE --''In Israel''--p_interview_type',
'',
'                                                       );',
'                                       ',
'     EXCEPTION when others then                              ',
'        apex_error.add_error (',
'              p_message          => ''Failed to update =>''||p_status,',
'              p_display_location => apex_error.c_inline_in_notification );',
'     END;',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(658798995842116919)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'ClearSession'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
