prompt --application/pages/page_00034
begin
--   Manifest
--     PAGE: 00034
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
 p_id=>34
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'Amitey Israel Request Form Info'
,p_alias=>'AMITEY-ISRAEL-REQUEST-FORM-INFO'
,p_step_title=>'Amitey Israel Request Form Info'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.home-link {',
'    display: block !important;',
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
'#info-text {',
'    max-width: 560px !important;',
'}',
'',
'#info-cards {',
'    width: 1005px;',
'    display: flex;',
'    align-items: center;',
'    justify-content: space-between;',
'    font-weight: 500;',
'    font-size: 16px;',
'    line-height: 22px;',
'    letter-spacing: 0%;',
'    text-align: center;',
'}',
'',
'#info-cards .info-card {',
'    display: flex;',
'    flex-flow: column;',
'    width: 325px;',
'    height: 244px;',
'    opacity: 1;',
'    border-radius: 10px;',
'    background-color: #F4FBFF;',
'    align-items: center;',
'    justify-content: flex-start;',
'    gap: 30px;',
'    padding-top: 40px;',
'}',
'',
'#letsStartBtn {',
'    width: 285px;',
'    height: 50px;',
'    opacity: 1;',
'    border-radius: 10px;',
'    background-color: #172B54;',
'    color: white;',
'    font-weight: 500;',
'    font-size: 16px;',
'    line-height: 100%;',
'    letter-spacing: 0%;',
'    text-align: center;',
'}',
'',
'#letsStartBtn:hover {',
'    cursor: pointer;',
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
'        display: none;',
'    }',
'    ',
'    .t-Body-contentInner {',
'        width: 90vw;',
'        padding: 0;',
'    }',
'    ',
'    #info-text {',
'        width: 100% !important;',
'    }',
'}',
'',
'',
'',
'',
'',
'',
'',
'',
''))
,p_step_template=>wwv_flow_api.id(29244342218644)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DRORA'
,p_last_upd_yyyymmddhh24miss=>'20261015112252'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2834263388549332858)
,p_plug_name=>'center container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'center-region'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(690100434470958561)
,p_plug_name=>'Info Cards'
,p_parent_plug_id=>wwv_flow_api.id(2834263388549332858)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(491219844027075156)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="info-cards">',
'    <div class="info-card">',
'        <img src="#APP_IMAGES#info-leaf.svg" width="24.67" height="20.5" />',
'        <span>',
'            Describe your campus, <br/>community, and organizational <br/>environment.',
'        </span>',
'    </div>',
'    <div class="info-card">',
'        <img src="#APP_IMAGES#info-star-of-david.svg" width="21" height="21" />',
'        <span>',
'            Share the qualities, skills, <br/>experience, and background <br/>you are looking for in your next <br/>Israel Fellow.',
'        </span>',
'    </div>',
'    <div class="info-card">',
'        <img src="#APP_IMAGES#info-flower.svg" width="20" height="20" />',
'        <span>',
'            Provide any additional <br/>information that will help us <br/>better understand <br/>your needs and priorities.',
'        </span>',
'    </div>',
'',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(690100499885958562)
,p_plug_name=>'Info'
,p_region_name=>'info-text'
,p_parent_plug_id=>wwv_flow_api.id(2834263388549332858)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'Our recruitment, screening, and placement process takes place <br />',
'throughout the year. Candidates are evaluated on a rolling basis, and <br />',
'introductions are made once we identify strong potential matches. Our <br />',
'goal is not simply to fill a position, but to ensure the best possible fit for <br />',
'both the candidate and the host organization.',
'<br />',
'<br />',
'Thank you for taking the time to complete this form and for your <br />',
'continued partnership. The information you share is essential to helping <br />',
'us make thoughtful and successful placement decisions.',
'</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2945432580541960852)
,p_plug_name=>'Info'
,p_region_name=>'info-text'
,p_parent_plug_id=>wwv_flow_api.id(2834263388549332858)
,p_region_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'As we begin planning for the upcoming placement cycle, we ask each host <br class="desktop-br"/>',
'organization to complete this form to help us better understand your campus, <br class="desktop-br"/>',
'community, and organizational needs. The information you provide will serve <br class="desktop-br"/>',
'as an important part of our matching process and will help us identify the <br class="desktop-br"/>',
'candidates who are the best fit for your institution. ',
'<br />',
'<br />',
'In this form, you will be asked to:',
'</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2849886005828404240)
,p_plug_name=>'button container'
,p_region_name=>'backToHomeContainer'
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
 p_id=>wwv_flow_api.id(8535855155301788890)
,p_plug_name=>'Title'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(1491988443724117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Request Form'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(690100726581958564)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(2849886005828404240)
,p_button_name=>'LetsStart'
,p_button_static_id=>'letsStartBtn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_api.id(491309386210075286)
,p_button_image_alt=>'Let''s Start'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:::'
,p_grid_column_attributes=>'style="text-align: center;"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(700802133197872549)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(2849886005828404240)
,p_button_name=>'BACK_TO_MENU'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back to Menu'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_grid_column_attributes=>'style="text-align: center;"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(700803777778872571)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_ovn pls_integer;',
'    l_org_information_id pls_integer;',
'begin',
'    fnd_global.APPS_INITIALIZE(:P0_USER_ID,:P0_RESP_ID,800); ',
'    ',
'    begin    ',
'        select t.object_version_number, t.org_information_id',
'        into l_ovn, l_org_information_id',
'        from Hr_Organization_Information t',
'        where t.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG'' and ',
'              t.ORGANIZATION_ID = :P0_ORG_ID and t.org_information8 = :P34_PROGRAM_CODE;',
'',
'        hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                                  ,p_object_version_number => l_ovn',
'                                                  ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTUMER_ORG''',
'                                                  ,p_org_information_id => l_org_information_id',
'                                                  ,p_org_information1 => :P34_PROGRAM_NAME',
'                                                  ,p_org_information8 => :P34_PROGRAM_CODE',
'                                                  ,p_org_information10 => ''Y'');  ',
'',
'        EXCEPTION when no_data_found then ',
'                 hr_organization_api.create_org_information(p_effective_date => Sysdate',
'                                      ,p_object_version_number => l_ovn',
'                                      ,p_org_info_type_code =>  ''JAFI_HR_SHLICHUT_CUSTUMER_ORG''',
'                                      ,p_org_information_id => l_org_information_id',
'                                      ,p_org_information1 => :P34_PROGRAM_NAME',
'                                      ,p_org_information8 => :P34_PROGRAM_CODE     ',
'                                      ,p_org_information10 => ''Y''',
'                                      ,p_organization_id   => :P0_ORG_ID);',
'        commit;',
'    end;',
'',
'    exception when others then apex_error.add_error(p_message => ''Failed to update Program => '' || SQLERRM, ',
'                                                    p_display_location => apex_error.c_inline_in_notification);',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SAVE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(700804217388872572)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_ovn pls_integer;',
'    l_org_information_id pls_integer;',
'begin',
'    Select t.object_version_number, t.org_information_id',
'      Into l_ovn, l_org_information_id',
'      From Hr_Organization_Information t',
'     Where t.org_information_context = ''JAFI_HR_SHLICHUT_CUSTUMER_ORG''',
'       and t.ORGANIZATION_ID = :P0_ORG_ID',
'       and t.org_information8 = :P34_PROGRAM_CODE;',
'   ',
'     hr_organization_api.update_org_information(p_effective_date => Sysdate',
'                                               ,p_object_version_number => l_ovn',
'                                               ,p_org_info_type_code => ''JAFI_HR_SHLICHUT_CUSTUMER_ORG''',
'                                               ,p_org_information_id => l_org_information_id',
'                                               ,p_org_information10 => ''N'');  ',
'                                                           ',
'commit;',
'',
'exception  when others then',
'     apex_error.add_error(p_message => ''Failed to delete Program => '' || SQLERRM,   ',
'                          p_display_location => apex_error.c_inline_in_notification );',
'end;',
' ',
'                 '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.component_end;
end;
/
