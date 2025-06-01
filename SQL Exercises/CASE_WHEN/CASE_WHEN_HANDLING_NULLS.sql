/* FInd the average scores of customers asnd treat NULLs as 0 AND additonal 
provide details such CUSTOMERID & LastName */

SELECT 
	CustomerID,

	LastName,
	CASE 
		WHEN LastName IS NULL THEN ''
		ELSE LastName
	END AS LastName,

	Score,
	CASE 
		WHEN Score IS NULL THEN 0
		ELSE Score
	END ScoreClean,

avg(score) OVER() avgCustomer,

AVG(CASE 
		WHEN Score IS NULL THEN 0
		ELSE Score
	END) OVER() [AVGCustomer2]
FROM Sales.Customers