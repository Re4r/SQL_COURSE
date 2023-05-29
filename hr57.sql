SELECT 
first_name,
NVL(commission_pct, 0) AS not_null
FROM employees
WHERE NVL(commission_pct, 0) = 0;

SELECT 
first_name,
commission_pct,
NVL(salary * commission_pct, 500)
FROM employees
ORDER BY NVL(salary * commission_pct, 500) DESC;

SELECT 
first_name,
NVL2(commission_pct, commission_pct, 0)
FROM employees;

SELECT 
UPPER(first_name),
INITCAP(NVL2(commission_pct, 'bonus', 'no bonus')) AS bonus
FROM employees
ORDER BY first_name;

SELECT * FROM  employees;

SELECT
NULLIF(TO_DATE('23-JUN-2023', 'fxDD-MON-YYYY'),
TO_DATE('23-JUN-2023')) AS test
FROM dual;

SELECT 
NULLIF(employee_id, manager_id)
FROM employees;













