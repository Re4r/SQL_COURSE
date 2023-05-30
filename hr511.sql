SELECT
commission_pct AS pct,
DECODE(commission_pct, null, 'no bonus', 0.3, 'light', 0.4, 'medium', 'nothing') AS code
FROM employees
ORDER BY pct;

SELECT 
CASE salary
WHEN 1000 THEN 'one'
WHEN 2000 THEN 'two'
WHEN 3000 THEN first_name
WHEN 10000 THEN last_name
ELSE email
END AS result
FROM employees
ORDER BY result;

SELECT 
first_name,
CASE LENGTH(first_name)
WHEN 4 THEN '4'
WHEN 5 THEN '5'
WHEN 6 THEN '6'
ELSE 'too long'
END AS name_length
FROM employees
ORDER BY name_length;

SELECT
salary,
CASE
WHEN salary > 5000 THEN 'high'
WHEN salary > 3000 AND salary < 5000 THEN 'medium'
WHEN salary < 3000 THEN 'low'
ELSE 'normal'
END AS good
FROM employees
ORDER BY good;




