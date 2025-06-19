--Stored Procedure Basics

-- Step 1: Write a Query
-- For US customers find the total number of customers and the average scores

SELECT 
COUNT(CustomerID) AS total_customers,
AVG(score) AS avg_scores
FROM Sales.Customers
WHERE Country = 'USA' 

--step 2:  Turning the Query Into a Store Procedure
CREATE PROCEDURE GetCustomerSummary AS
BEGIN 
SELECT 
COUNT(CustomerID) AS total_customers,
AVG(score) AS avg_scores
FROM Sales.Customers
WHERE Country = 'USA' 
END

/* On object explorer we find the in programmability under SalesDB,
the stored procedure is created 'dbo.GetCustomerSummary' */

--Step 3: Execute the Stored Procedure
EXEC GetCustomerSummary