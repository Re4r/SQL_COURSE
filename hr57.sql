SELECT 
first_name,
NVL(commission_pct, 0) AS not_null
FROM employees
WHERE NVL(commission_pct, 0) = 0;