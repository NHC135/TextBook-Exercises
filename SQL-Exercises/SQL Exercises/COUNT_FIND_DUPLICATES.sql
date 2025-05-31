--Check whetehr the table 'Orders' contains any dubplicate rows
SELECT 
* 
FROM (
SELECT
OrderID,
COUNT(*) OVER(PARTITION BY OrderID) CheckPK
FROM Sales.OrdersArchive
)t WHERE CheckPK > 1 
