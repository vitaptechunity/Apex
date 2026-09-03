prompt --application/shared_components/user_interface/templates/list/lts_cards_list
begin
--   Manifest
--     REGION TEMPLATE: LTS_CARDS_LIST
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>120
,p_default_id_offset=>3303201628629764337
,p_default_owner=>'APPS'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(3254410638194662946)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="splide__slide">',
'    <div class="card_list_slide">',
'        <h3 title="#TITLE#" class="CourseName">#TEXT#</h3>',
'        <div class="description">#A01#</div>',
unistr('        <div class="link"><a href="#LINK#">\05DC\05D4\05E8\05E9\05DE\05D4</a></div>'),
'    </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="splide__slide">',
'    <div class="card_list_slide">',
'        <h3 title="#TITLE#" class="CourseName">#TEXT#</h3>',
'        <div class="description">#A01#</div>',
unistr('        <div class="link"><a href="#LINK#">\05DC\05D4\05E8\05E9\05DE\05D4</a></div>'),
'    </div>',
'</li>'))
,p_list_template_name=>'LTS Cards List'
,p_internal_name=>'LTS_CARDS_LIST'
,p_javascript_file_urls=>'#APP_IMAGES#splide.min.js'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmlElement = document.documentElement;',
'var isRtl = htmlElement && htmlElement.getAttribute("dir") === "rtl" ? ''rtl'' : ''ltr'';',
'var splide = new Splide(''.splide'', {',
'    type: ''slide'',',
'    perPage: 3,',
'    perMove: 1,',
'    gap: "0px",',
'    arrowPath: ''M1 25L13 13L1 1'',',
'    pagination: false,',
'    autoScroll: {',
'        speed: 2,',
'    },',
'    direction:isRtl,',
'    breakpoints: {',
'		1199: {',
'			perPage: 2,',
'            pagination: true,',
'            arrows : false,',
'		},',
'        767: {',
'			perPage: 1,',
'            pagination: true,',
'            arrows : false,',
'		},',
'  }',
'});',
'splide.mount();',
''))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_IMAGES#splide.min.css',
'#APP_IMAGES#splide-default.min.css'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container-inner">',
'	<div class="splide">',
'		<div class="splide__track">',
'			<ul class="splide__list  splideListnew">'))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
' </ul>',
'        </div>',
'    </div>',
'</div>'))
,p_f_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="splide__slide">',
'    <div class="card_list_slide">',
'        <h3 title="#TITLE#" class="CourseName">#TEXT#</h3>',
'        <div class="description">#A01#</div>',
unistr('        <div class="link"><a href="#LINK#">\05DC\05D4\05E8\05E9\05DE\05D4</a></div>'),
'    </div>'))
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_a07_label=>'Subtitle'
);
wwv_flow_api.component_end;
end;
/
