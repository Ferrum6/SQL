--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

select   e.employee_name, monthly_salary
from employees_salary es 
inner join employees e on es.employee_id = e.id
inner join salary s on es.salary_id = s.id



-- 2. ������� ���� ���������� � ������� �� ������ 2000.

select e.employee_name,  monthly_salary
from employees_salary es
join employees e on es.employee_id = e.id 
join salary s on es.salary_id = s.id
where s.monthly_salary < 2000; 

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select e.employee_name,  monthly_salary
from employees_salary es
full join employees e on es.employee_id = e.id 
inner join salary s on es.salary_id = s.id
where e.employee_name is null;

--4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select e.employee_name,  monthly_salary
from employees_salary es
full join employees e on es.employee_id = e.id 
inner join salary s on es.salary_id = s.id
where e.employee_name is null and  s.monthly_salary < 2000;

-- 5. ����� ���� ���������� ���� �� ��������� ��.
select e.employee_name, monthly_salary
from employees_salary es
full join employees e  on es.employee_id = e.id
full join salary s on es.salary_id = s.id 
where s.monthly_salary is null

-- 6. ������� ���� ���������� � ���������� �� ���������.
select e.employee_name, r.role_name 
from roles_employee re 
join employees e on re.employee_id = e.id 
join roles r on re.role_id = r.id

-- 7. ������� ����� � ��������� ������ Java �������������.

select e.employee_name, r.role_name 
from roles_employee re 
join employees e on re.employee_id = e.id 
join roles r on re.role_id = r.id 
where role_name  like '%Java%'

-- 8. ������� ����� � ��������� ������ Python �������������.

select employee_name,  r.role_name 
from employees e
inner join roles_employee  on employee_id = e.id 
inner join roles r on role_id = r.id
where role_name like '%Python%'

-- 9. ������� ����� � ��������� ���� QA ���������.

select employee_name,  r.role_name 
from employees e
inner join roles_employee  on employee_id = e.id 
inner join roles r on role_id = r.id
where role_name like '%QA%'

-- 10. ������� ����� � ��������� ������ QA ���������.

select employee_name,  r.role_name 
from employees e
join roles_employee  on employee_id = e.id 
inner join roles r on role_id = r.id
where role_name like '%Manual QA%'

-- 11. ������� ����� � ��������� ��������������� QA

select employee_name,  r.role_name 
from employees e
full join roles_employee  on employee_id = e.id 
full join roles r on role_id = r.id
where role_name like '%Automation%QA%';

-- 12. ������� ����� � �������� Junior ������������

select e.employee_name, s.monthly_salary, role_name
from roles_employee re 
join employees e on re.employee_id = e.id
join employees_salary es on e.id = es.employee_id 
join roles r on re.role_id = r.id 
join salary s on es.salary_id = s.id
where r.role_name like '%Junior%';

-- 13. ������� ����� � �������� Middle ������������

select  e.employee_name, s.monthly_salary, role_name
from roles_employee re
join employees e  on re.employee_id = e.id 
join employees_salary es on e.id = es.employee_id 
join roles r on re.role_id = r.id 
join salary s on es.salary_id = s.id 
where r.role_name like '%Middle%';

-- 14. ������� ����� � �������� Senior ������������

select  e.employee_name, s.monthly_salary, role_name
from roles_employee re
join employees e  on re.employee_id = e.id 
join employees_salary es on e.id = es.employee_id 
join roles r on re.role_id = r.id 
join salary s on es.salary_id = s.id 
where r.role_name like '%Senior%';

-- 15. ������� �������� Java �������������
select s.monthly_salary, role_name
from roles_employee re
join employees e  on re.employee_id = e.id 
join employees_salary es on e.id = es.employee_id 
join roles r on re.role_id = r.id 
join salary s on es.salary_id = s.id 
where r.role_name like '%Java%'

-- 16. ������� �������� Python �������������

select  s.monthly_salary, role_name
from roles_employee re
join employees e  on re.employee_id = e.id 
join employees_salary es on e.id = es.employee_id 
join roles r on re.role_id = r.id 
join salary s on es.salary_id = s.id 
where r.role_name like '%Python%'

-- 17. ������� ����� � �������� Junior Python �������������
select  e.employee_name, s.monthly_salary, role_name
from roles_employee re
join employees e  on re.employee_id = e.id 
join employees_salary es on e.id = es.employee_id 
join roles r on re.role_id = r.id 
join salary s on es.salary_id = s.id 
where r.role_name like '%Junior Python%'

-- 18. ������� ����� � �������� Middle JS �������������
select  e.employee_name, s.monthly_salary, role_name
from roles_employee re
full join employees e  on re.employee_id = e.id 
full join employees_salary es on e.id = es.employee_id 
join roles r on re.role_id = r.id 
join salary s on es.salary_id = s.id 
where r.role_name like '%Middle JavaScript developer%'

-- 19. ������� ����� � �������� Senior Java �������������
select e.employee_name, monthly_salary, role_name
from roles_employee re
full join employees e  on re.employee_id = e.id 
full join employees_salary es on e.id = es.employee_id 
join roles r on re.role_id = r.id 
join salary s on es.salary_id = s.id 
where r.role_name like '%Senior Java %'

-- 20. ������� �������� Junior QA ���������-
select s.monthly_salary, r.role_name 
from employees_salary es
join roles_employee re  on  es.employee_id = re.employee_id 
full join salary s on es.salary_id = s.id 
join roles r on re.role_id = r.id 
where r.role_name like '%Junior%QA%engineer%'

--21. ������� ������� �������� ���� Junior ������������
select AVG(s.monthly_salary)  
from salary s
join employees_salary es on  s.id = es.salary_id 
join roles_employee re  on es.employee_id = re.employee_id  
join roles r on re.role_id = r.id 
where r.role_name like '%Junior%';

-- 22. ������� ����� ������� JS �������������
select SUM(s.monthly_salary) 
from salary s
join employees_salary es on  s.id = es.salary_id 
join roles_employee re  on es.employee_id = re.employee_id  
join roles r on re.role_id = r.id 
where r.role_name like '%JavaScript developer%'; 

-- 23. ������� ����������� �� QA ���������

select min(s.monthly_salary)
from roles_employee re
join employees e  on re.employee_id = e.id 
join employees_salary es on e.id = es.employee_id 
join roles r on re.role_id = r.id 
join salary s on es.salary_id = s.id 
where r.role_name like '%QA engineer%';

-- 24. ������� ������������ �� QA ���������
select max (s.monthly_salary)
from salary s
join employees_salary es on es.employee_id = s.id  
join employees e on es.employee_id = e.id 
join roles_employee re on re.employee_id = e.id	
join roles r on re.role_id = r.id 
where r.role_name like '%QA%';

-- 25. ������� ���������� QA ���������
select count (role_name)
from roles_employee re
join employees e  on employee_id = e.id 
join roles r on re.role_id = r.id 
where r.role_name like '%QA engineer%'

-- 26. ������� ���������� Middle ������������.
select count (role_name)
from roles_employee re
join employees e  on employee_id = e.id 
join roles r on re.role_id = r.id 
where r.role_name like '%Middle%'

-- 27. ������� ���������� �������������
select count (role_name)
from roles_employee re
join employees e  on employee_id = e.id 
join roles r on re.role_id = r.id 
where r.role_name like '%developer%'

-- 28. ������� ���� (�����) �������� �������������.

select sum (s.monthly_salary)
from salary s
left join employees_salary es on es.salary_id = s.id 
left join employees e on es.employee_id = e.id 
left join roles_employee re on re.employee_id = e.id 
left join roles r on re.role_id = r.id 
where r.role_name like '%developer%';

-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������

select employee_name, role_name, monthly_salary 
from employees e 
join roles_employee re on re.employee_id = e.id 
join employees_salary es on e.id = es.employee_id 
join roles r on re.role_id = r.id 
join salary s on es.salary_id = s.id 
order by employee_name, role_name, monthly_salary;

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
join roles_employee re on e.id = re.employee_id  
join employees_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles r on re.role_id = r.id 
where monthly_salary between 1700 and  2300
order by e.employee_name, r.role_name, s.monthly_salary;

-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
join roles_employee re on re.employee_id = e.id 
join employees_salary es on e.id = es.employee_id 
join roles r on re.role_id = r.id 
join salary s on es.salary_id = s.id 
where monthly_salary < 2300
order by e.employee_name, r.role_name, s.monthly_salary;

-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000

select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
join roles_employee re on re.employee_id = e.id 
join employees_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id
join roles r on re.role_id = r.id 
where monthly_salary in (1100, 1500, 2000) 
order by e.employee_name, r.role_name, s.monthly_salary;