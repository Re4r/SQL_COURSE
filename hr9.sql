SELECT email 
    FROM employees 
    WHERE employees.employee_id < 200
UNION ALL
SELECT regions.region_name 
    FROM regions;
    
SELECT salary FROM employees WHERE salary > 10000
UNION
SELECT jobs.max_salary FROM jobs WHERE jobs.max_salary < 15000;

