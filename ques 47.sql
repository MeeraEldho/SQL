WITH CustomerStats AS (
    SELECT customer_id, 
           COUNT(order_id) AS total_orders,
           SUM(order_amount) AS total_spending
    FROM orders
    GROUP BY customer_id
)
SELECT customer_id, total_orders, total_spending,
       RANK() OVER (ORDER BY total_orders DESC, total_spending DESC) AS rank
FROM CustomerStats;
