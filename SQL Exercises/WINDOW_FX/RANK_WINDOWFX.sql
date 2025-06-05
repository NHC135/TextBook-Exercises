--Rank the orders based on their sales from highest to lowest

SELECT
OrderID,
ProductID,
Sales,
ROW_NUMBER() OVER(ORDER BY Sales DESC) Row_NumberBySales,
--no skipping and duplicates: Unique Rank, Doesn't handle ties, No Gaps in Rank
RANK()	OVER(ORDER BY Sales DESC) Rank_BySales,
--Yes duplicates and skipping: Shared Rank, Handles Ties, Gaps in Rank
Dense_RANK() OVER(ORDER BY Sales DESC) DenseRank_BySales
--Yes duplicates but no skips: Shared Rank, Handles Ties. No Gaps in Rank
FROM SALES.Orders