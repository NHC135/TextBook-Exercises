-- checking the performance of the No Partition using execution play

SELECT *
FROM Sales.Orders_NoPartition
WHERE OrderDate IN ('2026-01-01', '2025-12-31')

-- checking the performance of the partition using execution play

SELECT *
FROM Sales.Orders_Partitioned
WHERE OrderDate IN ('2026-01-01', '2025-12-31')