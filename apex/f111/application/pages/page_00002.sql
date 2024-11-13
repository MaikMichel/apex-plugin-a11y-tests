prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_name=>'A11Y Board'
,p_alias=>'A11Y-BOARD'
,p_step_title=>'A11Y Board'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'&APP_KNOCKOUTJS_URL.',
'#APP_FILES#js/a11y_tools#MIN#.js'))
,p_javascript_code_onload=>'initPage2();'
,p_css_file_urls=>'#APP_FILES#css/a11y_styles#MIN#.css'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'24'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7621984131927709)
,p_name=>'Application'
,p_template=>wwv_flow_imp.id(7419838145819531)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:i-h320:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--variableLabelMedium:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APP_ID,',
'       APP_PAGE_ID,',
'       APP_USER,',
'       APP_SESSION,',
'       A1Y_CREATED_AT,',
'       APEX_VERSION,',
'       APP_ALIAS       ',
'  from A11Y_TESTS_V',
' where a1y_id = :P2_A1Y_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(7461002518819547)
,p_query_num_rows=>1
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7622458264927714)
,p_query_column_id=>1
,p_column_alias=>'APP_ID'
,p_column_display_sequence=>10
,p_column_heading=>'App'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7622508269927715)
,p_query_column_id=>2
,p_column_alias=>'APP_PAGE_ID'
,p_column_display_sequence=>30
,p_column_heading=>'Page'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7622333137927713)
,p_query_column_id=>3
,p_column_alias=>'APP_USER'
,p_column_display_sequence=>40
,p_column_heading=>'User'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7622699264927716)
,p_query_column_id=>4
,p_column_alias=>'APP_SESSION'
,p_column_display_sequence=>50
,p_column_heading=>' Session'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7623295670927722)
,p_query_column_id=>5
,p_column_alias=>'A1Y_CREATED_AT'
,p_column_display_sequence=>60
,p_column_heading=>'Created At'
,p_use_as_row_header=>'N'
,p_column_format=>'DD.MM.YYYY HH24:MI'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7622719103927717)
,p_query_column_id=>6
,p_column_alias=>'APEX_VERSION'
,p_column_display_sequence=>70
,p_column_heading=>'APEX Version'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6144931647322128)
,p_query_column_id=>7
,p_column_alias=>'APP_ALIAS'
,p_column_display_sequence=>20
,p_column_heading=>'App Alias'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7623731201927727)
,p_name=>'Engine'
,p_template=>wwv_flow_imp.id(7419838145819531)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:i-h320:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--variableLabelMedium:t-AVPList--leftAligned'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'A11Y_TESTS_V'
,p_query_where=>'a1y_id = :P2_A1Y_ID'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(7461002518819547)
,p_query_num_rows=>1
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7625418376927744)
,p_query_column_id=>1
,p_column_alias=>'URL'
,p_column_display_sequence=>190
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7624220163927732)
,p_query_column_id=>2
,p_column_alias=>'NAME'
,p_column_display_sequence=>70
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7624354522927733)
,p_query_column_id=>3
,p_column_alias=>'VERSION'
,p_column_display_sequence=>80
,p_column_heading=>'Version'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7624030954927730)
,p_query_column_id=>4
,p_column_alias=>'APP_USER'
,p_column_display_sequence=>30
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7623861361927728)
,p_query_column_id=>5
,p_column_alias=>'APP_ID'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7623906568927729)
,p_query_column_id=>6
,p_column_alias=>'APP_PAGE_ID'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7624158620927731)
,p_query_column_id=>7
,p_column_alias=>'APP_SESSION'
,p_column_display_sequence=>40
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7624482162927734)
,p_query_column_id=>8
,p_column_alias=>'APEX_VERSION'
,p_column_display_sequence=>60
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7624598014927735)
,p_query_column_id=>9
,p_column_alias=>'USER_AGENT'
,p_column_display_sequence=>140
,p_column_heading=>'User Agent'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7624625118927736)
,p_query_column_id=>10
,p_column_alias=>'WINDOW_WIDTH'
,p_column_display_sequence=>110
,p_column_heading=>'Window Width'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7624771776927737)
,p_query_column_id=>11
,p_column_alias=>'WINDOW_HEIGHT'
,p_column_display_sequence=>120
,p_column_heading=>'Window Height'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7624877990927738)
,p_query_column_id=>12
,p_column_alias=>'ORIENTATION_TYPE'
,p_column_display_sequence=>130
,p_column_heading=>'Orientation Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7624955721927739)
,p_query_column_id=>13
,p_column_alias=>'A1Y_CREATED_AT'
,p_column_display_sequence=>50
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7625348195927743)
,p_query_column_id=>14
,p_column_alias=>'A1Y_ID'
,p_column_display_sequence=>180
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7625047127927740)
,p_query_column_id=>15
,p_column_alias=>'COUNT_PASSES'
,p_column_display_sequence=>150
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7625128274927741)
,p_query_column_id=>16
,p_column_alias=>'COUNT_INAPPLICABLE'
,p_column_display_sequence=>160
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7625258683927742)
,p_query_column_id=>17
,p_column_alias=>'COUNT_VIOLATIONS'
,p_column_display_sequence=>170
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7898711516504640)
,p_plug_name=>'A11Y - Board'
,p_icon_css_classes=>'fa-universal-access u-color-1'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(7386502496819519)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(7316527246819480)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(7494644305819562)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7928248367821935)
,p_plug_name=>'Result'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(7419838145819531)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COUNT_PASSES cnt, ''Passes'' lbl, ''green'' color',
'  from A11Y_TESTS_V',
' where a1y_id = :P2_A1Y_ID',
' union all',
' select COUNT_INAPPLICABLE cnt, ''Inapplicable'' lbl, ''gray'' color',
'  from A11Y_TESTS_V',
' where a1y_id = :P2_A1Y_ID',
'union all',
'select COUNT_VIOLATIONS cnt, ''Violations'' lbl, ''red'' color',
'  from A11Y_TESTS_V',
' where a1y_id = :P2_A1Y_ID '))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(7930067988828903)
,p_region_id=>wwv_flow_imp.id(7928248367821935)
,p_chart_type=>'donut'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){    ',
'    // hide by default',
'    options.hiddenCategories = ["Count inapplicable"];  ',
'',
'    // result as text in center',
'    options.pieCenter =  {',
'        label: ''&P2_A1Y_RESULT.''',
'    };',
'    ',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(7930112206828904)
,p_chart_id=>wwv_flow_imp.id(7930067988828903)
,p_seq=>10
,p_name=>'Result Donut'
,p_location=>'REGION_SOURCE'
,p_items_value_column_name=>'CNT'
,p_items_label_column_name=>'LBL'
,p_color=>'&COLOR.'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7930470008828907)
,p_plug_name=>'RDS'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(7429657869819533)
,p_plug_display_sequence=>40
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7930546548828908)
,p_plug_name=>'Passed'
,p_region_name=>'passes-tab'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'data-bind="class: hideRegionHeader"'
,p_plug_template=>wwv_flow_imp.id(7419838145819531)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7930615963828909)
,p_name=>'Passed Report'
,p_parent_plug_id=>wwv_flow_imp.id(7930546548828908)
,p_template=>wwv_flow_imp.id(7419838145819531)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a1y_id,',
'       pss_id,',
'       pss_impact,',
'       pss_tags,',
'       pss_description,',
'       pss_help,',
'       pss_help_url,       ',
'       pss_nodes_size',
'  from a11y_passes_v',
' where a1y_id = :P2_A1Y_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(7458006867819546)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7930781486828910)
,p_query_column_id=>1
,p_column_alias=>'A1Y_ID'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7930839480828911)
,p_query_column_id=>2
,p_column_alias=>'PSS_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Identifier'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(0);'
,p_column_linktext=>'#PSS_ID#'
,p_column_link_attr=>'class="a1y-pss" data-pss-id="#PSS_ID#"'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7930996980828912)
,p_query_column_id=>3
,p_column_alias=>'PSS_IMPACT'
,p_column_display_sequence=>30
,p_column_heading=>'Impact'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7931006041828913)
,p_query_column_id=>4
,p_column_alias=>'PSS_TAGS'
,p_column_display_sequence=>40
,p_column_heading=>'Tags'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7931143886828914)
,p_query_column_id=>5
,p_column_alias=>'PSS_DESCRIPTION'
,p_column_display_sequence=>50
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7931200245828915)
,p_query_column_id=>6
,p_column_alias=>'PSS_HELP'
,p_column_display_sequence=>60
,p_column_heading=>'Help'
,p_use_as_row_header=>'N'
,p_column_link=>'#PSS_HELP_URL#'
,p_column_linktext=>'#PSS_HELP#'
,p_column_link_attr=>'target="_blank"'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7931313080828916)
,p_query_column_id=>7
,p_column_alias=>'PSS_HELP_URL'
,p_column_display_sequence=>70
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8128584062371125)
,p_query_column_id=>8
,p_column_alias=>'PSS_NODES_SIZE'
,p_column_display_sequence=>90
,p_column_heading=>'Nodes'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8130090623371140)
,p_plug_name=>'Passed Filter'
,p_parent_plug_id=>wwv_flow_imp.id(7930546548828908)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(7419838145819531)
,p_plug_display_sequence=>10
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(7930615963828909)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'compact_numbers_threshold', '10000',
  'more_filters_suggestion_chip', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7931457396828917)
,p_plug_name=>'Violations'
,p_region_name=>'violations-tab'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'data-bind="class: hideRegionHeader"'
,p_plug_template=>wwv_flow_imp.id(7419838145819531)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7931550260828918)
,p_name=>'Violations Report'
,p_parent_plug_id=>wwv_flow_imp.id(7931457396828917)
,p_template=>wwv_flow_imp.id(7419838145819531)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a1y_id,',
'       vlt_id,',
'       vlt_impact,',
'       vlt_tags,',
'       vlt_description,',
'       vlt_help,',
'       vlt_help_url,       ',
'       vlt_nodes_size',
'  from a11y_violations_v',
' where a1y_id = :P2_A1Y_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(7458006867819546)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7931621937828919)
,p_query_column_id=>1
,p_column_alias=>'A1Y_ID'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7932354602828926)
,p_query_column_id=>2
,p_column_alias=>'VLT_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Identifier'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(0);'
,p_column_linktext=>'#VLT_ID#'
,p_column_link_attr=>'class="a1y-vlt" data-vlt-id="#VLT_ID#"'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7932497145828927)
,p_query_column_id=>3
,p_column_alias=>'VLT_IMPACT'
,p_column_display_sequence=>30
,p_column_heading=>'Impact'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7932537128828928)
,p_query_column_id=>4
,p_column_alias=>'VLT_TAGS'
,p_column_display_sequence=>40
,p_column_heading=>'Tags'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7932678437828929)
,p_query_column_id=>5
,p_column_alias=>'VLT_DESCRIPTION'
,p_column_display_sequence=>50
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7932772292828930)
,p_query_column_id=>6
,p_column_alias=>'VLT_HELP'
,p_column_display_sequence=>60
,p_column_heading=>'Help'
,p_use_as_row_header=>'N'
,p_column_link=>'#VLT_HELP_URL#'
,p_column_linktext=>'#VLT_HELP#'
,p_column_link_attr=>'target="_blank"'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7932897855828931)
,p_query_column_id=>7
,p_column_alias=>'VLT_HELP_URL'
,p_column_display_sequence=>70
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8128396313371123)
,p_query_column_id=>8
,p_column_alias=>'VLT_NODES_SIZE'
,p_column_display_sequence=>90
,p_column_heading=>'Nodes'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8129876602371138)
,p_plug_name=>'Violations Filter'
,p_parent_plug_id=>wwv_flow_imp.id(7931457396828917)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(7419838145819531)
,p_plug_display_sequence=>10
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(7931550260828918)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'compact_numbers_threshold', '10000',
  'more_filters_suggestion_chip', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7932991299828932)
,p_plug_name=>'Inapplicable'
,p_region_name=>'inapplicable-tab'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'data-bind="class: hideRegionHeader"'
,p_plug_template=>wwv_flow_imp.id(7419838145819531)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7933067723828933)
,p_name=>'Inapplicabe Report'
,p_parent_plug_id=>wwv_flow_imp.id(7932991299828932)
,p_template=>wwv_flow_imp.id(7419838145819531)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a1y_id,',
'       iap_id,',
'       iap_impact,',
'       iap_tags,',
'       iap_description,',
'       iap_help',
'  from a11y_inapplicable_v',
' where a1y_id = :P2_A1Y_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(7458006867819546)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7933122527828934)
,p_query_column_id=>1
,p_column_alias=>'A1Y_ID'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7933887437828941)
,p_query_column_id=>2
,p_column_alias=>'IAP_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Identifier'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7933952667828942)
,p_query_column_id=>3
,p_column_alias=>'IAP_IMPACT'
,p_column_display_sequence=>30
,p_column_heading=>'Impact'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7934042701828943)
,p_query_column_id=>4
,p_column_alias=>'IAP_TAGS'
,p_column_display_sequence=>40
,p_column_heading=>'Tags'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7934167560828944)
,p_query_column_id=>5
,p_column_alias=>'IAP_DESCRIPTION'
,p_column_display_sequence=>50
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7934284969828945)
,p_query_column_id=>6
,p_column_alias=>'IAP_HELP'
,p_column_display_sequence=>60
,p_column_heading=>'Help'
,p_use_as_row_header=>'N'
,p_column_link=>'#IAP_HELP_URL#'
,p_column_linktext=>'#IAP_HELP#'
,p_column_link_attr=>'target="_blank"'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8130247573371142)
,p_plug_name=>'Inapplicable Filter'
,p_parent_plug_id=>wwv_flow_imp.id(7932991299828932)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(7419838145819531)
,p_plug_display_sequence=>10
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(7933067723828933)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'compact_numbers_threshold', '10000',
  'more_filters_suggestion_chip', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7934751183828950)
,p_plug_name=>'Details'
,p_region_name=>'node-details'
,p_region_css_classes=>'a11y-node-details'
,p_region_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--lg'
,p_plug_template=>wwv_flow_imp.id(7400045202819523)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_04'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8128078234371120)
,p_plug_name=>'Output'
,p_region_name=>'output'
,p_parent_plug_id=>wwv_flow_imp.id(7934751183828950)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(7419838145819531)
,p_plug_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6142953882322108)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7898711516504640)
,p_button_name=>'REMOVE_TEST'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(7493178072819562)
,p_button_image_alt=>'Delete Testresults'
,p_button_position=>'NEXT'
,p_confirm_message=>'Do you really want to delete this test report?'
,p_confirm_style=>'danger'
,p_icon_css_classes=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(6143182890322110)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(6142953882322108)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10734516006716229)
,p_branch_name=>'Go To Page 9998'
,p_branch_action=>'f?p=&APP_ID.:9998:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from user_tables',
' where table_name = ''A11Y_RESULTS'''))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7621840127927708)
,p_name=>'P2_A1Y_ID'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8129443688371134)
,p_name=>'P2_A1Y_RESULT'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8129924489371139)
,p_name=>'P2_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8129876602371138)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'ROW'
,p_attribute_04=>'N'
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8130141151371141)
,p_name=>'P2_SEARCH_PSS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8130090623371140)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'ROW'
,p_attribute_04=>'N'
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8130366539371143)
,p_name=>'P2_SEARCH_IAP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8130247573371142)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'ROW'
,p_attribute_04=>'N'
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8130490383371144)
,p_name=>'P2_TAGS_PSS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8130090623371140)
,p_prompt=>'Tags'
,p_source=>'PSS_TAGS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_toggleable=>false
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>','
,p_multi_value_trim_space=>true
,p_fc_filter_combination=>'OR'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8130580181371145)
,p_name=>'P2_TAGS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8129876602371138)
,p_prompt=>'Tags'
,p_source=>'VLT_TAGS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_toggleable=>false
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>','
,p_multi_value_trim_space=>true
,p_fc_filter_combination=>'OR'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8130666315371146)
,p_name=>'P2_TAGS_IAP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8130247573371142)
,p_prompt=>'Tags'
,p_source=>'IAP_TAGS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_toggleable=>false
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>','
,p_multi_value_trim_space=>true
,p_fc_filter_combination=>'OR'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(8129574677371135)
,p_computation_sequence=>10
,p_computation_item=>'P2_A1Y_RESULT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case ',
'        when COUNT_VIOLATIONS > 0 then ''Failed''',
'        when COUNT_PASSES > 0 then ''Success''',
'        else ''Inapplicable''',
'       end     ',
'   from A11Y_TESTS_V',
' where a1y_id = :P2_A1Y_ID '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8126138113371101)
,p_name=>'OnClick - .a1y_vlt: Show Details'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.a1y-vlt'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'body'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8126239415371102)
,p_event_id=>wwv_flow_imp.id(8126138113371101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showDetails(a11yTooling.processViolation, this.triggeringElement.dataset.vltId, "Violation Details");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8128659731371126)
,p_name=>'OnClick - .a1y_pss: Show Details'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.a1y-pss'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'body'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8128791833371127)
,p_event_id=>wwv_flow_imp.id(8128659731371126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'showDetails(a11yTooling.processPasses, this.triggeringElement.dataset.pssId, "Passed Details");',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6143002015322109)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Testresults'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete ',
'  from a11y_results ',
' where a1y_id = :P2_A1Y_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(6142953882322108)
,p_process_success_message=>'Test Results successfullty deleted'
,p_internal_uid=>6143002015322109
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8128170154371121)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_VIOLATION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'  l_vlt_id    a11y_violations_v.vlt_id%type := apex_application.g_x01;',
'  l_vlt_json  json_object_t := json_object_t;',
'  l_vlt_nodes clob;',
'Begin',
'    apex_debug.info(''apex_application.x01: %1'', apex_application.g_x01);',
'    ',
'    select vlt_nodes',
'      into l_vlt_nodes',
'      from a11y_violations_v',
'     where a1y_id = :P2_A1Y_ID',
'       and vlt_id = l_vlt_id;',
'       ',
'    -- l_vlt_json := json_object_t(l_vlt_nodes);',
'',
'    apex_util.prn (p_clob   => l_vlt_nodes,',
'                   p_escape => false );',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8128170154371121
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8128845400371128)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_PASSES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'  l_pss_id    a11y_passes_v.pss_id%type := apex_application.g_x01;  ',
'  l_pss_nodes clob;',
'Begin',
'    apex_debug.info(''apex_application.x01: %1'', apex_application.g_x01);',
'    ',
'    select pss_nodes',
'      into l_pss_nodes',
'      from a11y_passes_v',
'     where a1y_id = :P2_A1Y_ID',
'       and pss_id = l_pss_id;',
'       ',
'',
'    apex_util.prn (p_clob   => l_pss_nodes,',
'                   p_escape => false );',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8128845400371128
);
wwv_flow_imp.component_end;
end;
/
