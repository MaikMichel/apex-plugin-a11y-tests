declare
  procedure run(p_stmt in varchar2) is
  begin
    execute immediate p_stmt;
  exception
    when others then
      dbms_output.put_line(sqlerrm);
  end;
begin
  run ('drop view a11y_inapplicable_v');
  run ('drop view a11y_passes_v');
  run ('drop view a11y_violations_v');
  run ('drop view a11y_tests_v');
  run ('drop table a11y_results');
end;
/