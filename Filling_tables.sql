create table employees (
id serial primary key,
employee_name varchar(50) not null);


insert into employees (employee_name)
values 	('Pavlo'), ('Nikita'),('Kate'),('Olga'),('Lusy'),('Maxim'),('Ruslan'),('Vika'),('Roma'),('Alex'),('Anatoliy'),
('Vlad'),('Sasha'),('Vadim'),('Tom'),('Edward'),('Leez'),('Helen'),('Sofiia'),('Nik'),('Mike'),('Lana'),('Marta'),('Marie'),
('Dunkan'),('Obivan'),('Frodo'),('Yoda'),('Taras'),('Mark'),('Jhon'),('Denis'),('Tim'),('Vito'),('Arnold'),('Jan'),('Seba'),
('Rustam'),('Anna'),('Darina'),('Maxim'),('Ruslan'),('Vika'),('Roma'),('Alex'),('Anatoliy'),('Vlad'),('Sasha'),('Vadim'),('Tom'),
('Edward'),('Leez'),('Helen'),('Sofiia'),('Nik'),('Mike'),('Lana'),('Marta'),('Marie'),('Dunkan'),('Obivan'),('Frodo'),('Yoda'),
('Taras'),('Mark'),('Jhon'),('Denis'),('Tim'),('Vito'),('Arnold'),('Jan'),('Seba'),('Rustam'),('Anna'),('Darina');

select * from employees;

create table salary(
id serial primary key,
monthly_salary int not null);

insert into salary(monthly_salary)
values	(1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);

select * from salary;

create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null);

insert into employee_salary(employee_id, salary_id)
values	(3, 7),
		(1, 4),
		(5, 9),
		(40, 13),
		(23, 4),
		(11, 2),
		(52, 10),
		(15, 13),
		(26, 4),
		(16, 1),
		(33, 7),
		(34, 16),
		(35, 11),
		(37, 5),
		(38, 6),
		(48, 8),
		(49, 9),
		(50, 10),
		(51, 12),
		(53, 12),
		(54, 7),
		(55, 2),
		(68, 8),
		(69, 1),
		(70, 16),
		(71, 9),
		(72, 13),
		(73, 14),
		(74, 15),
		(75, 11),
		(93, 10),
		(92, 9),
		(91, 8),
		(90, 6),
		(89, 6),
		(83, 7),
		(80, 7),
		(104, 7),
		(94, 4),
		(84, 10);
		
	select * from employee_salary;
	
create table roles(
id serial primary key,
role_name int not null unique);

alter table roles alter column role_name type varchar(50);

insert into roles (role_name)
values	('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');

select * from roles;
drop table roles;

create table roles_employee(
id serial primary key,
employee_id int not null unique,
foreign key (employee_id) references employees(id),
role_id int not null,
foreign key (role_id) references roles (id));

insert into roles_employee (employee_id, role_id)
values	(7, 2),
		(20, 4),
		(5, 20),
		(71, 18),
		(27, 3),
		(37, 9),
		(47, 11),
		(45, 1),
		(22, 2),
		(21, 1),
		(17, 10),
		(15, 7),
		(1, 9),
		(6, 2),
		(8, 12),
		(18, 7),
		(19, 7),
		(23, 7),
		(34, 2),
		(35, 2),
		(36, 4),
		(38, 4),
		(10, 5),
		(11, 14),
		(9, 16),
		(51, 6),
		(52, 6),
		(53, 9),
		(54, 4),
		(55, 2),
		(56, 1),
		(57, 1),
		(61, 6),
		(60, 5),
		(62, 5),
		(16, 4),
		(14, 3),
		(72, 2),
		(69, 4),
		(40, 7);
	select * from roles_employee;

drop table roles_salary;
drop table person;	
drop table roles_employee;
