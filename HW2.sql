
 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.	
 
select employee_name, mounthly_salary 
from employee_salary join employees
on employee_salary.employee_id = employees.id
join salary1 on salary1.id = employees.id;
	

select * from employee_salary;
select * from employees;
select * from salary1;
select * from roles1;
select * from roles_employee;

2. Вывести всех работников у которых ЗП меньше 2000.

select employee_name, mounthly_salary 
from employee_salary join employees
on employee_salary.employee_id = employees.id
join salary1 on salary1.id = employees.id
where mounthly_salary < 2000;

3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 
select employee_name, mounthly_salary 
from employee_salary join employees
on employee_salary.employee_id = employees.id
full join salary1 on salary1.id = employees.id
where employee_name is null;

 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 
select employee_name, mounthly_salary 
from employee_salary join employees
on employee_salary.employee_id = employees.id
full join salary1 on salary1.id = employees.id
where employee_name is null and  mounthly_salary < 2000;

5. Найти всех работников кому не начислена ЗП.

select employee_name, mounthly_salary 
from employee_salary  join employees
on employee_salary.employee_id = employees.id
full join salary1 on salary1.id = employees.id
where mounthly_salary is null;

6. Вывести всех работников с названиями их должности.

select employee_name, role_name 
from roles_employee join employees
on roles_employee.employee_id = employees.id
join roles1 on roles1.id = employees.id;

 7. Вывести имена и должность только Java разработчиков.
select employee_name, role_name 
from roles_employee join employees
on roles_employee.employee_id = employees.id
join roles1 on roles1.id = employees.id
where role_name like '%Java%';
 
 8. Вывести имена и должность только Python разработчиков.
select employee_name, role_name 
from roles_employee join employees
on roles_employee.employee_id = employees.id
join roles1 on roles1.id = employees.id
where role_name like '%Python%';
 
 9. Вывести имена и должность всех QA инженеров.
select employee_name, role_name 
from roles_employee join employees
on roles_employee.employee_id = employees.id
join roles1 on roles1.id = employees.id
where role_name like '%QA%';

 10. Вывести имена и должность ручных QA инженеров.
select employee_name, role_name 
from roles_employee join employees
on roles_employee.employee_id = employees.id
join roles1 on roles1.id = employees.id
where role_name like '%Manual QA%'; 

 11. Вывести имена и должность автоматизаторов QA
select employee_name, role_name 
from roles_employee join employees
on roles_employee.employee_id = employees.id
join roles1 on roles1.id = employees.id
where role_name like '%Automation QA%';

 12. Вывести имена и зарплаты Junior специалистов
 
select employee_name, mounthly_salary, role_name 
from employees
join employee_salary on employee_salary.employee_id = employees.id 
join salary1 on employee_salary.salary_id = salary1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles1 on roles_employee.role_id = roles1.id
where role_name like '%Junior%'; 

 13. Вывести имена и зарплаты Middle специалистов
select employee_name, mounthly_salary, role_name 
from employees
join employee_salary on employee_salary.employee_id = employees.id 
join salary1 on employee_salary.salary_id = salary1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles1 on roles_employee.role_id = roles1.id
where role_name like '%Senior%'; 
 
 14. Вывести имена и зарплаты Senior специалистов
select employee_name, mounthly_salary, role_name 
from employees
join employee_salary on employee_salary.employee_id = employees.id 
join salary1 on employee_salary.salary_id = salary1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles1 on roles_employee.role_id = roles1.id
where role_name like '%Middle%';

 15. Вывести зарплаты Java разработчиков
select mounthly_salary, role_name 
from employees
join employee_salary on employee_salary.employee_id = employees.id 
join salary1 on employee_salary.salary_id = salary1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles1 on roles_employee.role_id = roles1.id
where role_name like '%Java%'; 
 
 16. Вывести зарплаты Python разработчиков
select mounthly_salary, role_name 
from employees
join employee_salary on employee_salary.employee_id = employees.id 
join salary1 on employee_salary.salary_id = salary1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles1 on roles_employee.role_id = roles1.id
where role_name like '%Python%';
 
 17. Вывести имена и зарплаты Junior Python разработчиков
select employee_name, mounthly_salary, role_name 
from employees
join employee_salary on employee_salary.employee_id = employees.id 
join salary1 on employee_salary.salary_id = salary1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles1 on roles_employee.role_id = roles1.id
where role_name like '%Junior Python%';

 18. Вывести имена и зарплаты Middle JS разработчиков
select employee_name, mounthly_salary, role_name 
from employees
join employee_salary on employee_salary.employee_id = employees.id 
join salary1 on employee_salary.salary_id = salary1.id
join roles_employee on employees.id = roles_employee.employee_id 
full join roles1 on roles_employee.role_id = roles1.id
where role_name like '%Middle JavaScript %';
 
 19. Вывести имена и зарплаты Senior Java разработчиков
select employee_name, mounthly_salary, role_name 
from employees
join employee_salary on employee_salary.employee_id = employees.id 
join salary1 on employee_salary.salary_id = salary1.id
join roles_employee on employees.id = roles_employee.employee_id 
full join roles1 on roles_employee.role_id = roles1.id
where role_name like '%Senior Java %';

 20. Вывести зарплаты Junior QA инженеров
select mounthly_salary, role_name 
from employees
join employee_salary on employee_salary.employee_id = employees.id 
join salary1 on employee_salary.salary_id = salary1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles1 on roles_employee.role_id = roles1.id
where role_name like 'Junior%QA%';

 21. Вывести среднюю зарплату всех Junior специалистов
select avg(mounthly_salary)
from employees
join employee_salary on employee_salary.employee_id = employees.id 
join salary1 on employee_salary.salary_id = salary1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles1 on roles_employee.role_id = roles1.id
where role_name like '%Junior%';

 22. Вывести сумму зарплат JS разработчиков
select sum(mounthly_salary)
from employees
join employee_salary on employee_salary.employee_id = employees.id 
join salary1 on employee_salary.salary_id = salary1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles1 on roles_employee.role_id = roles1.id
where role_name like '%JavaScript%';
 
 23. Вывести минимальную ЗП QA инженеров
select min(mounthly_salary) 
from employees
join employee_salary on employee_salary.employee_id = employees.id 
join salary1 on employee_salary.salary_id = salary1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles1 on roles_employee.role_id = roles1.id
where role_name like '%QA%'; 
 
 24. Вывести максимальную ЗП QA инженеров
select max(mounthly_salary) 
from employees
join employee_salary on employee_salary.employee_id = employees.id 
join salary1 on employee_salary.salary_id = salary1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles1 on roles_employee.role_id = roles1.id
where role_name like '%QA%';

 25. Вывести количество QA инженеров
select count (employee_name) 
from employees
join employee_salary on employee_salary.employee_id = employees.id 
join salary1 on employee_salary.salary_id = salary1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles1 on roles_employee.role_id = roles1.id
where role_name like '%QA%'; 

 26. Вывести количество Middle специалистов.
select count (employee_name) 
from employees
join employee_salary on employee_salary.employee_id = employees.id 
join salary1 on employee_salary.salary_id = salary1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles1 on roles_employee.role_id = roles1.id
where role_name like '%Middle%';  

 27. Вывести количество разработчиков
select count (employee_name) 
from employees
join employee_salary on employee_salary.employee_id = employees.id 
join salary1 on employee_salary.salary_id = salary1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles1 on roles_employee.role_id = roles1.id
where role_name like '%developer%'; 

 28. Вывести фонд (сумму) зарплаты разработчиков.
select sum (mounthly_salary) 
from employees
join employee_salary on employee_salary.employee_id = employees.id 
join salary1 on employee_salary.salary_id = salary1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles1 on roles_employee.role_id = roles1.id
where role_name like '%developer%'; 

 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employee_name, mounthly_salary, role_name 
from employees
join employee_salary on employee_salary.employee_id = employees.id 
join salary1 on employee_salary.salary_id = salary1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles1 on roles_employee.role_id = roles1.id
order by mounthly_salary;

 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employee_name, mounthly_salary, role_name 
from employees
join employee_salary on employee_salary.employee_id = employees.id 
join salary1 on employee_salary.salary_id = salary1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles1 on roles_employee.role_id = roles1.id
where mounthly_salary between 1700 and 2300
order by mounthly_salary;

 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name, mounthly_salary, role_name 
from employees
join employee_salary on employee_salary.employee_id = employees.id 
join salary1 on employee_salary.salary_id = salary1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles1 on roles_employee.role_id = roles1.id
where mounthly_salary < 2300
order by mounthly_salary;

 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name, mounthly_salary, role_name 
from employees
join employee_salary on employee_salary.employee_id = employees.id 
join salary1 on employee_salary.salary_id = salary1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles1 on roles_employee.role_id = roles1.id
where mounthly_salary in (1100, 1500, 2000)
order by mounthly_salary;