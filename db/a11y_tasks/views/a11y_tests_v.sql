create or replace view a11y_tests_v as
select a.a1y_content.url.string() url,
       a.a1y_content.testEngine.name.string() name,
       a.a1y_content.testEngine.version.string() version,
       a.a1y_content.apexenv.APP_USER.string() app_user,
       a.a1y_content.apexenv.APP_ID.string() app_id,
       a.a1y_content.apexenv.APP_ALIAS.string() app_alias,
       a.a1y_content.apexenv.APP_PAGE_ID.string() app_page_id,
       a.a1y_content.apexenv.APP_SESSION.string() app_session,
       a.a1y_content.apexenv.APEX_VERSION.string() apex_version,
       a.a1y_content.testEnvironment.userAgent.string() user_agent,
       a.a1y_content.testEnvironment.windowWidth.string() window_width,
       a.a1y_content.testEnvironment.windowHeight.string() window_height,
       a.a1y_content.testEnvironment.orientationType.string() orientation_type,
       a1y_created_at,
       a1y_id,
       a.a1y_content.passes.size() count_passes,
       a.a1y_content.inapplicable.size() count_inapplicable,
       a.a1y_content.violations.size() count_violations
  from a11y_results a
/