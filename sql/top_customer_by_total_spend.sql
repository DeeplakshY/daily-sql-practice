-- Find the customer with the highest total spend

SELECT
    customer_id,
    SUM(order_amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 1;
