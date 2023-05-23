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






