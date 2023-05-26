SELECT * FROM job_history;

SELECT TO_CHAR(SYSDATE, 'DD-MM-RR hh24:mm:ss') FROM dual;

SELECT
employee_id,
first_name,
last_name,
TRUNC(SYSDATE - hire_date) AS work_days
FROM employees
ORDER BY TRUNC(SYSDATE - hire_date) DESC;

SELECT
employee_id,
TRUNC(MONTHS_BETWEEN(end_date, start_date)) AS m_b,
TRUNC(MONTHS_BETWEEN(end_date, start_date)) * 31 AS m_b_d,
TRUNC(MONTHS_BETWEEN(end_date, start_date)) * 31 * 24 AS m_b_d_h
FROM job_history

