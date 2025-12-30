-- Find orders placed today

SELECT
    order_id,
    customer_id,
    order_date
FROM orders
WHERE DATE(order_date) = CURRENT_DATE;
