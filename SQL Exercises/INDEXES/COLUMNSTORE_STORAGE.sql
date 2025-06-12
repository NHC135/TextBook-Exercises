USE AdventureWorksDW2022
--HEAP STRUCTURE Storage = 9.633 MB; fast inserts (For staging/ intermediate Tables) 
SELECT *
INTO FactInternetSales_HP
FROM FactInternetSales 

-- RowStore Storage = 9.633 MB
SELECT *
INTO FactInternetSales_RS
FROM  FactInternetSales

CREATE CLUSTERED INDEX idx_FactInternetSales_RS_PK
ON FactInternetSales_RS (SalesOrderNumber, SalesOrderLineNumber)

-- ColumnStore Storage = 1.461 MB; For analytical Queries REduce Size of large tables.
SELECT *
INTO FactInternetSales_CS
FROM  FactInternetSales

CREATE CLUSTERED COLUMNSTORE INDEX idx_FactInternetSales_CS_PK
ON FactInternetSales_CS 