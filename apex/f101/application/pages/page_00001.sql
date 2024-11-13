prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.5'
,p_default_workspace_id=>6733971562520703
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'A11Y_TASKS'
);
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Tasks'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6144789583322126)
,p_plug_name=>'Demo Instructions'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-top-lg'
,p_plug_template=>wwv_flow_imp.id(12031590474755024)
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul>',
'    <li>Open developer console (F12)</li>',
'    <li>Set focus back to page</li>',
'    <li>Use Shourtcut "Alt+T" or click on "Run a11y" in toolbar</li>',
'    <li>Watch console output</li>',
'    <li>Click on link in output to open a11y-view to show test results</li>    ',
'</ul>'))
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'lower(apex_util.host_url) like ''%apex.oracle.com%'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6144804160322127)
,p_plug_name=>'Warning'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning:t-Alert--accessibleHeading:margin-top-lg'
,p_plug_template=>wwv_flow_imp.id(11971735478755007)
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_source=>'Due to the restrictions regarding the size of the tablespaces at <strong>apex.oracle.com</strong>, only the latest 10 test reports are saved. Older ones are deleted'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'lower(apex_util.host_url) like ''%apex.oracle.com%'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12221435131755274)
,p_plug_name=>'Tasks'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(12012439391755017)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12282498822755385)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_plug_template=>wwv_flow_imp.id(12041309320755027)
,p_plug_display_sequence=>30
,p_location=>null
,p_list_id=>wwv_flow_imp.id(12280504333755384)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12083949738755044)
,p_plug_query_num_rows=>15
);
wwv_flow_imp.component_end;
end;
/
