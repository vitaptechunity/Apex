prompt --application/shared_components/user_interface/templates/region/rounded_box_435_200
begin
--   Manifest
--     REGION TEMPLATE: ROUNDED_BOX_435*200
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
 p_id=>wwv_flow_api.id(30951025447039767)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES# t-pointer-edit-rg"  style="width: 435px; min-height: 200px; border:none; border-radius:10px; background:white; color:#172B54; display: none; flex-direction: column; align-it'
||'ems: center;gap: 7px; padding: 20px;">#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Rounded Box 435*200'
,p_internal_name=>'ROUNDED_BOX_435*200'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'margin-bottom-md'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
