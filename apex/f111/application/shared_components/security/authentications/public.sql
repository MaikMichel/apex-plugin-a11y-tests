prompt --application/shared_components/security/authentications/public
begin
--   Manifest
--     AUTHENTICATION: Public
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.5'
,p_default_workspace_id=>6733971562520703
,p_default_application_id=>111
,p_default_id_offset=>0
,p_default_owner=>'A11Y_TASKS'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(10761256442439226)
,p_name=>'Public'
,p_scheme_type=>'NATIVE_DAD'
,p_attribute_01=>'nobody'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>6463454
);
wwv_flow_imp.component_end;
end;
/
