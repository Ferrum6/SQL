--==1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select   e.employee_name, monthly_salary
from employees_salary es 
inner join employees e on es.employee_id = e.id
inner join salary s on es.salary_id = s.id



--==2. Вывести всех работников у которых ЗП меньше 2000.

select e.employee_name,  monthly_salary
from employees_salary es
join employees e on es.employee_id = e.id 
join salary s on es.salary_id = s.id
where s.monthly_salary < 2000; 

--==3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select e.employee_name,  monthly_salary
from employees_salary es
full join employees e on es.employee_id = e.id 
inner join salary s on es.salary_id = s.id
where e.employee_name is null;

--==4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select e.employee_name,  monthly_salary
from employees_salary es
full join employees e on es.employee_id = e.id 
inner join salary s on es.salary_id = s.id
where e.employee_name is null and  s.monthly_salary < 2000;

--==5. Найти всех работников кому не начислена ЗП.
select e.employee_name, monthly_salary
from employees_salary es
full join employees e  on es.employee_id = e.id
full join salary s on es.salary_id = s.id 
where s.monthly_salary is null

--==6. Вывести всех работников с названиями их должности.
select e.employee_name, r.role_name 
from roles_employee re 
join employees e on re.employee_id = e.id 
join roles r on re.role_id = r.id

--==7. Вывести имена и должность только Java разработчиков.
select e.employee_name, r.role_name 
from roles_employee re 
join employees e on re.employee_id = e.id 
join roles r on re.role_id = r.id 
where role_name  like '%Java%'

--==8. Вывести имена и должность только Python разработчиков.
select employee_name,  r.role_name 
from employees e
inner join roles_employee  on employee_id = e.id 
inner join roles r on role_id = r.id
where role_name like '%Python%'

--==9. Вывести имена и должность всех QA инженеров.
select employee_name,  r.role_name 
from employees e
inner join roles_employee  on employee_id = e.id 
inner join roles r on role_id = r.id
where role_name like '%QA%'

--==10. Вывести имена и должность ручных QA инженеров.
select employee_name,  r.role_name 
from employees e
join roles_employee  on employee_id = e.id 
inner join roles r on role_id = r.id
where role_name like '%Manual QA%'


--==11. Вывести имена и должность автоматизаторов QA
select employee_name,  r.role_name 
from employees e
full join roles_employee  on employee_id = e.id 
full join roles r on role_id = r.id
where role_name like '%Automation%QA%';


--==12. Вывести имена и зарплаты Junior специалистов
select e.employee_name, s.monthly_salary, role_name
from roles_employee re 
join employees e on re.employee_id = e.id
join employees_salary es on e.id = es.employee_id 
join roles r on re.role_id = r.id 
join salary s on es.salary_id = s.id
where r.role_name like '%Junior%';

--==13. Вывести имена и зарплаты Middle специалистов

select  e.employee_name, s.monthly_salary, role_name
from roles_employee re
join employees e  on re.employee_id = e.id 
join employees_salary es on e.id = es.employee_id 
join roles r on re.role_id = r.id 
join salary s on es.salary_id = s.id 
where r.role_name like '%Middle%';

--==14. Вывести имена и зарплаты Senior специалистов

select  e.employee_name, s.monthly_salary, role_name
from roles_employee re
join employees e  on re.employee_id = e.id 
join employees_salary es on e.id = es.employee_id 
join roles r on re.role_id = r.id 
join salary s on es.salary_id = s.id 
where r.role_name like '%Senior%';


--==15. Вывести зарплаты Java разработчиков
select s.monthly_salary, role_name
from roles_employee re
join employees e  on re.employee_id = e.id 
join employees_salary es on e.id = es.employee_id 
join roles r on re.role_id = r.id 
join salary s on es.salary_id = s.id 
where r.role_name like '%Java%'


--==16. Вывести зарплаты Python разработчиков

select  s.monthly_salary, role_name
from roles_employee re
join employees e  on re.employee_id = e.id 
join employees_salary es on e.id = es.employee_id 
join roles r on re.role_id = r.id 
join salary s on es.salary_id = s.id 
where r.role_name like '%Python%'


--==17. Вывести имена и зарплаты Junior Python разработчиков
select  e.employee_name, s.monthly_salary, role_name
from roles_employee re
join employees e  on re.employee_id = e.id 
join employees_salary es on e.id = es.employee_id 
join roles r on re.role_id = r.id 
join salary s on es.salary_id = s.id 
where r.role_name like '%Junior Python%'


--==18. Вывести имена и зарплаты Middle JS разработчиков
select  e.employee_name, s.monthly_salary, role_name
from roles_employee re
full join employees e  on re.employee_id = e.id 
full join employees_salary es on e.id = es.employee_id 
join roles r on re.role_id = r.id 
join salary s on es.salary_id = s.id 
where r.role_name like '%Middle JavaScript developer%'

--==19. Вывести имена и зарплаты Senior Java разработчиков
select e.employee_name, monthly_salary, role_name
from roles_employee re
full join employees e  on re.employee_id = e.id 
full join employees_salary es on e.id = es.employee_id 
join roles r on re.role_id = r.id 
join salary s on es.salary_id = s.id 
where r.role_name like '%Senior Java %'

--==20. Вывести зарплаты Junior QA инженеров-
select s.monthly_salary, r.role_name 
from employees_salary es
join roles_employee re  on  es.employee_id = re.employee_id 
full join salary s on es.salary_id = s.id 
join roles r on re.role_id = r.id 
where r.role_name like '%Junior%QA%engineer%'

--==21. Вывести среднюю зарплату всех Junior специалистов
select AVG(s.monthly_salary)  
from salary s
join employees_salary es on  s.id = es.salary_id 
join roles_employee re  on es.employee_id = re.employee_id  
join roles r on re.role_id = r.id 
where r.role_name like '%Junior%';

--==22. Вывести сумму зарплат JS разработчиков
select SUM(s.monthly_salary) 
from salary s
join employees_salary es on  s.id = es.salary_id 
join roles_employee re  on es.employee_id = re.employee_id  
join roles r on re.role_id = r.id 
where r.role_name like '%JavaScript developer%'; 

--==23. Вывести минимальную ЗП QA инженеров

select min(s.monthly_salary)
from roles_employee re
join employees e  on re.employee_id = e.id 
join employees_salary es on e.id = es.employee_id 
join roles r on re.role_id = r.id 
join salary s on es.salary_id = s.id 
where r.role_name like '%QA engineer%';

--==24. Вывести максимальную ЗП QA инженеров
select max (s.monthly_salary)
from salary s
join employees_salary es on es.employee_id = s.id  
join employees e on es.employee_id = e.id 
join roles_employee re on re.employee_id = e.id	
join roles r on re.role_id = r.id 
where r.role_name like '%QA%';

--==25. Вывести количество QA инженеров
select count (role_name)
from roles_employee re
join employees e  on employee_id = e.id 
join roles r on re.role_id = r.id 
where r.role_name like '%QA engineer%'

-==26. Вывести количество Middle специалистов.
select count (role_name)
from roles_employee re
join employees e  on employee_id = e.id 
join roles r on re.role_id = r.id 
where r.role_name like '%Middle%'

--==27. Вывести количество разработчиков
select count (role_name)
from roles_employee re
join employees e  on employee_id = e.id 
join roles r on re.role_id = r.id 
where r.role_name like '%developer%'


--==28. Вывести фонд (сумму) зарплаты разработчиков.
select sum (s.monthly_salary)
from salary s
left join employees_salary es on es.salary_id = s.id 
left join employees e on es.employee_id = e.id 
left join roles_employee re on re.employee_id = e.id 
left join roles r on re.role_id = r.id 
where r.role_name like '%developer%';

--==29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employee_name, role_name, monthly_salary 
from employees e 
join roles_employee re on re.employee_id = e.id 
join employees_salary es on e.id = es.employee_id 
join roles r on re.role_id = r.id 
join salary s on es.salary_id = s.id 
order by employee_name, role_name, monthly_salary;

--==30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
join roles_employee re on e.id = re.employee_id  
join employees_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles r on re.role_id = r.id 
where monthly_salary between 1700 and  2300
order by e.employee_name, r.role_name, s.monthly_salary;

--==31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
join roles_employee re on re.employee_id = e.id 
join employees_salary es on e.id = es.employee_id 
join roles r on re.role_id = r.id 
join salary s on es.salary_id = s.id 
where monthly_salary < 2300
order by e.employee_name, r.role_name, s.monthly_salary;

--==32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
join roles_employee re on re.employee_id = e.id 
join employees_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id
join roles r on re.role_id = r.id 
where monthly_salary in (1100, 1500, 2000) 
order by e.employee_name, r.role_name, s.monthly_salary;
