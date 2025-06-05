--Use Case: OVERALL TOTAL, TOTAL PER GROUP, RUNNING TOTAL, AND ROLLING TOTAL
SELECT 
--OVERALL TOTAL
SUM(Sales) OVER() OverallTotal,
--TOTAL PER GROUP
SUM(Sales) OVER(PARTITION BY Product) AS TotalPerGroup,
--RUNNNING TOTAL 
SUM(Sales) OVER(PARTITION BY Product ORDER BY OrderDate) RunningTotal,
--Rolling Total progress over time in specified fixed window 
SUM(Sales) OVER(PARTITION BY Product ORDER BY OrderDate ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) RollingTotal
from sales.Orders