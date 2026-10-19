prompt --application/shared_components/user_interface/templates/list/tabs
begin
--   Manifest
--     REGION TEMPLATE: TABS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>220
,p_default_id_offset=>1696803741697335224
,p_default_owner=>'APPS'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2125342479223692)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Tabs-item is-active #A03#" id="#A01#" #IS_DISABLED#>',
'    ',
'    <a href="#LINK#" class="t-Tabs-link #A04#"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-labell">#TEXT#</span></a></li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Tabs-item #A03#" id="#A01#" #IS_DISABLED#>',
'    <a href="#LINK#" class="t-Tabs-link #A04#"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-labell">#TEXT#</span></a></li>'))
,p_list_template_name=>'CP Custom Tabs'
,p_internal_name=>'TABS'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Wizard, .t-Wizard .t-Wizard-header{',
'    background-color: transparent !important;',
'}',
'',
'.t-Custom-Tabs .t-Tabs-link:hover{',
'    background-color: #FFFFFF59 !important;',
'    border-radius:5px',
'}',
'',
'.t-Custom-Tabs .t-Tabs-item.is-active .t-Tabs-link{',
'    background-color: #FFFFFF59;',
'    box-shadow: none !important;',
'    border-radius : 5px;',
'}'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs t-custom-sub-list-Tab t-Custom-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
);
wwv_flow_api.component_end;
end;
/
