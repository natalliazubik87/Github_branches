<<<<<<< HEAD

<<<<<<< HEAD

=======
>>>>>>> SQL
=======
>>>>>>> 01ea9d0a34de5cf241a403f068aadba7b4cfa34a
--1.Создать таблицу employees
-- - id serial,  primary key,
-- - employee_name. Varchar(50), not null
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);
select * from employees;

--2.Наполнить таблицу employees 70 строками
insert into employees(employee_name)
values ('Lucia_Evans'),
       ('Ava_Stone'),
       ('Amelia Roberts'),
       ('Emily Mills'),
       ('Jessica Lewis'),
       ('Isla Morgan'),
       ('Isabella Florence'),
       ('Poppy Campbell'),
       ('Mia Bronte'),
       ('Sophie Bell'),
       ('Lily Adams'),
       ('Ruby Williams'),
       ('Evie Peters'),
       ('Grace Gibson'),
       ('Ella Martin'),
       ('Sophia Jordan'),
       ('Chloe Jackson'),
       ('Scarlett Grant'),
       ('Frea Davis'),
       ('Isabelle Collins'),
       ('Phoebe Bradley'),
       ('Alice Barlow'),
       ('Ellie Abramson'),
       ('Bethany Addington'),
       ('Maryam Adrian'),
       ('Heidi Albertson'),
       ('Paige Allford'),
       ('Faith Anderson'),
       ('Rose Atchenson'),
       ('Ivy Babcock'),
       ('Flronce Barrington'),
       ('Hurriet Batnes'),
       ('Zoe Barrington'),
       ('Samuel Bawerman'),
       ('Jack Becker'),
       ('Joseph Benson'),
       ('Harry Bishop'),
       ('Alfie Campbell'),
       ('Jacob Brown'),
       ('Thomas Chapman'),
       ('Charlie Clapton'),
       ('Oscar Clifford'),
       ('James Coleman'),
       ('William Conors'),
       ('Joshua Cook'),
       ('George Dean'),
       ('Ethan Derrick'),
       ('Noah Dickinson'),
       ('Archie Dodson'),
       ('Henry Ellington'),
       ('Leo Erickson'),
       ('John Evans'),
       ('Oliver Farmer'),
       ('David Fisher'),
       ('Ryan Fleming'),
       ('Dexter Ford'),
       ('Connor Forman'),
       ('Albert Foster'),
       ('Austin Gibbs'),
       ('Stanley Gimson'),
       ('Theodore Harrison'),
       ('Owen Hodges'),
       ('Caleb Higgins'),
       ('Alana Hawkins'),
       ('Alex Hardman'),
       ('Cynthia Hancock'),
       ('Emma Hamphrey'),
       ('Deborah Gustman'),
       ('Gabriel Goldman'),
       ('Natasha Gilson');
      
--3.Создать таблицу salary
-- - id. Serial  primary key,
-- - monthly_salary. Int, not null
create table salary(
	id serial primary key,
	monthly_salary int not null
);
select* from salary;

--4. Наполнить таблицу salary 15 строками
insert into salary(monthly_salary)
values (1000),
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
       (2400);
      
--5. Создать таблицу employee_salary
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique
-- - salary_id. Int, not null
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);
select * from employee_salary;

--6. Наполнить таблицу employee_salary 40 строками:
-- - в 10 строк из 40 вставить несуществующие employee_id
-- - - в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary(employee_id,salary_id)
values (1,15),
       (2,1),
       (3,10),
       (4,7),
       (5,1),
       (6,8),
       (7,3),
       (8,4),
       (9,2),
       (10,3),
       (11,9),
       (12,10),
       (13,13),
       (14,9),
       (15,15),
       (16,11),
       (17,3),
       (18,5),
       (19,6),
       (20,2),
       (21,6),
       (22,2),
       (23,5),
       (24,14),
       (25,15),
       (26,1),
       (27,7),
       (28,5),
       (29,4),
       (30,3),
       (71,4),
       (72,11),
       (73,12),
       (74,13),
       (75,5),
       (76,8),
       (77,2),
       (78,4),
       (79,6),
       (80,2);
      
--7.Создать таблицу roles
-- - id. Serial  primary key,
-- - role_name. int, not null, unique
create table roles(
	id serial primary key,
	role_name int not null unique
);
select * from roles;

--8.Поменять тип столба role_name с int на varchar(30)
alter table roles 
alter column role_name type varchar(30) using role_name::varchar(30);

--9.Наполнить таблицу roles 20 строками
insert into roles (role_name)
values ('Junior Python developer'),
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
      
-- 10.Создать таблицу roles_employee
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- - role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
    foreign key (employee_id)
    	references employees(id),
    foreign key (role_id)
    	references  roles(id)
);
select * from roles_employee;

--11.Наполнить таблицу roles_employee 40 строками
insert into roles_employee (employee_id,role_id)
values     (1,1),
	   (2,3),
	   (3,5),
	   (4,2),
	   (6,8),
	   (7,20),
	   (8,19),
	   (9,11),
	   (10,5),
	   (11,4),
	   (12,17),
	   (13,12),
	   (14,7),
	   (15,20),
	   (16,9),
	   (17,4),
	   (18,6),
	   (19,1),
	   (20,11),
	   (21,6),
	   (22,16),
	   (23,3),
	   (24,4),
	   (25,2),
	   (26,2),
	   (27,8),
	   (28,6),
	   (29,2),
	   (30,3),
	   (31,16),
	   (32,14),
	   (33,12),
	   (34,1),
	   (35,6),
	   (36,9),
	   (37,7),
	   (38,18),
	   (39,3),
	   (40,11);
	   
       
       
       
       
       
       
       


      

   
       
       
       
       









