--Identify duplicate rows in the table 'Orders Archive' 
--and return a clean result without any duplicates
SELECT * 
FROM
(SELECT 
ROW_NUMBER() OVER(PARTITION BY OrderID ORDER BY CreationTime DESC) rn,
*
FROM SALES.OrdersArchive
)t
WHERE rn = 1 
--rn > 1 To return duplicate rows