WITH ProductPairs AS (
    SELECT o1.order_id, o1.product_id AS product_1, o2.product_id AS product_2
    FROM order_details o1
    JOIN order_details o2 ON o1.order_id = o2.order_id
    WHERE o1.product_id < o2.product_id
)
SELECT product_1, product_2, COUNT(*) AS pair_count
FROM ProductPairs
GROUP BY product_1, product_2
ORDER BY pair_count DESC
LIMIT 1;
