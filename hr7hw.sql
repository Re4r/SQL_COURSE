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


