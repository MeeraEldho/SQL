SELECT category_id, product_id, product_name, 
       SUM(sales_amount) AS total_revenue,
       RANK() OVER (PARTITION BY category_id ORDER BY SUM(sales_amount) DESC) AS revenue_rank
FROM sales
JOIN products ON sales.product_id = products.product_id
GROUP BY category_id, product_id, product_name;
