--Create/Drop a Clustered Index 
/*
SELECT *
INTO Sales.DBCustomers
FROM Sales.Customers
*/

/*
SELECT *
FROM Sales.DBCustomers
WHERE CustomerID = 1
*/

CREATE CLUSTERED INDEX idx_DBCustomers_CustomerID
ON Sales.DBCustomers (CustomerID)

DROP INDEX idx DBCustomers CustomerID ON Sales.DBCustomers 