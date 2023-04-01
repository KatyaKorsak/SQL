
create table employees(
id serial primary key,
employee_name varchar(50) not null
);


insert into employees (employee_name)
values ('Aleksandr Karelin'), ('Alexander Ovechkin'), ('Anderson Silva'), ('Annika Sörenstam'), ('Ayrton Senna'), ('Babe Ruth'), 
('Beezie Madden'), ('Ben Ainslie'), ('Bernard Hinault'), ('Birgit Fischer'), ('Bjorn Daehlie'), ('Bobby Fischer'), ('Bonnie Blair'), 
('Brian Lara'), ('Bruce Lee'), ('Carl Lewis'), ('Chris Hoy'), ('Christian Taylor'), ('Cristiano Ronaldo'), ('Danica Patrick'),
('Danuta Kozák'), ('David Douillet'), ('Deng Yaping'), ('Dezső Gyarmati'), ('Diego Maradona'), ('Don Bradman'), ('Duke Kahanamoku'),
('Eddy Merckx'), ('Evgeni Plushenko'), ('Fausto Coppi'), ('Georges St-Pierre'), ('Greg Louganis'), ('Hadi Saei'), ('Hakuhō Shō'),
('Henry Armstrong'), ('Jack Nicklaus'), ('Jackie Joyner-Kersee'), ('Jan-Ove Waldner'), ('Jan Železný'), ('Javier Sotomayor'), 
('Jean-Claude Killy'), ('Jerry Rice'), ('Johan Cruyff'), ('Joe Louis'), ('Joe Montana'), ('Jonah Lomu'), ('José Raúl Capablanca'), 
('Judit Polgár'), ('Kareem Abdul-Jabbar'), ('Kenenisa Bekele'), ('Kim Soo-Nyung'), ('Kobe Bryant'), ('Knut Holmann'), ('Larisa Latynina'),
('Lebron James'), ('Lin Dan'), ('Lionel Messi'), ('Ma Long'), ('Magic Johnson'), ('Mario Lemieux'), ('Marit Bjørgen'), ('Margaret Court'),
('Mark Spitz'), ('Martina Navratilova'), ('Mia Hamm'), ('Michael Jordan'), ('Michael Phelps'), ('Michael Schumacher'), ('Mo Farah'), 
('Mikkel Hansen');

select * from employees;

create table salary1 (
id serial primary key,
mounthly_salary int not null
);

insert into salary1 (mounthly_salary)
values (1000), (1100), (1200), (1300), (1400), (1500), (1600), (1700), (1800), (1900), (2000), (2100), (2200), (2300), (2400), (2500);

select * from salary1;

create table employee_salary (
id serial primary key,
employee_id int unique not null, 
salary_id int not null
);

insert into employee_salary(employee_id, salary_id)
   values (1, 1),      
          (2, 3),
          (3, 7),
          (4, 1),
          (5, 5),
          (6, 8),
          (7, 13),
          (8, 1),
          (9, 11),
          (10, 5),
          (11, 8),
          (12, 13),
          (13, 7),
          (14, 14),
          (15, 15),
          (16, 8),
          (17, 3),
          (18, 7),
          (19, 11),
          (20, 5),
          (21, 1),      
          (22, 3),
          (23, 4),
          (24, 2),
          (25, 5),
          (26, 8),
          (27, 3),
          (28, 7),
          (29, 12),
          (30, 15),
          (71, 8),
          (72, 3),
          (73, 7),
          (74, 1),
          (75, 5),
          (76, 8),
          (77, 3),
          (78, 7),
          (79, 1),
          (80, 5);
         
select * from employee_salary;

create table roles1 (
id serial primary key,
role_name int unique not null 
);
select * from roles1;

alter table roles1 alter column role_name type varchar(30);

insert into roles1 (role_name)
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
      
select * from roles1;  
  
create table roles_employee (
id serial primary key,
employee_id int unique not null,
role_id int not null,
foreign key (employee_id)
references employees(id),
foreign key (role_id)
references roles1(id)
);

select * from roles_employee;

insert into roles_employee (employee_id, role_id)
   values (5, 1),      
          (16, 14),
          (21, 11),
          (29, 2),
          (1, 10),
          (20, 10),
          (30, 13),
          (19, 3),
          (28, 17),
          (15, 16),
          (2, 10),
          (17, 15),
          (31, 19),
          (6, 18),
          (32, 4),
          (27, 17),
          (7, 16),
          (18, 5),
          (8, 15),
          (3, 14),
          (22, 19),      
          (23, 18),
          (4, 13),
          (33, 19),
          (14, 10),
          (26, 6),
          (38, 11),
          (34, 12),
          (39, 12),
          (9, 7),
          (24, 1),
          (40, 13),
          (10, 15),
          (11, 14),
          (35, 10),
          (37, 16),
          (13, 18),
          (36, 8),
          (25, 17),
          (12, 9);









