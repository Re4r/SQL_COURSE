SELECT * FROM regions;
SELECT * FROM countries;

SELECT 
c.country_name,
c.country_id,
region_id,
r.region_name
FROM regions r
NATURAL JOIN countries c;

SELECT * FROM employees;
SELECT * FROM departments;

SELECT 
departments.department_name,
department_id,
manager_id,
employees.first_name,
employees.last_name,
employees.salary
FROM employees NATURAL JOIN departments;

SELECT * FROM employees ;
SELECT * FROM job_history;

