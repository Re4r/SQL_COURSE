SELECT email 
    FROM employees 
    WHERE employees.employee_id < 200
UNION ALL
SELECT regions.region_name 
    FROM regions;