 
EXEC GetCustomerSummary

ALTER PROCEDURE GetCustomerSummary @Country NVARCHAR(50) = 'USA'
AS
BEGIN

DECLARE @TotalCustomers INT, @AvgScore FLOAT;

--Prepare & Cleanup Data
SELECT 1 FROM Sales.Customers WHERE Score IS NULL AND Country = 'Germany' 
IF EXISTS (SELECT 1 FROM Sales.Customers WHERE Score IS NULL AND Country = @Country)
BEGIN 
	PRINT('Updating NULL Scores to 0') 
	UPDATE Sales.Customers
	SET Score = 0
	WHERE Score IS NULL AND Country = @Country;
END

ELSE
BEGIN
	PRINT('No NULL Scores found')
END;

--Generating Reports
 
SELECT 
	@TotalCustomers = COUNT(CustomerID),
	@AvgScore = AVG(Score)
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
 


