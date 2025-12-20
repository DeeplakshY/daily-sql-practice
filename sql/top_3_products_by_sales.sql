-- Find top 3 products by total sales amount

SELECT
    product_id,
    SUM(sales_amount) AS total_sales
FROM sales
GROUP BY product_id
ORDER BY total_sales DESC
LIMIT 3;
