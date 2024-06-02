create or replace trigger a11y_results_biu
  before insert or update on a11y_results for each row
begin
  if :new.a1y_id is null then
    :new.a1y_id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
  end if;

  if inserting then
    :new.a1y_created_at := current_date;
    :new.a1y_created_by := nvl(sys_context('APEX$SESSION', 'APP_USER'), user);
  end if;

  :new.a1y_modified_at := current_date;
  :new.a1y_modified_by := nvl(sys_context('APEX$SESSION', 'APP_USER'), user);
end a11y_results_biu;
/