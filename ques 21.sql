SELECT 
    d.department_name,
    AVG(e.salary) AS avg_salary
FROM 
    employees e
JOIN 
    departments d ON e.department_id = d.department_id
GROUP BY 
    d.department_name
HAVING 
    AVG(e.salary) > 6000;
