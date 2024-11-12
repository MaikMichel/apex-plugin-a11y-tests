prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'A11Y-View'
,p_autocomplete_on_off=>'OFF'
,p_css_file_urls=>'#APP_FILES#css/a11y_styles#MIN#.css'
,p_step_template=>wwv_flow_imp.id(7329816722819497)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7617434188819718)
,p_plug_name=>'A11Y-View'
,p_icon_css_classes=>'fa-universal-access u-color-1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(7386502496819519)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8020105760216632)
,p_plug_name=>'Filter'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(7419838145819531)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(8020309208216634)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8020309208216634)
,p_name=>'Testresults'
,p_region_name=>'testresults'
,p_template=>wwv_flow_imp.id(7419838145819531)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A1Y_ID,',
'       APP_ID,',
'       APP_PAGE_ID,',
'       A1Y_CREATED_AT,',
'       URL,',
'       case when instr(URL, ''&'') > 0 then substr(URL, 1, instr(URL, ''&''))||''...'' else URL end DSP_URL ,',
'       NAME,',
'       VERSION,',
'       APP_USER,',
'       APP_SESSION,',
'       APEX_VERSION,',
'       COUNT_PASSES,',
'       COUNT_VIOLATIONS,',
'       USER_AGENT,',
'       WINDOW_WIDTH,',
'       WINDOW_HEIGHT,',
'       COUNT_INAPPLICABLE,',
'       ORIENTATION_TYPE,',
'       case when COUNT_VIOLATIONS > 0 then ''YES'' else ''NO'' end has_violation',
'  from A11Y_TESTS_V'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>true
,p_query_row_template=>wwv_flow_imp.id(7458006867819546)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7621785191927707)
,p_query_column_id=>1
,p_column_alias=>'A1Y_ID'
,p_column_display_sequence=>10
,p_column_heading=>'View'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:P2_A1Y_ID:#A1Y_ID#'
,p_column_linktext=>'<span aria-hidden="true" class="t-Icon fa fa-arrow-right"></span>'
,p_column_link_attr=>'title="Navigate to Test ''#APP_ID#/#APP_PAGE_ID#'' from ''#A1Y_CREATED_AT#''" data-a11y-id="#A1Y_ID#" class="t-Button t-Button--noLabel t-Button--icon t-Button--link padding-none"'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8021475475216645)
,p_query_column_id=>2
,p_column_alias=>'APP_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Applikation'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8021508286216646)
,p_query_column_id=>3
,p_column_alias=>'APP_PAGE_ID'
,p_column_display_sequence=>30
,p_column_heading=>'Page'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8020654860216637)
,p_query_column_id=>4
,p_column_alias=>'A1Y_CREATED_AT'
,p_column_display_sequence=>40
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_column_format=>'DD.MM.YYYY HH24:MI:SS'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8021018265216641)
,p_query_column_id=>5
,p_column_alias=>'URL'
,p_column_display_sequence=>50
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8130707740371147)
,p_query_column_id=>6
,p_column_alias=>'DSP_URL'
,p_column_display_sequence=>60
,p_column_heading=>'Url'
,p_use_as_row_header=>'N'
,p_column_link=>'#URL#'
,p_column_linktext=>'#DSP_URL#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8021111784216642)
,p_query_column_id=>7
,p_column_alias=>'NAME'
,p_column_display_sequence=>70
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8021200278216643)
,p_query_column_id=>8
,p_column_alias=>'VERSION'
,p_column_display_sequence=>80
,p_column_heading=>'Axe-Core Version'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8021354671216644)
,p_query_column_id=>9
,p_column_alias=>'APP_USER'
,p_column_display_sequence=>100
,p_column_heading=>'User'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8021680995216647)
,p_query_column_id=>10
,p_column_alias=>'APP_SESSION'
,p_column_display_sequence=>110
,p_column_heading=>'Session'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7621634703927706)
,p_query_column_id=>11
,p_column_alias=>'APEX_VERSION'
,p_column_display_sequence=>90
,p_column_heading=>'APEX Version'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7621352469927703)
,p_query_column_id=>12
,p_column_alias=>'COUNT_PASSES'
,p_column_display_sequence=>170
,p_column_heading=>'Passes'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8130859787371148)
,p_query_column_id=>13
,p_column_alias=>'COUNT_VIOLATIONS'
,p_column_display_sequence=>160
,p_column_heading=>'Violations'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8021899420216649)
,p_query_column_id=>14
,p_column_alias=>'USER_AGENT'
,p_column_display_sequence=>120
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8021976422216650)
,p_query_column_id=>15
,p_column_alias=>'WINDOW_WIDTH'
,p_column_display_sequence=>130
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7621165376927701)
,p_query_column_id=>16
,p_column_alias=>'WINDOW_HEIGHT'
,p_column_display_sequence=>140
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7621403853927704)
,p_query_column_id=>17
,p_column_alias=>'COUNT_INAPPLICABLE'
,p_column_display_sequence=>180
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7621231178927702)
,p_query_column_id=>18
,p_column_alias=>'ORIENTATION_TYPE'
,p_column_display_sequence=>150
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8130921716371149)
,p_query_column_id=>19
,p_column_alias=>'HAS_VIOLATION'
,p_column_display_sequence=>190
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6143821826322117)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7617434188819718)
,p_button_name=>'BTN_DELETE_RESULT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(7493178072819562)
,p_button_image_alt=>'Delete displayed Testreports'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_confirm_message=>'Do you really want to delete the displayed tests?'
,p_confirm_style=>'danger'
,p_icon_css_classes=>'fa-trash'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(6143776326322116)
,p_branch_name=>'Go To Page 9998'
,p_branch_action=>'f?p=&APP_ID.:9998:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from user_tables',
' where table_name = ''A11Y_RESULTS'''))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6144228261322121)
,p_name=>'P1_HIDDEN_IDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7617434188819718)
,p_item_display_point=>'NEXT'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8020298167216633)
,p_name=>'P1_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8020105760216632)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'ROW'
,p_attribute_02=>'FACET'
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8131044750371150)
,p_name=>'P1_HAS_VIOLATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8020105760216632)
,p_prompt=>'Has Violation'
,p_source=>'HAS_VIOLATION'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Yes;YES,No;NO'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8718610731755301)
,p_name=>'P1_APP_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8020105760216632)
,p_prompt=>'Application'
,p_source=>'APP_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6144048280322119)
,p_name=>'OnClick: Delete'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6143821826322117)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6144163571322120)
,p_event_id=>wwv_flow_imp.id(6144048280322119)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Get all href-elements with data-a11y-id',
'const elements = document.querySelectorAll(''a[data-a11y-id]'');',
'',
'// let''s make an array out of is',
'let a11yIdValues = Array.from(elements).map(element => element.getAttribute(''data-a11y-id''));',
'',
'// join and submit the Delete-Request',
'apex.items.P1_HIDDEN_IDS.setValue(a11yIdValues.join(":"));',
'apex.page.submit({request:"BTN_DELETE_RESULT", showWait: true});',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6143913520322118)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Results'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_idx number := 0;',
'begin',
'  for cur in (select column_value a1y_id',
'               from apex_string.split(:P1_HIDDEN_IDS, '':''))',
'  loop',
'    delete from a11y_results where a1y_id = cur.a1y_id;',
'    l_idx := l_idx + 1;',
'  end loop;',
'',
'  apex_application.g_print_success_message := l_idx || '' Testreport(s) successfully deleted'';',
'end;                 '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'BTN_DELETE_RESULT'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>6143913520322118
);
wwv_flow_imp.component_end;
end;
/
