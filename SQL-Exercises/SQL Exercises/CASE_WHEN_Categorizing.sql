/*Generate a resport showing the total sales for each category: 
-High: If the sales higher than 50 
-Medium: If the sales between 20 and 50
-Low: If the sales or lower than 20 
Sort the result from lowest to highest*/
SELECT
category, 
SUM(Sales) AS TotalSales
FROM(
SELECT 
	CustomerID, 
	Quantity, 
	Sales,
	CASE 
		WHEN Sales > 50 THEN 'HIGH' 
		WHEN Sales > 20 THEN 'MEDIUM'
		ELSE 'LOW'
	END AS Category
	FROM Sales.Orders
)t
GROUP BY Category
ORDER BY TotalSales DESC_
