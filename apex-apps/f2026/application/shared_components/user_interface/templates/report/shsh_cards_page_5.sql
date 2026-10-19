prompt --application/shared_components/user_interface/templates/report/shsh_cards_page_5
begin
--   Manifest
--     ROW TEMPLATE: SHSH_CARDS_PAGE_5
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
 p_id=>wwv_flow_api.id(28027516964493346)
,p_row_template_name=>'SHSH Cards Page 5'
,p_internal_name=>'SHSH_CARDS_PAGE_5'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''.selectedOrganizations'').each(function() {',
'    var selectedOrganizationNamesRaw = $(this).data(''org-names'');',
unistr('    var selectedOrganizationNames = selectedOrganizationNamesRaw.split(''\2588'');'),
'    var transparentClass = selectedOrganizationNames.length > 4 ? '' opaque-gradient'' : '''';',
'    ',
'    var html = ''<ul class="t-Cards t-Cards--animColorFill t-Cards--3cols t-Report--hideNoPagination t-Cards--basic org_name_cards'' + transparentClass + ''" style="max-height: 185px; overflow-y: auto; scrollbar-width: thin;" onscroll="chk_scroll(this)"'
||'>'';',
'    ',
'    selectedOrganizationNames.forEach((name) => {',
'        var marqueeRequired = name.length > 25;',
'        var cssClassParent = marqueeRequired ? ''marquee'' : '''';',
'        var cssClassChild = marqueeRequired ? ''marquee_item'' : '''';',
'        var width = marqueeRequired ? '' width: 213px;'' : '' width: 217px;'';',
'        ',
'        html += ''<li class="t-Cards-item #CARD_MODIFIERS#" style="width:100%;">'' +',
'                     ''<div style="color: #172B54; background: #F9F7F4; font-size: 16px; font-weight: 500; line-height: 35px;'' + width +',
'                                 '' height: 31px; margin-left: 18px; margin-right: 15px; border-radius: 5px; padding-left: 5px; padding-right: 5px;" class="t-Card">'' +',
'                     ''<div class="'' + cssClassParent + ''" style="padding-left: 5px; padding-right: 5px; width: 100%;">'' +',
'                             ''<div class="'' + cssClassChild + ''" style="text-wrap-mode: nowrap; text-align: center;">'' + name + ''</div>'';',
'        if (marqueeRequired) {',
'            for (var i = 0; i < 10; i++)',
'                html += ''<div class="'' + cssClassChild + ''" style="text-wrap-mode: nowrap; margin-left: 50px;">'' + name + ''</div>'';',
'        }',
'',
'        html += ''</div></div></li>'';',
'    });',
'    ',
'    html += ''</ul>'';',
'    $(this).html(html);',
'});',
'    ',
'',
'',
'/*<ul class="t-Cards t-Cards--animColorFill t-Cards--3cols t-Report--hideNoPagination t-Cards--basic lto494446734854298314_1" id="R494446734854298314_cards" data-region-id="R494446734854298314">',
'',
'<li class="t-Cards-item #CARD_MODIFIERS#" style="width:fit-content;">',
'  <div style="color: #172B54;',
'background: #F9F7F4;',
'font-size: 16px;',
'font-weight: 500;',
'line-height: 35px;',
'height: 31px;',
'width: auto;',
'padding-left: 15px;',
'padding-right: 15px;" class="t-Card"> Federation </div>',
'',
'</li>',
'',
'</ul>*/'))
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#" style="min-width:270px;width: auto;">',
' <a href="javascript:void(0)">',
'  <div class="p5-item"',
'    style="width: 435px;',
'    min-height: 260px;',
'    border: none;',
'    border-radius: 10px;',
'    background: white;',
'    color: #172B54;',
'    display: flex;',
'    flex-direction: column;',
'    align-items: center;',
'    cursor: pointer;',
'    gap: 13px;',
'    padding-top: 15px;">',
'       <button onclick="void(0);" style="padding:0;background-color:transparent;order:2;box-shadow: none;position: absolute; right: 15px; top: 15px;" class="t-Button lto524307049442173691_0 edit-btn" type="button" data-org-information-id="#ORG_INFORM'
||'ATION_ID#" data-requested-shsh="#ORG_INFORMATION1#" data-selected-orgs="#ORG_INFORMATION2#"><img src="apps/r/220/files/static/v148/ic-edit.png" width="auto" height="16"></button>',
'      <div class="shsh-count-grid" style="display: grid;grid-template-columns: 40% 60%;width: 100%;padding: 18px; padding-top: 5px;">',
'          <div class="t-Form-labelContainer shsh-count-label" style="text-align: left;">',
'            <div id="shshCountLabel" class="t-Form-label t-standard-optional-label" style="padding-bottom: 13px;font-size:16px; font-weight: 400; hyphens: none; color: #172B54;">Requested-SHSH</div>',
'          </div>',
'          <div class="t-Form-labelContainer selected-organizations-label" style="text-align: left;">',
'            <div id="selectedOrganizationsLabel" class="t-Form-label t-standard-optional-label" style="padding-bottom: 13px;font-size:16px; font-weight: 400; hyphens: none; color: #172B54;">Organizations (#SELECTED_ORG_COUNT# out of #MAX_ORG_COUNT#)<'
||'/div>',
'          </div>',
'          <div class="shshCount" style="padding-left: 8px; font-size: 45px; font-weight: 500; line-height: 35px; color: #172B54;">',
'              #ORG_INFORMATION1#',
'          </div>',
'          <div class="selectedOrganizations" data-org-ids="#ORG_INFORMATION2#" data-org-names="#ORG_NAMES#">',
'              ',
'          </div>',
'      </div>',
'  </div>',
'    </a>',
'</li>',
''))
,p_row_template_condition1=>':CARD_TYPE = ''SHSH'''
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS# add-more-container" style="min-width:270px;width: auto;">',
' <a href="javascript:void(0)" class="add-more-link">',
'  <div class="add-more-btn"',
'    style="width: 435px;',
'    min-height: 260px;',
'    border: none;',
'    border-radius: 10px;',
'    background: white;',
'    color: #172B54;',
'    display: flex;',
'    flex-direction: row;',
'    justify-content: center;',
'    align-items: center;',
'    cursor: pointer;',
'    gap: 13px;">',
'         <span aria-hidden="true" class="fa fa-plus"></span><span class="add-more" style="color:#172B54;font-size:18px;font-weight:400">Add More</span>',
'',
'',
'  </div>',
'    </a>',
'</li>',
''))
,p_row_template_condition2=>':CARD_TYPE = ''BLANK_ADD'''
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Cards t-Cards--cols #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#" STYLE="margin:20px auto; justify-content: center; align-items: center;width: 100%;max-width: 890px; gap: 2'
||'0px;">',
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
