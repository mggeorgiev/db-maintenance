USE AdventureWorks2017
GO

SET STATISTICS IO, TIME ON;

DECLARE @SalesPersonID INT;

SELECT @SalesPersonID = 277;

SELECT SalesOrderId, OrderDate
FROM Sales.SalesOrderHeader
WHERE SalesPersonID= @SalesPersonID
OPTION (RECOMPILE);