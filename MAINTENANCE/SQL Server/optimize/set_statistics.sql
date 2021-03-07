SET STATISTICS IO, TIME ON;

USE AdventureWorks2017
GO

SELECT [SalesOrderID] ,[CarrierTrackingNumber] ,[OrderQty] ,[ProductID], [UnitPrice] ,[ModifiedDate]
FROM [AdventureWorks2017].[Sales].[SalesOrderDetail]
WHERE [ModifiedDate] > '2012/01/01' AND [ProductID] = 772;

CREATE NONCLUSTERED INDEX [IX_SalesOrderDetail_ProductID] ON [Sales].[SalesOrderDetail]
(
    [ProductID] ASC
)
WITH (DROP_EXISTING = on);
go

CREATE NONCLUSTERED INDEX [IX_SalesOrderDetail_ProductID]
ON [Sales].[SalesOrderDetail] ([ProductID],[ModifiedDate])
INCLUDE ([CarrierTrackingNumber],[OrderQty],[UnitPrice])
WITH (DROP_EXISTING = on);
GO