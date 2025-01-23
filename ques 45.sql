WITH ProductProfit AS (
    SELECT p.category_id, p.product_id, SUM(od.quantity * od.unit_price) AS profit
    FROM products p
    JOIN order_details od ON p.product_id = od.product_id
    GROUP BY p.category_id, p.product_id
)
SELECT category_id, product_id, profit
FROM (
    SELECT category_id, product_id, profit,
           RANK() OVER (PARTITION BY category_id ORDER BY profit DESC) AS rank
    FROM ProductProfit
) ranked_products
WHERE rank = 1;
