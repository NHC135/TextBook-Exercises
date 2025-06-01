--Show the employee with the highest salaries
SELECT * 

FROM (
	SELECT 
		EmployeeID,
		FirstName, 
		LastName,
		Salary,
		MAX(salary) OVER() HighestSalary
	FROM Sales.Employees
)t
WHERE HighestSalary = Salary 