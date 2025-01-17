SELECT order_date, 
       SUM(order_amount) OVER (ORDER BY order_date) AS cumulative_revenue
FROM orders
ORDER BY order_date;
