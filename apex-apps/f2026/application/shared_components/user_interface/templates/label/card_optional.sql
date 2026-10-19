prompt --application/shared_components/user_interface/templates/label/card_optional
begin
--   Manifest
--     LABEL TEMPLATE: CARD_-_OPTIONAL_
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>220
,p_default_id_offset=>1696803741697335224
,p_default_owner=>'APPS'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(10017481190728682)
,p_template_name=>'Card - Optional '
,p_internal_name=>'CARD_-_OPTIONAL_'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer" style="display:flex;justify-content:center;padding:0">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" style = "color: #172B54;text-align: center;font-size: 16px;font-weight: 500;"',
'       class="t-Form-label card-type">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer card-type-wrapper t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#" style="flex-direction: column-reverse;display: flex">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper" style="display:flex;justify-content:center;align-items: center;',
'    min-height: 46px;">#ITEM_PRE_TEXT#'))
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_preset_template_options=>'t-Form-fieldContainer--postTextBlock'
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
