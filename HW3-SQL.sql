--1.������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name,monthly_salary
from employee_salary
join employees on employee_id=employees.id
join salary on salary_id=salary.id;

-- 2.������� ���� ���������� � ������� �� ������ 2000.
select employee_name
from employee_salary 
join employees on employee_id=employees.id
join salary on salary_id=salary.id
where monthly_salary<'2000';

--3.������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select monthly_salary
from salary
join employee_salary on salary_id=salary.id 
where employee_id>'70';

--4.������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select monthly_salary
from salary 
join employee_salary on salary_id=salary.id 
where monthly_salary<'2000' and employee_id>'70';

--5.����� ���� ���������� ���� �� ��������� ��.
select *
from employees e
left join employee_salary es on es.employee_id=e.id 
where employee_id<='70' and salary_id = null;

--6.������� ���� ���������� � ���������� �� ���������.
select employee_name,role_name
from roles_employee re 
join employees e on re.employee_id=e.id 
join roles r on re.role_id=r.id;

--7.������� ����� � ��������� ������ Java �������������.
select employee_name,role_name
from roles_employee re
join employees e on re.employee_id=e.id 
join roles r on re.role_id=r.id
where role_name like '%Java developer%';

-- 8.������� ����� � ��������� ������ Python �������������.
select employee_name,role_name
from roles_employee re
join employees e on re.employee_id=e.id 
join roles r on re.role_id=r.id
where role_name like '%Python developer%';

-- 9. ������� ����� � ��������� ���� QA ���������.
select employee_name,role_name
from roles_employee re
join employees e on re.employee_id=e.id 
join roles r on re.role_id=r.id
where role_name like '%QA%';

--10.������� ����� � ��������� ������ QA ���������.
select employee_name,role_name
from roles_employee re
join employees e on re.employee_id=e.id 
join roles r on re.role_id=r.id
where role_name like '%Manual QA%';

--11.������� ����� � ��������� ��������������� QA
select employee_name,role_name
from roles_employee re
join employees e on re.employee_id=e.id 
join roles r on re.role_id=r.id
where role_name like '%Automation QA%';

--12.������� ����� � �������� Junior ������������
select employee_name,role_name,monthly_salary
from employees 
join employee_salary  on employee_salary.employee_id=employees.id
join salary on employee_salary.salary_id=salary.id 
join roles_employee on roles_employee.employee_id=employees.id 
join roles on roles_employee.role_id=roles.id 
where role_name like '%Junior%';

--13.������� ����� � �������� Middle ������������
select employee_name,role_name,monthly_salary
from employees 
join employee_salary  on employee_salary.employee_id=employees.id
join salary on employee_salary.salary_id=salary.id 
join roles_employee on roles_employee.employee_id=employees.id 
join roles on roles_employee.role_id=roles.id 
where role_name like '%Middle%';

--14. ������� ����� � �������� Senior ������������
select employee_name,role_name,monthly_salary
from employees 
join employee_salary  on employee_salary.employee_id=employees.id
join salary on employee_salary.salary_id=salary.id 
join roles_employee on roles_employee.employee_id=employees.id 
join roles on roles_employee.role_id=roles.id 
where role_name like '%Middle%';

--15. ������� �������� Java �������������
select role_name,monthly_salary
from employee_salary es 
join salary s on es.salary_id=s.id 
join roles_employee re on re.employee_id=es.employee_id 
join roles r on r.id=re.role_id 
where role_name like '%Java developer%';

--16.������� �������� Python �������������
select role_name,monthly_salary
from employee_salary es 
join salary s on es.salary_id=s.id 
join roles_employee re on re.employee_id=es.employee_id 
join roles r on r.id=re.role_id 
where role_name like '%Python developer%';

--17.������� ����� � �������� Junior Python �������������
select employee_name,role_name,monthly_salary
from employee_salary es 
join salary s on es.salary_id=s.id 
join roles_employee re on re.employee_id=es.employee_id 
join roles r on r.id=re.role_id
join employees e on e.id=es.employee_id 
where role_name like '%Junior Python%';

--18.������� ����� � �������� Middle JS �������������
select employee_name,role_name,monthly_salary
from employee_salary es 
join salary s on es.salary_id=s.id 
join roles_employee re on re.employee_id=es.employee_id 
join roles r on r.id=re.role_id
join employees e on e.id=es.employee_id 
where role_name like '%Middle JavaScript developer%';


--19.������� ����� � �������� Senior Java �������������
select employee_name,role_name,monthly_salary
from employee_salary es 
join salary s on es.salary_id=s.id 
join roles_employee re on re.employee_id=es.employee_id 
join roles r on r.id=re.role_id
join employees e on e.id=es.employee_id 
where role_name like '%Senior Java developer%';

--20.������� �������� Junior QA ���������
select employee_name,role_name,monthly_salary
from roles_employee re 
left join roles r on re.role_id=r.id
left join employee_salary es on re.employee_id=es.employee_id 
left join salary s on s.id=es.salary_id
left join employees e on re.employee_id=e.id
where role_name like '%Junior%QA%';

--21.������� ������� �������� ���� Junior ������������
select avg(monthly_salary) 
from employee_salary es 
left join salary s on es.salary_id=s.id 
left join roles_employee re on es.employee_id=re.employee_id 
left join roles r on re.role_id=r.id
where role_name like '%Junior%';

--22.������� ����� ������� JS �������������
select sum(monthly_salary) as JSD_sum_salary
from employee_salary es 
join salary s on es.salary_id=s.id 
join roles_employee re on es.employee_id=re.employee_id 
join roles r on re.role_id=r.id
where role_name like '%JavaScript developer%';

--23.������� ����������� �� QA ���������
select min(monthly_salary) as QA_min_salary
from employee_salary es 
join salary s on es.salary_id=s.id 
join roles_employee re on es.employee_id=re.employee_id 
join roles r on re.role_id=r.id 
where role_name like '%QA%';

--24.������� ������������ �� QA ���������
select max(monthly_salary) as QA_max_salary
from employee_salary es 
join salary s on es.salary_id=s.id 
join roles_employee re on es.employee_id=re.employee_id 
join roles r on re.role_id=r.id 
where role_name like '%QA%';

--25.������� ���������� QA ���������
select count(role_name) as count_QA
from roles 
where role_name like '%QA%';

--26.������� ���������� Middle ������������
select count(role_name) as count_Middle
from roles 
where role_name like '%Middle%';

--27.������� ���������� �������������
select count(role_name) as count_dev
from roles 
where role_name like '%developer%';

--28.������� ���� (�����) �������� �������������
select sum(monthly_salary) as Dev_sum_salary
from employee_salary es 
join salary s on es.salary_id=s.id 
join roles_employee re on es.employee_id=re.employee_id 
join roles r on re.role_id=r.id
where role_name like '%developer%';

--29.������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name,role_name,monthly_salary
from employee_salary es 
join employees e on es.employee_id=e.id 
join salary s on es.salary_id=s.id 
join roles_employee re on es.employee_id=re.employee_id 
join roles r on re.role_id=r.id
order by monthly_salary asc;

--30.������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name,role_name,monthly_salary
from employee_salary es 
join employees e on es.employee_id=e.id 
join salary s on es.salary_id=s.id 
join roles_employee re on es.employee_id=re.employee_id 
join roles r on re.role_id=r.id
where monthly_salary between 1700 and 2300
order by monthly_salary asc;

--31.������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name,role_name,monthly_salary
from employee_salary es 
join employees e on es.employee_id=e.id 
join salary s on es.salary_id=s.id 
join roles_employee re on es.employee_id=re.employee_id 
join roles r on re.role_id=r.id
where monthly_salary < 2300
order by monthly_salary asc;

--32.������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name,role_name,monthly_salary
from employee_salary es 
join employees e on es.employee_id=e.id 
join salary s on es.salary_id=s.id 
join roles_employee re on es.employee_id=re.employee_id 
join roles r on re.role_id=r.id
where monthly_salary in ('1100','1500','2000')
order by monthly_salary asc;








