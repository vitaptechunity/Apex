prompt --application/shared_components/user_interface/templates/report/cards
begin
--   Manifest
--     ROW TEMPLATE: CARDS
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
 p_id=>wwv_flow_api.id(2977818927966857)
,p_row_template_name=>'Contacts Cards page3'
,p_internal_name=>'CARDS'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*function openEditRg(job_title,full_name,phone, email){',
'',
' $(''#contacts-container'').hide(); ',
' ',
'',
'  $(''#P3_JOB_TITLE_UPD'').val(job_title);',
'  $(''#P3_FULL_NAME_UPD'').val(full_name);',
'  $(''#P3_PHONE_UPD'').val(phone);',
'  $(''#P3_EMAIL_UPD'').val(email);',
'    ',
'  $(''#edit-contact-rg'').show(); ',
'}*/'))
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#" style="min-width:350px">',
'    <a href="javascript:void(0)" onclick="#CARD_LINK#" >',
'        <div class="card-body"',
'            style="width: 350px;',
'            min-height: 210px;',
'            border: none;',
'            border-radius: 10px;',
'            background: white;',
'            color: #172B54;',
'            display: flex;',
'            flex-direction: column;',
'            align-items: center;',
'            justify-content: center;',
'            cursor: pointer;">',
'            <img src="#APP_IMAGES#new-contact.svg" />',
'        </div>',
'    </a>',
'</li>',
''))
,p_row_template_condition1=>':CARD_TYPE = ''N'''
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#" style="min-width:350px">',
' <a href="javascript:void(0)" onclick="#CARD_LINK#" >',
'  <div class="card-body"',
'    style="width: 350px;',
'    min-height: 210px;',
'    border: none;',
'    border-radius: 10px;',
'    background: white;',
'    color: #172B54;',
'    display: flex;',
'    flex-direction: column;',
'    align-items: center;',
'    cursor: pointer;',
'    gap: 7px;',
'    padding-top: 25px;">',
'         <div style="position: relative; width: 100%; height: 50px;">        ',
'        <img src="#APP_IMAGES#empty-profile-picture.png" height="35px" width="35px" style="position: absolute;left: 50%; top: 50%; transform: translate(-50%, -50%);"> ',
'          <img src="#APP_IMAGES#ic-edit.png" class="t-skill-edit" height="15px" style="position: absolute; right: 18px; transform: translateY(-50%);opacity:0"> ',
'      </div>',
'        <span style="font-weight: 500;font-size: 20px;text-align: center">#JOB_TITLE#</span>',
'        <span style="font-weight: 600;font-size: 16px;text-align: center;">#FULL_NAME#</span>',
'        <div style="display:flex;flex-direction:row;justify-content: center; align-items: center;gap: 7px;font-weight: 400;font-size: 16px;">  ',
'            #PHONE#',
'        </div>',
'       <div style="display:flex;flex-direction:row;justify-content: center; align-items: center;gap: 7px;font-weight: 400;font-size: 16px;">  ',
'           #MAIL#',
'          </div>',
'  </div>',
'    </a>',
'</li>',
''))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#" style="display: grid;',
'  grid-template-columns: repeat(2, auto);',
'  grid-gap: 10px 20px; ',
'  justify-content: center; ',
'  list-style: none;',
'  padding: 0;',
'  margin: 0 auto;">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
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
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--cols:t-Cards--basic'
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
