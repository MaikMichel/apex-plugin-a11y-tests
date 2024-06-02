alter table a11y_results add (
  constraint a1y_id_pk
  primary key (a1y_id)
  using index a11y_results_a1y_id_pk
  enable validate
);