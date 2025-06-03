--Generate unique IDs to the rows of the 'Orders Archive' Table
SELECT
ROW_NUMBER() OVER(ORDER BY OrderID, OrderDate) UniqueID,
*
FROM Sales.OrdersArchive