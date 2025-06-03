--Find the top highest sales for each product: Analysis the top performers to do targeted marketing
SELECT*
FROM(
SELECT 
OrderId,
ProductID,	
Sales,
Row_NUMBER() OVER(PARTITION BY PRODUCTID ORDER BY SALES) RankByProduct
FROM SALES.Orders
)T 
WHERE RankByProduct = 1