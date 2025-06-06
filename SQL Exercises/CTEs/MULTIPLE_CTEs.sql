-- Step 1: Find the total Sales per customer Standalone CTE
WITH CTE_Total_Sales AS
(
SELECT 
	CustomerID,
	SUM(Sales) AS TotalSales
FROM SALES.Orders
GROUP BY CustomerID
)

--Step2: Find the last order date for each customer
, LastOrderDate AS 
(
SELECT
	CustomerID,
	MAX(ORDERDATE) AS LastOrderDate
FROM Sales.Orders
GROUP BY CustomerID
)
-- Main Query
SELECT 
c.CustomerID,
c.FirstName,
c.LastName,
cts.TotalSales,
lod.LastOrderDate
FROM Sales.Customers AS c
LEFT JOIN CTE_Total_Sales AS cts
ON cts.CustomerID = c.CustomerID
LEFT JOIN LastOrderDate as lod
ON lod.CustomerID = c.CustomerID