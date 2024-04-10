alter table tasks add (
	constraint id_pk
	primary key (id)
	using index tasks_id_pk
	enable validate
);