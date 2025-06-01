--Find all orders where sales are higher than the average sales across all orders
SELECT*
FROM(
	SELECT 
		OrderID,
		Sales, 
		AVG(Sales) over() AvgSales
	FROM Sales.Orders
)t WHERE Sales > AvgSales

