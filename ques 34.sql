SELECT department_id, employee_id, first_name, salary
FROM (
    SELECT department_id, employee_id, first_name, salary,
           RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rank
    FROM employees
) AS ranked_employees
WHERE rank = 1;
