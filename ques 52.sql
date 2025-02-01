SELECT product_id, 
       SUM(order_details.quantity * order_details.unit_price) AS total_revenue,
       SUM(order_details.quantity) AS total_quantity,
       (SUM(order_details.quantity * order_details.unit_price) / SUM(order_details.quantity)) AS revenue_per_unit
FROM order_details
GROUP BY product_id
ORDER BY revenue_per_unit DESC
LIMIT 5;
