SELECT 
first_name,
last_name,
salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT 
(SELECT MIN(jobs.min_salary) FROM jobs) min_s,
(SELECT MAX(LENGTH(employees.first_name)) FROM employees) max_nl
FROM dual;

SELECT 
first_name,
last_name,
job_id
FROM employees
WHERE employee_id IN (SELECT employees.manager_id FROM employees)
ORDER BY job_id;









