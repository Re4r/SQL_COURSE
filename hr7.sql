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
department_id,
employees.first_name,
employees.last_name,
job_history.start_date,
job_history.end_date,
job_history.job_id
FROM employees JOIN job_history USING (employee_id, department_id);

SELECT * FROM locations;
SELECT * FROM countries;
SELECT * FROM emp_details_view;

SELECT
country_id,
countries.region_id,
countries.country_name,
locations.city,
locations.state_province
FROM countries NATURAL JOIN locations
WHERE locations.state_province IS NOT NULL
ORDER BY countries.region_id;

SELECT 
emp_details_view.employee_id,
emp_details_view.first_name,
emp_details_view.last_name,
state_province,
city,
location_id,
locations.street_address
FROM emp_details_view JOIN locations USING (state_province, city, location_id)
ORDER BY state_province;


















