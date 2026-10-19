prompt --application/shared_components/user_interface/templates/report/programs
begin
--   Manifest
--     ROW TEMPLATE: PROGRAMS
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
 p_id=>wwv_flow_api.id(693398594405039159)
,p_row_template_name=>'Programs'
,p_internal_name=>'PROGRAMS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#" style="width: 370px; height: 153px; display: flex; align-items: center; justify-content: center; border-radius: 10px; background-color: white; box-shadow: 0px 4px 20px 0px #0000000D; padding: 25px;" ',
'    data-approved="#APPROVED#" data-code="#PROGRAM_CODE#" data-name="#PROGRAM_NAME#">',
'    <div style="font-weight: 500; font-size: 18px; line-height: 22px; letter-spacing: 0%; text-align: center;">#PROGRAM_DESC#</div>',
'</li>'))
,p_row_template_condition1=>':APPROVED = ''N'''
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#" style="width: 370px; height: 153px; display: flex; align-items: center; justify-content: center; border: 1px solid #EFE8E0; border-radius: 10px; background-color: #F8F5F2; box-shadow: 0px 4px 20px 0px #000000'
||'0D; padding: 25px;" ',
'    data-approved="#APPROVED#" data-code="#PROGRAM_CODE#" data-name="#PROGRAM_NAME#">',
'    <img src="#APP_IMAGES#orange-checkmark.svg" style="position: absolute; top: 15px; right: 15px;" />',
'    <div style="font-weight: 500; font-size: 18px; line-height: 22px; letter-spacing: 0%; text-align: center; color: #E84C26;">#PROGRAM_DESC#</div>',
'</li>',
''))
,p_row_template_condition2=>':APPROVED = ''Y'''
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    .t-Cards-item:hover {',
'        color: #E84C26;',
'    }',
'</style>',
'',
'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#" STYLE="margin:0 auto; justify-content: center; align-items: center; width: 751px; gap: 10px; ">',
'  '))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
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
