--VIEWS: USE CASE TO STORE CENTRAL COMPLEX QUERY LOGIC IN THE DATABASE IMPROVE ACCESSIBILITY AND REDUCE PROJECT COMPLEXITY

--FIND THE RUNNING TOTAL OF SALES FOR EACH MONTH

--Checking the View if it exists first then create a new one
IF	OBJECT_ID ('Sales.V_Monthly_Summary', 'V') IS NOT NULL
	DROP VIEW Sales.V_Monthly_Summary; 
GO
CREATE VIEW Sales.V_Monthly_Summary AS
(
SELECT 
	DATETRUNC(Month, OrderDate) AS OrderMonth,
	SUM(Sales) AS TotalSales,
	COUNT(OrderID) AS Total_Orders, 
	SUM(Quantity) AS Total_Quantities
FROM SALES.ORDERS
GROUP BY DATETRUNC(Month, OrderDate)
)
 