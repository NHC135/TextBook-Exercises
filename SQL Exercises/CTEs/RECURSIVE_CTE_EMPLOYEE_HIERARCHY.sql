--Show the employee hierarchy by displaying each employee's level within the organization

WITH CTE_Emp_Hierarchy AS
(
--ANCHOR QUERY: First Row, The CEO
	SELECT
		EmployeeID,
		FirstName,
		ManagerID,
		1 AS Level
	FROM Sales.Employees
	WHERE ManagerID IS NULL 

	UNION ALL

	--RECURSIVE QUERY: To get the other workers
	SELECT
		e.EmployeeID,
		e.FirstName,
		e.ManagerID,
		Level + 1
	FROM Sales.Employees AS e
	INNER JOIN CTE_Emp_Hierarchy AS ceh
	ON e.ManagerID = ceh.EmployeeID
)
--MAIN QUERY
SELECT 
* 
FROM CTE_Emp_Hierarchy