--INDEX MANAGEMENT
/*
1. Monitor Index Usage: check if indexes are being used or unused to check for storage optimizations
2. Monitor missing indexes
3. Monitor duplicate indexes
4. Update Statistics
5. Monitor Fragmentations
*/

--List all indexes on a specific tabke
sp_helpindex 'Sales.DBCustomers'

--Monitor Index Usage
SELECT 
	tbl.name AS TableName,
	idx.name AS IndexName,
	idx.type_desc AS IndexType, 
	idx.is_primary_key AS IsPrimaryKey,
	idx.is_unique AS IsUnique,
	idx.is_disabled AS IsDisabled,
	s.user_seeks AS UserSeeks,
	s.user_scans AS UserScans, 
	s.user_lookups AS UserLookups, 
	s.user_updates AS UserUpdates, 
	COALESCE(s.last_user_seek,s.last_user_scan) LastUpdate
FROM sys.indexes idx
JOIN sys.tables tbl 
ON	 idx.object_id = tbl.object_id
LEFT JOIN sys.dm_db_index_usage_stats s
ON   s.index_id = idx.index_id
AND  s.index_id = idx.object_id
ORDER BY tbl.name, idx.name

SELECT * FROM sys.dm_db_index_usage_stats
