set define '^'
set verify off

@../env.sql

prompt
prompt
prompt **********************************************************************
prompt ***  USER CREATION: ^db_app_user
prompt **********************************************************************
prompt
prompt

prompt ^db_app_user droppen
declare
  v_check number(1) := 0;
begin
  select 1
    into v_check
    from all_users
   where username = upper('^db_app_user');
  dbms_output.put_line('drop user ^db_app_user cascade');
  execute immediate 'drop user ^db_app_user cascade';
exception
  when no_data_found then
    null; -- ok, nothing to drop  ´
end;
/

prompt create user ^db_app_user identified by "^db_app_pwd" default tablespace ^deftablespace
create user ^db_app_user
  identified by "^db_app_pwd"
  default tablespace ^deftablespace
  temporary tablespace temp
  profile default
  account unlock;


-- 2 roles for ^db_app_user
grant connect to ^db_app_user;
alter user ^db_app_user default role all;
grant create any context to ^db_app_user;

prompt **********************************************************************
prompt
prompt-- 2 tablespace quotas for a11y_tasks
alter user a11y_tasks quota unlimited on ^deftablespace;


-- 11 system privileges for a11y_tasks
grant create any context to a11y_tasks;
grant create any directory to a11y_tasks;
grant create any procedure to a11y_tasks;
grant create job to a11y_tasks;
grant create procedure to a11y_tasks;
grant create sequence to a11y_tasks;
grant create synonym to a11y_tasks;
grant create public synonym to a11y_tasks;
grant create table to a11y_tasks;
grant create trigger to a11y_tasks;
grant create type to a11y_tasks;
grant create view to a11y_tasks;
grant create session to a11y_tasks;

-- 5 object privileges for a11y_tasks
grant execute on sys.dbms_crypto to a11y_tasks;
grant execute on sys.utl_file to a11y_tasks;
grant execute on sys.utl_http to a11y_tasks;
grant execute on sys.dbms_rls to a11y_tasks;


prompt **********************************************************************
prompt
prompt