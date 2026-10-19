prompt --application/shared_components/user_interface/templates/button/text_003
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
 p_id=>wwv_flow_api.id(5843813714039240)
,p_template_name=>'Portal no bg Orange Text Btn'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-orange-btn #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" STYLE="height:48px;BACKGROUND-COLOR: TRANSPARENT;BOX-SHADOW: NONE; padding-right: 0; padding-bottom: 0;"><span class='
||'"t-Button-label" style="color: #E84C26;font-size:16px;font-weight:500">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.component_end;
end;
/
