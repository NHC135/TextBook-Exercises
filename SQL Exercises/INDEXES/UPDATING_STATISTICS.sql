--Updating Statistics

SELECT 
SCHEMA_NAME(t.schema_id) AS SchemaName, 
t.name AS TableName,
s.name AS StatissticName, 
sp.last_updated AS LastUpdate,
DATEDIFF(day, sp.last_updated, GETDATE()) AS LastUpdateDat, 
sp.rows AS 'Rows', 
sp.modification_counter AS ModificationsSinceLastUpdate
FROM sys.stats AS s
JOIN sys.tables AS t
ON s.object_id = t.object_id
CROSS APPLY sys.dm_db_stats_properties(s.object_id, s.stats_id) AS sp 
ORDER BY 
sp.modification_counter DESC;

--updating a single statistic
UPDATE STATISTICS Sales.DBCustomers _WA_Sys_0000000C_3D5E1FD2

--udpating the rest of the statistics
UPDATE STATISTICS Sales.DBCustomers

--updating the whole Database Stat
EXEC sp_updatestats