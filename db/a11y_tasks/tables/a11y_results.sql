create table a11y_results (
  a1y_id               number               not null,
  a1y_content          clob,
  a1y_created_at       date                 not null,
  a1y_created_by       varchar2(250 char)   not null,
  a1y_modified_at      date                 not null,
  a1y_modified_by      varchar2(250 char)   not null
);

comment on table a11y_results is 'Content of table';
comment on column a11y_results.a1y_id is 'PrimaryKey for table a11y_results';


-- File: indexes/primaries/a11y_results_a1y_id_pk.sql
-- File: constraints/primaries/a11y_results_a1y_id_pk.sql
-- File: constraints/checks/a11y_results_a1y_content_cc.sql
-- File: sources/triggers/a11y_results_biu.sql
-- File: views/a11y_tests_v.sql
-- File: views/a11y_violations_v.sql
-- File: views/a11y_passes_v.sql
-- File: views/a11y_inapplicable_v.sql
