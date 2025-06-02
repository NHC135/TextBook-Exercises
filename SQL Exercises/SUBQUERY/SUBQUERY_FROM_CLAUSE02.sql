--rank customers based on their total amount of sales
SELECT 
RankCustomer,
CustomerID,
TotalSales
FROM 
( 
	SELECT 
		CustomerID, 
		SUM(Sales) TotalSales,
		RANK() OVER(ORDER BY SUM(Sales) DESC) AS RankCustomer
	FROM Sales.Orders
	GROUP BY CustomerID
)t 


