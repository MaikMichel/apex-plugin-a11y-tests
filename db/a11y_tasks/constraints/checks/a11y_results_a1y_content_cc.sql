alter table a11y_results add (
  constraint a11y_results_a1y_content_cc
  check (a1y_content is json)
  enable validate
);