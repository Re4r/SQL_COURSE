SELECT 
employees.first_name,
employees.last_name,
job_history.job_id,
job_history.start_date,
job_history.end_date
FROM employees JOIN job_history 
ON job_history.employee_id = employees.employee_id

