--Find the deviation of each sales from the minimum and maximum sales amounts

SELECT 
OrderID,
ProductID, 
Sales, 
MIN(Sales) OVER() MinSales,
MAX(Sales) OVER() MaxSales,
MAX(Sales) OVER()- sales  DeviationMaxSales,
sales - MIN(Sales) OVER() DeviationMinSales
FROM Sales.Orders