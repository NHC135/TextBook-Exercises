--Rank customers by their total sales

SELECT 
	CustomerID,
	SUM(Sales) TotalSales,
	RANK() OVER(Order by SUM(Sales) DESC) RANKCustomers
FROM Sales.Orders
WHERE ProductID IN (101,102)
GROUP BY CustomerID