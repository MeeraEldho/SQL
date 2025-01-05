SELECT order_id, DATEDIFF(shipped_date, order_date) AS fulfillment_time
FROM orders
WHERE shipped_date IS NOT NULL
ORDER BY fulfillment_time DESC
LIMIT 1;
