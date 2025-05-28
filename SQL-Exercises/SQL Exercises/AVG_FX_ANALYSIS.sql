--Find the average sales across all orders
--Find the average sales for each product
--Additionally provide details such orderID, orderDate

SELECT 
	OrderID, 
	OrderDate,
	PRODUCTid,
	AVG(sales) OVER() AVG_SalesAllOrders,
	AVG(Sales) OVER(PARTITION BY PRODUCTID) AVG_EACH_PRODUCT
FROM Sales.Orders