WITH CustomerMonthlyPurchases AS (
    SELECT customer_id, 
           MONTH(order_date) AS month
    FROM orders
    GROUP BY customer_id, MONTH(order_date)
)
SELECT customer_id
FROM CustomerMonthlyPurchases
GROUP BY customer_id
HAVING COUNT(DISTINCT month) = 12;
