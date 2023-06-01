SELECT 
department_id,
COUNT(*),
MIN(salary),
MAX(salary),
ROUND(AVG(salary))
FROM employees 
GROUP BY department_id
ORDER BY 1;

SELECT 
job_id,
COUNT(*),
ROUND(AVG(salary)) AS average
FROM employees
WHERE salary > 5000
GROUP BY job_id
ORDER BY average;

SELECT
TO_CHAR(hire_date, 'Month') AS w_month,
COUNT(*) AS quantity,
ROUND(AVG(salary)) AS aver
FROM employees
GROUP BY TO_CHAR(hire_date, 'Month')
ORDER BY quantity;

SELECT
department_id,
MAX(hire_date),
MIN(first_name),
COUNT(*),
SUM(salary),
ROUND(AVG(employee_id))
FROM employees
GROUP BY department_id;

SELECT
department_id,
job_id,
COUNT(*)
FROM employees
GROUP BY department_id, job_id
ORDER BY 1, 2;

SELECT 
job_id,
TO_CHAR(hire_date, 'YYYY') AS h_year,
COUNT(*),
ROUND(AVG(salary)) AS a_salary,
ROUND(AVG(NVL(commission_pct, 0)), '9.9') a_cpct
FROM employees
GROUP BY job_id, TO_CHAR(hire_date, 'YYYY')
ORDER BY job_id ,h_year; 

SELECT 
job_id,
COUNT(*)
FROM employees
WHERE LENGTH(first_name || last_name) > 10
GROUP BY job_id
HAVING COUNT(*) > 3;

SELECT 
salary,
COUNT(*) AS m_count
FROM employees
WHERE job_id IN('IT_PROG')
GROUP BY salary
HAVING COUNT(*) > 1
ORDER BY m_count DESC;

SELECT 
TO_CHAR(hire_date, 'YYYY') AS m_year,
COUNT(*),
SUM(salary) * 12 AS year_salary,
ROUND(AVG(salary)) AS avg_salary
FROM employees
GROUP BY TO_CHAR(hire_date, 'YYYY')
HAVING ROUND(AVG(salary)) > 5000
ORDER BY m_year;






















