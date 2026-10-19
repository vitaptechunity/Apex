prompt --application/shared_components/user_interface/templates/button/rf_icon_btn
begin
--   Manifest
--     BUTTON TEMPLATE: RF_ICON_BTN
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>220
,p_default_id_offset=>1696803741697335224
,p_default_owner=>'APPS'
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(2910527574307047)
,p_template_name=>'CP_Small_Icon_Btn'
,p_internal_name=>'RF_ICON_BTN'
,p_template=>'<button onclick="#JAVASCRIPT#" style="padding:0;background-color:transparent;order:2;box-shadow: none;"class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><img src="#LABEL#" width="auto" height="16"></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" style="background-color:transparent;"class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><img src="#LABEL#" width="21" height="21"></button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.component_end;
end;
/
