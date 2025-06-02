--Find the products that have a price higher than the average price of all products

SELECT 
*
FROM( 
	SELECT 
		ProductID, 
		Product, 
		Price,
		AVG(Price) OVER() AS AveragePrice
	FROM Sales.Products
)t
WHERE Price > AveragePrice