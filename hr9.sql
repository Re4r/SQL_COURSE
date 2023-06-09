SELECT email 
    FROM employees 
    WHERE employees.employee_id < 200
UNION ALL
SELECT regions.region_name 
    FROM regions;
    
SELECT salary FROM employees WHERE salary > 10000
UNION
SELECT jobs.max_salary FROM jobs WHERE jobs.max_salary < 15000;

SELECT job_id FROM employees
INTERSECT
SELECT jobs.job_id FROM jobs; 

SELECT salary FROM employees WHERE salary > 10000
MINUS
SELECT jobs.max_salary FROM jobs WHERE jobs.max_salary < 15000;

SELECT first_name, salary FROM employees WHERE first_name LIKE '%a%'
INTERSECT
SELECT first_name, salary FROM employees WHERE first_name LIKE '%e%'
MINUS
SELECT first_name, salary FROM employees WHERE first_name LIKE '%l%';













