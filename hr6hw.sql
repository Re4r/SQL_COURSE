SELECT 
department_id,
COUNT(*) AS m_quantity,
MIN(salary),
MAX(salary),
ROUND(AVG(salary)) AS avg_salary,
MIN(hire_date),
MAX(hire_date)
FROM employees
GROUP BY department_id
ORDER BY m_quantity DESC;

SELECT
SUBSTR(first_name,1,1) AS flon,
COUNT(*) AS m_count
FROM employees
GROUP BY SUBSTR(first_name,1,1)
HAVING COUNT(*) > 1
ORDER BY m_count DESC, flon;
