--CREATE A TABLE THAT SHOWS THE TOTAL # of Orders & Refresh the Table with new data
IF OBJECT_ID ('Sales.MonthlyOrders', 'U') IS NOT NULL 
	DROP TABLE Sales.MonthlyOrders; 
GO

SELECT 
	DATENAME(Month, OrderDate) Month,
	COUNT(OrderID) Total_Orders
INTO Sales.MonthlyOrders
FROM Sales.Orders
GROUP BY DATENAME(Month, OrderDate)

SELECT * FROM Sales.MonthlyOrders