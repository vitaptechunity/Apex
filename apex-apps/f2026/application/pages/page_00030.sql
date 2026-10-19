prompt --application/pages/page_00030
begin
--   Manifest
--     PAGE: 00030
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
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'Amitey Israel - Home'
,p_alias=>'AMITEY-ISRAEL-HOME'
,p_step_title=>'Amitey Israel - Home'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#airportSelectionPopup,',
'div[role="dialog"][aria-describedby="airportSelectionPopup"],',
'.main-container {',
'    width: 518px !important;',
'    height: 352px !important;',
'    border-radius: 10px;',
'}',
'',
'#airportSelectionPopup .t-DialogRegion-body {',
'    padding: 0 !important;',
'}'))
,p_step_template=>wwv_flow_api.id(29244342218644)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DRORA'
,p_last_upd_yyyymmddhh24miss=>'20261015102645'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1246373073138212342)
,p_plug_name=>'Sub Page Info'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'We are excited to embark on this shared journey of bringing an Israel Fellow (Israeli emissary) to your campus- someone who will work closely with your Hillel to drive meaningful engagement, while educating students about Israel and bringing the auth'
||'entic Israeli experience to your campus.',
'',
'<br><br>',
'',
'Through this portal, you will be able to share your campus profile, outline your priorities, and find the Israel Fellow who best fits the unique needs of your Hillel.',
'',
'<br>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1246373098957212343)
,p_plug_name=>'Bold Page Info'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1510401869147318)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
unistr('So, let\2019s get started!')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1353123745983329531)
,p_plug_name=>'Airport Selection Popup'
,p_region_name=>'airportSelectionPopup'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_api.id(491242057374075188)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="main-container" style="display: flex; flex-flow: column; align-items: center; justify-content: start; color: #172B54; gap: 20px; padding: 15px;">',
'    <div style="width: 100%; display: flex; align-items: center; justify-content: end;"><img class="close-btn" src="#APP_IMAGES#close-icon.svg" style="width: 28px; height: 28px; cursor: pointer;" /></div>',
'    <div style="font-weight: 700; font-size: 20px; line-height: 25px; letter-spacing: 0%; text-align: center;">',
unistr('        We\2019ve added a new field for<br />'),
'        your preferred airport!',
'    </div>',
'    <div style="font-weight: 500; font-size: 16px; line-height: 22px; letter-spacing: 0%; text-align: center;">',
'        Please take a moment to update your<br />',
'        community information to ensure a<br />',
'        smooth flight booking process.',
'    </div>',
'    <div class="update-now-btn" style="width: 274px; height: 48px; border-radius: 10px; background-color: #E84C26; color: white; font-weight: 600; font-size: 16px; line-height: 100%; letter-spacing: 0%; text-align: center; padding: 16px; cursor: poin'
||'ter;">Update now</div>',
'    <div class="later-btn" style="font-weight: 500; font-size: 16px; line-height: 100%; letter-spacing: 0%; text-align: center; cursor: pointer;">Later</div>',
'</div>',
'',
'',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5856602110783308144)
,p_plug_name=>'Title'
,p_region_css_classes=>'bigger-title-page1'
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(1491988443724117)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('Welcome to the Hillel Portal of the<br>Jewish Agency\05F3s Israel Fellows Program!')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(5907999134303857026)
,p_name=>'OptionsList'
,p_region_name=>'home-page-cards'
,p_template=>wwv_flow_api.id(491219844027075156)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#:t-Cards--basic:t-Cards--cols:t-Cards--iconsRounded:t-Cards--animColorFill'
,p_report_attributes=>'STYLE="min-height:300px"'
,p_grid_column_css_classes=>'center-region'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  ''1'' title, ',
'  ''''  CARD_TITLE,    ',
'  ''<img src="#APP_IMAGES#comm_info.svg" alt="image" height="70"/>''   CARD_TEXT , ',
'  ''#APP_IMAGES#comm_info.svg'' CARD_IMG,',
'  ''Campus Information '' card_subtext,     ',
'  apex_util.prepare_url(''f?p=&APP_ID.:31:&APP_SESSION.::::'')  CARD_LINK',
'from dual',
'union',
'select',
'  ''2'' title, ',
'  ''''  CARD_TITLE,    ',
'  ''<img src="#APP_IMAGES#comm_ssh.svg" alt="image" height="70"/>''   CARD_TEXT , ',
'  ''	#APP_IMAGES#comm_ssh.svg'' CARD_IMG,',
'  ''Israel Fellows Shlichut '' card_subtext,     ',
'  apex_util.prepare_url(''f?p=&APP_ID.:40:&APP_SESSION.::::'')  CARD_LINK',
'from dual ',
'',
'',
'order by title'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(934332945029327)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(645026422048050256)
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
 p_id=>wwv_flow_api.id(645026829201050258)
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
 p_id=>wwv_flow_api.id(645027193716050258)
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
 p_id=>wwv_flow_api.id(645027606618050258)
,p_query_column_id=>4
,p_column_alias=>'CARD_IMG'
,p_column_display_sequence=>6
,p_column_heading=>'Card Img'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(645027999009050259)
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
 p_id=>wwv_flow_api.id(645028387185050260)
,p_query_column_id=>6
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>5
,p_column_heading=>'Card Link'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(645036780841050287)
,p_branch_name=>'Go To Page &P8_PAGE_REDIRECT.'
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_branch_condition=>'UPDATE_NOW'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(645036022969050287)
,p_branch_name=>'Go To Page 2'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(645036380661050287)
,p_branch_name=>'Navigate to Page 28 when ORG_ID = 0'
,p_branch_action=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:CR,::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P0_ORG_ID'
,p_branch_condition_text=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(645024871896050249)
,p_name=>'P30_COMMUNITY_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(5856602110783308144)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(645025339972050253)
,p_name=>'P30_SELECTED_MAIN_AIRPORT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(5856602110783308144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(645025697198050253)
,p_name=>'P30_POPUP_CLICKED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(5856602110783308144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(645028868448050280)
,p_computation_sequence=>10
,p_computation_item=>'P30_COMMUNITY_NAME'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'FUNCTION_BODY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_community_name varchar2(200);',
'begin',
'    --select hoi.ORG_INFORMATION9 into v_community_name',
'    select decode (hoi.ORG_INFORMATION9, NULL,  jafi_hr_pkg.get_org_name(hoi.organization_id),hoi.ORG_INFORMATION9)  into v_community_name',
'    from hr_organization_information hoi',
'    where hoi.org_information_context =''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'    and hoi.org_information1 in (''SSH'',''COMM'',''AMI'') and hoi.organization_id = :P0_ORG_ID;',
'    ',
'    return v_community_name;',
'    ',
'   exception when no_data_found then',
'        return null;',
'end;',
'    ',
''))
,p_compute_when_type=>'NEVER'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(645029218210050280)
,p_computation_sequence=>20
,p_computation_item=>'P30_SELECTED_MAIN_AIRPORT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select decode(hoi2.ORG_INFORMATION14, NULL, NULL, jafi_hr_utils.US_Decode_Lookup(''JAFI_IRC_SC_AIRPORTS_WORLDWIDE'', hoi2.ORG_INFORMATION14)) main_airport',
'from   hr_all_organization_units   haou,',
'       hr_organization_information hoi1,',
'       hr_organization_information hoi2',
'where  haou.organization_id = :P0_ORG_ID',
'   and haou.organization_id = hoi1.organization_id',
'   and hoi1.org_information_context = ''JAFI_HR_SHLICHUT_CUSTOMER_ADDR''',
'   and haou.organization_id = hoi2.organization_id',
'   and hoi2.org_information_context = ''JAFI_HR_SHLICHUT_ORG_DETAILS''',
'   AND HOI2.ORG_INFORMATION1 IN (''SSH'',''COMM'',''AMI'')',
'   and haou.business_group_id = 4088'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(645034989925050285)
,p_name=>'Display Airport Selection Popup'
,p_event_sequence=>10
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P30_SELECTED_MAIN_AIRPORT'') == '''' && $v(''P30_POPUP_CLICKED'') == '''''
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(645035468384050286)
,p_event_id=>wwv_flow_api.id(645034989925050285)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1353123745983329531)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(645032212090050284)
,p_name=>'Airport Selection Popup Close Click'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#airportSelectionPopup .close-btn'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(645033215107050285)
,p_event_id=>wwv_flow_api.id(645032212090050284)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  APEX_UTIL.SET_SESSION_STATE(''P30_POPUP_CLICKED'', ''Y'');',
'END;'))
,p_attribute_02=>'P30_POPUP_CLICKED'
,p_attribute_03=>'P30_POPUP_CLICKED'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(645032730181050284)
,p_event_id=>wwv_flow_api.id(645032212090050284)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1353123745983329531)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(645030289033050281)
,p_name=>'Airport Selection Popup Update Now Click'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#airportSelectionPopup .update-now-btn'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(645031760023050284)
,p_event_id=>wwv_flow_api.id(645030289033050281)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  APEX_UTIL.SET_SESSION_STATE(''P30_POPUP_CLICKED'', ''Y'');',
'END;'))
,p_attribute_02=>'P30_POPUP_CLICKED'
,p_attribute_03=>'P30_POPUP_CLICKED'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(645030774042050283)
,p_event_id=>wwv_flow_api.id(645030289033050281)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1353123745983329531)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(645031317776050284)
,p_event_id=>wwv_flow_api.id(645030289033050281)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'UPDATE_NOW'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(645033583021050285)
,p_name=>'Airport Selection Popup Later Click'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#airportSelectionPopup .later-btn'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(645034636087050285)
,p_event_id=>wwv_flow_api.id(645033583021050285)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  APEX_UTIL.SET_SESSION_STATE(''P30_POPUP_CLICKED'', ''Y'');',
'END;'))
,p_attribute_02=>'P30_POPUP_CLICKED'
,p_attribute_03=>'P30_POPUP_CLICKED'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(645034053657050285)
,p_event_id=>wwv_flow_api.id(645033583021050285)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1353123745983329531)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(645029523890050280)
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
,p_process_when=>'UPDATE_NOW'
,p_process_when_type=>'REQUEST_NOT_EQUAL_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(645029853621050281)
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
