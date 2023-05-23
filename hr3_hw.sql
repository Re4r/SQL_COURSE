SELECT * 
FROM employees 
WHERE first_name IN ('David');

SELECT * 
FROM employees 
WHERE job_id IN ('FI_ACCOUNT');

SELECT * FROM employees;

SELECT
first_name,
last_name,
department_id AS id,
salary
FROM employees
WHERE department_id IN 50 AND salary > 4000;

SELECT * 
FROM employees 
WHERE department_id IN 20 OR department_id IN 30; 

SELECT first_name 
FROM employees
WHERE first_name LIKE '_a%a';

SELECT
first_name,
last_name,
department_id,
commission_pct,
email
FROM employees
WHERE 
(department_id IN 50 OR department_id IN 80)
AND 
commission_pct IS NOT NULL
ORDER BY email;

SELECT first_name 
FROM employees 
WHERE first_name LIKE '%n%n';

SELECT 
first_name, 
department_id AS id
FROM employees 
WHERE first_name LIKE '_____%'
ORDER BY department_id DESC NULLS LAST;

SELECT 
first_name, 
last_name, 
salary,
commission_pct,
job_id
FROM employees 
WHERE salary 
BETWEEN 3000 AND 7000 
AND commission_pct IS NULL 
AND job_id IN ('PU_CLERK', 'ST_MAN', 'ST_CLERK');

SELECT * 
FROM employees 
WHERE first_name LIKE '%\%%' ESCAPE '\';

SELECT
employee_id,
job_id,
first_name,
salary
FROM employees
WHERE employee_id >= 120 AND job_id NOT IN ('SH_CLERK')
ORDER BY job_id, first_name DESC;








