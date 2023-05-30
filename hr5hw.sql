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

SELECT 
TO_CHAR(SYSDATE + 1, '"Tomorrow is first day of "Month')
FROM dual;

SELECT 
first_name,
hire_date,
TO_CHAR(hire_date, 'fmDDth" of "Month, YYYY') AS result
FROM employees;

SELECT 
employee_id AS id,
first_name,
salary,
(salary / 100) * 20 AS percent,
salary + ((salary / 100) * 20) AS result,
TRIM(TO_CHAR(salary + ((salary / 100) * 20), '$99,999.99')) AS result2
FROM employees
ORDER BY result DESC;

SELECT
TO_CHAR(SYSDATE, 'DD-MON-YYYY / HH24:MI:SS') AS source,
TO_NUMBER(TO_CHAR(SYSDATE, 'SS')) + 1 AS result1,
TO_NUMBER(TO_CHAR(SYSDATE, 'MI')) + 1 AS result2,
TO_NUMBER(TO_CHAR(SYSDATE, 'HH24')) + 1 AS result3,
TO_CHAR(TO_DATE(SYSDATE, 'DD-MM-YY') + 1, 'DD') AS result4,
TO_NUMBER(TO_CHAR(SYSDATE, 'MM')) + 1 AS result5,
TO_NUMBER(TO_CHAR(SYSDATE, 'YYYY')) + 1 AS result6
FROM dual;

SELECT 
first_name,
salary,
TO_NUMBER('$12,345.55', '$99,999.99') AS result1,
salary + TO_NUMBER('$12,345.55', '$99,999.99') AS result2
FROM employees;














