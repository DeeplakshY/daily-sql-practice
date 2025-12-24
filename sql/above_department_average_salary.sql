-- Find employees earning more than their department average

SELECT
    e.employee_id,
    e.employee_name,
    e.department_id,
    e.salary
FROM employees e
JOIN (
    SELECT
        department_id,
        AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
) d
ON e.department_id = d.department_id
WHERE e.salary > d.avg_salary;
