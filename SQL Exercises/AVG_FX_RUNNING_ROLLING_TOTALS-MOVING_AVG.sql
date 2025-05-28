--Calculate the moving average of the sales for each product. 
--Calculate the moving average of sales for each product over time, including only the next order

SELECT
	OrderID, 
	ProductID, 
	OrderDate, 
	Sales,
	AVG(SALES) OVER(PARTITION BY ProductID) [AvgByProduct],
	AVG(Sales) OVER(PARTITION BY ProductID ORDER BY OrderDate) [MovingAvg],
	AVG(Sales) OVER(PARTITION BY ProductID ORDER BY OrderDate ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING) [RollingAverage]
FROM Sales.Orders