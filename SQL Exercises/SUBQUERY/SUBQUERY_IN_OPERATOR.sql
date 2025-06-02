--Show all details or orders made by customers not in Germany
SELECT 
*
FROM Sales.Orders
WHERE CustomerID IN 
					(SELECT 
					CustomerID
					FROM Sales.Customers
					WHERE Country = 'Germany')

