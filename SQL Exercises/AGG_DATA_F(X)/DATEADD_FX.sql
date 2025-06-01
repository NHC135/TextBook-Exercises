SELECT
OrderDate,
DATEADD(year, 3, orderdate) AS [3_years_later],
DATEADD(Month, -4, orderdate) AS [4_months_ago],
DATEADD(Day, -10, orderdate) AS [10_days_before]
FROM SALES.Orders
