SELECT * FROM employees;

SELECT 
first_name, 
LOWER(first_name) AS fn  
FROM employees;

SELECT * 
FROM employees 
WHERE LOWER(first_name) IN ('david');

SELECT * 
FROM employees 
WHERE LOWER (first_name) LIKE 'd%v%';

SELECT 
last_name, 
UPPER(last_name) 
FROM employees;

SELECT
email,
job_id,
LOWER(email),
LOWER(job_id)
FROM employees
ORDER BY job_id, email DESC;

SELECT INITCAP('dDDDDD kKKKKK lLLLLLL') FROM dual;

SELECT CONCAT('today is ', SYSDATE) FROM dual;

SELECT 
CONCAT('AAA ', CONCAT('BBB ', CONCAT('CCC ', 'DDD '))) AS example
FROM dual;











