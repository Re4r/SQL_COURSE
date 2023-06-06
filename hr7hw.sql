SELECT * FROM regions;
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM locations;
SELECT * FROM countries;

SELECT
reg.region_name,
COUNT(*)
FROM regions reg 
JOIN countries coun ON reg.region_id = coun.region_id
JOIN locations loc ON coun.country_id = loc.country_id
JOIN departments dep ON loc.location_id = dep.location_id
JOIN employees emp ON emp.department_id = dep.department_id
GROUP BY reg.region_name;

SELECT 
emp.first_name,
emp.last_name,
dep.department_name,
emp.job_id,
j.job_title,
loc.street_address,
loc.city,
loc.state_province,
c.country_name,
r.region_name
FROM employees emp
JOIN departments dep ON emp.department_id = dep.department_id
JOIN jobs j ON j.job_id = emp.job_id
JOIN locations loc ON loc.location_id = dep.location_id
JOIN countries c ON c.country_id = loc.country_id
JOIN regions r ON r.region_id = c.region_id;

SELECT 
emp1.first_name,
emp1.last_name,
COUNT(*)
FROM employees emp1 
JOIN employees emp2 ON emp1.employee_id = emp2.manager_id
GROUP BY emp1.first_name, emp1.last_name
HAVING COUNT(*) > 6
ORDER BY emp1.first_name;

SELECT 
departments.department_name,
COUNT(*)
FROM departments JOIN employees USING (department_id)
GROUP BY departments.department_name
HAVING COUNT(*) > 30;

SELECT 
dep.department_name,
NVL(emp.first_name, 'no emloyee') no_emp
FROM departments dep 
LEFT OUTER JOIN employees emp 
ON dep.department_id = emp.department_id
WHERE emp.first_name IS NULL;

SELECT *
FROM employees emp1
JOIN employees emp2
ON emp1.employee_id = emp2.manager_id
WHERE TO_CHAR(emp1.hire_date, 'YYYY') = '2005' 
AND TO_NUMBER(TO_CHAR(emp2.hire_date, 'YYYY')) < 2005;

SELECT 
c.country_name,
r.region_name
FROM countries c
NATURAL JOIN regions r;

SELECT
e.first_name,
e.last_name,
e.salary
FROM employees e 
JOIN jobs j
ON j.job_id = e.job_id
WHERE e.salary < j.min_salary + 1000;

SELECT DISTINCT  
NVL(e.first_name, 'no employee'),
NVL(e.last_name, 'no employee'),
c.country_name
FROM employees e
FULL OUTER JOIN departments d ON e.department_id = d.department_id
FULL OUTER JOIN locations l ON d.location_id = l.location_id
FULL OUTER JOIN countries c ON l.country_id = c.country_id;

SELECT 
e.first_name,
e.last_name,
c.country_name
FROM employees e 
CROSS JOIN countries c;

SELECT 
r.region_name,
COUNT(*)
FROM 
employees e, 
departments d, 
locations l, 
countries c, 
regions r
WHERE 
e. department_id = d.department_id 
AND 
d.location_id = l.location_id
AND
l.country_id = c.country_id
AND 
c.region_id = r.region_id
GROUP BY r.region_name;

SELECT 
e.first_name,
d.department_name
FROM 
employees e,
departments d
WHERE e.department_id (+) = d.department_id 
AND e.first_name IS NULL;



















