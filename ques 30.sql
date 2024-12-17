SELECT e.employee_id, e.first_name, e.salary AS employee_salary,
       m.employee_id AS manager_id, m.salary AS manager_salary
FROM employees e
JOIN employees m 
    ON e.manager_id = m.employee_id
WHERE e.salary > m.salary;
