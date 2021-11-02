create table employees
    (id serial primary key,   
    employee_name varchar(50) not null
);

insert into employees (id, employee_name)
values (default, 'Moskva Piter'); 

select * from employees;

--=================================

create table salary 
(id serial primary key, 
monthly_salary varchar (15) not null 
);
insert into salary (id, monthly_salary)
values (default, 2500);

select *from salary
;
--==================================
create table employees_salary (
	id serial primary key,
	employee_id int not null,
	salary_id int not null, 
	foreign key (employee_id)
		references employees (id),
	foreign key (salary_id)
		references salary (id)
);

select * from employees_salary;
insert into employees_salary (id, employee_id, salary_id)
values (default, 33, 7 )
;


--====================================

create table roles (
id serial primary key, 
role_name int not null unique);

alter table roles 
alter column role_name type varchar
using role_name::varchar(30)

insert into roles (
id, role_name)
values (default, 'Senior Automation QA engineer')

select * from roles;

--===================================
create table roles_employee (
	id serial primary key, 
	employee_id int not null, 
	role_id int not null, 
		foreign key (employee_id)
			references employees (id),
		foreign key (role_id)
			references roles (id)
);

select * from roles_employee;
insert into roles_employee (id, employee_id, role_id)
values (default, 6, 7)
