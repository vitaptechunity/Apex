prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>503
,p_default_id_offset=>2556963023090302471
,p_default_owner=>'APPS'
);
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(119978609050743808)
,p_name=>'Import Flight Legs - Step 1'
,p_alias=>'IMPORT-FLIGHT-LEGS-STEP-1'
,p_step_title=>'Import Flight Legs - Step 1'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Button--iconLeft .t-Icon {',
'    margin-right: 10px;',
'}',
'',
'#importRegion > .container > .row:first-child {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'}',
'',
'#P7_FILE_CONTAINER {',
'    background-color: #fafafa;',
'    border-color: #ededed;',
'}',
'',
'#P7_FILE_GROUP {',
'    width: 100%;',
'}',
'',
'div[role="alertdialog"] {',
'    display: none !important;',
'}',
'',
'.ui-widget-overlay.ui-front {',
'    display: none !important;',
'}'))
,p_step_template=>wwv_flow_api.id(119978609050743267)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_last_updated_by=>'DRORA'
,p_last_upd_yyyymmddhh24miss=>'20260416132828'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(819159617091187319)
,p_plug_name=>'Import Flight Legs - Step 1'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(119978609050743312)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(819159077318187346)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(119978609050743325)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(819159683002187319)
,p_plug_name=>'Import Flight Legs - Step 1'
,p_region_name=>'importRegion'
,p_parent_plug_id=>wwv_flow_api.id(819159617091187319)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(819161418487187311)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(819159617091187319)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(119978609050743280)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(819161671182187311)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(819159617091187319)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(819162431148187309)
,p_branch_name=>'Go To Page 8'
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_FILENAME:&P7_FILE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(819161671182187311)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(819161121741187312)
,p_name=>'P7_FILE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(819159683002187319)
,p_prompt=>'File'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(119978609050743339)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_11=>'.csv, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-excel'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(801862559958360515)
,p_validation_name=>'File is not null'
,p_validation_sequence=>10
,p_validation=>'P7_FILE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please select a file'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_api.id(819161671182187311)
,p_associated_item=>wwv_flow_api.id(819161121741187312)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.component_end;
end;
/
