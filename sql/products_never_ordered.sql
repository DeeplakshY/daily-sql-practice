-- Find products that were never ordered

SELECT
    p.product_id,
    p.product_name
FROM products p
LEFT JOIN orders o
    ON p.product_id = o.product_id
WHERE o.product_id IS NULL;
