SELECT email 
    FROM employees 
    WHERE employees.employee_id < 200
UNION ALL
SELECT regions.region_name 
    FROM regions;
    
SELECT salary FROM employees WHERE salary > 10000
UNION
SELECT jobs.max_salary FROM jobs WHERE jobs.max_salary < 15000;

SELECT job_id FROM employees
INTERSECT
SELECT jobs.job_id FROM jobs; 

SELECT salary FROM employees WHERE salary > 10000
MINUS
SELECT jobs.max_salary FROM jobs WHERE jobs.max_salary < 15000;

SELECT first_name, salary FROM employees WHERE first_name LIKE '%a%'
INTERSECT
SELECT first_name, salary FROM employees WHERE first_name LIKE '%e%'
MINUS
SELECT first_name, salary FROM employees WHERE first_name LIKE '%l%';


SELECT 
    manager_id, 
    TO_CHAR(NULL) job_id,
    TO_NUMBER(NULL) dep_id,
    SUM(salary) 
    FROM employees
    GROUP BY manager_id
UNION
SELECT 
    TO_NUMBER(NULL), 
    e1.job_id, 
    TO_NUMBER(NULL),
    SUM(e1.salary) 
    FROM employees e1
    GROUP BY e1.job_id
UNION
SELECT 
    TO_NUMBER(NULL),
    TO_CHAR(NULL),
    e2.department_id,
    SUM(e2.salary)
    FROM employees e2
    GROUP BY e2.department_id;
    
SELECT 
    department_id,
    manager_id
    FROM employees 
    WHERE manager_id = 100
INTERSECT    
SELECT 
    department_id,
    manager_id
    FROM employees 
    WHERE manager_id NOT IN (145, 201); 
    
SELECT 
    first_name,
    last_name,
    salary
    FROM employees
    WHERE 
        LOWER(first_name) LIKE '%a' 
        AND LOWER(last_name) LIKE '%s%'
    ORDER BY salary DESC;
  
SELECT 
    first_name,
    last_name,
    salary sal
    FROM employees e1
    WHERE 
        LOWER(e1.first_name) LIKE '%a'
INTERSECT
SELECT 
    first_name,
    last_name,
    salary
    FROM employees e2
    WHERE 
        LOWER(e2.last_name) LIKE '%s%'
ORDER BY sal DESC;  


SELECT 
    location_id,
    postal_code,
    city
    FROM locations
WHERE country_id IN
    (SELECT c.country_id 
        FROM countries c 
        WHERE c.country_name IN ('Germany', 'Italy'))
UNION
SELECT 
    location_id,
    postal_code,
    city
    FROM locations
WHERE postal_code LIKE '%9%';


SELECT 
    country_id, 
    country_name, 
    region_id 
    FROM countries 
    WHERE LENGTH(country_name) > 8
INTERSECT
SELECT 
    c1.country_id, 
    c1.country_name, 
    c1.region_id 
    FROM countries c1 
    WHERE 
        c1.region_id != 
            (SELECT r.region_id 
            FROM regions r 
            WHERE r.region_name = 'Europe');






        
        

    











