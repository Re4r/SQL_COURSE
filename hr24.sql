SELECT * FROM employees;

SELECT employee_id*2 + salary + department_id*10 
FROM employees;

SELECT first_name, salary, salary*2
FROM employees;

SELECT * FROM job_history;

SELECT employee_id,
start_date, 
end_date, 
start_date+7 plus_week, 
end_date - start_date count_of_days 
FROM job_history;

SELECT employee_id, 
first_name||' '||last_name||' '||salary full_name_salary 
FROM employees;

SELECT employee_id id,
first_name fn, 
last_name ln 
FROM employees;

