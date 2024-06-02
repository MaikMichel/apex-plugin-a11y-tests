prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 111
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.6'
,p_default_workspace_id=>6665137922808662
,p_default_application_id=>111
,p_default_id_offset=>0
,p_default_owner=>'A11Y_TASKS'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(7315954670819478)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>10919997
);
wwv_flow_imp.component_end;
end;
/
