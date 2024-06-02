prompt --application/plugin_settings
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.6'
,p_default_workspace_id=>6665137922808662
,p_default_application_id=>111
,p_default_id_offset=>0
,p_default_owner=>'A11Y_TASKS'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7312955404819475)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
,p_version_scn=>10919997
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7313294218819476)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attribute_01=>'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON'
,p_attribute_02=>'VISIBLE'
,p_attribute_03=>'15'
,p_attribute_04=>'FOCUS'
,p_version_scn=>10919997
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7313555297819476)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_attribute_02=>'N'
,p_attribute_03=>'POPUP:ITEM'
,p_attribute_04=>'default'
,p_attribute_06=>'LIST'
,p_version_scn=>10919997
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7313822628819476)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attribute_01=>'Y'
,p_version_scn=>10919997
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7314136358819476)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>10919997
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7314409643819476)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_version_scn=>10919997
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7314747251819477)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
,p_version_scn=>10919997
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7315071804819477)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'FULL'
,p_attribute_02=>'POPUP'
,p_version_scn=>10919997
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7315338673819477)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
,p_version_scn=>10919997
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7315626940819477)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH_CB'
,p_version_scn=>10919997
);
wwv_flow_imp.component_end;
end;
/
