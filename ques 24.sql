UPDATE employees
SET salary = salary * 1.1
WHERE department_id = (
    SELECT department_id
    FROM departments
    WHERE department_name = 'Sales'
);
