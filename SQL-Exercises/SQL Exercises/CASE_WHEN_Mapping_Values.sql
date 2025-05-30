--Retrieve employee details with gender (M to Male, F to Female) displayed as full text
SELECT 
EmployeeID,
Gender,
CASE 
	WHEN Gender = 'M' THEN 'Male'
	ELSE 'Female'
END AS GenderText
FROM Sales.employees	