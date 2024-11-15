prompt --application/shared_components/files/icons_app_icon_32_png
begin
--   Manifest
--     APP STATIC FILES: 111
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.5'
,p_default_workspace_id=>6733971562520703
,p_default_application_id=>111
,p_default_id_offset=>0
,p_default_owner=>'A11Y_TASKS'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE900000212494441545847ED94DF4B53611CC69FB3CDE371CA36749B86781635B5C29419C48226F4032488EE82E8AE8B18F93F48843775';
wwv_flow_imp.g_varchar2_table(2) := '13DD78115EF82F7865BA4DBDE8C27ED06A0D542C175E6C6DB6998EED78DC79DDE27DA5D1FA01E71C3A8870BE37EFCD81E7F37DBECF79B8C1A5580D47389C09603A603A70AC1D500ADBB034D9607538743789EE1EA0E2574411D54A052F0B79DD10BA006A';
wwv_flow_imp.g_varchar2_table(3) := '84A08FB360B0BB9B6DFE319DC67AAD0ACE66D3EC842E0039F505E77DBE06B154260372A24B33846600BAFDE45000C3ED1D0D00F1ED02C6DEBE86C56ED7E4826600AF423073F53A13799AFCC0DEBBBDFDE8125A702B32877C8B602CC00D8713E34301D08D';
wwv_flow_imp.g_varchar2_table(4) := '97B35FA110823B7D87001389F77851DC3516E09EDB8BFB67CF31110A41E7E7391EBD7985F97DD95880D166010F2F06FF2A32B5BA82E9FC967100554942D0DE8667A111269295F7D84BEDA7135E882241144D41541D429AFE90D3855CB18827C14B4CF4F7';
wwv_flow_imp.g_varchar2_table(5) := '13DC8E45E11178C4CB65D510AA015C2509D7FCA751522A089FF2FF0140DD789EFA8CB6261EB1B555ECBA5CAA4EA11AA0F7A05A6FBEE4E6261E5F0E212349F5103E588CC1DFD3536FC64F568B7100CB1B1B18F59DC485CE4E26F22E9743249D46D0271A0F';
wwv_flow_imp.g_varchar2_table(6) := '40EDFDCEF338D893715314014230FB6D8B55F099D6560CB83D4866B3F8EF0E387776B0CFF3907FA95AFA57703C5FEF7F1AD4E6B204415150743756F5BFEEA13A03AA0EAAE32313C074C074E0C81DF801DB850D30B1516C4C0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7607772438819696)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
