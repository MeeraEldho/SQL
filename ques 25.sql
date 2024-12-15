WITH RankedSalaries AS (
    SELECT 
        department_id, 
        employee_id, 
        salary,
        RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rank
    FROM employees
)
SELECT department_id, employee_id, salary
FROM RankedSalaries
WHERE rank <= 3
ORDER BY department_id, rank;
