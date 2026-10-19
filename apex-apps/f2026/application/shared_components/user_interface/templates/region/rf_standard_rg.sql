prompt --application/shared_components/user_interface/templates/region/rf_standard_rg
begin
--   Manifest
--     REGION TEMPLATE: RF_STANDARD_RG
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>220
,p_default_id_offset=>1696803741697335224
,p_default_owner=>'APPS'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2332880121796482)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style=" padding-left: 6%;  padding-right: 6%;  border-radius: 10px; box-shadow: 0px 4px 20px 0px rgba(0, 0, 0, 0.05);"',
'      class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'       <h2 class="t-Region-title" style ="color: #172B54; font-family: Roboto; font-size: 16px; font-weight: 400; line-height: 35px;"    id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'     ',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#',
'      <span class="js-maximizeButtonContainer"></span></div>',
' </div>',
'    ',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
' </div>',
' <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'CP Standard RG'
,p_internal_name=>'RF_STANDARD_RG'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody:margin-top-lg'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(2333317694796487)
,p_plug_template_id=>wwv_flow_api.id(2332880121796482)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(2333765027796488)
,p_plug_template_id=>wwv_flow_api.id(2332880121796482)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.component_end;
end;
/
