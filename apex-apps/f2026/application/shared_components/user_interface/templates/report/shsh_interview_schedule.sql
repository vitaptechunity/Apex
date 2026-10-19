prompt --application/shared_components/user_interface/templates/report/shsh_interview_schedule
begin
--   Manifest
--     ROW TEMPLATE: SHSH_INTERVIEW_SCHEDULE
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>220
,p_default_id_offset=>1696803741697335224
,p_default_owner=>'APPS'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(112326828171015346)
,p_row_template_name=>'SHSH Interview Schedule'
,p_internal_name=>'SHSH_INTERVIEW_SCHEDULE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="candidate-card" style="background-color: white; width: 269px; height: 269px; border-radius: 10px; padding: 15px; box-shadow: 0px 4px 20px 0px #0000000D; display: flex; flex-direction: column; align-items: center">',
'    <div class="candidate-files" style="width: 100%; min-height: 31.8px;">',
'        <a href="#VIDEO_LINK#" target="_blank" style="float: left;"><img src="#APP_IMAGES#video-icon.svg" class="#VIDEO_CLASS#" /></a>',
'        <a href="#DOWNLOAD_LINK#" target="_blank" style="float: right; top: 3px; right: 2px; position: relative;"><img src="#APP_IMAGES#download-icon.svg" class="#DOWNLOAD_CLASS#" /></a>',
'    </div>',
'    <div style="width: 69px; height: 69px; border-radius: 35px; background-color: #D9D9D9; background-image: url(#PHOTO_LINK#); background-size: cover; background-repeat: no-repeat; background-position: center;">',
'    </div>',
'    <span class="candidate-name" style="font-weight: 700; margin-top: 5px; font-size: 20px; line-height: 35px;">#NAME#</span>',
'    <span class="candidate-gender" style="font-weight: 500; font-size: 16px; ">#GENDER#</span>',
'    <div class="schedule-container" style="margin-top: auto; width: 241px; height: 57px; background-color: #EDF9FF; border-radius: 5px; padding: 10px; font-size: 14px; font-weight: 400; display: flex; gap: 5px;">',
'        <img src="#APP_IMAGES#calendar-icon.svg" style="width: 20px; height: 20px; position: relative; top: -2px;" />',
'        <span>',
'             <div class="desktop-br">Scheduled interview on</div>',
'             <div style="font-weight: 500;">#FORMATTED_DATE#</div>',
'        </span>',
'    </div>',
'</div>'))
,p_row_template_condition1=>':TYPE = ''Scheduled'''
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="candidate-card" style="background-color: white; width: 269px; height: 269px; border-radius: 10px; padding: 15px; box-shadow: 0px 4px 20px 0px #0000000D; display: flex; flex-direction: column; align-items: center">',
'    <div class="candidate-files" style="width: 100%; min-height: 31.8px;">',
'        <a href="#VIDEO_LINK#" target="_blank" style="float: left;"><img src="#APP_IMAGES#video-icon.svg" class="#VIDEO_CLASS#" /></a>',
'        <a href="#DOWNLOAD_LINK#" target="_blank" style="float: right; top: 3px; right: 2px; position: relative;"><img src="#APP_IMAGES#download-icon.svg" class="#DOWNLOAD_CLASS#" /></a>',
'    </div>',
'    <div style="width: 69px; height: 69px; border-radius: 35px; background-color: #D9D9D9; background-image: url(#PHOTO_LINK#); background-size: cover; background-repeat: no-repeat; background-position: center;">',
'    </div>',
'    <span class="candidate-name" style="font-weight: 700; margin-top: 5px; font-size: 20px; line-height: 35px;">#NAME#</span>',
'    <span class="candidate-gender" style="font-weight: 500; font-size: 16px; ">#GENDER#</span>',
'    <div class="schedule-container" style="margin-top: auto; width: 241px; height: 57px; background: #00000008; border-radius: 5px; padding: 10px; font-size: 14px; font-weight: 400; display: flex; gap: 5px;">',
'        <img src="#APP_IMAGES#calendar-icon.svg" style="width: 20px; height: 20px; position: relative; top: -2px;" />',
'        <span>',
'             <div>No scheduled interview yet</div>',
'        </span>',
'    </div>',
'</div>'))
,p_row_template_condition2=>':TYPE = ''Not Scheduled'''
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="cards-container" style="display: flex; align-items: center; justify-content: flex-start; gap: 20px; flex-wrap: wrap; max-width: 847px;">',
''))
,p_row_template_after_rows=>' </div>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_theme_id=>42
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
