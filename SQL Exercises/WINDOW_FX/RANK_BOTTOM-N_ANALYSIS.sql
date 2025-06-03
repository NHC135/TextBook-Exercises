--Bottom-N Analysis Help analysis the underperformance to manage risks and to do optimizations
--Find the lowest 2 customers bnased on their total sales
SELECT *
FROM(
	SELECT 
		CustomerID,
		SUM(Sales) TotalSales,
		ROW_NUMBER() OVER(ORDER BY SUM(Sales)) RankCustomers
	FROM Sales.Orders
	GROUP BY CustomerID
)t
WHERE RankCustomers <= 2