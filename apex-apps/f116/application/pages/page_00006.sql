prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(119978609050743808)
,p_name=>'Display Document'
,p_alias=>'DISPLAY-DOCUMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Document View'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var zoom = 100;'
,p_javascript_code_onload=>'/*$(''.ui-dialog-title'',parent ? parent.document : document).text($v(''P5_NAME''));*/'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Button--iconLeft .t-Icon {',
'    margin-right: 10px;',
'}',
'',
'.t-Dialog-body {',
'    padding: 0;',
'}'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_dialog_height=>'700'
,p_dialog_attributes=>'close: function(event, ui) { apex.navigation.dialog.close(true, { ''dialogPageId'': 6 });}'
,p_dialog_css_classes=>'display-documents-dialog'
,p_dialog_chained=>'N'
,p_last_updated_by=>'DRORA'
,p_last_upd_yyyymmddhh24miss=>'20260531161225'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(740229212130543793)
,p_plug_name=>'PDF Container'
,p_region_name=>'pdfContainer'
,p_region_template_options=>'#DEFAULT#:t-Form--leftLabels:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_region_attributes=>'style="height: 90vh;"'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<iframe id="filesViewer" width="100%" style="height: 90vh;"></iframe>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_column_width=>'style="height: 90vh;"'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P6_DOC_FOUND = ''Y'' and :P6_MIME_TYPE = ''application/pdf'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1159610734119045258)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(119978609050743288)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1574402843941009031)
,p_plug_name=>'Document Not Found'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex; flex-direction: column; justify-content: center; align-items: center; width: 100%; height: 300px;">',
'    <div class="fa fa-search" style="margin-bottom: 15px; font-size: 40px;"></div>',
'    <h3>Document Not Found!</h3>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P6_DOC_FOUND'
,p_plug_display_when_cond2=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1574403156873009034)
,p_plug_name=>'Image Container'
,p_region_name=>'imageContainer'
,p_region_template_options=>'#DEFAULT#:t-Form--leftLabels:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<iframe style="display: none;" id="filesViewer1" width="100%" height="565px"></iframe>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_column_width=>'height="100%"'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P6_DOC_FOUND = ''Y'' and :P6_MIME_TYPE != ''application/pdf'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(725160132253671049)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1159610734119045258)
,p_button_name=>'Zoom_In'
,p_button_static_id=>'rotateBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Zoom In'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P6_DOC_FOUND = ''Y'' and :P6_MIME_TYPE != ''application/pdf'' and 1 = 2'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_button_css_classes=>'zoomInBtn'
,p_icon_css_classes=>'fa-search-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(740231020523543811)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1159610734119045258)
,p_button_name=>'Zoom_Out'
,p_button_static_id=>'rotateBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Zoom Out'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P6_DOC_FOUND = ''Y'' and :P6_MIME_TYPE != ''application/pdf'' and 1 = 2'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_button_css_classes=>'zoomOutBtn'
,p_icon_css_classes=>'fa-search-minus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(725160477249671047)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1159610734119045258)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(119978609050743280)
,p_button_image_alt=>'Close'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(468944355892370302)
,p_name=>'P6_REQUEST_ID'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_api.id(674150852101946689)
,p_item_default=>'SELECT jafi_hr_pkg.get_person_eng_name(:P6_PERSON_ID) from dual'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(725159046698671055)
,p_name=>'P6_DISPLAY_IMG'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(1574403156873009034)
,p_use_cache_before_default=>'NO'
,p_source=>'BINARY_DOC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_attributes=>'width="100%"'
,p_colspan=>12
,p_grid_column_css_classes=>'image-col'
,p_display_when=>'P6_DOC_FOUND'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(119978609050743337)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BINARY_DOC from irc_documents',
'where /*assignment_id = :P6_ASSIGNMENT_ID and person_id = :P6_PERSON_ID and */',
'      document_id = :P6_DOC_ID and binary_doc is not null'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(725162868337671045)
,p_name=>'P6_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(674150852101946689)
,p_item_default=>'SELECT jafi_hr_pkg.get_person_eng_name(:P6_PERSON_ID) from dual'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(725163277468671044)
,p_name=>'P6_DOC_ID'
,p_item_sequence=>55
,p_item_plug_id=>wwv_flow_api.id(674150852101946689)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(725164036384671044)
,p_name=>'P6_DOC_FOUND'
,p_item_sequence=>75
,p_item_plug_id=>wwv_flow_api.id(674150852101946689)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(740228801169543789)
,p_name=>'P6_ASSIGNMENT_ID'
,p_item_sequence=>31
,p_item_plug_id=>wwv_flow_api.id(674150852101946689)
,p_item_default=>'SELECT jafi_hr_pkg.get_person_eng_name(:P6_PERSON_ID) from dual'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(740228863720543790)
,p_name=>'P6_PERSON_ID'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_api.id(674150852101946689)
,p_item_default=>'SELECT jafi_hr_pkg.get_person_eng_name(:P6_PERSON_ID) from dual'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(740228988828543791)
,p_name=>'P6_MIME_TYPE'
,p_item_sequence=>65
,p_item_plug_id=>wwv_flow_api.id(674150852101946689)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(725166033131671022)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(725160477249671047)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(725166526384671020)
,p_event_id=>wwv_flow_api.id(725166033131671022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(725167754117671019)
,p_name=>'Zoom In Click'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(725160132253671049)
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(725168252880671019)
,p_event_id=>wwv_flow_api.id(725167754117671019)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'zoom = zoom + 10;',
'$(''#filesViewer'').attr(''style'', ''zoom:'' + zoom + ''%;'');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(740229780067543799)
,p_name=>'Load File'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(740229857588543800)
,p_event_id=>wwv_flow_api.id(740229780067543799)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    $(''#filesViewer'').attr(''src'', ''f?p='' + $v(''pFlowId'') + '':0:'' + $v(''pInstance'') + '':APPLICATION_PROCESS=RETRIEVE_FILE:::P6_DOC_ID:'' + $v(''P6_DOC_ID'')); ',
'});',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(740231059789543812)
,p_name=>'Zoom Out Click'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(740231020523543811)
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(740231317061543814)
,p_event_id=>wwv_flow_api.id(740231059789543812)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//const imgDirect = $(''img'', $(''#filesViewer'').contents())[0];',
'//imgDirect.width = imgDirect.width - 50;',
'',
'zoom = zoom - 10;',
'$(''#filesViewer'').attr(''style'', ''zoom:'' + zoom + ''%;'');'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(725165158648671023)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(725165537315671022)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(740229128906543792)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Init'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select ''Y'', MIME_TYPE',
'    into :P6_DOC_FOUND, :P6_MIME_TYPE',
'    from irc_documents',
'    where /*assignment_id = :P6_ASSIGNMENT_ID and person_id = :P6_PERSON_ID and */',
'          document_id = :P6_DOC_ID and binary_doc is not null;',
'',
'    exception when no_data_found then :P6_DOC_FOUND := ''N'';',
'end;',
'',
'APEX_UTIL.SET_SESSION_STATE(''P6_DOC_ID'', :P6_DOC_ID);',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
