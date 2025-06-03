-- Find the top highest sales for each product
SELECT * 
FROM
(
	SELECT 
		OrderDate, 
		ProductId,
		sales,
		ROW_NUMBER() OVER(PARTITION BY PRODUCTID ORDER BY SALES DESC) Highest_Sales_for_Product
	FROM SALES.Orders
)t
WHERE Highest_Sales_for_Product = 1