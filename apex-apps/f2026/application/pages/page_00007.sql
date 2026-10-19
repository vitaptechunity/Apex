prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(491331849203075369)
,p_name=>'CM Request Form'
,p_alias=>'CM-REQUEST-FORM'
,p_step_title=>'CM Request Form'
,p_autocomplete_on_off=>'OFF'
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
,p_last_updated_by=>'MEITAVC'
,p_last_upd_yyyymmddhh24miss=>'20251228113732'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(628724142560951253)
,p_plug_name=>'Back To Home Container'
,p_region_name=>'backToHomeContainer'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1213969567823964731)
,p_plug_name=>'Sub Page Info'
,p_region_name=>'subpageid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'In this section, we would like to learn as <br class="mobile-br">much as possible from you <br class="desktop-br">about the nature <br class="mobile-br">of the position, the target audiences, and <br class="mobile-br">the qualities <br class="desktop'
||'-br">and skills required from <br class="mobile-br">potential candidates.',
'',
'<br><br>',
'',
'In order to begin an accurate recruitment <br class="mobile-br">process and tailor the <br class="desktop-br">',
unistr('selection to each <br class="mobile-br">community\2019s specific needs, we will need <br class="mobile-br">this <br class="desktop-br">information no later than January  1st <br class="mobile-br">for Senior Shlichim, <br>'),
'and no later than March 1st for Young <br class="mobile-br">Shlichut positions.',
'<br>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1213969593642964732)
,p_plug_name=>'Bold Page Info'
,p_region_css_classes=>'weight700'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1492400233724137)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'Are you requesting a new shaliach<br>',
'or replacing an existing one?'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5824198605469060533)
,p_plug_name=>'Title'
,p_region_css_classes=>'bigger-title-page1'
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(1491988443724117)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Community Shlichut - <br class="mobile-br"/> Request form',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(5875595628989609415)
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
'  ''#APP_IMAGES#rep_shaliah.svg'' CARD_IMG,',
'  ''Replacing an existing shaliach '' card_subtext,   ',
' ',
'  apex_util.prepare_url(''f?p=&APP_ID.:8:&APP_SESSION.::::'')  CARD_LINK',
'from dual ',
'union',
'select',
'  ''2'' title, ',
'  ''''  CARD_TITLE,    ',
'  ''<img src="#APP_IMAGES#comm_shlihut.svg" alt="image" height="70"/>''   CARD_TEXT , ',
'  ''#APP_IMAGES#new_shaliah.svg'' CARD_IMG,',
'  ''New <br class="desktop-br">shaliach '' card_subtext,     ',
'   apex_util.prepare_url(''f?p=&APP_ID.:9:&APP_SESSION.::::'')  CARD_LINK',
'from dual ',
'',
'order by title'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(66824489037897120)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(60632029919009048)
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
 p_id=>wwv_flow_api.id(60631561968009047)
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
 p_id=>wwv_flow_api.id(60632376877009048)
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
 p_id=>wwv_flow_api.id(60632774968009049)
,p_query_column_id=>4
,p_column_alias=>'CARD_IMG'
,p_column_display_sequence=>6
,p_column_heading=>'Card Img'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(60633152385009049)
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
 p_id=>wwv_flow_api.id(60633604686009049)
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
 p_id=>wwv_flow_api.id(73321872102283054)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(628724142560951253)
,p_button_name=>'BACK_TO_MENU'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2950106137239656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back to Menu'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RR,8,9::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(60634794834009072)
,p_branch_name=>'Go To Page &P8_PAGE_REDIRECT.'
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(60633961029009071)
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
 p_id=>wwv_flow_api.id(60634265738009071)
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
