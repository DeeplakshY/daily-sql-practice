-- Calculate monthly revenue per product

SELECT
    product_id,
    DATE_TRUNC('month', order_date) AS month,
    SUM(sales_amount) AS monthly_revenue
FROM sales
GROUP BY product_id, DATE_TRUNC('month', order_date)
ORDER BY product_id, month;
