SELECT DISTINCT
commission_pct, 
ROUND(commission_pct, 1) AS rounded
FROM employees
WHERE commission_pct IS NOT NULL
ORDER BY ROUND(commission_pct, 1);

SELECT
salary * 1.56789,
ROUND(salary * 1.56789)
FROM employees
WHERE ROUND(salary * 1.56789) > 10000
ORDER BY ROUND(salary * 1.56789) DESC;

SELECT
ROUND((SYSDATE - hire_date) * employee_id) AS f_test
FROM employees;

SELECT
TRUNC((SYSDATE - hire_date) * employee_id, 5) AS f_test
FROM employees;

SELECT
employee_id,
salary,
MOD(salary, employee_id) AS f_test
FROM employees
ORDER BY salary, employee_id;

SELECT
MOD(employee_id, 2) AS mod_id,
first_name
FROM employees
WHERE MOD(employee_id, 2) != 0;



