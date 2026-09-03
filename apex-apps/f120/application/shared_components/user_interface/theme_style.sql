prompt --application/shared_components/user_interface/theme_style
begin
--   Manifest
--     THEME STYLE: 120
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>120
,p_default_id_offset=>3303201628629764337
,p_default_owner=>'APPS'
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(3275793298863542823)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(3275793098398542822)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(3275792927864542822)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(3275792664736542822)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(3275792434628542822)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(3275697558909363550)
,p_theme_id=>42
,p_name=>'VitaLTS'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_config=>'{"customCSS":".t-Login-region {\n    background-color: #ffffff;\n}\n.t-Login-title {\n    font-size: 32px;\n    color:#3a8b94;\n    font-weight: 700;\n    text-align: right;\n    line-height: 32px;\n}\n.t-Login-header {\npadding:0 0 0 0;\n}\nbody .ui'
||'-dialog .ui-dialog-titlebar {\n    background-color: #3a8b94;\n    border-bottom: 1px solid rgba(0, 0, 0, 0.05);\n}\n\n\n.t-Region--carousel .a-Region-carouselLink {\n    background-color: #D02C68;\n    border-radius: 100%;\n    box-shadow: 0 0 0 1px'
||' rgb(0 0 0 / 10%) inset;\n     width:25px;\n  height:25px;\n}\n\n.t-Alert--page.t-Alert--warning {\n    background-color: white;\n    color: #3A8B94;\n}\n\n.t-Alert--page .t-Button--closeAlert {\n    \n    background-color: #3A8B94!important;\n\t}\n\'
||'n\n","vars":{"@g_Accent-BG":"rgba(58, 139, 148, 1)","@g_Accent-OG":"rgba(246, 246, 247, 1)","@g_Region-Header-FG":"rgba(57, 139, 148, 1)","@g_Button-BorderRadius":"6px","@g_Region-BG":"rgba(246, 246, 247, 1)"}}'
,p_theme_roller_output_file_url=>'#THEME_DB_IMAGES#373487292690865300.css'
,p_theme_roller_read_only=>false
);
wwv_flow_api.component_end;
end;
/
