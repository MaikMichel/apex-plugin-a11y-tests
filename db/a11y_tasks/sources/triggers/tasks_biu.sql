create or replace trigger tasks_biu
	before insert or update on tasks for each row
begin
	if :new.id is null then
		:new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
	end if;
end tasks_biu;
/