SELECT * FROM regions;

SELECT 
department_id,
first_name,
last_name,
salary
FROM employees;

SELECT 
employee_id,
email,
hire_date,
hire_date-7 AS one_week_before_hire
FROM employees;

SELECT 
first_name||' '||'('||job_id||')' AS our_employees 
FROM employees;

SELECT
DISTINCT first_name 
FROM employees;

SELECT
job_title,
'min = '||min_salary||' '||'max = '||max_salary AS info,
max_salary AS max,
(max_salary*2)-200 AS new_salary
FROM jobs;

SELECT q'<Peter's dog is very clever>'
FROM dual;

SELECT 100*365*24*60 FROM dual;






