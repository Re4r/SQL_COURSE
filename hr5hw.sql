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

SELECT 
first_name,
hire_date,
TO_DATE('SEP, 18:45:00 18 2009', 'MON, HH24:MI:SS DD YYYY') AS result1,
ROUND(MONTHS_BETWEEN(TO_DATE('SEP, 18:45:00 18 2009', 
'MON, HH24:MI:SS DD YYYY'), hire_date)) AS result2
FROM employees;

SELECT 
first_name,
salary,
commission_pct,
NVL((salary * commission_pct), salary) AS result1,
NVL(salary + (salary * commission_pct), salary) AS result2,
TO_CHAR(NVL(salary + (salary * commission_pct), salary), 'fm$99,999.00') AS result3
FROM employees
ORDER BY commission_pct;

SELECT 
first_name,
last_name,
CASE
WHEN LENGTH(first_name) != LENGTH(last_name) THEN 'different length'
ELSE 'same length'
END AS result
FROM employees
ORDER BY result;

SELECT 
first_name,
commission_pct,
NVL2(commission_pct, 'Yes', 'No') AS result
FROM employees
ORDER BY result DESC;

SELECT 
first_name,
last_name,
commission_pct,
COALESCE(commission_pct, manager_id, salary) AS result
FROM employees;

SELECT 
first_name,
last_name,
salary,
CASE
WHEN salary < 5000 THEN 'Low level'
WHEN salary >= 5000 AND salary < 10000 THEN 'Normal level'
WHEN salary >= 10000 THEN 'High level'
END AS result
FROM employees
ORDER BY salary;

SELECT 
country_name,
region_id,
DECODE(region_id, 1, ' 1 - Europe') AS result1,
DECODE(region_id, 2, ' 2 - America') AS result2,
DECODE(region_id, 3, ' 3 - Asia') AS result3,
DECODE(region_id, 4, ' 4 - Africa') AS result4
FROM countries
ORDER BY region_id;

SELECT 
country_id,
country_name,
region_id,
CASE region_id
WHEN 1 THEN '1 - Europe'
WHEN 2 THEN '2 - America'
WHEN 3 THEN '3 - Asia'
WHEN 4 THEN '4 - Africa'
END AS result
FROM countries
ORDER BY result;

SELECT 
first_name,
salary,
CASE
WHEN salary < 10000 
AND commission_pct IS NULL THEN 'BAD'
WHEN salary BETWEEN 10000 AND 15000 
OR commission_pct IS NOT NULL THEN 'NORMAL'
WHEN salary > 15000 THEN 'GOOD'
END AS result
FROM employees
ORDER BY result;























