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

SELECT 
first_name || ' ' || last_name AS full_name,
LENGTH(CONCAT(first_name, last_name)) AS fn_length
FROM employees
WHERE LENGTH(CONCAT(first_name, last_name)) BETWEEN 10 AND 15
ORDER BY LENGTH(CONCAT(first_name, last_name)) DESC;

SELECT
country_name,
LENGTH(country_name) AS c_length
FROM countries
WHERE LENGTH(country_name) > 8
ORDER BY LENGTH(country_name);

SELECT
first_name,
LPAD(first_name, LENGTH(first_name)+3, 'Dr.') AS lpad,
RPAD(first_name, LENGTH(first_name)+4, '_bot') AS rpad
FROM employees;











