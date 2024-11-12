prompt --application/shared_components/files/js_test_js_map
begin
--   Manifest
--     APP STATIC FILES: 101
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.5'
,p_default_workspace_id=>6733971562520703
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'A11Y_TASKS'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '7B2276657273696F6E223A332C226E616D6573223A5B22636F6E736F6C65222C226C6F67225D2C22736F7572636573223A5B2230225D2C226D617070696E6773223A2241414141412C51414151432C49414149227D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(9523549933391488)
,p_file_name=>'js/test.js.map'
,p_mime_type=>'application/octet-stream'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
