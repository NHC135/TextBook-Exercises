--Show the product IDs, names, prices and total numbenr of orders
SELECT 
ProductID,
Product,
Price,
(SELECT COUNT(*) FROM SALES.Orders) AS TotalOrders 
FROM Sales.Products;
