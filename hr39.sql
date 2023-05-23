SELECT 
first_name, 
last_name, 
salary 
FROM employees 
ORDER BY salary;

SELECT 
EMPLOYEE_ID AS id,
FIRST_NAME,
LAST_NAME,
SALARY
FROM employees 
WHERE job_id IN ('IT_PROG') ORDER BY salary;

SELECT 
employee_id AS id, 
first_name, 
last_name,
job_id,
hire_date 
FROM employees 
WHERE job_id IN ('ST_CLERK') ORDER BY hire_date;


