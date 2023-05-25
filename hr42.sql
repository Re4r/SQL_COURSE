SELECT * FROM employees;

SELECT 
first_name, 
LOWER(first_name) AS fn  
FROM employees;

SELECT * 
FROM employees 
WHERE LOWER(first_name) IN ('david');