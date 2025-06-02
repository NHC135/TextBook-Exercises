--Find the productts that hav e aprice hgiher than the average price of all products

--Main
SELECT
ProductID, 
Price,
(SELECT AVG(Price) AS AvgPrice FROM Sales.Products) AS AvgPrice
FROM Sales.Products
WHERE Price > (SELECT AVG(Price) AS AvgPrice FROM Sales.Products)


