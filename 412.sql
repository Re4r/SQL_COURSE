SELECT 
commission_pct, 
ROUND(commission_pct, 1) AS rounded
FROM employees
WHERE commission_pct IS NOT NULL
ORDER BY ROUND(commission_pct, 1);

