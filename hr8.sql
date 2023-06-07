SELECT 
first_name,
last_name,
salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT 
(SELECT MIN(jobs.min_salary) FROM jobs) ms,
(SELECT MAX(employees.first_name) FROM employees) mnl
FROM dual;