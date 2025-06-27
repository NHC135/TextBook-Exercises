--ERROR	Handling
 
EXEC GetCustomerSummary

ALTER PROCEDURE GetCustomerSummary @Country NVARCHAR(50) = 'USA'
AS
BEGIN

	DECLARE @TotalCustomers INT, @AvgScore FLOAT;

	-- ==============================
	-- Step 1: Prepare & Cleanup Data
	-- ==============================
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

	-- ==================================
	-- Step 2: Generating Summary Reports
	-- ==================================
	--Calculate Total customers and Average score for specific Country
		SELECT 
			@TotalCustomers = COUNT(CustomerID),
			@AvgScore = AVG(Score)
		FROM Sales.Customers
		WHERE Country = @Country;

		PRINT 'Total Customers from '+ @Country + ':' + CAST(@TotalCustomers AS NVARCHAR)
		PRINT 'Average Score from ' + @Country + ':' + CAST(@AvgScore AS NVARCHAR) 

	--Caculate total numebr of orders and total sales for specific country
		SELECT 
			COUNT(OrderID) AS Nr_of_Orders,
			SUM(Sales) AS Total_Sales,
			1/0 --Error
		FROM Sales.Orders AS o
		JOIN Sales.Customers AS c
		ON o.CustomerID = c.CustomerID
		WHERE c.Country = @Country;

	-- ======================
	-- Step 3: ERROR HANDLING
	-- ======================
	END TRY 
	BEGIN CATCH
		PRINT('An error has occurred');
		PRINT('ERROR message: ' + ERROR_MESSAGE()); 
		PRINT('ERROR Number: ' +CAST (ERROR_NUMBER() AS NVARCHAR));
		PRINT('ERROR Line: ' +CAST(ERROR_LINE() AS NVARCHAR));
		PRINT('ERROR Procedure: ' + ERROR_PROCEDURE());
	END CATCH 
END 
GO

EXEC GetCustomerSummary @Country = 'Germany'
 
