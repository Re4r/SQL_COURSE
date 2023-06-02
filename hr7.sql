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

SELECT * FROM employees;
SELECT * FROM job_history;

SELECT 
employees.employee_id,
employees.first_name,
employees.last_name,
departments.department_name,
departments.manager_id,
department_id
FROM employees JOIN departments USING(department_id);

SELECT * FROM regions JOIN countries USING (region_id);

SELECT
employee_id,
employees.first_name,
employees.last_name,
job_history.start_date,
job_history.end_date,
job_history.job_id
FROM employees JOIN job_history USING (employee_id);
















