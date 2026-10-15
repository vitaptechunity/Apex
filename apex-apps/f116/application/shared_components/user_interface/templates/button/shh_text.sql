prompt --application/shared_components/user_interface/templates/button/shh_text
begin
--   Manifest
--     BUTTON TEMPLATE: SHH_TEXT
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>503
,p_default_id_offset=>2556963023090302471
,p_default_owner=>'APPS'
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(111226816193989056)
,p_template_name=>'ZS_Link'
,p_internal_name=>'SHH_TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" style="background-color:transparent;"class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><img src="#LABEL#" width="40" height="40"></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" style="background-color:transparent;"class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><img src="#LABEL#" width="40" height="40"></button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.component_end;
end;
/
