--Monitoring index Fragmentation

SELECT *
FROM sys.dm_db_index_physical_stats (DB_ID(), NULL, NULL, NULL, 'LIMITED') 

SELECT * 
FROM sys.dm_db_index_physical_stats(DB_ID(), NULL, NULL, NULL, 'LIMITED') AS s 
INNER JOIN sys.tables tbl
ON s.object_id = tbl.object_id
INNER JOIN sys.indexes AS idx
ON idx.object_id = s.object_id 
ORDER BY avg_fragmentation_in_percent DESC

--IF idx_Customers_CS_Country had a fragmentation of around 15% then 
ALTER INDEX idx_Customers_CS_Country ON Sales.Customers REORGANIZE

--IF there was a fragmentation around 50% then
ALTER INDEX idx_Customers_CS_Country ON Sales.Customers REBUILD