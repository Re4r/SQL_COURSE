SELECT * FROM employees;

SELECT
first_name,
last_name,
salary
FROM employees
WHERE salary = 17000;

SELECT
first_name,
last_name,
salary
FROM employees
WHERE last_name = 'King';

SELECT
first_name,
last_name
FROM employees
WHERE hire_date = '21.09.05';

SELECT 
DEPARTMENT_ID ,
DEPARTMENT_NAME ,
MANAGER_ID ,
LOCATION_ID  
FROM departments 
WHERE location_id = 1700;

SELECT * 
FROM job_history 
WHERE job_id = 'ST_CLERK';

SELECT
first_name,
last_name,
salary
FROM employees
WHERE salary > 10000;

SELECT * FROM employees WHERE first_name > 'Steven';

SELECT first_name, last_name, salary
FROM employees 
WHERE salary BETWEEN 4000 AND 10000;

SELECT * 
FROM job_history 
WHERE start_date BETWEEN '01.01.04' AND '01.01.05';

SELECT DISTINCT 
department_name, location_id 
FROM departments 
WHERE location_id IN (1700, 2500);

SELECT * FROM job_history;

DESCRIBE job_history;

SELECT EMPLOYEE_ID ,
START_DATE ,
END_DATE ,
JOB_ID ,
DEPARTMENT_ID  
FROM job_history 
WHERE job_id IN ('IT_PROG');

SELECT EMPLOYEE_ID,
FIRST_NAME,
LAST_NAME,
COMMISSION_PCT
FROM employees WHERE commission_pct IS NULL;




