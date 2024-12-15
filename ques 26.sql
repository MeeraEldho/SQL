WITH SalesByMonth AS (
    SELECT 
        employee_id, 
        DATE_FORMAT(sale_date, '%Y-%m') AS sale_month,
        COUNT(*) AS total_sales
    FROM sales
    GROUP BY employee_id, DATE_FORMAT(sale_date, '%Y-%m')
),
ConsecutiveMonths AS (
    SELECT 
        employee_id, 
        sale_month,
        LAG(sale_month) OVER (PARTITION BY employee_id ORDER BY sale_month) AS previous_month,
        DATEDIFF(STR_TO_DATE(sale_month, '%Y-%m-01'), STR_TO_DATE(LAG(sale_month) OVER (PARTITION BY employee_id ORDER BY sale_month), '%Y-%m-01')) / 30 AS month_gap
    FROM SalesByMonth
)
SELECT employee_id, sale_month, previous_month
FROM ConsecutiveMonths
WHERE month_gap > 1
ORDER BY employee_id, sale_month;
