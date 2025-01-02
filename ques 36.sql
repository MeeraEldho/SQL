WITH YearlyRevenue AS (
    SELECT YEAR(order_date) AS year, SUM(order_amount) AS total_revenue
    FROM orders
    GROUP BY YEAR(order_date)
),
RevenueGrowth AS (
    SELECT year, total_revenue,
           LAG(total_revenue) OVER (ORDER BY year) AS previous_year_revenue,
           (total_revenue - LAG(total_revenue) OVER (ORDER BY year)) / LAG(total_revenue) OVER (ORDER BY year) * 100 AS growth_percentage
    FROM YearlyRevenue
)
SELECT year, total_revenue, growth_percentage
FROM RevenueGrowth
ORDER BY year;
