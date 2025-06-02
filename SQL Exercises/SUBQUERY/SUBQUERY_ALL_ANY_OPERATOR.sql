--ANY Operator or ALL
--Find female employees whose salaries are greater than the salaries of any/all male employees
--Want to use All or Any interchangably for the desired result
SELECT *
FROM Sales.Employees
WHERE Gender = 'F' AND 
SALARY > ANY (SELECT Salary FROM SALES.Employees WHERE Gender = 'M')