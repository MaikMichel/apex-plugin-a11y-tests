prompt --application/shared_components/files/js_global_js_map
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
wwv_flow_imp.g_varchar2_table(1) := '7B2276657273696F6E223A332C226E616D6573223A5B2272756E41313179222C2224222C226576656E74222C2274726967676572225D2C22736F7572636573223A5B2230225D2C226D617070696E6773223A22414141412C53414153412C55414350432C';
wwv_flow_imp.g_varchar2_table(2) := '45414145432C4D41414D432C514141512C5541436C42227D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10758416009395268)
,p_file_name=>'js/global.js.map'
,p_mime_type=>'application/octet-stream'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
