SELECT
emp.first_name,
emp.last_name,
emp.salary,
dep.department_name
FROM employees emp 
LEFT OUTER JOIN departments dep 
ON emp.department_id = dep.department_id; 