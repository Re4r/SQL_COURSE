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
WHERE job_id IN ('IT_PROG') ORDER BY salary DESC;

SELECT 
employee_id AS id, 
first_name, 
last_name,
job_id,
hire_date 
FROM employees 
WHERE job_id IN ('ST_CLERK') ORDER BY hire_date DESC;

SELECT 
commission_pct 
FROM employees 
ORDER BY commission_pct 
DESC NULLS LAST;

SELECT 
phone_number,
first_name
FROM employees ORDER BY 2;

SELECT 
job_id, 
first_name, 
salary 
FROM employees
ORDER BY 1 DESC, 2, 3 DESC;

