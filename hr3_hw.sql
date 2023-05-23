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





