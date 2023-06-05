SELECT
emp.first_name,
emp.last_name,
emp.salary,
dep.department_name,
dep.department_id
FROM employees emp 
LEFT OUTER JOIN departments dep 
ON emp.department_id = dep.department_id; 

SELECT
emp.first_name,
emp.last_name,
emp.salary,
dep.department_name
FROM departments dep 
LEFT OUTER JOIN employees emp 
ON emp.department_id = dep.department_id; 

SELECT
emp.first_name,
emp.last_name,
emp.salary,
dep.department_name,
dep.department_id
FROM employees emp 
RIGHT OUTER JOIN departments dep 
ON emp.department_id = dep.department_id;













