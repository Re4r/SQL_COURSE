SELECT 
first_name
FROM employees
WHERE LOWER(first_name) LIKE '%b%';

SELECT 
first_name
FROM employees
WHERE first_name LIKE '%a%a%';

SELECT 
department_name,
SUBSTR(department_name, 1, INSTR(department_name, ' ')) AS result
FROM departments
WHERE INSTR(department_name, ' ') != 0;

SELECT 
first_name,
SUBSTR(first_name, 2, LENGTH(first_name) - 2) AS result
FROM employees;

SELECT 
job_id
FROM employees
WHERE (LENGTH(job_id) - INSTR(job_id, '_')) >= 3 
AND
SUBSTR(job_id, INSTR(job_id, '_') + 1) != 'CLERK';

SELECT 
first_name,
hire_date,
TRUNC(hire_date, 'MM') AS result
FROM employees
WHERE hire_date = TRUNC(hire_date, 'MM');

SELECT 
employee_id,
first_name,
last_name,
hire_date,
TO_CHAR(hire_date, 'YYYY') AS year
FROM employees
WHERE TO_NUMBER(TO_CHAR(hire_date, 'YYYY')) = 2008;















