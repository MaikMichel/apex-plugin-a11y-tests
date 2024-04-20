prompt --application/shared_components/plugins/dynamic_action/com_opitz_apex_a11y
begin
--   Manifest
--     PLUGIN: COM.OPITZ.APEX.A11Y
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>11910229390744612
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'A11Y_TASKS'
);
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(13714421149185286)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'COM.OPITZ.APEX.A11Y'
,p_display_name=>'Run Accessibility Test'
,p_category=>'EXECUTE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','COM.OPITZ.APEX.A11Y'),'')
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://unpkg.com/axe-core@latest/axe#MIN#.js',
'#PLUGIN_FILES#js/a11y#MIN#.js'))
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function render(p_dynamic_action in apex_plugin.t_dynamic_action,',
'                p_plugin         in apex_plugin.t_plugin)',
'                return              apex_plugin.t_dynamic_action_render_result is',
'',
'  l_result     apex_plugin.t_dynamic_action_render_result;',
'  l_tag_list   p_dynamic_action.attribute_01%type := p_dynamic_action.attribute_01;',
'begin',
'  l_result.javascript_function := ''apxA11y.runAudit'';',
'  l_result.ajax_identifier     := apex_plugin.get_ajax_identifier;',
'  l_result.attribute_01        := l_tag_list;',
'',
'  return l_result;',
'end render;'))
,p_default_escape_mode=>'HTML'
,p_api_version=>2
,p_render_function=>'render'
,p_standard_attributes=>'JQUERY_SELECTOR:JAVASCRIPT_EXPRESSION'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_files_version=>74
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(13715839685299999)
,p_plugin_id=>wwv_flow_imp.id(13714421149185286)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Run with Tags'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'Comma separated list of Tags to run only'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>11910229390744612
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'A11Y_TASKS'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '636F6E73742061707841313179203D207B0D0A202072756E41756469743A2066756E6374696F6E202829207B202020200D0A202020202F2F20706C7567696E20617474726962757465730D0A2020202076617220646154686973203D20746869733B0D0A';
wwv_flow_imp.g_varchar2_table(2) := '0D0A202020202F2F2077652067726F757020616C6C206F7574707574200D0A20202020636F6E736F6C652E67726F757028226170784131317922293B0D0A0D0A202020202F2F206F757470757420616464696F6E616C20696E666F730D0A202020206170';
wwv_flow_imp.g_varchar2_table(3) := '65782E64656275672E747261636528225B617078413131795D3A206461546869732E616374696F6E222C2020206461546869732E616374696F6E293B0D0A20202020202020200D0A20202020636F6E736F6C652E6C6F6728275B617078413131795D3A20';
wwv_flow_imp.g_varchar2_table(4) := '72756E6E696E67206163636573736962696C6974792061756469742E2E2E27293B202020200D0A0D0A202020202F2F20636F6E6669676520617865207769746820746869730D0A202020206C657420636F6E666967203D207B0D0A202020202020202070';
wwv_flow_imp.g_varchar2_table(5) := '72656C6F61643A2066616C736520202020202020200D0A202020207D3B0D0A0D0A202020202F2F2066697273742061747472696275746520697320657870656374656420746F20626520746865207461676C697374207365706172617465642062792063';
wwv_flow_imp.g_varchar2_table(6) := '6F6D6D61730D0A20202020696620286461546869732E616374696F6E2E617474726962757465303129207B0D0A2020202020202020636F6E6669672E72756E4F6E6C79203D206461546869732E616374696F6E2E61747472696275746530312E73706C69';
wwv_flow_imp.g_varchar2_table(7) := '7428222C22290D0A202020207D0D0A202020200D0A20202020617065782E64656275672E747261636528225B617078413131795D3A20617865436F6E666967222C202020636F6E666967293B0D0A0D0A202020206178652E72756E28206461546869732E';
wwv_flow_imp.g_varchar2_table(8) := '6166666563746564456C656D656E74735B305D2C0D0A202020202020636F6E6669672C0D0A202020202020286572722C20726573756C747329203D3E207B0D0A20202020202020206966202865727229207468726F77206572723B0D0A20202020202020';
wwv_flow_imp.g_varchar2_table(9) := '2020202020202020200D0A20202020202020202F2F20646973706C617920726573756C74730D0A202020202020202069662028726573756C74732E76696F6C6174696F6E733F2E6C656E6774683E3029207B0D0A202020202020202020202020636F6E73';
wwv_flow_imp.g_varchar2_table(10) := '6F6C652E7461626C6528726573756C74732E76696F6C6174696F6E73293B20202020202020200D0A0D0A202020202020202020202020636F6E736F6C652E7761726E28605B617078413131795D3A20247B726573756C74732E76696F6C6174696F6E732E';
wwv_flow_imp.g_varchar2_table(11) := '6C656E6774687D2076696F6C6174696F6E7320666F756E6460293B0D0A20202020202020207D20656C7365207B0D0A202020202020202020202020636F6E736F6C652E6C6F6728275B617078413131795D3A206E6F2076696F6C6174696F6E7320666F75';
wwv_flow_imp.g_varchar2_table(12) := '6E6427293B0D0A20202020202020207D20202020202020200D0A0D0A20202020202020202F2F20636C6F73652067726F7570207765206F70656E6564206265666F72650D0A2020202020202020636F6E736F6C652E67726F7570456E6428293B0D0A2020';
wwv_flow_imp.g_varchar2_table(13) := '202020207D0D0A20202020293B0D0A0D0A202020200D0A20207D0D0A7D';
null;
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>11910229390744612
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'A11Y_TASKS'
);
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(13715463114211749)
,p_plugin_id=>wwv_flow_imp.id(13714421149185286)
,p_file_name=>'js/a11y.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>11910229390744612
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'A11Y_TASKS'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '636F6E737420617078413131793D7B72756E41756469743A66756E6374696F6E28297B766172206F3D746869733B636F6E736F6C652E67726F757028226170784131317922292C617065782E64656275672E747261636528225B617078413131795D3A20';
wwv_flow_imp.g_varchar2_table(2) := '6461546869732E616374696F6E222C6F2E616374696F6E292C636F6E736F6C652E6C6F6728225B617078413131795D3A2072756E6E696E67206163636573736962696C6974792061756469742E2E2E22293B6C6574206E3D7B7072656C6F61643A21317D';
wwv_flow_imp.g_varchar2_table(3) := '3B6F2E616374696F6E2E61747472696275746530312626286E2E72756E4F6E6C793D6F2E616374696F6E2E61747472696275746530312E73706C697428222C2229292C617065782E64656275672E747261636528225B617078413131795D3A2061786543';
wwv_flow_imp.g_varchar2_table(4) := '6F6E666967222C6E292C6178652E72756E286F2E6166666563746564456C656D656E74735B305D2C6E2C28286F2C6E293D3E7B6966286F297468726F77206F3B6E2E76696F6C6174696F6E733F2E6C656E6774683E303F28636F6E736F6C652E7461626C';
wwv_flow_imp.g_varchar2_table(5) := '65286E2E76696F6C6174696F6E73292C636F6E736F6C652E7761726E28605B617078413131795D3A20247B6E2E76696F6C6174696F6E732E6C656E6774687D2076696F6C6174696F6E7320666F756E646029293A636F6E736F6C652E6C6F6728225B6170';
wwv_flow_imp.g_varchar2_table(6) := '78413131795D3A206E6F2076696F6C6174696F6E7320666F756E6422292C636F6E736F6C652E67726F7570456E6428297D29297D7D3B';
null;
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>11910229390744612
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'A11Y_TASKS'
);
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(13929529190490635)
,p_plugin_id=>wwv_flow_imp.id(13714421149185286)
,p_file_name=>'js/a11y.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
