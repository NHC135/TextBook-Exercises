-- TimeGap 
-- Find the number of days between each order and the previous order

SELECT 
OrderID,
OrderDate CurrentOrderDate,
LAG(OrderDate) OVER	(ORDER BY orderDate) PreviousOrderDate,
DATEDIFF(DAY, LAG(OrderDate) OVER (ORDER BY OrderDate), OrderDate) Days_Between_Each_Order
FROM Sales.Orders 
 
