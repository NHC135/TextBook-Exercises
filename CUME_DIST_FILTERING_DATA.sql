-- Find the products that fall within the highest 40% of the prices
SELECT 
*,
CONCAT(DistRank * 100,'%') DistRankPercent
FROM(
	SELECT 
		Product,
		Price,
		CUME_DIST() OVER(ORDER BY Price DESC) DistRank
	FROM Sales.Products
)t
WHERE DistRank <= .40V