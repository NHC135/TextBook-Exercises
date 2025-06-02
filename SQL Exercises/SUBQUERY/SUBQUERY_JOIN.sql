--Show all customer details and find the total orders of each customer 

--Main 
SELECT 
c.*,
o.TotalOrders
FROM Sales.Customers AS c
LEFT JOIN (
--sub
	SELECT 
		CustomerID,	
		COUNT(*) TotalOrders
	FROM Sales.Orders
	GROUP BY CustomerID) AS o 
ON c.CustomerID = o.CustomerID