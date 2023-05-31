SELECT
COUNT(*)
FROM employees
WHERE LENGTH(first_name) > 5 AND salary > 3000;

SELECT 
COUNT(commission_pct)
FROM employees;