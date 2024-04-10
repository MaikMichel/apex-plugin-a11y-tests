create table tasks(
  id           number not null,
  project      varchar2(50),
  task_name    varchar2(255),
  start_date   date,
  end_date     date,
  status       varchar2(50),
  assigned_to  varchar2(50),
  cost         number,
  budget       number
) ;


-- File: indexes/primaries/tasks_id_pk.sql
-- File: constraints/primaries/tasks_id_pk.sql
-- File: sources/triggers/tasks_biu.sql
