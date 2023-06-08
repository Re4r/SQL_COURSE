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
GROUP BY l.city;







