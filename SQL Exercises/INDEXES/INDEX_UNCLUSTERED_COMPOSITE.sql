--Unclustered Index: creating index on a commonly used Query for faster retrival

/*
CREATE NONCLUSTERED INDEX idx_DBCustomers_CountryScore
ON Sales.DBCustomers (LastName)

CREATE NONCLUSTERED INDEX idx_DBCustomers_FirstName
ON Sales.DBCustomers (FirstName)
*/

--COMPOSITE INDEX
SELECT 
*
FROM Sales.DBCustomers 
WHERE country = 'USA' AND Score > 500

CREATE UNCLUSTERED INDEX idx_DBCustomers_CountryScore
ON Sales.DBCustomers (Country, Score)

--Left most prefix Rule:
--Index works only if  your query filters start from the first column in the index and follow its order.
