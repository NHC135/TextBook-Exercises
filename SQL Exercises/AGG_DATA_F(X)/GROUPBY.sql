/* Find the totalscore and total number of customers for each country*/
SELECT
	country,
	SUM(score) AS Total_Score,
	COUNT(id) AS total_customers
FROM customers
GROUP BY country

