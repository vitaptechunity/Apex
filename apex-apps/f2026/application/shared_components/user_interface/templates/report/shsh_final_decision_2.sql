prompt --application/shared_components/user_interface/templates/report/shsh_final_decision_2
begin
--   Manifest
--     ROW TEMPLATE: SHSH_FINAL_DECISION_2
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
 p_id=>wwv_flow_api.id(121634478055229329)
,p_row_template_name=>'SHSH Final Decision 2'
,p_internal_name=>'SHSH_FINAL_DECISION_2'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="candidate-card" style="background-color: white; width: 269px; height: 269px; border-radius: 10px; padding: 15px; box-shadow: 0px 4px 20px 0px #0000000D; display: flex; flex-direction: column; align-items: center">',
'    <div class="candidate-files" style="width: 100%; height: 20px; min-height: 31.8px;">',
'        <a href="#VIDEO_LINK#" target="_blank" style="float: left;"><img src="#APP_IMAGES#video-icon.svg" class="#VIDEO_CLASS#" /></a>',
'        <a href="#DOWNLOAD_LINK#" target="_blank" style="float: right; top: 3px; right: 2px; position: relative;"><img src="#APP_IMAGES#download-icon.svg" class="#DOWNLOAD_CLASS#" /></a>',
'    </div>',
'    <div style="width: 69px; height: 69px; border-radius: 35px; background-color: #D9D9D9; background-image: url(#PHOTO_LINK#); background-size: cover; background-repeat: no-repeat; background-position: center;">',
'    </div>',
'    <span class="candidate-name" style="font-weight: 700; margin-top: 5px; font-size: 20px; line-height: 35px; margin-top: auto;">#NAME#</span>',
'    <span class="candidate-gender" style="font-weight: 500; font-size: 16px; margin-bottom: auto;">#GENDER#</span>',
'    <div  class="candidate-decision" style="margin-top: auto; width: 241px; height: 33px; font-size: 16px; font-weight: 500; display: flex; justify-content: center; align-items: center;">',
'        <img class="desktop-br" src="#APP_IMAGES#hired.svg"/>',
'        <img class="mobile-br" style="display: none;" src="#APP_IMAGES#hired-mobile.svg"/>',
'    </div>',
'</div>'))
,p_row_template_condition1=>':TYPE = ''Pending Application'' AND :STATUS = 67'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="candidate-card" style="background-color: white; width: 269px; height: 269px; border-radius: 10px; padding: 15px; box-shadow: 0px 4px 20px 0px #0000000D; display: flex; flex-direction: column; align-items: center">',
'    <div class="candidate-files" style="width: 100%; height: 20px; min-height: 31.8px;">',
'        <a href="#VIDEO_LINK#" target="_blank" style="float: left;"><img src="#APP_IMAGES#video-icon.svg" class="#VIDEO_CLASS#" /></a>',
'        <a href="#DOWNLOAD_LINK#" target="_blank" style="float: right; top: 3px; right: 2px; position: relative;"><img src="#APP_IMAGES#download-icon.svg" class="#DOWNLOAD_CLASS#" /></a>',
'    </div>',
'    <div style="width: 69px; height: 69px; border-radius: 35px; background-color: #D9D9D9; background-image: url(#PHOTO_LINK#); background-size: cover; background-repeat: no-repeat; background-position: center;">',
'    </div>',
'    <span class="candidate-name" style="font-weight: 700; margin-top: 5px; font-size: 20px; line-height: 35px; margin-top: auto;">#NAME#</span>',
'    <span class="candidate-gender" style="font-weight: 500; font-size: 16px; margin-bottom: auto;">#GENDER#</span>',
'    <div class="candidate-decision" style="margin-top: auto; width: 241px; height: 33px; font-size: 16px; font-weight: 500; display: flex; justify-content: center; align-items: center;">',
'        <img class="desktop-br" src="#APP_IMAGES#second-option.svg"/>',
'        <img class="mobile-br" style="display: none;" src="#APP_IMAGES#second-option-mobile.svg"/>',
'    </div>',
'</div>'))
,p_row_template_condition2=>':TYPE = ''Pending Application'' AND :STATUS = 55'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="candidate-card" style="background-color: white; width: 269px; height: 269px; border-radius: 10px; padding: 15px; box-shadow: 0px 4px 20px 0px #0000000D; display: flex; flex-direction: column; align-items: center">',
'    <div class="candidate-files" style="width: 100%; height: 20px; min-height: 31.8px;">',
'        <a href="#VIDEO_LINK#" target="_blank" style="float: left;"><img src="#APP_IMAGES#video-icon.svg" class="#VIDEO_CLASS#" /></a>',
'        <a href="#DOWNLOAD_LINK#" target="_blank" style="float: right; top: 3px; right: 2px; position: relative;"><img src="#APP_IMAGES#download-icon.svg" class="#DOWNLOAD_CLASS#" /></a>',
'    </div>',
'    <div style="width: 69px; height: 69px; border-radius: 35px; background-color: #D9D9D9; background-image: url(#PHOTO_LINK#); background-size: cover; background-repeat: no-repeat; background-position: center;">',
'    </div>',
'    <span class="candidate-name" style="font-weight: 700; margin-top: 5px; font-size: 20px; line-height: 35px; margin-top: auto;">#NAME#</span>',
'    <span class="candidate-gender" style="font-weight: 500; font-size: 16px; margin-bottom: auto;">#GENDER#</span>',
'    <div  class="candidate-decision" style="margin-top: auto; width: 241px; height: 33px; font-size: 16px; font-weight: 500; display: flex; justify-content: center; align-items: center;">',
'        <img class="desktop-br" src="#APP_IMAGES#hired.svg"/>',
'        <img class="mobile-br" style="display: none;" src="#APP_IMAGES#hired-mobile.svg"/>',
'    </div>',
'</div>'))
,p_row_template_condition3=>':TYPE = ''Pending Application'' AND :STATUS IS NULL'
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
