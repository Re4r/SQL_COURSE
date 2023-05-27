SELECT 
TO_CHAR((TO_DATE('28-Sep-2023 23:54:15', 'fxDD-MON-YYYY HH24:MI:SS')), 
'DD MON YYYY HH24:MI:SS') AS test
FROM dual;

SELECT 
TO_DATE('28-Sep-2023 23:54:15', 'fxDD-MON-YYYY HH24:MI:SS') 
FROM dual;

SELECT 
hire_date
FROM employees
WHERE hire_date > TO_DATE('01-JAN-05', 'fxDD-MON-RR')
ORDER BY hire_date;

SELECT 
hire_date,
TO_CHAR((TO_DATE(hire_date, 'fxDD-MON-YY')), 'Month')
FROM employees;

SELECT 
TO_CHAR((TO_DATE('15$2023$12$23$32$14', 'DD$YYYY$MM$HH24$MI$SS')), 
'DD-MON-YYYY / HH24:MI:SS / Month / Year / DDD') AS test
FROM dual;

SELECT
TO_DATE('15$2023$12$23$32$14', 'DD/YYYY/MM/HH24/MI/SS') AS r_date
FROM dual;

DESCRIBE employees;

SELECT 
*
FROM employees;

SELECT 
phone_number,
TO_NUMBER(SUBSTR((REPLACE(phone_number, '.', '')), 4), '9999999') AS tel
FROM employees
WHERE 
LENGTH(SUBSTR((REPLACE(phone_number, '.', '')), 4)) = 7
ORDER BY 
TO_NUMBER(SUBSTR((REPLACE(phone_number, '.', '')), 4), '9999999') DESC;











