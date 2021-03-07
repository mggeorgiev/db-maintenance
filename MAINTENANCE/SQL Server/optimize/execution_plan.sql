USE AdventureWorks2017;
GO

SET SHOWPLAN_ALL ON;
GO

SELECT BusinessEntityID
FROM HumanResources.Employee
WHERE NationalIDNumber = '14417807';
GO

SET SHOWPLAN_ALL OFF;
GO