prompt --application/shared_components/user_interface/templates/report/community_shlichut_request
begin
--   Manifest
--     ROW TEMPLATE: COMMUNITY_SHLICHUT_REQUEST
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
 p_id=>wwv_flow_api.id(59325175918710479)
,p_row_template_name=>'Community Shlichut Request'
,p_internal_name=>'COMMUNITY_SHLICHUT_REQUEST'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(() => {',
'    $(''.hidden-if-null'').each(function() {',
'        if ($(this).data(''v'') != '''') {',
'            $(this).show();',
'        }',
'    });',
'});'))
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#" style="min-width:269px; width: 269px; box-shadow: 0px 4px 20px 0px #0000000D;">',
'    <a href="javascript:void(0)" class="replace-shaliach-btn" data-person-id="#PERSON_ID#" data-name="#FIRST_NAME# #LAST_NAME#" data-maslul="#MASLUL#">',
'        <div class="background" style="width: 269px; min-height: 291px; border: none; border-radius: 10px; background: white; color: #172B54; display: flex; flex-direction: column; align-items: center; text-align: center; cursor: pointer; gap: 13px; '
||'padding-top: 25px; padding-left: 10px; padding-right: 10px;">',
'            ',
'            <div style="flex-direction:row; font-weight: 500; font-size: 14px; width: 100%;">',
'                <div style="width: 69px;height: 69px;border-radius: 50%;background: url(#IMAGE_URL#); margin: auto auto 10px auto; background-size: 69px; background-repeat: no-repeat; background-position: center; background-color: #D9D9D9;"></div>',
'                <#NAME_ELEMENT# class="shaliach-name" style="font-size: 20px; line-height: 35px; text-wrap: nowrap; overflow: hidden;">#FIRST_NAME# #LAST_NAME#</#NAME_ELEMENT#>',
'                <div style="line-height: 35px;">#MASLUL#</div>',
'                <div class="dates-container" style="border-radius: 5px; border: 1px solid #F9F7F4; background-color: #F9F7F4; font-size: 14px; height: 76px; justify-content: center; display: flex; flex-direction: column; align-items: start; padding-l'
||'eft: 10px;">',
'                    <div class="start-date-container" style="font-weight: 400; margin-bottom: 5px; justify-content: center; display: flex;">',
'                        <img src="#APP_IMAGES#plane_land.svg" height="16" width="16" style="margin-right: 5px;" />',
'                        <div>Start Date</div> ',
'                        <div class="start-date-value" style="font-weight: 500; margin-left: 5px;">#STR_DATE_START#</div>',
'                    </div>',
'                    <div class="end-date-container" style="font-weight: 400; justify-content: center; display: flex;">',
'                        <img src="#APP_IMAGES#plane_take_off.svg" height="16" width="16" style="margin-right: 5px;" />',
'                        <div>End Date</div> ',
'                        <div class="end-date-value" style="font-weight: 500; margin-left: 5px;">#STR_ACTUAL_TERMINATION_DATE#</div>',
'                    </div>',
'                </div>',
'                <div class="replace-shaliach-text" style="font-weight: 500; font-size: 16px; text-align: center; color:#E84C26; line-height: 40px;">Replace Shaliach</div>',
'            </div>',
'        </div>',
'    </a>',
'</li>',
''))
,p_row_template_condition1=>':TYPE = ''MAIN'''
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#" style="min-width:269px; width: 269px; box-shadow: 0px 4px 20px 0px #0000000D;">',
'    <a href="javascript:void(0)" class="replace-shaliach-btn" data-person-id="#PERSON_ID#" data-name="#FIRST_NAME# #LAST_NAME#" data-maslul="#MASLUL#">',
'        <div class="background" style="width: 269px; min-height: 291px; border: none; border-radius: 10px; background: white; color: #172B54; display: flex; flex-direction: column; align-items: center; text-align: center; cursor: pointer; gap: 13px; '
||'padding-top: 25px; padding-left: 10px; padding-right: 10px;">',
'            ',
'            <div style="flex-direction:row; font-weight: 500; font-size: 14px; width: 100%;">',
'                <div style="width: 69px;height: 69px;border-radius: 50%;background: url(#APP_IMAGES#anonymous-user.jpeg); margin: auto auto 10px auto; background-size: 69px; background-repeat: no-repeat; background-position: center; background-color:'
||' #D9D9D9;"></div>',
'                <#NAME_ELEMENT# class="shaliach-name" style="font-size: 20px; line-height: 35px; text-wrap: nowrap; overflow: hidden;">#FIRST_NAME# #LAST_NAME#</#NAME_ELEMENT#>',
'                <div style="line-height: 35px;">#MASLUL#</div>',
'                <div class="dates-container" style="border-radius: 5px; border: 1px solid #F9F7F4; background-color: #F9F7F4; font-size: 14px; height: 76px; justify-content: center; display: flex; flex-direction: column; align-items: start; padding-l'
||'eft: 10px;">',
'                    <div class="start-date-container" style="font-weight: 400; margin-bottom: 5px; justify-content: center; display: flex;">',
'                        <img src="#APP_IMAGES#plane_land.svg" height="16" width="16" style="margin-right: 5px;" />',
'                        <div>Start Date</div> ',
'                        <div class="start-date-value" style="font-weight: 500; margin-left: 5px;">#STR_DATE_START#</div>',
'                    </div>',
'                    <div class="end-date-container" style="font-weight: 400; justify-content: center; display: flex;">',
'                        <img src="#APP_IMAGES#plane_take_off.svg" height="16" width="16" style="margin-right: 5px;" />',
'                        <div>End Date</div> ',
'                        <div class="end-date-value" style="font-weight: 500; margin-left: 5px;">#STR_ACTUAL_TERMINATION_DATE#</div>',
'                    </div>',
'                </div>',
'                <div class="replace-shaliach-text" style="font-weight: 500; font-size: 16px; text-align: center; color:#E84C26; line-height: 40px;">Replace Shaliach</div>',
'            </div>',
'            ',
'        </div>',
'    </a>',
'</li>'))
,p_row_template_condition2=>':TYPE = ''MAIN-NO-IMAGE'''
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#" style="min-width:269px; width: 269px; box-shadow: 0px 4px 20px 0px #0000000D;">',
'    <span href="javascript:void(0)" class="replace-shaliach-btn-rs" data-person-id="#PERSON_ID#" data-name="#FIRST_NAME# #LAST_NAME#" data-maslul="#MASLUL#">',
'        <div style="width: 269px; min-height: 291px; border: none; border-radius: 10px; background: white; color: #172B54; display: flex; flex-direction: column; align-items: center; text-align: center; gap: 13px; padding-top: 25px; padding-left: 10p'
||'x; padding-right: 10px;">',
'            ',
'            <div style="flex-direction:row; font-weight: 500; font-size: 14px; width: 100%;">',
'                <div style="width: 69px;height: 69px;border-radius: 50%;background: url(#IMAGE_URL#); margin: auto auto 10px auto; background-size: 69px; background-repeat: no-repeat; background-position: center; background-color: #D9D9D9;"></div>',
'                <#NAME_ELEMENT# class="shaliach-name" style="font-size: 20px; line-height: 35px; text-wrap: nowrap; overflow: hidden;">#FIRST_NAME# #LAST_NAME#</#NAME_ELEMENT#>',
'                <div style="line-height: 35px;">#MASLUL#</div>',
'                <div class="dates-container" style="border-radius: 5px; border: 1px solid #F9F7F4; background-color: #F9F7F4; font-size: 14px; height: 76px; justify-content: center; display: flex; flex-direction: column; align-items: start; padding-l'
||'eft: 10px;">',
'                    <div class="start-date-container" style="font-weight: 400; margin-bottom: 5px; justify-content: center; display: flex;">',
'                        <img src="#APP_IMAGES#plane_land.svg" height="16" width="16" style="margin-right: 5px;" />',
'                        <div>Start Date</div> ',
'                        <div class="start-date-value" style="font-weight: 500; margin-left: 5px;">#STR_DATE_START#</div>',
'                    </div>',
'                    <div class="end-date-container" style="font-weight: 400; justify-content: center; display: flex;">',
'                        <img src="#APP_IMAGES#plane_take_off.svg" height="16" width="16" style="margin-right: 5px;" />',
'                        <div>End Date</div> ',
'                        <div class="end-date-value" style="font-weight: 500; margin-left: 5px;">#STR_ACTUAL_TERMINATION_DATE#</div>',
'                    </div>',
'                </div>',
'                <div class="request-was-sent-container" style="font-weight: 500; font-size: 16px; text-align: center; color: #2D9CD7; line-height: 40px;">',
'                    <img src="#APP_IMAGES#blue-check-sign.svg" style="margin-right: 8px;"/>Request was sent',
'                </div>',
'            </div>',
'        </div>',
'    </span>',
'</li>',
''))
,p_row_template_condition3=>':TYPE = ''MAIN-REQUEST-SENT'''
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#" style="min-width:269px; width: 269px; box-shadow: 0px 4px 20px 0px #0000000D;">',
'    <span href="javascript:void(0)" class="replace-shaliach-btn-rs" data-person-id="#PERSON_ID#" data-name="#FIRST_NAME# #LAST_NAME#" data-maslul="#MASLUL#">',
'        <div style="width: 269px; min-height: 291px; border: none; border-radius: 10px; background: white; color: #172B54; display: flex; flex-direction: column; align-items: center; text-align: center; gap: 13px; padding-top: 25px; padding-left: 10p'
||'x; padding-right: 10px;">',
'            ',
'            <div style="flex-direction:row; font-weight: 500; font-size: 14px; width: 100%;">',
'                <div style="width: 69px;height: 69px;border-radius: 50%;background: url(#APP_IMAGES#anonymous-user.jpeg); margin: auto auto 10px auto; background-size: 69px; background-repeat: no-repeat; background-position: center; background-color:'
||' #D9D9D9;"></div>',
'                <#NAME_ELEMENT# class="shaliach-name" style="font-size: 20px; line-height: 35px; text-wrap: nowrap; overflow: hidden;">#FIRST_NAME# #LAST_NAME#</#NAME_ELEMENT#>',
'                <div style="line-height: 35px;">#MASLUL#</div>',
'                <div class="dates-container" style="border-radius: 5px; border: 1px solid #F9F7F4; background-color: #F9F7F4; font-size: 14px; height: 76px; justify-content: center; display: flex; flex-direction: column; align-items: start; padding-l'
||'eft: 10px;">',
'                    <div class="start-date-container" style="font-weight: 400; margin-bottom: 5px; justify-content: center; display: flex;">',
'                        <img src="#APP_IMAGES#plane_land.svg" height="16" width="16" style="margin-right: 5px;" />',
'                        <div>Start Date</div> ',
'                        <div class="start-date-value" style="font-weight: 500; margin-left: 5px;">#STR_DATE_START#</div>',
'                    </div>',
'                    <div class="end-date-container" style="font-weight: 400; justify-content: center; display: flex;">',
'                        <img src="#APP_IMAGES#plane_take_off.svg" height="16" width="16" style="margin-right: 5px;" />',
'                        <div>End Date</div> ',
'                        <div class="end-date-value" style="font-weight: 500; margin-left: 5px;">#STR_ACTUAL_TERMINATION_DATE#</div>',
'                    </div>',
'                </div>',
'                <div class="request-was-sent-container" style="font-weight: 500; font-size: 16px; text-align: center; color: #2D9CD7; line-height: 40px;">',
'                    <img src="#APP_IMAGES#blue-check-sign.svg" style="margin-right: 8px;"/>Request was sent',
'                </div>',
'            </div>',
'        </div>',
'    </span>',
'</li>'))
,p_row_template_condition4=>':TYPE = ''MAIN-NO-IMAGE-REQUEST-SENT'''
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#" STYLE="margin:0 auto; justify-content: center; align-items: center;width: 100%;max-width: 860px; gap: 20px;">',
'  '))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
