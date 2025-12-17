-- Remove duplicate records keeping the latest entry

WITH ranked_rows AS (
    SELECT
        *,
        ROW_NUMBER() OVER (
            PARTITION BY email
            ORDER BY created_at DESC
        ) AS rn
    FROM users
)
DELETE FROM ranked_rows
WHERE rn > 1;
