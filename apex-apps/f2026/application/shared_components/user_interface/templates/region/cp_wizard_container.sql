prompt --application/shared_components/user_interface/templates/region/cp_wizard_container
begin
--   Manifest
--     REGION TEMPLATE: CP_WIZARD_CONTAINER
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
 p_id=>wwv_flow_api.id(1572085619207170)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="border: 0px solid;  box-shadow: none;" class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div  class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div  style ="padding: 0;" class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'     <div style="width:145px;" class="u-Table-fit t-Wizard-buttons">#NEXT#</div> ',
'    </div>',
'  </div>',
'  <div style="background:#F9F7F4;padding: 0;" class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'CP Wizard Container'
,p_internal_name=>'CP_WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall:margin-bottom-lg:margin-top-md'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1572472665207191)
,p_plug_template_id=>wwv_flow_api.id(1572085619207170)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.component_end;
end;
/
