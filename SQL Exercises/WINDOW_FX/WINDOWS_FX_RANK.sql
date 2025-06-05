--Rank each order based on their sales from highest to lowest, 
--additionally provide details such as order id & order date

SELECT 
	ORDERID,
	OrderDate,
	Sales,	
	RANK() OVER(ORDER BY Sales DESC)   [Rank]
FROM SAles.Orders
