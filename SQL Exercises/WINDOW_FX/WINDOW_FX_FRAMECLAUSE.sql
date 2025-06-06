SELECT 
ProductID, 
OrderId,
OrderDate,
OrderStatus,
Sales,
SUM(SALES) OVER(PARTITION BY ORDERSTATUS ORDER BY ORDERDATE
ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING) TOTAL_SALES
FROM Sales.Orders
WHERE ProductID IN (101,102)