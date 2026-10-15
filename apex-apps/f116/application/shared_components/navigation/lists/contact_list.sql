prompt --application/shared_components/navigation/lists/contact_list
begin
--   Manifest
--     LIST: Contact_list
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1830812318753765
,p_default_application_id=>503
,p_default_id_offset=>2556963023090302471
,p_default_owner=>'APPS'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(119978609050743082)
,p_name=>'Contact_list'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       t.ORG_INFORMATION6 Email_D,',
'       hrl.meaning contact_type',
'     ',
'From Hr_Organization_Information_v t',
'     ,hr_lookups hrl',
' Where t.Org_Information_Context = ''JAFI_SC_CONTACT_DETAILS''',
'   And hrl.lookup_type = ''JAFI_SC_CONTACT_TYPE''',
'   And hrl.lookup_code = t.org_information1',
'   And to_number(t.org_information1) in (1,2,3,6,7)',
'   And t.organization_id = :P0_ORG_ID'))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
