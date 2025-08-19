select * from employees.departments;

select upper(first_name) as firstName
from employees.employees
;

select amount,
	sqrt(amount) as sqrt_salary,
	round(sqrt(amount)) as sqrt_salary_rounded
from employees.salaries
limit 10
;

select *,
	now() as current_datetime,
	current_datetime as current_date
from employees.employees
limit 10
;

select
	birth_Date,
	extract(month from birth_date) as birth_month_v1,
	extract(day from birth_date) as birth_day_v1,
	date_part('month', birth_date) as birth_month_v2,
	date_part('day', birth_date) as birth_day_v2
from employees.employees
limi 10
;

select
	now() as current_datetime,
	cast(now() as date) as current_date_v1,
	now()::date as current_date_v2;

select
	cast(now() as date) as current_date,
	cast(birth_date as date) as birth_date
from employees.employees
limit 10
;

select
avg(salary) as avg_salary,
min(salary) as min_salary,
max(salary) as max_salary,
sum(salary) as total_salary
from employees.salaries
;

select
	sum(1) as num_rows_v1,
	count(*) as num_rows_v2
from employees.employees
;

select
	dept_name,
	nullif(dept_name, 'Customer Service') as dept_name_wo_customer_service
from departments
;

select
	dept_name,
	nullif(dept_name, 'Customer Service') as dept_name_wo_customer_service,
	coalesce(nullif(dept_name, 'Customer Service'), 'CS') as dept_name_w_cs
from employees.departments
;

case
	when condition_1 then result_1
	when condition_@ then result_2
	[when ...]
		else else_result]
end

select
	dept_name,
	case
		when dept_name = 'Customer Service' then 'CS'
		else 'not CS'
	end as dept_name_short
from employees.departments
;

if dept_name == 'customer Service':
	return 'CS'
	
else:
	return ''
	
select
	dept_name,
	case
			when dept_name = 'Customer Service' then 'CS'
			else ''
		end as dept_name_short
from employees.departments
;

select *
from employees.salaries
where employees_id = 10001
;

select *
from employees.employees
where birth_date = '1958-02-19'
;

select *
from employees.employees
where first_name like 'G%'
;

select count(*)
from employees.employees
where id between 10000 and 20000
;

select title, count(title) as total
from employees.titles
group by title;

select
	title,
	count(*) as cnt_row
from employees.titles
group by
	title
having count(*) = 15128

select *
from employees.titles
order by employee_id desc
;

select
	first_name,
	last_name
from employees.employees
order by
	first_name,
	last_name
;
	