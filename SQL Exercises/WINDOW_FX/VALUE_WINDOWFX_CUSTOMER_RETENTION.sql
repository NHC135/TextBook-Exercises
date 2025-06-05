--Customer Retention Analysis using Value Window FX
--In order to analyze customer loyalty,
-- rank customers based on the average days betweeeen their orders
SELECT 
CustomerID,
AVG(DaysInBetweenOrders) AvgDays,
RANK() OVER(ORDER BY COALESCE(AVG(DaysInBetweenOrders), 99999))  RankAvg
FROM
(
	SELECT 
		OrderID,
		CustomerID,
		OrderDate,
		LEAD(OrderDate) OVER(PARTITION BY CustomerID ORDER BY OrderDate) NxtOrderDate,
		DATEDIFF(Day, OrderDate,  LEAD(OrderDate) OVER(PARTITION BY CustomerID ORDER BY OrderDate)) DaysInBetweenOrders
	FROM Sales.Orders
)t
GROUP BY CustomerID