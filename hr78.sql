SELECT
emp.first_name,
emp.last_name,
emp.salary,
dep.department_name,
dep.department_id
FROM employees emp 
LEFT OUTER JOIN departments dep 
ON emp.department_id = dep.department_id; 

SELECT
emp.first_name,
emp.last_name,
emp.salary,
dep.department_name
FROM departments dep 
LEFT OUTER JOIN employees emp 
ON emp.department_id = dep.department_id; 

SELECT
emp.first_name,
emp.last_name,
emp.salary,
dep.department_name,
dep.department_id
FROM employees emp 
RIGHT OUTER JOIN departments dep 
ON emp.department_id = dep.department_id;

SELECT * FROM countries;
SELECT * FROM locations;

SELECT 
coun.country_name,
loc.city,
loc.street_address
FROM locations loc 
RIGHT OUTER JOIN countries coun
ON loc.country_id = coun.country_id;














