SELECT * FROM employees WHERE first_name LIKE 'S%';

SELECT * FROM employees WHERE first_name LIKE 'D_n';

SELECT * FROM employees WHERE first_name LIKE 'A%d%';

SELECT last_name FROM employees WHERE last_name LIKE '__n%';

SELECT * FROM employees WHERE job_id LIKE 'ST\_%' ESCAPE '\';

SELECT * 
FROM employees 
WHERE first_name 
LIKE 'A%' AND salary > 5000;

