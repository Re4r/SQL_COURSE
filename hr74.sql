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

SELECT * FROM regions;
SELECT * FROM locations;
SELECT * FROM countries;

SELECT * 
FROM locations 
NATURAL JOIN regions 
NATURAL JOIN countries;

SELECT * 
FROM locations 
JOIN countries USING (country_id)
JOIN regions USING (region_id);

SELECT * FROM departments;
SELECT * FROM job_history;
SELECT * FROM employees;

SELECT 
job_history.job_id,
jobs.job_title,
employees.first_name,
employees.last_name,
job_history.start_date,
job_history.end_date,
departments.department_name
FROM employees 
JOIN job_history 
ON job_history.employee_id = employees.employee_id
JOIN departments 
ON job_history.department_id = departments.department_id
JOIN jobs
ON job_history.job_id = jobs.job_id;

SELECT 
departments.department_name,
MIN(employees.salary),
MAX(employees.salary)
FROM employees 
JOIN departments 
ON employees.department_id = departments.department_id
GROUP BY departments.department_name
ORDER BY departments.department_name DESC;

SELECT 
employees.first_name,
jobs.job_id,
jobs.job_title,
employees.salary,
jobs.min_salary,
jobs.max_salary
FROM employees 
JOIN jobs 
ON jobs.job_id = employees.job_id
WHERE employees.salary * 2 < jobs.max_salary;

SELECT 
emp1.employee_id,
emp1.first_name,
emp1.last_name,
emp1.manager_id,
emp2.first_name man_fn,
emp2.last_name man_ln
FROM employees emp1
JOIN employees emp2
ON emp1.manager_id = emp2.employee_id;

SELECT 
emp2.first_name man_fn,
COUNT(*)
FROM employees emp1
JOIN employees emp2
ON emp1.manager_id = emp2.employee_id
GROUP BY emp2.first_name;




