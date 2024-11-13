prompt --application/shared_components/logic/application_processes/remove_results_but_keep_10
begin
--   Manifest
--     APPLICATION PROCESS: Remove Results but keep 10
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.5'
,p_default_workspace_id=>6733971562520703
,p_default_application_id=>111
,p_default_id_offset=>0
,p_default_owner=>'A11Y_TASKS'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(11334068182794506)
,p_process_sequence=>1
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Remove Results but keep 10'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  delete from a11y_results',
'   where a1y_id not in (select a1y_id',
'    from a11y_results',
'   order by a1y_created_at desc ',
'   fetch first 10 rows only);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'lower(apex_util.host_url) like ''%apex.oracle.com%'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_comment=>'We need this to run on apex.oracle.com due to the limitations of the free space on that instance'
,p_version_scn=>10562225
);
wwv_flow_imp.component_end;
end;
/
