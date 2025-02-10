SELECT p.product_id, p.product_name
FROM products p
LEFT JOIN order_details od ON p.product_id = od.product_id
LEFT JOIN orders o ON od.order_id = o.order_id
WHERE (o.order_date IS NULL OR o.order_date < CURRENT_DATE - INTERVAL 6 MONTH)
GROUP BY p.product_id, p.product_name;
