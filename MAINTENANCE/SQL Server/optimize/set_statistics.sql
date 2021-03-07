SET STATISTICS IO, TIME ON;

SELECT [SalesOrderID] ,[CarrierTrackingNumber] ,[OrderQty] ,[ProductID], [UnitPrice] ,[ModifiedDate]
FROM [AdventureWorks2017].[Sales].[SalesOrderDetail]
WHERE [ModifiedDate] > '2012/01/01' AND [ProductID] = 772;