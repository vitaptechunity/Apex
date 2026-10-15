prompt --application/shared_components/user_interface/lovs/yes_no_partly
begin
--   Manifest
--     YES_NO_PARTLY
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>503
,p_default_id_offset=>2556963023090302471
,p_default_owner=>'APPS'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(119978609050743197)
,p_lov_name=>'YES_NO_PARTLY'
,p_lov_query=>'.'||wwv_flow_api.id(119978609050743197)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(119978609050743198)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'Y'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(119978609050743199)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'N'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(119978609050743200)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Partly'
,p_lov_return_value=>'P'
);
wwv_flow_api.component_end;
end;
/
