--1.Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name,monthly_salary
from employee_salary
join employees on employee_id=employees.id
join salary on salary_id=salary.id;

-- 2.Âûâåñòè âñåõ ðàáîòíèêîâ ó êîòîðûõ ÇÏ ìåíüøå 2000.
select employee_name
from employee_salary 
join employees on employee_id=employees.id
join salary on salary_id=salary.id
where monthly_salary<'2000';

--3.Âûâåñòè âñå çàðïëàòíûå ïîçèöèè, íî ðàáîòíèê ïî íèì íå íàçíà÷åí. (ÇÏ åñòü, íî íå ïîíÿòíî êòî å¸ ïîëó÷àåò.)
select monthly_salary
from salary
join employee_salary on salary_id=salary.id 
where employee_id>'70';

--4.Âûâåñòè âñå çàðïëàòíûå ïîçèöèè  ìåíüøå 2000 íî ðàáîòíèê ïî íèì íå íàçíà÷åí. (ÇÏ åñòü, íî íå ïîíÿòíî êòî å¸ ïîëó÷àåò.)
select monthly_salary
from salary 
join employee_salary on salary_id=salary.id 
where monthly_salary<'2000' and employee_id>'70';

--5.Íàéòè âñåõ ðàáîòíèêîâ êîìó íå íà÷èñëåíà ÇÏ.
select *
from employees e
left join employee_salary es on es.employee_id=e.id 
where employee_id<='70' and salary_id = null;

--6.Âûâåñòè âñåõ ðàáîòíèêîâ ñ íàçâàíèÿìè èõ äîëæíîñòè.
select employee_name,role_name
from roles_employee re 
join employees e on re.employee_id=e.id 
join roles r on re.role_id=r.id;

--7.Âûâåñòè èìåíà è äîëæíîñòü òîëüêî Java ðàçðàáîò÷èêîâ.
select employee_name,role_name
from roles_employee re
join employees e on re.employee_id=e.id 
join roles r on re.role_id=r.id
where role_name like '%Java developer%';

-- 8.Âûâåñòè èìåíà è äîëæíîñòü òîëüêî Python ðàçðàáîò÷èêîâ.
select employee_name,role_name
from roles_employee re
join employees e on re.employee_id=e.id 
join roles r on re.role_id=r.id
where role_name like '%Python developer%';

-- 9. Âûâåñòè èìåíà è äîëæíîñòü âñåõ QA èíæåíåðîâ.
select employee_name,role_name
from roles_employee re
join employees e on re.employee_id=e.id 
join roles r on re.role_id=r.id
where role_name like '%QA%';

--10.Âûâåñòè èìåíà è äîëæíîñòü ðó÷íûõ QA èíæåíåðîâ.
select employee_name,role_name
from roles_employee re
join employees e on re.employee_id=e.id 
join roles r on re.role_id=r.id
where role_name like '%Manual QA%';

--11.Âûâåñòè èìåíà è äîëæíîñòü àâòîìàòèçàòîðîâ QA
select employee_name,role_name
from roles_employee re
join employees e on re.employee_id=e.id 
join roles r on re.role_id=r.id
where role_name like '%Automation QA%';

--12.Âûâåñòè èìåíà è çàðïëàòû Junior ñïåöèàëèñòîâ
select employee_name,role_name,monthly_salary
from employees 
join employee_salary  on employee_salary.employee_id=employees.id
join salary on employee_salary.salary_id=salary.id 
join roles_employee on roles_employee.employee_id=employees.id 
join roles on roles_employee.role_id=roles.id 
where role_name like '%Junior%';

--13.Âûâåñòè èìåíà è çàðïëàòû Middle ñïåöèàëèñòîâ
select employee_name,role_name,monthly_salary
from employees 
join employee_salary  on employee_salary.employee_id=employees.id
join salary on employee_salary.salary_id=salary.id 
join roles_employee on roles_employee.employee_id=employees.id 
join roles on roles_employee.role_id=roles.id 
where role_name like '%Middle%';

--14. Âûâåñòè èìåíà è çàðïëàòû Senior ñïåöèàëèñòîâ
select employee_name,role_name,monthly_salary
from employees 
join employee_salary  on employee_salary.employee_id=employees.id
join salary on employee_salary.salary_id=salary.id 
join roles_employee on roles_employee.employee_id=employees.id 
join roles on roles_employee.role_id=roles.id 
where role_name like '%Middle%';

--15. Âûâåñòè çàðïëàòû Java ðàçðàáîò÷èêîâ
select role_name,monthly_salary
from employee_salary es 
join salary s on es.salary_id=s.id 
join roles_employee re on re.employee_id=es.employee_id 
join roles r on r.id=re.role_id 
where role_name like '%Java developer%';

--16.Âûâåñòè çàðïëàòû Python ðàçðàáîò÷èêîâ
select role_name,monthly_salary
from employee_salary es 
join salary s on es.salary_id=s.id 
join roles_employee re on re.employee_id=es.employee_id 
join roles r on r.id=re.role_id 
where role_name like '%Python developer%';

--17.Âûâåñòè èìåíà è çàðïëàòû Junior Python ðàçðàáîò÷èêîâ
select employee_name,role_name,monthly_salary
from employee_salary es 
join salary s on es.salary_id=s.id 
join roles_employee re on re.employee_id=es.employee_id 
join roles r on r.id=re.role_id
join employees e on e.id=es.employee_id 
where role_name like '%Junior Python%';

--18.Âûâåñòè èìåíà è çàðïëàòû Middle JS ðàçðàáîò÷èêîâ
select employee_name,role_name,monthly_salary
from employee_salary es 
join salary s on es.salary_id=s.id 
join roles_employee re on re.employee_id=es.employee_id 
join roles r on r.id=re.role_id
join employees e on e.id=es.employee_id 
where role_name like '%Middle JavaScript developer%';


--19.Âûâåñòè èìåíà è çàðïëàòû Senior Java ðàçðàáîò÷èêîâ
select employee_name,role_name,monthly_salary
from employee_salary es 
join salary s on es.salary_id=s.id 
join roles_employee re on re.employee_id=es.employee_id 
join roles r on r.id=re.role_id
join employees e on e.id=es.employee_id 
where role_name like '%Senior Java developer%';

--20.Âûâåñòè çàðïëàòû Junior QA èíæåíåðîâ
select employee_name,role_name,monthly_salary
from roles_employee re 
left join roles r on re.role_id=r.id
left join employee_salary es on re.employee_id=es.employee_id 
left join salary s on s.id=es.salary_id
left join employees e on re.employee_id=e.id
where role_name like '%Junior%QA%';

--21.Âûâåñòè ñðåäíþþ çàðïëàòó âñåõ Junior ñïåöèàëèñòîâ
select avg(monthly_salary) 
from employee_salary es 
left join salary s on es.salary_id=s.id 
left join roles_employee re on es.employee_id=re.employee_id 
left join roles r on re.role_id=r.id
where role_name like '%Junior%';

--22.Âûâåñòè ñóììó çàðïëàò JS ðàçðàáîò÷èêîâ
select sum(monthly_salary) as JSD_sum_salary
from employee_salary es 
join salary s on es.salary_id=s.id 
join roles_employee re on es.employee_id=re.employee_id 
join roles r on re.role_id=r.id
where role_name like '%JavaScript developer%';

--23.Âûâåñòè ìèíèìàëüíóþ ÇÏ QA èíæåíåðîâ
select min(monthly_salary) as QA_min_salary
from employee_salary es 
join salary s on es.salary_id=s.id 
join roles_employee re on es.employee_id=re.employee_id 
join roles r on re.role_id=r.id 
where role_name like '%QA%';

--24.Âûâåñòè ìàêñèìàëüíóþ ÇÏ QA èíæåíåðîâ
select max(monthly_salary) as QA_max_salary
from employee_salary es 
join salary s on es.salary_id=s.id 
join roles_employee re on es.employee_id=re.employee_id 
join roles r on re.role_id=r.id 
where role_name like '%QA%';

--25.Âûâåñòè êîëè÷åñòâî QA èíæåíåðîâ
select count(role_name) as count_QA
from roles 
where role_name like '%QA%';

--26.Âûâåñòè êîëè÷åñòâî Middle ñïåöèàëèñòîâ
select count(role_name) as count_Middle
from roles 
where role_name like '%Middle%';

--27.Âûâåñòè êîëè÷åñòâî ðàçðàáîò÷èêîâ
select count(role_name) as count_dev
from roles 
where role_name like '%developer%';

--28.Âûâåñòè ôîíä (ñóììó) çàðïëàòû ðàçðàáîò÷èêîâ
select sum(monthly_salary) as Dev_sum_salary
from employee_salary es 
join salary s on es.salary_id=s.id 
join roles_employee re on es.employee_id=re.employee_id 
join roles r on re.role_id=r.id
where role_name like '%developer%';

--29.Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ
select employee_name,role_name,monthly_salary
from employee_salary es 
join employees e on es.employee_id=e.id 
join salary s on es.salary_id=s.id 
join roles_employee re on es.employee_id=re.employee_id 
join roles r on re.role_id=r.id
order by monthly_salary asc;

--30.Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ îò 1700 äî 2300
select employee_name,role_name,monthly_salary
from employee_salary es 
join employees e on es.employee_id=e.id 
join salary s on es.salary_id=s.id 
join roles_employee re on es.employee_id=re.employee_id 
join roles r on re.role_id=r.id
where monthly_salary between 1700 and 2300
order by monthly_salary asc;

--31.Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ ìåíüøå 2300
select employee_name,role_name,monthly_salary
from employee_salary es 
join employees e on es.employee_id=e.id 
join salary s on es.salary_id=s.id 
join roles_employee re on es.employee_id=re.employee_id 
join roles r on re.role_id=r.id
where monthly_salary < 2300
order by monthly_salary asc;

--32.Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ ðàâíà 1100, 1500, 2000
select employee_name,role_name,monthly_salary
from employee_salary es 
join employees e on es.employee_id=e.id 
join salary s on es.salary_id=s.id 
join roles_employee re on es.employee_id=re.employee_id 
join roles r on re.role_id=r.id
where monthly_salary in ('1100','1500','2000')
order by monthly_salary asc;








