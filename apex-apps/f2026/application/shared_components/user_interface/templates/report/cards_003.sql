prompt --application/shared_components/user_interface/templates/report/cards_003
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
 p_id=>wwv_flow_api.id(9963657594902100)
,p_row_template_name=>'Organizations Small Cards page4'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#" style="min-width:270px;">',
'<!-- <a href="javascript:void(0)" onclick="#CARD_LINK#" >',
'  <div',
'    style="width: 270px;',
'    min-height: 200px;',
'    border: none;',
'    border-radius: 10px;',
'    background: white;',
'    color: #172B54;',
'    display: flex;',
'    flex-direction: column;',
'    align-items: center;',
'    cursor: pointer;',
'    gap: 13px;',
'    padding-top: 25px;">',
'         <div style="position: relative; width: 100%; height: 50px;">',
'           <span style="font-weight: 500;font-size: 25px;text-align: center;position: absolute;left: 50%; top: 50%; transform: translate(-50%, -50%);"> ',
'               #ORG_NAME#</span>',
'          <img src="#APP_IMAGES#ic-edit.png" class="t-skill-edit" height="15px" style="position: absolute; right: 10px; transform: translateY(-50%);opacity:0"> ',
'      </div>',
'        <div style="min-height:25px;display:flex;flex-direction:row;justify-content: center; align-items: center;gap: 7px;margin-bottom: 5px;">',
'            #WORK_WITH#',
'      </div>',
'        <div style="display:flex;flex-direction:row;justify-content: center; align-items: center;gap: 7px;font-weight: 400;font-size: 16px;">  ',
'            <img src="#APP_IMAGES#empty-profile-picture.png	" height="11px"> #FULL_NAME#',
'        </div>',
'       <span class="t-skill-edit" style="font-weight: 500;font-size: 16px;text-align: center;color:#E84C26;opacity:0">See More</span>',
'  </div>',
'    </a>-->',
'</li>',
''))
,p_row_template_condition1=>':CARD_TYPE = ''EMPTY'''
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#" style="min-width:450px">',
'<!-- <a href="#CARD_LINK#" class="t-Card-wrapp">-->',
'  <div',
'    style="min-width: 450px;',
'    min-height: auto;',
'    padding-bottom: 10px;',
'    border: none;',
'    border-radius: 10px;',
'    background: white;',
'    color: #172B54;',
'    display: flex;',
'    flex-direction: column;',
'    align-items: center;',
'    gap: 7px;">',
' ',
'        <span style="font-weight: 500;font-size: 25px;text-align: center">#ORG_NAME#</span>',
'       <div style="min-height:25px;display:flex;flex-direction:row;justify-content: center; align-items: center;gap: 7px;margin-top:10px;margin-bottom: 5px;">',
'            #WORK_WITH#',
'      </div>',
'      <div style="display:flex;flex-direction:row;justify-content: center; align-items: center;gap: 7px;font-weight: 400;font-size: 16px;">  ',
'             <img src="#APP_IMAGES#empty-profile-picture.png" height="12px"/>',
'            <span style="font-weight: 400;font-size: 16px;text-align: center;">#FULL_NAME#</span>',
'        </div>',
'        <div style="display:flex;flex-direction:row;justify-content: center; align-items: center;gap: 7px;font-weight: 400;font-size: 16px;">  ',
'             <img src="#APP_IMAGES#ic-phone.svg	" height="12px"/>',
'            <span style="font-weight: 400;font-size: 16px;text-align: center;">#PHONE#</span>',
'        </div>',
'       <div style="display:flex;flex-direction:row;justify-content: center; align-items: center;gap: 7px;font-weight: 400;font-size: 16px;">  ',
'            <img src="#APP_IMAGES#ic-email.svg	" height="11px"/>',
'            <span style="font-weight: 400;font-size: 16px;text-align: center;">#MAIL#</span>     ',
'       </div>',
'',
'  </div>',
'  <!--  </a>-->',
'</li>',
''))
,p_row_template_condition2=>':CARD_TYPE = ''HEDAER_DETAILS'''
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#" style="width:fit-content;">',
'  <div style="min-width:217px;',
'              width: auto;',
'              min-height: 33px;',
'              color:#172B54;',
'              background-color: #F9F7F4;',
'              border-radius:5px;',
'              font-size: 16px;',
'              font-weight: 500;',
'              display: flex;',
'              justify-content: center;',
'              align-items: center;" class="t-Card"> ',
'      #CARD_TEXT# ',
'    </div>',
'</li>'))
,p_row_template_condition3=>':CARD_TYPE = ''HEDAER_DETAILS_CUBES'''
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#" STYLE="margin:0 auto; JUSTIFY-CONTENT: CENTER; ALIGN-ITEMS: CENTER;">',
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
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--cols:t-Cards--basic'
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
