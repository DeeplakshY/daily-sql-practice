-- Compare RANK and DENSE_RANK for customer sales

SELECT
    customer_id,
    total_sales,
    RANK() OVER (ORDER BY total_sales DESC) AS rank_position,
    DENSE_RANK() OVER (ORDER BY total_sales DESC) AS dense_rank_position
FROM customer_sales;
