-- Step 1: Find the total Sales per customer Standalone CTE
WITH CTE_Total_Sales AS
(
SELECT 
	CustomerID,
	SUM(Sales) AS TotalSales
FROM SALES.Orders
GROUP BY CustomerID
)

--Step2: Find the last order date for each customer (Multiple CTE)
, CTE_LastOrderDate AS 
(
SELECT
	CustomerID,
	MAX(ORDERDATE) AS LastOrderDate
FROM Sales.Orders
GROUP BY CustomerID
)
-- Step 3: Rank Customers based on Total Sales Per Customer (Nested CTE)
, CTE_Customer_Rank AS 
(
SELECT 
CustomerID,
TotalSales,
RANK() OVER(ORDER BY TotalSales DESC) AS CustomerRank
FROM CTE_Total_Sales
) 

--Step 4: Segment customers based on their total sales ( NESTED CTE)
, CTE_Customer_Segments AS 
(
SELECT 
CustomerID, 
CASE WHEN TotalSales > 100 THEN 'High' 
	 WHEN TotalSales > 50 THEN 'Medium' 
	 ELSE 'Low'
END AS CustomerSegments
 FROM CTE_Total_Sales
)

-- Main Query
SELECT 
c.CustomerID,
c.FirstName,
c.LastName,
cts.TotalSales,
lod.LastOrderDate,
crc.CustomerRank,
cs.CustomerSegments
FROM Sales.Customers AS c
LEFT JOIN CTE_Total_Sales AS cts
ON cts.CustomerID = c.CustomerID
LEFT JOIN CTE_LastOrderDate AS lod
ON lod.CustomerID = c.CustomerID
LEFT JOIN CTE_Customer_Rank AS crc
ON crc.CustomerID = c.CustomerID
LEFT JOIN CTE_Customer_Segments as cs
ON cs.CustomerID = c.CustomerID