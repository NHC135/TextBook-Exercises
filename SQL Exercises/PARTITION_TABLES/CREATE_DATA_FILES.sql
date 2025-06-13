--step 3: Add .ndf Files to Each Filegroup

ALTER DATABASE SalesDB ADD FILE
(
	NAME = P_2023, --LOGICAL NAME 
	FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\P_2023.ndf'
) TO FILEGROUP FG_2023;


ALTER DATABASE SalesDB ADD FILE
(
	NAME = P_2024, --LOGICAL NAME 
	FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\P_2024.ndf'
) TO FILEGROUP FG_2024;


ALTER DATABASE SalesDB ADD FILE
(
	NAME = P_2025, --LOGICAL NAME 
	FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\P_2025.ndf'
) TO FILEGROUP FG_2025;


ALTER DATABASE SalesDB ADD FILE
(
	NAME = P_2026, --LOGICAL NAME 
	FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\P_2026.ndf'
) TO FILEGROUP FG_2026;

--CHECK THE META DATA

SELECT 
	fg.name AS FilegroupName, 
	mf.name AS LogicalFileName, 
	mf.physical_name AS PhysicalFilePath, 
	mf.size / 128 AS SizeInMB
FROM sys.filegroups fg
JOIN sys.master_files mf ON fg.data_space_id = mf.data_space_id
WHERE mf.database_id = DB_ID('SalesDB');

