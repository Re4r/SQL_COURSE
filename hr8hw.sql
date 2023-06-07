SELECT * 
FROM employees e
WHERE LENGTH(e.first_name) = 
(SELECT MAX(LENGTH(e1.first_name)) FROM employees e1);

SELECT * 
FROM employees e1
WHERE e1.salary > (SELECT AVG(e2.salary) FROM employees e2);

