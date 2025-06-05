--Analyze customer loyalty by ranking customers 
--based on the average number of days between orders
SELECT 
	CustomerID, 
	AVG(AvgDaysBetweenOrders) AvgDays,
	RANK() OVER(ORDER BY COALESCE( AVG(AvgDaysBetweenOrders), 9999))  AS Rank
FROM (
	SELECT
		CustomerID, 
		OrderID, 
		OrderDate,
		LEAD(OrderDate) OVER(ORDER BY CustomerID)  AS NxtOrderDate,
		DATEDIFF( Day, OrderDate, LEAD(OrderDate) OVER(PARTITION BY CUSTOMERID ORDER BY ORDERDATE) ) AS AvgDaysBetweenOrders
	FROM Sales.Orders
)t
GROUP BY CustomerID 