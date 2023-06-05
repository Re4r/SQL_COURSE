SELECT 
job_history.employee_id,
employees.first_name,
employees.last_name,
job_history.job_id,
job_history.start_date,
job_history.end_date
FROM employees JOIN job_history 
ON job_history.employee_id = employees.employee_id;

SELECT * FROM regions;
SELECT * FROM departments;

SELECT * 
FROM departments JOIN regions 
ON regions.region_id * 10 = departments.department_id;

SELECT 
job_history.employee_id,
job_history.department_id,
employees.first_name,
employees.last_name,
job_history.job_id,
job_history.start_date,
job_history.end_date
FROM employees JOIN job_history 
ON job_history.employee_id = employees.employee_id 
AND job_history.department_id = employees.department_id;

SELECT * FROM departments;
SELECT * FROM employees;

SELECT
departments.department_id AS id,
employees.first_name,
employees.last_name,
employees.job_id,
departments.department_name
FROM employees JOIN departments
ON employees.employee_id = departments.manager_id 
AND employees.department_id = departments.department_id
ORDER BY departments.department_id;


