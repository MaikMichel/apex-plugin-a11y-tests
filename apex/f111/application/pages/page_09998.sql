prompt --application/pages/page_09998
begin
--   Manifest
--     PAGE: 09998
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.5'
,p_default_workspace_id=>6733971562520703
,p_default_application_id=>111
,p_default_id_offset=>0
,p_default_owner=>'A11Y_TASKS'
);
wwv_flow_imp_page.create_page(
 p_id=>9998
,p_name=>'Error - Objects not installed'
,p_alias=>'ERROR-OBJECTS-NOT-INSTALLED'
,p_step_title=>'Error - Objects not installed'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6143601503322115)
,p_plug_name=>'Error-Alert'
,p_title=>'Hupps'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--defaultIcons:t-Alert--danger'
,p_plug_template=>wwv_flow_imp.id(7348067093819503)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Hi, <br/>',
'you have probably forgotten to install the table including the views. <br/>',
'Please start the script <strong>install.sql</strong> from the download folder of the application. <br/>',
'<br/>',
'<a href="https://github.com/MaikMichel/a11y-view">https://github.com/MaikMichel/a11y-view</a>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/
