--find the highest & lowest sales across all orders
--and the highest & lowest sales for each product. 
--Additionally, provide details such as order ID and order date. 

SELECT
OrderID,
OrderDate,
ProductID,
Sales,
MAX(sales) OVER() HighestSales,
MIN(sales) OVER() LowestSales,
MAX(sales) OVER(PARTITION BY PRODUCTID) HighestSalesProd,
MIN(sales) OVER(PARTITION BY PRODUCTID) LowestSalesProd
FROM Sales.Orders