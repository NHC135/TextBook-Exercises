--EXISTS - Checks if the subquery returns any rows
--Show the details of orders made by customers in Germany

--Main Query
SELECT 
*
FROM Sales.Orders AS O
WHERE /*(NOT) to gather inverse*/ EXISTS	(SELECT *
											FROM Sales.Customers AS C
										 	WHERE country = 'Germany' AND O.CustomerID = C.CustomerID)