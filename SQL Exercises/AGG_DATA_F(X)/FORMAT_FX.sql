--FInd the average shipping duration in days for each month
SELECT 
FORMAT(orderdate, 'MMM') AS OrderDate,
AVG(DATEDIFF(DAY, OrderDate, ShipDate)) AS AVERAGE_SHIPPING_DURATION
FROM Sales.Orders
GROUP BY FORMAT(orderdate, 'MMM')