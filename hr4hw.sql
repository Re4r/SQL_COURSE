SELECT 
first_name,
LENGTH(first_name) AS lof
FROM employees
WHERE LENGTH(first_name) > 10;

SELECT 
salary,
employee_id
FROM employees
WHERE MOD(salary, 1000) = 0;

DESCRIBE employees;

SELECT 
phone_number,
LENGTH(phone_number) AS l_t_n,
SUBSTR(phone_number, 1, 3) AS s_s
FROM employees
WHERE LENGTH(phone_number) = 12;

SELECT 
*
FROM employees
WHERE first_name LIKE '%m' AND LENGTH(first_name) > 5;

SELECT NEXT_DAY(SYSDATE, 5) FROM dual;

SELECT
hire_date,
TRUNC(MONTHS_BETWEEN(SYSDATE, hire_date)) AS t_months
FROM employees
WHERE TRUNC(MONTHS_BETWEEN(SYSDATE, hire_date)) > 150;

SELECT 
phone_number,
REPLACE(phone_number, '.', '-') AS replaced
FROM employees;

SELECT
first_name,
email,
job_id,
UPPER(first_name) AS u,
LOWER(email) AS l,
INITCAP(job_id) as ic
FROM employees;


