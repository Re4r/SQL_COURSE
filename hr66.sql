SELECT 
department_id,
COUNT(*),
MIN(salary),
MAX(salary),
ROUND(AVG(salary))
FROM employees 
GROUP BY department_id
ORDER BY 1
