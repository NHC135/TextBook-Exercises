--Monitoring Duplicate Indexes

SELECT 
	tbl.name AS TableName, 
	Col.name AS IndexColumn, 
	idx.name AS IndexName, 
	idx.type_desc AS IndexType,
	count(*) over(PARTITION BY tbl.name, col.name) ColumnCount --checks for duplicates if more than one
FROM sys.indexes idx
JOIN sys.tables tbl	ON idx.object_id = tbl.object_id
JOIN sys.index_columns ic ON idx.object_id = ic.object_id AND idx.index_id = ic.index_id
JOIN sys.columns col ON ic.object_id = col.object_id AND ic.column_id = col.column_id
ORDER BY ColumnCount DESC