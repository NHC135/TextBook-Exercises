--Stored procedures variables
--Placeholders used to pass vlaues as input from the caller to the procedure,
--allowing dynamic data to be processed.

--Execute the Stored Procedures
EXEC GetCustomerSummary

-- For German Customers find the total number of Customers and the Average Scores
ALTER PROCEDURE GetCustomerSummary @Country NVARCHAR(50) = 'USA'
AS
BEGIN

DECLARE @TotalCustomers INT, @AvgScore FLOAT;

SELECT 
	COUNT(CustomerID) total_customers,
	AVG(Score) avg_score
FROM Sales.Customers
WHERE Country = @Country;

PRINT 'Total Customers from '+ @Country + ':' + CAST(@TotalCustomers AS NVARCHAR)
PRINT 'Average Score from ' + @Country + ':' + CAST(@AvgScore AS NVARCHAR) 


SELECT 
	COUNT(OrderID) AS Nr_of_Orders,
	SUM(Sales) AS Total_Sales
FROM Sales.Orders AS o
JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
WHERE c.Country = @Country;

END

EXEC GetCustomerSummary @Country = 'Germany' 

EXEC GetCustomerSummary 


