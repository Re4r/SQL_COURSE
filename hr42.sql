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
LPAD(first_name, (LENGTH(first_name) + LENGTH(SYSDATE)), SYSDATE) AS lpad,
RPAD(first_name, LENGTH(first_name)+4, '_bot') AS rpad,
LENGTH(LPAD(first_name, (LENGTH(first_name) + LENGTH(SYSDATE)), SYSDATE)) AS length_lpad
FROM employees
ORDER BY 
LENGTH(LPAD(first_name, (LENGTH(first_name) + LENGTH(SYSDATE)), SYSDATE));

SELECT
phone_number,
TRIM(TRAILING 4 FROM phone_number) AS t_trailing,
TRIM(LEADING 6 FROM phone_number) AS t_leading,
TRIM(BOTH 5 FROM phone_number) AS t_both
FROM employees
ORDER BY LENGTH(phone_number);

SELECT
TRIM(BOTH ' ' FROM '      OK      ') AS ok
FROM dual;

SELECT * 
FROM employees 
WHERE INSTR(phone_number, 4) = LENGTH(phone_number) AND salary > 5000
ORDER BY employee_id;

SELECT * FROM jobs WHERE INSTR(job_title, 'cc') = 2;

SELECT
job_title,
INSTR(job_title, 'e', 3, 2) AS instr
FROM jobs
WHERE INSTR(job_title, 'e', 3, 2) != 0
ORDER BY INSTR(job_title, 'e', 3, 2);

SELECT 
job_title,
TRIM(TRAILING ' ' FROM SUBSTR(job_title, -4, 4)) AS sub
FROM jobs
WHERE SUBSTR(job_title, -4, 4) LIKE '%a%'
ORDER BY SUBSTR(job_title, -4, 4);

SELECT
job_title,
REPLACE(job_title, 'a', '$') AS replaced,
INSTR(REPLACE(job_title, 'a', '$'), '$', 1, 2) AS pos
FROM jobs
WHERE INSTR(REPLACE(job_title, 'a', '$'), '$', 1, 2) != 0
ORDER BY INSTR(REPLACE(job_title, 'a', '$'), '$', 1, 2) DESC;

SELECT 
phone_number,
REPLACE(phone_number, '011.44', '$$$.##')
FROM employees
WHERE REPLACE(phone_number, '011.44', '$$$.##') LIKE '%$%'






















