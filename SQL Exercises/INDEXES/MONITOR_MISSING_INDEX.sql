--Monitoring missing indexes / Evaluate the recommendations before creating indexes

SELECT 
	fs.SalesOrderNumber,
	dp.EnglishProductName, 
	dp.Color
FROM		FactInternetSales AS fs
INNER JOIN DimProduct dp 
ON			fs.ProductKey = dp.ProductKey
WHERE dp.Color = 'Black' 
AND fs.OrderDateKey BETWEEN 2010229 AND 20101231

SELECT * FROM sys.dm_db_missing_index_details