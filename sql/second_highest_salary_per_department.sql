-- Find second highest salary in each department

WITH ranked_salaries AS (
    SELECT
        employee_id,
        department,
        salary,
        DENSE_RANK() OVER (
            PARTITION BY department
            ORDER BY salary DESC
        ) AS salary_rank
    FROM employees
)

SELECT
    employee_id,
    department,
    salary
FROM ranked_salaries
WHERE salary_rank = 2;
