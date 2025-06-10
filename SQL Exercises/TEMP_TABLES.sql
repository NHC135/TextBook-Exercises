--Load data into temp tables

SELECT 
*
INTO #ORDERS	
FROM Sales.Orders



SELECT *
FROM #Orders 


--TRANSFORM: Delete info from tables

DELETE FROM #ORDERS
WHERE OrderStatus = 'Delivered'


--Create a table from the changed temp table into a permanent table

--TRANSACTION TO REFRESH TABLE 
IF OBJECT_ID('Sales.OrdersTest','U')  IS NOT NULL
	DELETE FROM Sales.OrdersTest
GO
SELECT 
*
INTO Sales.OrdersTest
FROM #Orders



