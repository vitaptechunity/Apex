prompt --application/shared_components/user_interface/templates/report/community_flight_request_new
begin
--   Manifest
--     ROW TEMPLATE: COMMUNITY_FLIGHT_REQUEST_NEW
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
 p_id=>wwv_flow_api.id(275790535580911162)
,p_row_template_name=>'Community Flight Request New'
,p_internal_name=>'COMMUNITY_FLIGHT_REQUEST_NEW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="community-card" style="background-color: white; width: 269px; height: 269px; border-radius: 10px; padding: 15px; display: flex; flex-direction: column; align-items: center">',
'    <div class="buttons-container" style="width: 100%; max-height: 5px;">',
'        <span class="check-icon" data-assignment-id="#ASSIGNMENT_ID#" data-person-id="#PERSON_ID#" style="width: 31px; height: 31px; top: 3px; right: 2px; position: relative; border-radius: 50px; display: flex; padding: 4px; float: right;">',
'            <img src="#APP_IMAGES#check-inactive.svg" />',
'        </span>',
'    </div>',
'    <div class="community-photo" style="min-width: 69px; min-height: 69px; border-radius: 35px; background-color: #D9D9D9; background-image: url(#PHOTO#); background-size: cover; background-repeat: no-repeat; background-position: center;">',
'    </div>',
'    <span class="community-name" style="font-weight: 700; margin-top: 5px; font-size: 20px; line-height: 35px;">#NAME#</span>',
'    <span class="community-maslul" style="font-weight: 400; font-size: 14px; line-height: 15px; letter-spacing: 0%; text-align: center; color: #7A8497;">#MASLUL#</span>',
'    <span class="community-marital-status" style="font-weight: 400; font-size: 14px; line-height: 5px; letter-spacing: 0%; text-align: center; color: #7A8497; margin-top: 10px;">#MARITAL_STATUS#</span>',
'    <span class="community-requests" style="font-weight: 500; font-size: 16px; margin-top: auto; margin-bottom: 30px;">No Requests</span>',
'</div>'))
,p_row_template_condition1=>':CARD_TYPE_ID = ''BLANK'''
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="community-card" style="background-color: white; width: 269px; height: 269px; border-radius: 10px; padding: 15px; display: flex; flex-direction: column; align-items: center">',
'    <div class="buttons-container" style="width: 100%; height: 5px; max-height: 5px;">&nbsp;</div>',
'    <div class="community-photo" style="min-width: 69px; min-height: 69px; border-radius: 35px; background-color: #D9D9D9; background-image: url(#PHOTO#); background-size: cover; background-repeat: no-repeat; background-position: center;">',
'    </div>',
'    <span class="community-name" style="font-weight: 700; margin-top: 5px; font-size: 20px; line-height: 35px;">#NAME#</span>',
'    <span class="community-maslul" style="font-weight: 400; font-style: Regular; font-size: 14px; line-height: 15px; letter-spacing: 0%; text-align: center; color: #7A8497;">#MASLUL#</span>',
'    <span class="community-marital-status" style="font-weight: 400; font-style: Regular; font-size: 14px; line-height: 5px; letter-spacing: 0%; text-align: center; color: #7A8497; margin-top: 10px;">#MARITAL_STATUS#</span>',
'    <div class="see-more-container" style="display: flex; align-items: center; justify-content: center; border-radius: 5px; height: 79px; width: 100%; background-color: #F9F7F4; margin-top: auto; flex-direction: column;">',
'        <span class="community-requests" style="font-weight: 500; font-size: 16px;">#REQUESTS_COUNT# Requests</span>',
'        <span class="see-more" data-assignment-id="#ASSIGNMENT_ID#" data-person-id="#PERSON_ID#" data-request-id="#REQUEST_ID#" data-name="#NAME#" data-photo-url="#PHOTO#" style="font-weight: 500; font-size: 16px; color: #E84C26; margin-top: 13px;">S'
||'ee More</span>',
'    </div>',
'</div>'))
,p_row_template_condition2=>':CARD_TYPE_ID = ''SEE_MORE'''
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
