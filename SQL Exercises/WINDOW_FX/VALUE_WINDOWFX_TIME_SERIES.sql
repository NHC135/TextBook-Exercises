--Analyze the Month over month performance by finding the percentage change 
-- in sales between the current and previous months
SELECT 
*,
TotalSalesPerMonth - TotalSalesPreviousMonth AS MoM_Change,

round(CAST((TotalSalesPerMonth - TotalSalesPreviousMonth) AS FLOAT)/ TotalSalesPreviousMonth * 100, 1)AS MoMPerc

FROM 
(
SELECT 
	MONTH(OrderDate) AS Months,
	SUM(Sales) AS TotalSalesPerMonth,
	LEAD(SUM(Sales)) OVER(ORDER BY MONTH(OrderDate)) AS TotalSalesLeadingMonth,
	LAG(SUM(Sales)) OVER(ORDER BY MONTH(OrderDate)) AS TotalSalesPreviousMonth
FROM Sales.Orders
GROUP BY MONTH(OrderDate)
)t

