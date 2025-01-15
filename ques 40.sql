SELECT product_id, AVG(review_score) AS avg_score,
       RANK() OVER (ORDER BY AVG(review_score) DESC) AS rank
FROM reviews
GROUP BY product_id
ORDER BY rank;
