prompt --application/shared_components/user_interface/templates/button/text_004
begin
--   Manifest
--     BUTTON TEMPLATE: TEXT
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
 p_id=>wwv_flow_api.id(7178587321411621)
,p_template_name=>'Portal Orange Btn'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES# t-blue-btn" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" style="min-width:270px;min-height:48px;background-color:#E84C26;border-radius:10px;color:white"><span class="t-Button-l'
||'abel" style="font-size:16px;font-weight:600">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES# t-blue-btn" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label ">#LABEL#</span></button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.component_end;
end;
/
