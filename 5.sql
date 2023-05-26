SELECT * FROM employees;

SELECT TO_CHAR(1000000, '9,999,999') AS exmpl
FROM dual;

SELECT TO_CHAR(18.353, '99D999') AS exmpl
FROM dual;

SELECT TO_CHAR(22, '099.999') AS exmpl
FROM dual;

SELECT TO_CHAR(100, '$999.99') AS exmpl
FROM dual;

SELECT TO_CHAR(-100, '999PR') AS exmpl
FROM dual;

SELECT TO_CHAR(-100, '999MI') AS exmpl
FROM dual;

SELECT TO_CHAR(100, 'S999.99') AS exmpl
FROM dual;

SELECT TO_CHAR() AS exmpl
FROM dual;

SELECT 
TRIM(TO_CHAR(salary, '$999999.99')) AS exmpl,
TRIM(TO_CHAR(salary, 'S999999999')) AS exmpl2 
FROM employees;

SELECT
salary,
TRIM(TO_CHAR(salary, '$999,999')) as salary_m
FROM employees;

SELECT
hire_date,
TO_CHAR(hire_date, 'YYYY') AS conv,
TO_CHAR(hire_date, 'RR') AS conv2,
TO_CHAR(hire_date, 'Year') AS conv3,
TO_CHAR(hire_date, 'MM') AS conv4,
TO_CHAR(hire_date, 'MON') AS conv5,
TO_CHAR(hire_date, 'Month') AS conv6,
TO_CHAR(hire_date, 'Month', 'NLS_DATE_LANGUAGE = RUSSIAN') AS conv7,
TO_CHAR(hire_date, 'fmMonth') || ' -> ' || 'checked' AS conv8
FROM employees;

SELECT 
hire_date
FROM employees
WHERE TO_CHAR(hire_date, 'fmMonth') = 'August';

SELECT DISTINCT
hire_date,
TO_CHAR(hire_date, 'D') AS dow1,
TO_CHAR(hire_date, 'DD') AS dow2,
TO_CHAR(hire_date, 'DDD') AS dow3,
TO_CHAR(hire_date, 'DY') AS dow4,
TO_CHAR(hire_date, 'Day') AS dow5,
TO_CHAR(hire_date, 'W') AS dow6,
TO_CHAR(hire_date, 'WW') AS dow7,
TO_CHAR(hire_date, 'Q') AS dow8,
TO_CHAR(hire_date, 'CC') AS dow9,
TO_CHAR(hire_date, 'AM') AS dow10
FROM employees;

SELECT 
TO_CHAR(SYSDATE, 'AM') AS ex,
TO_CHAR(SYSDATE, 'HH24') AS ex,
TO_CHAR(SYSDATE, 'MI') AS ex,
TO_CHAR(SYSDATE, 'SS') AS ex,
TO_CHAR(SYSDATE, 'SSSSS') AS ex,
TO_CHAR(SYSDATE, 'fmMONTH.YEAR') AS ex,
TO_CHAR(SYSDATE, 'YYYYsp') AS ex

FROM dual;













