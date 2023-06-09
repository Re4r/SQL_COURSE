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

SELECT
department_id,
COUNT(*) AS m_count,
salary
FROM employees
GROUP BY department_id, salary
ORDER BY m_count DESC;

SELECT 
TO_CHAR(hire_date, 'DDthsp'),
COUNT(*) AS emp_quantity
FROM employees
GROUP BY TO_CHAR(hire_date, 'DDthsp') 
ORDER BY emp_quantity DESC;

SELECT 
department_id,
COUNT(*) AS emp_count,
SUM(salary) AS sum_salary
FROM employees
GROUP BY department_id
HAVING SUM(salary) > 300000 AND COUNT(*) > 30;

SELECT 
region_id,
COUNT(*) AS c_count,
SUM(LENGTH(country_name)) AS sum_of_l
FROM countries
GROUP BY region_id
HAVING SUM(LENGTH(country_name)) > 50;

SELECT 
job_id,
COUNT(*) AS emp_count,
ROUND(AVG(salary)) AS avg_salary
FROM employees
GROUP BY job_id
ORDER BY emp_count DESC;

SELECT 
department_id,
COUNT(*)
FROM employees
GROUP BY department_id
HAVING COUNT(DISTINCT job_id) > 1 
ORDER BY department_id;

SELECT 
department_id,
job_id,
MIN(salary),
MAX(salary)
FROM employees
GROUP BY department_id, job_id
HAVING ROUND(AVG(salary)) > 10000
ORDER BY department_id;

SELECT 
manager_id,
COUNT(*),
ROUND(AVG(salary))
FROM employees
WHERE commission_pct IS NULL
GROUP BY manager_id
HAVING ROUND(AVG(salary)) BETWEEN 6000 AND 9000
ORDER BY manager_id;

SELECT 
ROUND(MAX(AVG(salary)), -3)
FROM employees
GROUP BY department_id;





















