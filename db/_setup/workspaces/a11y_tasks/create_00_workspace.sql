set define '^'
set concat on
set concat .
set verify off

@../../env.sql

-------------------------------------------------------------------------------------

PROMPT  =============================================================================
PROMPT  ==   CREATE WORKSPACE a11y_tasks
PROMPT  =============================================================================
PROMPT

declare
  v_workspace_id number;
begin
  select to_char(workspace_id)
    into v_workspace_id
    from apex_workspaces
   where workspace = upper('a11y_tasks');

  dbms_output.put_line('Workspace a11y_tasks allready installed!');

  apex_instance_admin.remove_workspace(p_workspace         => upper('a11y_tasks'));

  raise no_data_found;
exception
  when no_data_found then
  -- workspace does not exist, so add it
    apex_instance_admin.add_workspace (p_workspace      => upper('a11y_tasks'),
                                       p_primary_schema => upper('a11y_tasks'));

    commit;
end;
/