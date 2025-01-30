SELECT *, COUNT(*) AS duplicate_count
FROM orders
GROUP BY order_id, customer_id, order_date, order_amount
HAVING COUNT(*) > 1;
