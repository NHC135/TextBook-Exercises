--FIND THE total sales across all orders
--Find the total sales for each product
--Find the total sales for each combination of product and order status
--Additionally provide details such order ID, Order Date

SELECT 
OrderID,
OrderDate,
ProductID,
OrderStatus,
Sales, 
SUM(Sales) OVER() TotalSales,
SUM(Sales) OVER(PARTITION BY ProductID) [TotalSalesE/Product],
SUM(Sales) OVER(PARTITION BY productID, orderstatus) [TotalSalesProdID,OrdrStats]
FROM Sales.Orders