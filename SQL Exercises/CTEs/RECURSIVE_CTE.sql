-- Generate a sequence of numbers from 1 - 20 Recursive CTEs
WITH Series AS (
--Anchor Query
	SELECT
	1 as MYNumber
	UNION ALL 
--RECURSIVE QUERY
	SELECT
	MYNumber + 1
	FROM SERIES
	WHERE MYNumber < 1000
)
--Main Query
SELECT * 
FROM Series
OPTION(MAXRECURSION 5000)
