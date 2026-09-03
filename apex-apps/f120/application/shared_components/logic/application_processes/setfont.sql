prompt --application/shared_components/logic/application_processes/setfont
begin
--   Manifest
--     APPLICATION PROCESS: SetFont
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>120
,p_default_id_offset=>3303201628629764337
,p_default_owner=>'APPS'
);
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(3065320252220175192)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SetFont'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    :G_FONT := ''<style type="text/css">',
'     @font-face {',
'      font-family: "UltimativyMF-light";',
'      src: url(#APP_IMAGES#Ultimativy-Light.otf);',
'    }',
'    body {',
'        font-family: "UltimativyMF-light" !important;',
'    }',
'',
'    .ui-widget {',
'       font-family: "UltimativyMF-light" !important;',
'    }',
'   </style> '';',
'end;'))
);
wwv_flow_api.component_end;
end;
/
