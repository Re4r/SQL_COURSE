SELECT * FROM employees WHERE first_name LIKE 'S%';

SELECT * FROM employees WHERE first_name LIKE 'D_n';

SELECT * FROM employees WHERE first_name LIKE 'A%d%';

SELECT last_name FROM employees WHERE last_name LIKE '__n%';

SELECT * FROM employees WHERE job_id LIKE 'ST\_%' ESCAPE '\';

SELECT * 
FROM employees 
WHERE first_name 
LIKE 'A%' AND salary > 5000;

SELECT last_name 
FROM employees 
WHERE last_name LIKE 'D%' OR last_name LIKE '%d';

SELECT * 
FROM employees 
WHERE NOT commission_pct IS NULL;

SELECT * 
FROM employees 
WHERE salary NOT BETWEEN 5000 AND 10000;

SELECT * 
FROM employees 
WHERE manager_id NOT IN (100);

SELECT * 
FROM employees 
WHERE phone_number NOT LIKE '%6';

