-- Find duplicate email records

SELECT
    email,
    COUNT(*) AS duplicate_count
FROM users
GROUP BY email
HAVING COUNT(*) > 1;
