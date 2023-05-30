SELECT 
first_name
FROM employees
WHERE LOWER(first_name) LIKE '%b%';

SELECT 
first_name
FROM employees
WHERE first_name LIKE '%a%a%';

SELECT 
department_name,
SUBSTR(department_name, 1, INSTR(department_name, ' ')) AS result
FROM departments
WHERE INSTR(department_name, ' ') != 0;














