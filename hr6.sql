SELECT
COUNT(*)
FROM employees
WHERE LENGTH(first_name) > 5 AND salary > 3000;

SELECT 
COUNT(NVL(commission_pct, 0))
FROM employees;

SELECT * FROM employees;

SELECT
COUNT(manager_id), 
COUNT(DISTINCT manager_id)
FROM employees;

SELECT
COUNT(salary),
SUM(salary),
COUNT(DISTINCT salary),
SUM(DISTINCT salary)
FROM employees;

SELECT
ROUND(SUM(LENGTH(first_name || last_name)) / COUNT(employee_id)) AS result
FROM employees;

SELECT 
SUM('7')
FROM employees;

SELECT 
SUM(TRUNC(SYSDATE - hire_date))
FROM employees;

SELECT 
ROUND(AVG(LENGTH(first_name || last_name))) AS result
FROM employees;

SELECT 
AVG(DISTINCT salary)
FROM employees
WHERE LENGTH(last_name) < 5;

SELECT 
COUNT(salary),
SUM(salary),
AVG(salary),
MIN(salary),
MAX(salary)
FROM employees;

SELECT 
ROUND(AVG(MONTHS_BETWEEN(SYSDATE,hire_date)) / 12) AS result
FROM employees;

SELECT 
MIN(salary),
MAX(salary)
FROM employees
WHERE department_id = 50;

SELECT 
MIN(hire_date),
MAX(hire_date)
FROM employees;

SELECT 
MIN(last_name),
MAX(last_name)
FROM employees;























