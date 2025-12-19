-- Find customers who made purchases on consecutive days

WITH ordered_purchases AS (
    SELECT
        customer_id,
        purchase_date,
        LAG(purchase_date) OVER (
            PARTITION BY customer_id
            ORDER BY purchase_date
        ) AS prev_purchase_date
    FROM purchases
)

SELECT DISTINCT
    customer_id
FROM ordered_purchases
WHERE purchase_date = prev_purchase_date + INTERVAL '1 day';
