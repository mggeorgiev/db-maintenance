USE [lego]
GO
DBCC SHRINKFILE (N'lego_log' , 0, TRUNCATEONLY)
GO