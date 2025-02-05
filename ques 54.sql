SELECT order_id, order_amount, shipped_date, required_date
FROM orders
WHERE shipped_date > required_date AND order_amount > (SELECT AVG(order_amount) FROM orders)
ORDER BY order_amount DESC;
