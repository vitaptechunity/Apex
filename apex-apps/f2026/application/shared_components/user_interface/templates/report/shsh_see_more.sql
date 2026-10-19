prompt --application/shared_components/user_interface/templates/report/shsh_see_more
begin
--   Manifest
--     ROW TEMPLATE: SHSH_SEE_MORE
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>220
,p_default_id_offset=>1696803741697335224
,p_default_owner=>'APPS'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(195424393306232318)
,p_row_template_name=>'SHSH See More Requests'
,p_internal_name=>'SHSH_SEE_MORE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="shsh-request-card" style="background-color: #F9F7F4; width: 100%; height: 61px; display: flex; align-items: center; padding-left: 20px; border-radius: 7px;">',
'    <div class="shsh-request-cell" style="width: 34%;">#ESTIMATED_ARRIVAL_DATE#</div>',
'    <div class="shsh-request-cell" style="width: 8%;">#ARRIVAL_AIRPORT#</div>',
'    <div class="shsh-request-cell" style="width: 34%;">#ESTIMATED_RETURN_DATE#</div>',
'    <div class="shsh-request-cell" style="width: 8%;">#RETURN_AIRPORT#</div>',
'    <div class="shsh-request-cell" style="width: 13%; display: flex; align-items: center; gap: 7px;"><span style="background-color: #STATUS_COLOR#; border: 1px solid #STATUS_COLOR#; width: 11px; height: 11px; border-radius: 11px; display: block;"></s'
||'pan>#STATUS#</div>',
'    <div class="edit-request-btn" style="width: 3%;" data-request-id="#REQUEST_ID#" data-status="#STATUS#" data-form-type="#FORM_TYPE#"><img style="width: 17px; height: 17px; position: relative; top: 3px; right: 5px; cursor: pointer;" src="#APP_IMAGE'
||'S#ic-edit.png" /></div>',
'</div>'))
,p_row_template_condition1=>':CARD_TYPE = ''REQUEST'''
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="card-region-title" style="height: 20px; font-weight: 500; font-size: 16px; line-height: 20px; margin-bottom: 5px;">My Requests</div>',
'<div class="card-table" style="width: 100%; display: flex; flex-flow: column; gap: 15px; margin-bottom: 20px; font-weight: 500; font-size: 18px; line-height: 35px; letter-spacing: 0%;">',
'    <div class="card-header" style="width: 100%; display: flex; text-align: start; font-weight: 400; font-size: 16px; line-height: 35px; letter-spacing: 0%; color: #A3A3A3; margin-bottom: -15px; padding-left: 20px;">',
'        <div style="width: 34%;">Estimated Arrival Date</div>',
'        <div style="width: 8%;">Airport</div>',
'        <div style="width: 34%;">Estimated Return Date</div>',
'        <div style="width: 8%;">Airport</div>',
'        <div style="width: 13%;">Status</div>',
'        <div style="width: 3%;"></div>',
'    </div>'))
,p_row_template_after_rows=>'</div>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_theme_id=>42
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
