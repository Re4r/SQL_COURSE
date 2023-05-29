SELECT 
first_name,
NVL(commission_pct, 0) AS not_null
FROM employees
WHERE NVL(commission_pct, 0) = 0;

SELECT 
first_name,
commission_pct,
NVL(salary * commission_pct, 500)
FROM employees
ORDER BY NVL(salary * commission_pct, 500) DESC;

SELECT 
first_name,
NVL2(commission_pct, commission_pct, 0)
FROM employees;

SELECT 
UPPER(first_name),
INITCAP(NVL2(commission_pct, 'bonus', 'no bonus')) AS bonus
FROM employees
ORDER BY first_name;

SELECT * FROM  employees;

SELECT
NULLIF(TO_DATE('23-JUN-2023', 'fxDD-MON-YYYY'),
TO_DATE('23-JUN-2023')) AS test
FROM dual;

SELECT 
NULLIF(employee_id, manager_id)
FROM employees;

SELECT 
country_id,
country_name,
NULLIF(country_id, UPPER(SUBSTR(country_name, 1, 2))) AS id,
INITCAP(NVL2(NULLIF(country_id, UPPER(SUBSTR(country_name, 1, 2))), 'match', 'not match')) AS match
FROM countries
ORDER BY NULLIF(country_id, UPPER(SUBSTR(country_name, 1, 2))) DESC;

SELECT
first_name,
last_name,
email,
UPPER(SUBSTR(first_name, 1, 1) || last_name) AS e_name,
NULLIF((UPPER(SUBSTR(first_name, 1, 1) || last_name)),
(email)) AS equal,
NVL2(NULLIF((UPPER(SUBSTR(first_name, 1, 1) || last_name)),
(email)), 'ok', 'not') AS test_case
FROM employees
ORDER BY equal DESC;












