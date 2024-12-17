SELECT 
    o1.order_id AS current_order, 
    o2.order_id AS next_order,
    o2.order_id - o1.order_id AS gap
FROM orders o1
JOIN orders o2 
    ON o2.order_id = o1.order_id + 1
WHERE o2.order_id - o1.order_id > 1;
