-- Calculate running total of sales per product

SELECT
    product_id,
    order_date,
    sales_amount,
    SUM(sales_amount) OVER (
        PARTITION BY product_id
        ORDER BY order_date
    ) AS running_total
FROM sales;
