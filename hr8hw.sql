SELECT * 
FROM employees e
WHERE LENGTH(e.first_name) = 
(SELECT MAX(LENGTH(e1.first_name)) FROM employees e1);

SELECT * 
FROM employees e1
WHERE e1.salary > (SELECT AVG(e2.salary) FROM employees e2);

SELECT 
l.city,
SUM(e.salary)
FROM locations l 
JOIN departments d ON l.location_id = d.location_id
JOIN employees e ON e.department_id = d.department_id
GROUP BY l.city
HAVING SUM(e.salary) = 
(SELECT 
MIN(SUM(e1.salary)) 
FROM employees e1
JOIN departments d1 ON e1.department_id = d1.department_id
JOIN locations l1 ON d1.location_id = l1.location_id
GROUP BY l1.city);

SELECT * 
FROM employees e
WHERE e.manager_id 
IN (SELECT e1.employee_id FROM employees e1 WHERE e1.salary > 15000);

SELECT 
d.department_name
FROM employees e 
RIGHT OUTER JOIN departments d ON e.department_id = d.department_id
WHERE e.employee_id IS NULL;

SELECT * 
FROM employees e
WHERE e.job_id IN 
(SELECT j.job_id FROM jobs j WHERE j.job_title NOT LIKE '%Manager');

SELECT * FROM jobs;
SELECT * FROM employees;

SELECT
*
FROM jobs j JOIN employees e ON j.job_id = e.job_id
WHERE j.job_title LIKE '%Manager'











