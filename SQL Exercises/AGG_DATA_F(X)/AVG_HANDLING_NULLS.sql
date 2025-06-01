--Find the average scores of customers. 
--Additionally provide details such as Customer ID and Last Name

SELECT 
CustomerID,
LastName, 
Score,
Coalesce(score, 0) CustomerScores,
AVG(score) OVER() AS AvgScores,
AVG(Coalesce(score, 0)) OVER() AS AvgScoreWithoutNull
FROM Sales.Customers