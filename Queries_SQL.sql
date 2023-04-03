--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employees.employee_name, salary.monthly_salary   
from employee_salary 
join salary on employee_salary.salary_id = salary.id
join employees on employees.id = employee_salary.employee_id;

--2. Вывести всех работников у которых ЗП меньше 2000
select employees.employee_name, salary.monthly_salary   
from employee_salary 
join salary on employee_salary.salary_id = salary.id
join employees on employees.id = employee_salary.employee_id where monthly_salary < 2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employees.employee_name, salary.monthly_salary   
from employee_salary 
join salary on employee_salary.salary_id = salary.id 
left join employees on employees.id = employee_salary.employee_id where employee_name is null;

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employees.employee_name, salary.monthly_salary   
from employee_salary 
join salary on employee_salary.salary_id = salary.id 
left join employees on employees.id = employee_salary.employee_id where employee_name is null and monthly_salary < 2000;

--5. Найти всех работников кому не начислена ЗП.
select employees.employee_name, salary.monthly_salary   
from employee_salary 
join salary on employee_salary.salary_id = salary.id 
right join employees on employees.id = employee_salary.employee_id where monthly_salary is null;

--6. Вывести всех работников с названиями их должности.
select employees.employee_name, role_name   
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id;

--7. Вывести имена и должность только Java разработчиков.
select employees.employee_name, role_name   
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id where roles.role_name like '%Java %';

--8. Вывести имена и должность только Python разработчиков.
select employees.employee_name, role_name   
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id where roles.role_name like '%Python %';

--9. Вывести имена и должность всех QA инженеров
select employees.employee_name, role_name   
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id where roles.role_name like '%QA %';

--10. Вывести имена и должность ручных QA инженеров.
select employees.employee_name, role_name   
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id where roles.role_name like '%Manual QA %';

-- 11. Вывести имена и должность автоматизаторов QA
select employees.employee_name, role_name   
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id where roles.role_name like '%Automation QA %';

--12. Вывести имена и зарплаты Junior специалистов
select employees.employee_name, role_name, monthly_salary   
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id where role_name like '%Junior%';

--13. Вывести имена и зарплаты Middle специалистов
select employees.employee_name, role_name, monthly_salary   
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id where role_name like '%Middle%';

--14. Вывести имена и зарплаты Senior специалистов
select employees.employee_name, role_name, monthly_salary   
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.employee_id
join employee_salary on employee_salary.salary_id = employees.id 
join salary on employee_salary.salary_id = salary.id where role_name like '%Senior%';

--15. Вывести зарплаты Java разработчиков
select role_name, monthly_salary   
from roles
join employee_salary on employee_salary.salary_id = roles.id 
join salary on employee_salary.salary_id = salary.id where role_name like '%Java %';

--16. Вывести зарплаты Python разработчиков
select role_name, monthly_salary   
from roles
join employee_salary on employee_salary.salary_id = roles.id 
join salary on employee_salary.salary_id = salary.id where role_name like '%Python%';

--17. Вывести имена и зарплаты Junior Python разработчиков
select employees.employee_name, role_name, monthly_salary   
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id where role_name like '%Junior Python%'

--18. Вывести имена и зарплаты Middle JS разработчиков
select employees.employee_name, role_name, monthly_salary   
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id where role_name like '%Middle JavaS%';

--19. Вывести имена и зарплаты Senior Java разработчиков
select employees.employee_name, role_name, monthly_salary
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id where role_name like '%Senior Java %';

--20. Вывести зарплаты Junior QA инженеров
select role_name, monthly_salary
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id where role_name like '%Junior% QA%';

select role_name, monthly_salary   
from roles
join employee_salary on employee_salary.salary_id = salary.id 
join salary on employee_salary.salary_id = salary.id where role_name like '%Junior% QA%';

--21. Вывести среднюю зарплату всех Junior специалистов
select AVG (monthly_salary)   
from roles
join employee_salary on employee_salary.salary_id = roles.id 
join salary on employee_salary.salary_id = salary.id where role_name like '%Junior%';


--22. Вывести сумму зарплат JS разработчиков
select sum (monthly_salary)   
from roles
join employee_salary on employee_salary.salary_id = roles.id 
join salary on employee_salary.salary_id = salary.id where role_name like '%JavaS%';

--23. Вывести минимальную ЗП QA инженеров
select min(monthly_salary)   
from roles
join employee_salary on employee_salary.salary_id = roles.id 
join salary on employee_salary.salary_id = salary.id where role_name like '%QA%';

--24. Вывести максимальную ЗП QA инженеров
select max(monthly_salary)   
from roles
join employee_salary on employee_salary.salary_id = roles.id 
join salary on employee_salary.salary_id = salary.id where role_name like '%QA%';

--25. Вывести количество QA инженеров!!!!!!
select count(role_name)   
from roles
join employee_salary on employee_salary.salary_id = roles.id 
join salary on employee_salary.salary_id = salary.id where role_name like '%QA%';

--26. Вывести количество Middle специалистов.
select count(role_name)   
from roles
join employee_salary on employee_salary.salary_id = roles.id 
join salary on employee_salary.salary_id = salary.id where role_name like '%Middle%';

--27. Вывести количество разработчиков
select count(role_name)   
from roles
join employee_salary on employee_salary.salary_id = roles.id 
join salary on employee_salary.salary_id = salary.id where role_name like '%dev%';

--28. Вывести фонд (сумму) зарплаты разработчиков.
select sum (monthly_salary)   
from roles
join employee_salary on employee_salary.salary_id = roles.id 
join salary on employee_salary.salary_id = salary.id where role_name like '%dev%';

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employee_name, role_name, monthly_salary 
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id order by monthly_salary;


--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employee_name, role_name, monthly_salary 
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id where monthly_salary >= 1700 and monthly_salary <= 2300 
order by monthly_salary;

--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name, role_name, monthly_salary 
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id where monthly_salary < 2300 
order by monthly_salary;

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name, role_name, monthly_salary 
from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id where monthly_salary = 1100 
or monthly_salary = 1500 
or monthly_salary = 2000 
order by monthly_salary;
