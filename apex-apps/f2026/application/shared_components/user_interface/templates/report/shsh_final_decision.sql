prompt --application/shared_components/user_interface/templates/report/shsh_final_decision
begin
--   Manifest
--     ROW TEMPLATE: SHSH_FINAL_DECISION
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
 p_id=>wwv_flow_api.id(119525255349540048)
,p_row_template_name=>'SHSH Final Decision 1'
,p_internal_name=>'SHSH_FINAL_DECISION'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="candidate-card" style="background-color: white; width: 269px; height: 269px; border-radius: 10px; padding: 15px; box-shadow: 0px 4px 20px 0px #0000000D; display: flex; flex-direction: column; align-items: center">',
'    <div class="candidate-files" style="width: 100%; height: 15px;">',
'        <a href="#VIDEO_LINK#" target="_blank" style="float: left;"><img src="#APP_IMAGES#video-icon.svg" class="#VIDEO_CLASS#" /></a>',
'        <a href="#DOWNLOAD_LINK#" target="_blank" style="float: right; top: 3px; right: 2px; position: relative;"><img src="#APP_IMAGES#download-icon.svg" class="#DOWNLOAD_CLASS#" /></a>',
'    </div>',
'    <div style="width: 69px; height: 69px; border-radius: 35px; background-color: #D9D9D9; background-image: url(#PHOTO_LINK#); background-size: cover; background-repeat: no-repeat; background-position: center;">',
'    </div>',
'    <span class="candidate-name" style="font-weight: 700; margin-top: 5px; font-size: 20px; line-height: 35px;">#NAME#</span>',
'    <span class="candidate-gender" style="font-weight: 500; font-size: 16px; margin-bottom: auto;">#GENDER#</span>',
'    <div class="candidate-days-left desktop-br" style="width: 241px; height: 40px; border-radius: 5px; background-color: #FFF2ED; display: flex; align-items: center; font-size: 14px;">',
'        <img src="#APP_IMAGES#hourglass.svg" style="margin-right: 5px; margin-left: 5px;" />',
'        <span style="top: 1px; position: relative; margin-right: 5px; font-weight: 500;">#DAYS_LEFT# Days</span>',
'        <span style="top: 1px; position: relative;">Left for Hiring Decision</span>',
'    </div>',
'    <div class="candidate-days-left mobile-br" style="width: 241px; height: 40px; border-radius: 5px; background-color: #FFF2ED; display: none; align-items: center; font-size: 14px;">',
'        <img src="#APP_IMAGES#hourglass.svg" style="margin-right: 2px; margin-left: 5px; top: -10px; position: relative;" />',
'        <div class="days-left-text">',
'            <span style="font-weight: 500;">#DAYS_LEFT# Days</span>',
'            <span style="">Left for Hiring Decision</span>',
'        </div>',
'    </div>',
'    <div class="decision-buttons-container" style="margin-top: auto; width: 241px; height: 33px; font-size: 16px; font-weight: 500; display: flex; gap: 4%;">',
'        <span class="decline-btn" data-person-id="#PERSON_ID#" data-assignment-id="#ASSIGNMENT_ID#" data-name="#NAME#" data-gender="#GENDER#" data-photo-link="#PHOTO_LINK#" style="width: 48%; padding: 10px; border-radius: 5px; display: flex; gap: 10p'
||'x; align-content: center; flex-wrap: wrap; justify-content: center;">',
'            <img src="#APP_IMAGES#thumb-down.svg"/>',
'            <span>Decline</span>',
'        </span>',
'        <span class="hire-btn" data-person-id="#PERSON_ID#" data-assignment-id="#ASSIGNMENT_ID#" data-name="#NAME#" data-gender="#GENDER#" data-photo-link="#PHOTO_LINK#" style="width: 48%; padding: 10px; border-radius: 5px; display: flex; gap: 10px; '
||'align-content: center; flex-wrap: wrap; justify-content: center;">',
'            <img src="#APP_IMAGES#thumb-up.svg"/>',
'            <span>Hire</span>',
'        </span>',
'    </div>',
'</div>'))
,p_row_template_condition1=>':TYPE = ''Active Candidate'' AND :DAYS_LEFT <= 3'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="candidate-card" style="background-color: white; width: 269px; height: 269px; border-radius: 10px; padding: 15px; box-shadow: 0px 4px 20px 0px #0000000D; display: flex; flex-direction: column; align-items: center; filter: grayscale(100%); '
||'color: #A3A3A3;">',
'    <div class="candidate-files" style="width: 100%; min-height: 15px;">',
'        <span style="float: left;"><img style="opacity: 0.5;" src="#APP_IMAGES#video-icon.svg" class="#VIDEO_CLASS#" /></span>',
'        <span style="float: right; top: 3px; right: 2px; position: relative;"><img style="opacity: 0.6;" src="#APP_IMAGES#download-icon.svg" class="#DOWNLOAD_CLASS#" /></span>',
'    </div>',
'    <div style="width: 69px; height: 69px; border-radius: 35px; background-color: #D9D9D9; background-image: url(#PHOTO_LINK#); background-size: cover; background-repeat: no-repeat; background-position: center;">',
'    </div>',
'    <span class="candidate-name" style="font-weight: 700; margin-top: 5px; font-size: 20px; line-height: 35px;">#NAME#</span>',
'    <span class="candidate-gender" style="font-weight: 500; font-size: 16px; ">#GENDER#</span>',
'    <div class="decision-buttons-container" style="margin-top: auto; width: 241px; height: 33px; font-size: 16px; font-weight: 500; display: flex; gap: 4%;">',
'        <span class="decline-btn-inactive" style="width: 48%; padding: 10px; border-radius: 5px; display: flex; gap: 10px; align-content: center; flex-wrap: wrap; justify-content: center;">',
'            <img style="opacity: 0.4;" src="#APP_IMAGES#thumb-down.svg"/>',
'            <span>Decline</span>',
'        </span>',
'        <span class="hire-btn-inactive" style="width: 48%; padding: 10px; border-radius: 5px; display: flex; gap: 10px; align-content: center; flex-wrap: wrap; justify-content: center;">',
'            <img style="opacity: 0.4;" src="#APP_IMAGES#thumb-up.svg"/>',
'            <span>Hire</span>',
'        </span>',
'    </div>',
'</div>'))
,p_row_template_condition2=>':TYPE = ''Closed Application'''
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="candidate-card" style="background-color: white; width: 269px; height: 269px; border-radius: 10px; padding: 15px; box-shadow: 0px 4px 20px 0px #0000000D; display: flex; flex-direction: column; align-items: center">',
'    <div class="candidate-files" style="width: 100%; height: 15px;">',
'        <a href="#VIDEO_LINK#" target="_blank" style="float: left;"><img src="#APP_IMAGES#video-icon.svg" class="#VIDEO_CLASS#" /></a>',
'        <a href="#DOWNLOAD_LINK#" target="_blank" style="float: right; top: 3px; right: 2px; position: relative;"><img src="#APP_IMAGES#download-icon.svg" class="#DOWNLOAD_CLASS#" /></a>',
'    </div>',
'    <div style="width: 69px; height: 69px; border-radius: 35px; background-color: #D9D9D9; background-image: url(#PHOTO_LINK#); background-size: cover; background-repeat: no-repeat; background-position: center;">',
'    </div>',
'    <span class="candidate-name" style="font-weight: 700; margin-top: 5px; font-size: 20px; line-height: 35px;">#NAME#</span>',
'    <span class="candidate-gender" style="font-weight: 500; font-size: 16px; margin-bottom: auto;">#GENDER#</span>',
'    <div class="candidate-days-left desktop-br" style="width: 241px; height: 40px; border-radius: 5px; background-color: #EDF9FF; display: flex; align-items: center; font-size: 14px;">',
'        <img src="#APP_IMAGES#hourglass.svg" style="margin-right: 5px; margin-left: 5px;" />',
'        <span style="top: 1px; position: relative; margin-right: 5px; font-weight: 500;">#DAYS_LEFT# Days</span>',
'        <span style="top: 1px; position: relative;">Left for Hiring Decision</span>',
'    </div>',
'    <div class="candidate-days-left mobile-br" style="width: 241px; height: 40px; border-radius: 5px; background-color: #EDF9FF; display: none; align-items: center; font-size: 14px;">',
'        <img src="#APP_IMAGES#hourglass.svg" style="margin-right: 2px; margin-left: 5px; top: -10px; position: relative;" />',
'        <div class="days-left-text">',
'            <span style="font-weight: 500;">#DAYS_LEFT# Days</span>',
'            <span style="">Left for Hiring Decision</span>',
'        </div>',
'    </div>',
'    <div class="decision-buttons-container" style="margin-top: auto; width: 241px; height: 33px; font-size: 16px; font-weight: 500; display: flex; gap: 4%;">',
'        <span class="decline-btn" data-person-id="#PERSON_ID#" data-assignment-id="#ASSIGNMENT_ID#" data-name="#NAME#" data-gender="#GENDER#" data-photo-link="#PHOTO_LINK#" style="width: 48%; padding: 10px; border-radius: 5px; display: flex; gap: 10p'
||'x; align-content: center; flex-wrap: wrap; justify-content: center;">',
'            <img src="#APP_IMAGES#thumb-down.svg"/>',
'            <span>Decline</span>',
'        </span>',
'        <span class="hire-btn" data-person-id="#PERSON_ID#" data-assignment-id="#ASSIGNMENT_ID#" data-name="#NAME#" data-gender="#GENDER#" data-photo-link="#PHOTO_LINK#" style="width: 48%; padding: 10px; border-radius: 5px; display: flex; gap: 10px; '
||'align-content: center; flex-wrap: wrap; justify-content: center;">',
'            <img src="#APP_IMAGES#thumb-up.svg"/>',
'            <span>Hire</span>',
'        </span>',
'    </div>',
'</div>'))
,p_row_template_condition3=>':TYPE = ''Active Candidate'' AND :DAYS_LEFT > 3'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="cards-container" style="display: flex; align-items: center; justify-content: flex-start; gap: 20px; flex-wrap: wrap; max-width: 847px;">',
''))
,p_row_template_after_rows=>' </div>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_theme_id=>42
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
