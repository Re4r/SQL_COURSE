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

SELECT
department_name,
MIN(salary),
MAX(salary)
FROM 
(SELECT salary, department_name 
FROM employees e 
JOIN departments d 
ON e.department_id = d.department_id)
GROUP BY department_name;

SELECT 
first_name,
last_name,
salary
FROM employees
WHERE salary < (SELECT MAX(salary) / 5 FROM employees);

SELECT 
e.first_name,
e.last_name,
e.salary
FROM employees e
WHERE e.salary > (SELECT AVG(e2.salary) FROM employees e2);

SELECT AVG(e2.salary) FROM employees e2;

SELECT 
e1.first_name,
e1.last_name,
e1.salary
FROM employees e1
WHERE e1.salary >= (SELECT e2.salary FROM employees e2 WHERE e2.employee_id = 180);

SELECT e2.salary FROM employees e2 WHERE e2.employee_id = 180;

SELECT 
j.job_title
FROM jobs j JOIN employees e ON j.job_id = e.job_id
GROUP BY j.job_title
HAVING AVG(e.salary) = (SELECT MAX(AVG(e1.salary)) FROM employees e1 GROUP BY e1.job_id);

SELECT
e.first_name,
e.last_name,
e.salary
FROM employees e
WHERE e.job_id IN (SELECT j.job_id FROM jobs j WHERE j.min_salary > 8000);

SELECT 
e.first_name,
e.last_name,
e.salary
FROM employees e
WHERE e.salary > ANY(SELECT salary FROM employees WHERE department_id = 100);

SELECT DISTINCT
d.department_name
FROM departments d
JOIN employees e ON e.department_id = d.department_id; 

SELECT 
d.department_name
FROM departments d
WHERE d.department_id IN (SELECT e.department_id FROM employees e);

SELECT 
d.department_name
FROM departments d;

SELECT 
e1.department_id,
e1.first_name, 
e1.salary 
FROM employees e1
WHERE e1.salary > 
(SELECT AVG(e2.salary) 
FROM employees e2 
WHERE e1.department_id = e2.department_id); 

SELECT
e.first_name,
e.last_name
FROM employees e
WHERE e.department_id IN 
(SELECT d.department_id FROM departments d WHERE d.location_id IN 
(SELECT l.location_id FROM locations l WHERE l.country_id IN 
(SELECT c.country_id FROM countries c WHERE c.country_name = 'Germany')));

SELECT 
e.first_name,
e.last_name,
e.salary
FROM employees e
WHERE e.job_id IN (SELECT j.job_id FROM jobs j WHERE j.job_title like '%Manager')
AND e.salary > (SELECT AVG(e1.salary) FROM employees e1)
ORDER BY e.salary;




