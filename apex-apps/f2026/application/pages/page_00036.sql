prompt --application/pages/page_00036
begin
--   Manifest
--     PAGE: 00036
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
 p_id=>36
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'SHSH Program- Security Approval'
,p_alias=>'SHSH-PROGRAM-SECURITY-APPROVAL'
,p_step_title=>'SHSH Program- Security Approval'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'async function generatePDF(personId) {',
'    const spaceChar = ''&nbsp;'';',
'    $a = $(''a[data-personal-id="'' + personId + ''"]'');',
'    ',
'    var firstname = $a.data(''first-name''), ',
'        lastname = $a.data(''last-name''), ',
'        personalId = $a.data(''personal-id''),  ',
'        fullSysdate = $a.data(''full-sysdate''),',
'        sysdateYear = $a.data(''sysdate-year''), ',
'        sysdateNextYear = $a.data(''sysdate-next-year'') ;',
'		',
'	',
'    var fullname = firstname + spaceChar + lastname;  ',
'    ',
'    //create element',
'    var html =  ''<div id="pdfContent" dir="ltr" lang="en" style="direction: ltr; width: 100%; height: 1080px; padding-left: 50px; padding-right: 50px; padding-top: 20px; ">'' + ',
'         ''<img src="#APP_IMAGES#SHSHLogo1.svg" style="width: 50%; height: auto;" />'' + ',
'        ''<img src="#APP_IMAGES#SHSHLogo2.svg" style="width: 50%; height: auto;" />'' + ',
'                    ''<table id="letter" dir="ltr" style="width: 100%; margin: auto; !important; text-align: right !important; color: #000000 ; font-size: 16px; font-family: -apple-system,BlinkMacSystemFont,\''Times New Roman\'', Times, serif;">'' +',
'                        ''<tbody style="direction: ltr !important; text-align: right !important;">'' + ',
'                            ''<tr id="letter-header" style="height: 200px; line-height: 30px;">'' + ',
'                                ''<td id="letter-header-right" width="50%">'' + ',
'                                    ''<div style="width: 100%; text-align: right; margin: auto;">'' + ',
'                                        ''<p>Jerusalem, Israel<br/>''  + fullSysdate + ''</p>'' +',
'                                    ''</div>'' + ',
'                                ''</td>'' +       ',
'                            ''</tr>''+',
'                           ''<tr id="letter-body">'' + ',
'                                ''<td colspan="2">'' + ',
'                                    ''<div style="width: 90%; direction: ltr !important; text-align: left !important; margin: auto;line-height: 30px; padding-left: 20px;">'' +',
'                                        ''<p>''  +',
'                                      '' <span style="height: 50px; direction: ltr !important; text-align: left !important;">To whom it may concern,</span><br/>'' +',
'                                        ''<div>The emissary <b> '' + firstname +'' ''+lastname+'' </b>(ID #<b>''+personalId +''</b>) is intended to join the Jewish community in Florida for a year of service between the months of August ''+sysdateYear+'' - Aug'
||'ust ''+sysdateNextYear+''.</div>'' +',
'                                       '' <br/>'' +',
'                                        ''<span >We have ran a security and a criminal background check on <b>'' + firstname + ''</b> before accepting him into the program. The background check was conducted by the Security Department of the Jewish Agen'
||'cy for Israel, with the Israeli police.</span><br/><br/>'' +',
'                                         ''<span >We would like to ensure you that <b>'' + firstname + ''</b> was found eligible to work with children and that there was not any reservation regarding his ability to serve in Florida.</span><br/><br/>'' + '
||'                                                            ',
'                                        ''</p>'' + ',
'                                    ''</div>'' + ',
'                                ''</td>'' + ',
'                            ''</tr>'' + ',
'                           ''<tr id="letter-footer">'' + ',
'                                ''<td colspan="2">'' + ',
'                                    ''<div style="width: 90%; direction: ltr !important; text-align: left !important; margin: auto;line-height: 30px; padding-left: 20px;">'' +',
'                                        ''<p>''  +',
'                                      '' <span style="height: 50px; direction: ltr !important; text-align: left !important;">With regards,</span><br/>'' +',
'                                        ''<div style="font-family: \''Palace Script MT\''; font-size: 25px;">Yuval</div>'' +',
'                                         ''<div>Yuval David</div>'' +',
'                                         '' <br/>'' +',
'                                            ''<div>Director of Security Division</div>'' +',
'                                            ''<div>The Jewish Agency for Israel</div>'' +',
'                                         ''</p>'' + ',
'                                    ''</div>'' + ',
'                                ''</td>'' + ',
'                            ''</tr>'' + ',
'                        ''</tbody>'' + ',
'                    ''</table>'' +        ',
'        ''</div>'';',
'    ',
'    window.scrollTo(0,0);',
'    $(''body'').append(html);',
'    var element = document.getElementById(''pdfContent''); ',
'    //set element placeholders with the selected row values ',
'    //return;',
'    let worker = await html2pdf().set({',
'        filename: ''security approval ''+personalId+''.pdf'',',
'        margin: [1, 1]',
'    }).from(element).toPdf().output(''blob'').then((data) => {',
'        document.getElementById(''pdfContent'').remove();',
'        let fileURL = URL.createObjectURL(data);',
'        let linkElement = document.createElement(''a'');',
'        linkElement.href = fileURL;',
'        linkElement.download =  ''security approval ''+personalId+''.pdf'';',
'        linkElement.target = ''_blank'';',
'        linkElement.id = ''linkElement'';',
'        linkElement.click();',
'        document.getElementById(''linkElement'').remove();',
'        //window.open(fileURL);',
'    });',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'        ',
'}',
'',
'',
'@media (max-width: 360px) {',
'    .cards-container {',
'        gap: 10px !important;',
'    }',
'}'))
,p_step_template=>wwv_flow_api.id(29244342218644)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MORIYAD'
,p_last_upd_yyyymmddhh24miss=>'20261008125102'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2525439374127455416)
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
 p_id=>wwv_flow_api.id(3121407774373300723)
,p_name=>'Active Candidates Cards'
,p_region_name=>'activeCandidatesCardsRegion'
,p_parent_plug_id=>wwv_flow_api.id(2525439374127455416)
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
'select   jafi_hr_pkg.get_org_name(paaf.organization_id),',
'    papf.first_name || '' '' || papf.last_name name,   ',
'    (select NVL(max(document_id), 0)',
'    from irc_documents',
'    where person_id = papf.person_id',
'    and end_date is null',
'    and type = ''PHOTO'') PHOTO,',
'        case when paaf.assignment_type = ''E'' then (select ppos.date_start from per_periods_of_service ppos',
'                                           where ppos.period_of_service_id = paaf.period_of_service_id',
'                                           and paaf.person_id = ppos.person_id )',
'  when  paaf.assignment_type = ''A'' then  (select pa.projected_hire_date from per_applications pa',
'                                                                                       where pa.person_id = paaf.person_id',
'                                                                                       and pa.application_id = paaf.application_id) else null end arrival_date',
'    ,  ''<a  data-first-name="'' ||  REPLACE(PAPF.FIRST_NAME, '' '', ''&nbsp;'') ||',
'       ''"  data-last-name="'' || REPLACE(PAPF.LAST_NAME, '' '', ''&nbsp;'') ||',
'       ''"  data-personal-id="'' ||PAPF.NATIONAL_IDENTIFIER || ',
'       ''"  data-full-sysdate="'' ||   TO_CHAR(SYSDATE, ''FMMonth DD, YYYY'', ''NLS_DATE_LANGUAGE=English'') ||',
'       ''"  data-sysdate-year="'' || TO_CHAR(SYSDATE, ''YYYY'') ||',
'       ''"  data-sysdate-next-year="'' || TO_CHAR(SYSDATE+365, ''YYYY'') ||',
'    ''" href="#" onclick="generatePDF('''''' || PAPF.NATIONAL_IDENTIFIER || ''''''); return false;" target="_blank" style="margin-top: auto; padding-bottom: 5px;"><img src="#APP_IMAGES#DownloadSecApp_icon.svg" class="#DOWNLOAD_CLASS#" /></a>'' PRINT_PDF_LINK'
||'     ',
'    from per_all_people_f            papf, ',
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
'case when PHOTO > 0 then',
'    apex_page.get_url(p_page => ''12'', ',
'    p_request => ''APPLICATION_PROCESS=GetDocument'', ',
'    p_items => ''DOCUMENT_ID'', ',
'    p_values => PHOTO) else ''#APP_IMAGES#anonymous-user.jpeg'' end PHOTO_LINK,',
'     ''hide-new-app''  NEW_SHALIACH_CLASS,',
'       PRINT_PDF_LINK',
'from my_mishlachat',
'order by to_date( nvl(ARRIVAL_DATE,sysdate+1)) desc'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(661692645133250268)
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
 p_id=>wwv_flow_api.id(661299978181643787)
,p_query_column_id=>1
,p_column_alias=>'TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(661300416695643788)
,p_query_column_id=>2
,p_column_alias=>'NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(661302803808643790)
,p_query_column_id=>3
,p_column_alias=>'PHOTO_LINK'
,p_column_display_sequence=>3
,p_column_heading=>'Photo Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(649324070715106552)
,p_query_column_id=>4
,p_column_alias=>'NEW_SHALIACH_CLASS'
,p_column_display_sequence=>5
,p_column_heading=>'New Shaliach Class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(649324033227106551)
,p_query_column_id=>5
,p_column_alias=>'PRINT_PDF_LINK'
,p_column_display_sequence=>4
,p_column_heading=>'Print Pdf Link'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3058147266412047394)
,p_plug_name=>'Title'
,p_region_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(1491988443724117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'SHSH Program - <br class="mobile-br" />Security Approval'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3077153187757693453)
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
 p_id=>wwv_flow_api.id(661304626302643792)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(3077153187757693453)
,p_button_name=>'BACK_TO_MENU'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back to Menu'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:RR,::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.component_end;
end;
/
