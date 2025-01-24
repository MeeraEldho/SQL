SELECT e1.employee_id AS employee_1, e2.employee_id AS employee_2, e1.manager_id
FROM employees e1
JOIN employees e2 ON e1.manager_id = e2.manager_id AND e1.employee_id < e2.employee_id
ORDER BY e1.manager_id, employee_1, employee_2;
