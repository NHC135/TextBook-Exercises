--Load Balancing in ETL: Equalizing Load
--In order to export the data, divid the orders into two groups

SELECT 
NTILE(2) OVER(ORDER BY OrderID) Buckets,
*
FROM SALES.Orders
