USE master;
GO

--Enable Query store
ALTER DATABASE AdventureWorks2017 SET QUERY_STORE = ON;
GO

ALTER DATABASE AdventureWorks2017 SET QUERY_STORE (OPERATION_MODE = READ_WRITE);
GO

--Set compatibility level to SQL server 2008
ALTER DATABASE AdventureWorks2017 SET COMPATIBILITY_LEVEL = 100;
GO

--Set compatibility level to SQL server 2019 
USE master;
GO

ALTER DATABASE AdventureWorks2017 SET COMPATIBILITY_LEVEL = 150;
GO