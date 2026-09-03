prompt --application/pages/page_00100
begin
--   Manifest
--     PAGE: 00100
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>120
,p_default_id_offset=>3303201628629764337
,p_default_owner=>'APPS'
);
wwv_flow_api.create_page(
 p_id=>100
,p_user_interface_id=>wwv_flow_api.id(3275772552271542776)
,p_name=>'Mobile_Ver'
,p_alias=>'MOBILE-VER'
,p_step_title=>'Mobile_Ver'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'&G_FONT.',
'<!-- The video -->',
'<video autoplay   loop id="myVideo" class="desktop-video hide-iphone" data-src="#APP_IMAGES#SOJNUT_VIDEO.mp4">',
'</video>',
' ',
'&G_FONT.',
'<!-- The video -->',
'<video autoplay loop id="mobileVideo" class="mobile-video" data-src="#APP_IMAGES#new_mobile_viedo.mp4">',
'</video>',
'',
'<!-- The video -->',
'<img data-src="#APP_IMAGES#new_IPhone.gif" id="iphoneGif" class="iphone-gif d-none" />'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#myVideo {',
'   position:fixed;',
'    min-width:100%;',
'    max-width:100%;',
' }',
''))
,p_step_template=>wwv_flow_api.id(3275904468027542967)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_last_updated_by=>'VITAP'
,p_last_upd_yyyymmddhh24miss=>'20240114110545'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2868184119211032826)
,p_plug_name=>unistr('\05D3\05DC\05D2')
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noBorder:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:transparent;"'
,p_plug_template=>wwv_flow_api.id(3275883590596542936)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1118544156668807974)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(2868184119211032826)
,p_button_name=>'MUTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(3275795122090542834)
,p_button_image_alt=>' <img id="MuteBtn" src="#APP_IMAGES#mute.png"'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="background: transparent; box-shadow: none;"  '
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1118544601620807978)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(2868184119211032826)
,p_button_name=>'SKIP'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(3275795122090542834)
,p_button_image_alt=>'<img id="skiplbl" src="#APP_IMAGES#skip.png" width="68" height="41"> '
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_LTS_PAGE.:&SESSION.:&SESSION.:&DEBUG.:&DEBUG.::'
,p_button_cattributes=>'style="background: transparent; box-shadow: none;" '
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1118545034111807979)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(2868184119211032826)
,p_button_name=>'SKIP_FLAG_5'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(3275795122090542834)
,p_button_image_alt=>'<img id="skiplbl" src="#APP_IMAGES#skip.png" width="80" height="40"> '
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_button_cattributes=>'style="background: transparent; box-shadow: none;" '
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1118545345009807979)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(2868184119211032826)
,p_button_name=>'SKIP_FLAG_6'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(3275795122090542834)
,p_button_image_alt=>'<img id="skiplbl" src="#APP_IMAGES#skip.png" width="80" height="40"> '
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_button_cattributes=>'style="background: transparent; box-shadow: none;" '
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1118546091537808028)
,p_name=>'SetVolume'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(1118544156668807974)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1118546604948808031)
,p_event_id=>wwv_flow_api.id(1118546091537808028)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Get the video',
'var video = document.getElementById("myVideo")',
'var mVideo = document.getElementById("mobileVideo")',
'var v_img = document.getElementById("MuteBtn")',
'',
'if (!video) {',
'  if (mVideo.muted) {',
'    mVideo.muted = false',
'    v_img.src = "#APP_IMAGES#mute.png"',
'  } else {',
'    mVideo.muted = true',
'    v_img.src = "#APP_IMAGES#unmute.png"',
'  }',
'} else {',
'  if (video && video.muted) {',
'    video.muted = false',
'    v_img.src = "#APP_IMAGES#mute.png"',
'  } else {',
'    video.muted = true',
'    v_img.src = "#APP_IMAGES#unmute.png"',
'  }',
'}',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1118545759682808027)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SetParam'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_status  varchar2(10000);',
'v_maslul_code number;',
'begin',
'',
'',
' begin',
'   ',
'Select  NVL(app_page,1) , maslul',
'into   :APP_LTS_PAGE     ,v_maslul_code    ',
'from  jafi_lts_events_v t',
'where t.person_id = :P0_PERSON_ID;',
'      ',
'    exception',
'      when others then',
'     :APP_LTS_PAGE := 1;',
'   ',
'  end;',
' ',
'',
'IF :P0_EVENT_FLAG  in (1,2) THEN',
'   if :P0_EVENT_FLAG  = 1 then ',
'      v_status := ''LTSSW'';  ',
'   else',
'    v_status := ''LTSPI'';',
'   end if; ',
'  ',
'  :P0_COUPLE_TEXT := JAFI_LTS_APEX_UTILS.get_places_for_applicant(:P0_PERSON_ID, v_status) ; ',
'',
'   if :P0_COUPLE_TEXT <> ''1'' and :P0_COUPLE_TEXT <> ''0''  then ',
'          :APP_LTS_PAGE := 15;   ',
'   end if; ',
'   ',
'END IF;    ',
'',
'   Begin ',
'        select jafi_hr_pkg.get_person_heb_name2 (paaf.ass_attribute30), ',
'               jafi_hr_pkg.Get_Email_Address (paaf.ass_attribute30),',
'               paaf.ass_attribute30, ',
'               l.DESCRIPTION',
'           --   ''javascript:window.open(''||l.DESCRIPTION||'')''            ',
'      into  :P0_MENAHEL_TIK_NAME,',
'              :P0_MENAHEL_TIK_EMAIL,',
'              :P0_MENAHEL_TIK_ID,',
'              :PO_FA_LINK                                 ',
'              ',
'        from per_all_assignments_f paaf,',
'              fnd_common_lookups l',
'        where trunc (sysdate) between paaf.effective_start_date and paaf.effective_end_date ',
'        and paaf.assignment_id  = :P0_ASSIGNMENT_ID',
'        and l.LOOKUP_TYPE (+)= ''JAFI_HR_IRC_MENAHELET_TIK'' ',
'        and ASS_ATTRIBUTE30 = l.LOOKUP_CODE(+) ; ',
'          ',
'   exception',
'      when others then',
'          :P0_MENAHEL_TIK_NAME := ''N/A'';',
'          :P0_MENAHEL_TIK_EMAIL := ''N/A'';',
'          :P0_MENAHEL_TIK_ID :=0;',
'          :PO_FA_LINK        := ''https://www.ynet.co.il/home/0,7340,L-8,00.html'';',
'  end ;',
'end ;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
