--Views can be used to hide the complexity of the database tables and offers users more friendly
--and easy-to-consume objects

--Provide view that combines details from orders, products, customers, and employees
CREATE VIEW V_Order_Details AS ( 
	SELECT 
	o.OrderID,
	o.OrderDate,
	p.Product,
	p.Category,
	COALESCE(c.FirstName, ' ')  + ' ' + COALESCE(c.LastName, ' ') AS CustomerName,
	c.country AS CustomerCountry,
	COALESCE(e.FirstName, ' ')  + ' ' + COALESCE(e.LastName, ' ') AS SalesName,
	e.Department,
	o.Sales,
	o.Quantity
	FROM Sales.Orders AS o
	LEFT JOIN Sales.Products AS p 
	ON p.ProductID = o.ProductID
	LEFT JOIN Sales.Customers AS c
	ON c.CustomerID = o.CustomerID
	LEFT JOIN Sales.Employees AS e
	ON e.EmployeeID = o.SalesPersonID
	)