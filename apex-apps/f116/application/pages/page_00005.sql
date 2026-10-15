prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(119978609050743808)
,p_name=>'Passports'
,p_alias=>'PASSPORTS'
,p_page_mode=>'MODAL'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'/*',
'let startY;',
'let startX;',
'let scrollLeft;',
'let scrollTop;',
'let isDown;',
'',
'function mouseUp(e){',
'  isDown = false;',
'}',
'',
'function mouseLeave(e){',
'  isDown = false;',
'}',
'',
'function mouseIsDown(e, region){',
'  isDown = true;',
'  startY = e.pageY - region.offsetTop;',
'  startX = e.pageX - region.offsetLeft;',
'  scrollLeft = region.scrollLeft;',
'  scrollTop = region.scrollTop; ',
'}',
'',
'function mouseMove(e, region){',
'  if(isDown){',
'    e.preventDefault();',
'    //Move vertcally',
'    const y = e.pageY - region.offsetTop;',
'    const walkY = y - startY;',
'    region.scrollTop = scrollTop - walkY;',
'',
'    //Move Horizontally',
'    const x = e.pageX - region.offsetLeft;',
'    const walkX = x - startX;',
'    region.scrollLeft = scrollLeft - walkX;',
'  }',
'}*/'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''.ui-dialog-title'',parent ? parent.document : document).text($v(''P5_NAME''));',
'',
'$(document).ready(function() {    ',
'    $(''.apex-rds'').data(''onRegionChange'', function(mode, activeTab) {',
'        $s(''P5_SELECTED_RDS'', $(activeTab)[0].href);',
'    });',
'    ',
'    $(''#P5_DISPLAY_IMG_CONTAINER  .t-Form-labelContainer'').remove();',
'    $(''#P5_DISPLAY_IMG_CONTAINER  .t-Form-inputContainer'').removeClass(''col-10'').addClass(''col-12'');//.attr(''style'',''overflow: visible'');',
'    $(''#P5_DISPLAY_IMG_US_CONTAINER  .t-Form-labelContainer'').remove();',
'    $(''#P5_DISPLAY_IMG_US_CONTAINER  .t-Form-inputContainer'').removeClass(''col-10'').addClass(''col-12'');//.attr(''style'',''overflow: visible'');',
'    $(''#P5_DISPLAY_IMG_CA_CONTAINER  .t-Form-labelContainer'').remove();',
'    $(''#P5_DISPLAY_IMG_CA_CONTAINER  .t-Form-inputContainer'').removeClass(''col-10'').addClass(''col-12'');//.attr(''style'',''overflow: visible'');',
'    ',
'    //$(''.image-col'').parent().parent().attr(''style'',''overflow: visible'');',
'    ',
'    //const israeliPassportRegion = document.querySelector(''#israeli_passport .t-Form-itemWrapper'');',
'    //israeliPassportRegion.addEventListener(''mouseup'',e => mouseUp(e))',
'    //israeliPassportRegion.addEventListener(''mouseleave'',e => mouseLeave(e));',
'    //israeliPassportRegion.addEventListener(''mousedown'',e => mouseIsDown(e, israeliPassportRegion));  ',
'    //israeliPassportRegion.addEventListener(''mousemove'',e => mouseMove(e, israeliPassportRegion));',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Button--iconLeft .t-Icon {',
'    margin-right: 10px;',
'}',
'',
'iframe img {',
'    width: 100%;',
'}',
'',
'.passport-img-region .container,',
'.passport-img-region .row,',
'.passport-img-region .image-col,',
'.passport-img-region .t-Form-fieldContainer,',
'.passport-img-region .t-Form-inputContainer {',
'    width: 100% !important;',
'    height: 100% !important;',
'}',
'',
'.passport-img-region .t-Form-itemWrapper {',
'    width: 100% !important;',
'    height: stretch !important;',
'    overflow: scroll !important;',
'}',
'',
'.passport-img-region img {',
'    height: 580px;',
'    /*position: relative !important;',
'    top: 305px !important;*/',
'}',
'',
'#P5_DISPLAY_IMG_US_CONTAINER .t-Form-itemWrapper,',
'#P5_DISPLAY_IMG_CA_CONTAINER .t-Form-itemWrapper {',
'    justify-content: center;',
'    align-items: center;',
'}'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_dialog_height=>'700'
,p_dialog_css_classes=>'passports-dialog'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'DRORA'
,p_last_upd_yyyymmddhh24miss=>'20260531112131'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(120734620071514970)
,p_plug_name=>'<div style="display: flex;"><div style="padding-top: 6px; margin-right: 10px;">Israeli Passport</div><img width="38" src="#APP_IMAGES#il.svg" /></div>'
,p_region_name=>'israeli_passport'
,p_region_css_classes=>'passport-img-region'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="display: flex; justify-content: center; align-items: center; height: 83vh;"'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P5_ISRAELI_PASSPORT_DOC_ID IS NULL OR :P5_ISRAELI_PASSPORT_MIME_TYPE != ''application/pdf'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(128045201486621640)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(119978609050743305)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p align="center">',
'<iframe src="f?p=&APP_ID.:0:&SESSION.:APPLICATION_PROCESS=show_blob:NO::P5_PERSON_ID:&P5_PERSON_ID." width="99%" height="1000">',
'</iframe>',
'</p>',
'',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(203485169262442148)
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
 p_id=>wwv_flow_api.id(618276442015405913)
,p_plug_name=>'<div style="display: flex;"><div style="padding-top: 6px; margin-right: 10px;">American Passport</div><img width="38" src="#APP_IMAGES#us.svg" /></div>'
,p_region_name=>'american_passport'
,p_region_css_classes=>'passport-img-region'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="display: flex; justify-content: center; align-items: center; height: 83vh;"'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P5_AMERICAN_PASSPORT_DOC_ID IS NOT NULL AND :P5_AMERICAN_PASSPORT_MIME_TYPE != ''application/pdf'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(618276640187405915)
,p_plug_name=>'<div style="display: flex;"><div style="padding-top: 6px; margin-right: 10px;">Canadian Passport</div><img width="38" src="#APP_IMAGES#ca.svg" /></div>'
,p_region_name=>'canadian_passport'
,p_region_css_classes=>'passport-img-region'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="display: flex; justify-content: center; align-items: center; height: 83vh; overflow: scroll;"'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P5_CANADIAN_PASSPORT_DOC_ID IS NOT NULL AND :P5_CANADIAN_PASSPORT_MIME_TYPE != ''application/pdf'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(618277279084405921)
,p_plug_name=>'No Passports Found'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex; flex-direction: column; justify-content: center; align-items: center; width: 100%; height: 300px;">',
'    <div class="fa fa-search" style="margin-bottom: 15px; font-size: 40px;"></div>',
'    <h3>No Passports Found!</h3>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P5_PASSPORTS_FOUND'
,p_plug_display_when_cond2=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(618277592016405924)
,p_plug_name=>'RDS Passports Selector'
,p_region_name=>'rds'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P5_PASSPORTS_FOUND'
,p_plug_display_when_cond2=>'Y'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(884530204734354416)
,p_plug_name=>'<div style="display: flex;"><div style="padding-top: 6px; margin-right: 10px;">Israeli Passport</div><img width="38" src="#APP_IMAGES#il.svg" /></div>'
,p_region_name=>'israeli_passport'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="display: flex; justify-content: center; align-items: center; height: 83vh; padding-left: 8px;"'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<iframe id="israeliPassportFrame" width="100%" style="height: stretch;"></iframe>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P5_ISRAELI_PASSPORT_DOC_ID IS NOT NULL AND :P5_ISRAELI_PASSPORT_MIME_TYPE = ''application/pdf'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(903392069324132980)
,p_plug_name=>'<div style="display: flex;"><div style="padding-top: 6px; margin-right: 10px;">American Passport</div><img width="38" src="#APP_IMAGES#us.svg" /></div>'
,p_region_name=>'american_passport'
,p_region_css_classes=>'passport-img-region'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="display: flex; justify-content: center; align-items: center; height: 83vh;"'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<iframe id="americanPassportFrame" width="100%" style="height: stretch;"></iframe>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P5_AMERICAN_PASSPORT_DOC_ID IS NOT NULL AND :P5_AMERICAN_PASSPORT_MIME_TYPE = ''application/pdf'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(903392243980132982)
,p_plug_name=>'<div style="display: flex;"><div style="padding-top: 6px; margin-right: 10px;">Canadian Passport</div><img width="38" src="#APP_IMAGES#ca.svg" /></div>'
,p_region_name=>'canadian_passport'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="display: flex; justify-content: center; align-items: center; height: 83vh;"'
,p_plug_template=>wwv_flow_api.id(119978609050743284)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<iframe id="canadianPassportFrame" width="100%" style="height: stretch;"></iframe>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P5_CANADIAN_PASSPORT_DOC_ID IS NOT NULL AND :P5_CANADIAN_PASSPORT_MIME_TYPE = ''application/pdf'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(884528404352354398)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(203485169262442148)
,p_button_name=>'Zoom_Out'
,p_button_static_id=>'zoomOutBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Zoom Out'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P5_PASSPORTS_FOUND'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-search-minus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(884528079258354395)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(203485169262442148)
,p_button_name=>'Zoom_In'
,p_button_static_id=>'zoomInBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Zoom In'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P5_PASSPORTS_FOUND'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-search-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(618274844258405897)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(203485169262442148)
,p_button_name=>'Rotate'
,p_button_static_id=>'rotateBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(119978609050743281)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rotate'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P5_PASSPORTS_FOUND'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_css_classes=>'rotateBtn'
,p_icon_css_classes=>'fa-rotate-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(116030272183237515)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(203485169262442148)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(119978609050743280)
,p_button_image_alt=>'Close'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116032039409237523)
,p_name=>'P5_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(618277592016405924)
,p_item_default=>'SELECT jafi_hr_pkg.get_person_eng_name(:P5_PERSON_ID) from dual'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116031676787237519)
,p_name=>'P5_PERSON_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(618277592016405924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116031241951237519)
,p_name=>'P5_DISPLAY_IMG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(120734620071514970)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Israeli Passport'
,p_source=>'BINARY_DOC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_attributes=>'style="position: relative; height: 580px;"'
,p_colspan=>12
,p_grid_column_css_classes=>'image-col'
,p_field_template=>wwv_flow_api.id(119978609050743335)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(nvl((select IDO.BINARY_DOC',
'                from irc_documents IDO',
'                where ido.document_id = :P5_ISRAELI_PASSPORT_DOC_ID and ido.binary_doc is not null),',
'               (select doc.binary_doc',
'                from irc_documents doc',
'                where doc.file_format = ''BINARY'' and doc.type = ''PASSPORT'' and doc.description not in (''AMERIC_PASS'', ''CANAD_PASS'') and doc.mime_type like ''image%'' and doc.end_date is null and doc.person_id = :P5_PERSON_ID and rownum < 2)),',
'           (select image ',
'            from per_images',
'            where parent_id = :P5_PERSON_ID and table_name=''PER_PEOPLE_F'' and rownum < 2)) doc',
'from dual'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(618276603096405914)
,p_name=>'P5_DISPLAY_IMG_US'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(618276442015405913)
,p_use_cache_before_default=>'NO'
,p_prompt=>'American Passport'
,p_source=>'BINARY_DOC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_attributes=>'style="position: relative; height: 580px;"'
,p_colspan=>12
,p_grid_column_css_classes=>'image-col'
,p_field_template=>wwv_flow_api.id(119978609050743335)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select IDO.BINARY_DOC',
'from irc_documents IDO',
'where ido.document_id = :P5_AMERICAN_PASSPORT_DOC_ID and ido.binary_doc is not null;'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(618276820640405916)
,p_name=>'P5_DISPLAY_IMG_CA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(618276640187405915)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Canadian Passport'
,p_source=>'BINARY_DOC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_attributes=>'style="position: relative; height: 580px;"'
,p_colspan=>12
,p_grid_column_css_classes=>'image-col'
,p_field_template=>wwv_flow_api.id(119978609050743335)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select IDO.BINARY_DOC',
'from irc_documents IDO',
'where ido.document_id = :P5_CANADIAN_PASSPORT_DOC_ID and ido.binary_doc is not null;'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(618277058121405919)
,p_name=>'P5_SELECTED_RDS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(618277592016405924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(618277355549405922)
,p_name=>'P5_PASSPORTS_FOUND'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(618277592016405924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(884530350017354418)
,p_name=>'P5_ISRAELI_PASSPORT_MIME_TYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(618277592016405924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(884530521034354419)
,p_name=>'P5_ISRAELI_PASSPORT_DOC_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(618277592016405924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(884530747660354422)
,p_name=>'P5_AMERICAN_PASSPORT_DOC_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(618277592016405924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(884530847924354423)
,p_name=>'P5_AMERICAN_PASSPORT_MIME_TYPE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(618277592016405924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(884531003325354424)
,p_name=>'P5_CANADIAN_PASSPORT_DOC_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(618277592016405924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(884531108381354425)
,p_name=>'P5_CANADIAN_PASSPORT_MIME_TYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(618277592016405924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(903391932481132978)
,p_name=>'P5_CURRENT_PASSPORT_DOC_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(618277592016405924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(618277484457405923)
,p_computation_sequence=>10
,p_computation_item=>'P5_PASSPORTS_FOUND'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'FUNCTION_BODY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    passport_found char(1) := ''N'';',
'    israeli_passport blob;',
'    american_passport blob;',
'    canadian_passport blob;',
'begin',
'    begin',
'        select nvl(nvl((select IDO.BINARY_DOC',
'                    from irc_documents IDO',
'                    where ido.document_id = :P5_ISRAELI_PASSPORT_DOC_ID and ido.binary_doc is not null),',
'                   (select doc.binary_doc',
'                    from irc_documents doc',
'                    where doc.file_format = ''BINARY'' and doc.type = ''PASSPORT'' and doc.description not in (''AMERIC_PASS'', ''CANAD_PASS'') and ',
'                          doc.mime_type like ''image%'' and doc.end_date is null and doc.person_id = :P5_PERSON_ID and rownum < 2)),',
'               (select image ',
'                from per_images',
'                where parent_id = :P5_PERSON_ID and table_name=''PER_PEOPLE_F'' and rownum < 2)) doc',
'        into israeli_passport',
'        from dual;',
'        exception when no_data_found then null;',
'    end;',
'    ',
'    begin',
'        select doc.binary_doc',
'        into american_passport',
'        from irc_documents doc',
'        where doc.file_format = ''BINARY'' and doc.type = ''PASSPORT'' and doc.description = ''AMERIC_PASS'' and doc.end_date is null and doc.person_id = :P5_PERSON_ID and rownum < 2;',
'        exception when no_data_found then null;',
'    end;',
'    ',
'    begin',
'        select doc.binary_doc',
'        into canadian_passport',
'        from irc_documents doc',
'        where doc.file_format = ''BINARY'' and doc.type = ''PASSPORT'' and doc.description = ''CANAD_PASS'' and doc.end_date is null and doc.person_id = :P5_PERSON_ID and rownum < 2;',
'        exception when no_data_found then null;',
'    end;',
'    ',
'    if israeli_passport is not null or ',
'       american_passport is not null or',
'       canadian_passport is not null then',
'        passport_found := ''Y'';',
'    else',
'        passport_found := ''N'';',
'    end if;',
'    return passport_found;',
'end;'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(618277683511405925)
,p_computation_sequence=>20
,p_computation_item=>'P5_SELECTED_RDS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'#israeli_passport'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(116027068799237485)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(116030272183237515)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(116026515142237484)
,p_event_id=>wwv_flow_api.id(116027068799237485)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(884531232269354426)
,p_name=>'Load PDF Passports'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(903391784256132977)
,p_event_id=>wwv_flow_api.id(884531232269354426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    if ($(''#israeliPassportFrame'').length > 0)',
'        $(''#israeliPassportFrame'').attr(''src'', ''f?p='' + $v(''pFlowId'') + '':0:'' + $v(''pInstance'') + '':APPLICATION_PROCESS=RETRIEVE_PASSPORT:::P5_CURRENT_PASSPORT_DOC_ID:'' + $v(''P5_ISRAELI_PASSPORT_DOC_ID''));',
'    ',
'    if ($(''#americanPassportFrame'').length > 0)',
'        $(''#americanPassportFrame'').attr(''src'', ''f?p='' + $v(''pFlowId'') + '':0:'' + $v(''pInstance'') + '':APPLICATION_PROCESS=RETRIEVE_PASSPORT:::P5_CURRENT_PASSPORT_DOC_ID:'' + $v(''P5_AMERICAN_PASSPORT_DOC_ID''));',
'    ',
'    if ($(''#canadianPassportFrame'').length > 0)',
'        $(''#canadianPassportFrame'').attr(''src'', ''f?p='' + $v(''pFlowId'') + '':0:'' + $v(''pInstance'') + '':APPLICATION_PROCESS=RETRIEVE_PASSPORT:::P5_CURRENT_PASSPORT_DOC_ID:'' + $v(''P5_CANADIAN_PASSPORT_DOC_ID''));',
'});',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(618275093560405899)
,p_name=>'Rotate Click'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(618274844258405897)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(618275232142405900)
,p_event_id=>wwv_flow_api.id(618275093560405899)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var elementId = ''israeli_passport img'',',
'    selectedRDS = $v(''P5_SELECTED_RDS'');',
'',
'if (selectedRDS == ''#american_passport'') {',
'    elementId = ''american_passport img'';  ',
'}',
'else if (selectedRDS == ''#canadian_passport'') {',
'    elementId = ''canadian_passport img'';  ',
'}',
'',
'if (elementId == '''')',
'    return;',
'',
'var rotationFactor = 1;',
'',
'if ($(''#'' + elementId).hasClass(''rotate-90'')) {',
'    $(''#'' + elementId).removeClass(''rotate-90'').addClass(''rotate-180'');',
'    rotationFactor = 2;',
'}',
'else if ($(''#'' + elementId).hasClass(''rotate-180'')) {',
'    $(''#'' + elementId).removeClass(''rotate-180'').addClass(''rotate-270'');',
'    rotationFactor = 1;',
'}',
'else if ($(''#'' + elementId).hasClass(''rotate-270'')) {',
'    $(''#'' + elementId).removeClass(''rotate-270'');',
'    rotationFactor = 2;',
'}',
'else {',
'    $(''#'' + elementId).addClass(''rotate-90'');',
'    rotationFactor = 1;',
'}',
'',
'var parentHeight = $(''#'' + elementId).parent().height();',
'var existingHeight = $(''#'' + elementId).height();',
'var existingWidth = $(''#'' + elementId).width();',
'var isLandscape = existingWidth > existingHeight;',
'var top = 0;',
'',
'if (isLandscape) {',
'    if (rotationFactor == 1) {',
'        top = parseInt((existingWidth - parentHeight) / 2);',
'    }',
'    else {',
'        top = parseInt((existingHeight - parentHeight) / 2);',
'    }',
'}',
'else {',
'    if (rotationFactor == 1) {',
'        top = parseInt((existingWidth - parentHeight) / 2);',
'    }',
'    else {',
'        top = parseInt((existingHeight - parentHeight) / 2);',
'    }',
'}',
'',
'$(''#'' + elementId).css({''top'': top + ''px''});'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(618276835559405917)
,p_name=>'RDS Selection Click'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#rds li'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#rds li'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(618276969770405918)
,p_event_id=>wwv_flow_api.id(618276835559405917)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_SELECTED_RDS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).attr(''id'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(884528148420354396)
,p_name=>'Zoom In Click'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(884528079258354395)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(884528312813354397)
,p_event_id=>wwv_flow_api.id(884528148420354396)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var elementId = ''P5_DISPLAY_IMG'',',
'    selectedRDS = $v(''P5_SELECTED_RDS'');',
'',
'if (selectedRDS == ''#american_passport'') {',
'    elementId = ''P5_DISPLAY_IMG_US'';  ',
'}',
'else if (selectedRDS == ''#canadian_passport'') {',
'    elementId = ''P5_DISPLAY_IMG_CA'';  ',
'}',
'',
'if (elementId == '''')',
'    return;',
'',
'var existingHeight = $(''#'' + elementId).height();',
'var parentHeight = $(''#'' + elementId).parent().height();',
'var newHeight = existingHeight + 400;',
'var top = parseInt((newHeight - parentHeight) / 2);',
'if (newHeight >= 580) {',
'    $(''#'' + elementId).height(newHeight);',
'    $(''#'' + elementId).css({''top'': top + ''px''});',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(884528507637354399)
,p_name=>'Zoom Out Click'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(884528404352354398)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(884528545562354400)
,p_event_id=>wwv_flow_api.id(884528507637354399)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var elementId = ''P5_DISPLAY_IMG'',',
'    selectedRDS = $v(''P5_SELECTED_RDS'');',
'',
'if (selectedRDS == ''#american_passport'') {',
'    elementId = ''P5_DISPLAY_IMG_US'';  ',
'}',
'else if (selectedRDS == ''#canadian_passport'') {',
'    elementId = ''P5_DISPLAY_IMG_CA'';  ',
'}',
'',
'if (elementId == '''')',
'    return;',
'',
'var existingHeight = $(''#'' + elementId).height();',
'var parentHeight = $(''#'' + elementId).parent().height();',
'var newHeight = existingHeight - 400;',
'var top = parseInt((newHeight - parentHeight) / 2);',
'if (newHeight >= 580) {',
'    $(''#'' + elementId).height(newHeight);',
'    $(''#'' + elementId).css({''top'': top + ''px''});',
'}',
'else {',
'    $(''#'' + elementId).height(580);',
'    $(''#'' + elementId).css({''top'': ''unset''});',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(903392670439132986)
,p_name=>'Selected RDS Change'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_SELECTED_RDS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(618277180236405920)
,p_event_id=>wwv_flow_api.id(903392670439132986)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selectedRDS = $v(''P5_SELECTED_RDS'');',
'if ($(selectedRDS).find(''iframe'').length > 0) {',
'    $(''#zoomOutBtn'').hide();',
'    $(''#zoomInBtn'').hide();',
'    $(''#rotateBtn'').hide();',
'}',
'else {',
'    $(''#zoomOutBtn'').show();',
'    $(''#zoomInBtn'').show();',
'    $(''#rotateBtn'').show();',
'}'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(116028607419237489)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(116028280085237488)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>503
,p_default_id_offset=>2556963023090302471
,p_default_owner=>'APPS'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(884530712827354421)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_PASSPORTS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P5_CURRENT_PASSPORT_DOC_ID := null;',
':P5_ISRAELI_PASSPORT_DOC_ID := null;',
':P5_ISRAELI_PASSPORT_MIME_TYPE := null;',
':P5_AMERICAN_PASSPORT_DOC_ID := null;',
':P5_AMERICAN_PASSPORT_MIME_TYPE := null;',
':P5_CANADIAN_PASSPORT_DOC_ID := null;',
':P5_CANADIAN_PASSPORT_MIME_TYPE := null;',
'',
'begin',
'    with israeli_passports as',
'    (',
'        select DOCUMENT_ID,',
'               MIME_TYPE',
'        from irc_documents ',
'        where person_id = :P5_PERSON_ID and type = ''PASSPORT'' and (DESCRIPTION = ''ISRAELI_PASS'' OR DESCRIPTION not in (''AMERIC_PASS'', ''CANAD_PASS'')) and file_format = ''BINARY'' and end_date is null',
'        order by creation_date desc',
'    )',
'    select DOCUMENT_ID,',
'           MIME_TYPE ',
'    into :P5_ISRAELI_PASSPORT_DOC_ID,',
'         :P5_ISRAELI_PASSPORT_MIME_TYPE',
'    from israeli_passports where rownum = 1;',
'    exception when no_data_found then null;',
'end;',
'',
'begin',
'    with american_passports as',
'    (',
'        select DOCUMENT_ID,',
'               MIME_TYPE',
'        from irc_documents ',
'        where person_id = :P5_PERSON_ID and type = ''PASSPORT'' and DESCRIPTION = ''AMERIC_PASS'' and file_format = ''BINARY'' and end_date is null',
'        order by creation_date desc',
'    )',
'    select DOCUMENT_ID,',
'           MIME_TYPE ',
'    into :P5_AMERICAN_PASSPORT_DOC_ID,',
'         :P5_AMERICAN_PASSPORT_MIME_TYPE',
'    from american_passports where rownum = 1;',
'    exception when no_data_found then null;',
'end;',
'',
'begin',
'    with canadian_passports as',
'    (',
'        select DOCUMENT_ID,',
'               MIME_TYPE',
'        from irc_documents ',
'        where person_id = :P5_PERSON_ID and type = ''PASSPORT'' and DESCRIPTION = ''CANAD_PASS'' and file_format = ''BINARY'' and end_date is null',
'        order by creation_date desc',
'    )',
'    select DOCUMENT_ID,',
'           MIME_TYPE ',
'    into :P5_CANADIAN_PASSPORT_DOC_ID,',
'         :P5_CANADIAN_PASSPORT_MIME_TYPE',
'    from canadian_passports where rownum = 1;',
'    exception when no_data_found then null;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
null;
wwv_flow_api.component_end;
end;
/
