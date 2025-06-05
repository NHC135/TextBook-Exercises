--Find the lowest and highest sales for each product
--FInd the difference in slaes between the current and the lowest sales
SELECT 
	OrderID, 
	ProductID,
	Sales, 
	FIRST_VALUE(Sales) OVER(PARTITION BY PRODUCTID ORDER BY Sales DESC) AS HighestSales,
	FIRST_VALUE(Sales) OVER(PARTITION BY PRODUCTID ORDER BY Sales) AS LowestSales,
	LAST_VALUE(Sales) OVER(PARTITION BY PRODUCTID ORDER BY Sales ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING)  AS LowestSalesFrameClause,
	MIN(Sales) OVER(PARTITION BY PRODUCTID) AS LowestSalesMIN,
	MAX(Sales) OVER(PARTITION BY PRODUCTID) AS LowestSalesMAX,
	Sales - FIRST_VALUE(Sales) OVER(PARTITION BY PRODUCTID ORDER BY Sales) AS SalesDifference
FROM SALES.ORDERS