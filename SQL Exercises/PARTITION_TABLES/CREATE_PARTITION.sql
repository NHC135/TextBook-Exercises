--Step 1: Create a Partition Function, creating a logic stored in the database

CREATE PARTITION FUNCTION PartitionByYear (DATE)
AS RANGE LEFT FOR VALUES('2023-12-31', '2024-12-31', '2025-12-31')



-- Query lists all existing Paritition Function, the logic above will be stored in the sys schema

SELECT 
	name, 
	function_id, 
	type,
	type_desc, 
	boundary_value_on_right
FROM sys.partition_functions