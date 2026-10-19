prompt --application/shared_components/user_interface/templates/button/text_005
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
 p_id=>wwv_flow_api.id(10113380236895156)
,p_template_name=>'Grey Img Cube'
,p_internal_name=>'TEXT'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button onclick="#JAVASCRIPT#" class="t-Button t-image-cube-btn #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" style="width:160px;min-width: 160px;height:110px;background-color:#F9F7F4;border-radius:5px;padding:0;box-shadow:'
||'none">',
'    <div class="t-image-cube-container" style="display:flex;flex-direction: column;gap:10px;font-weight: 500;font-size: 16px;text-align: center;color:#172B54;justify-content: center; align-items: center;">',
'        #LABEL#',
'    </div>',
'   <!-- <span class="t-Button-label">#LABEL#</span></button>-->'))
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.component_end;
end;
/
