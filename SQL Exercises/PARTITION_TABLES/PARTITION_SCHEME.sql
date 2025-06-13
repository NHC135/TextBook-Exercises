--STEP 4: Partition Scheme

CREATE PARTITION SCHEME SchemePartitionByYear
AS PARTITION PartitionByYear
TO (FG_2023, FG_2024, FG_2025, FG_2026) 

-- QUERY lists all Partition Scheme
SELECT 
ps.name AS PartitionSchemeName, 
pf.name AS PartitionFunctionName, 
ds.destination_id AS PartitionNumber, 
fg.name AS FilegroupName
FROM sys.partition_schemes ps
JOIN sys.partition_functions pf ON ps.function_id = pf.function_id
JOIN sys.destination_data_spaces ds ON ps.data_space_id = ds.partition_scheme_id
JOIN sys.filegroups fg ON ds.data_space_id = fg.data_space_id