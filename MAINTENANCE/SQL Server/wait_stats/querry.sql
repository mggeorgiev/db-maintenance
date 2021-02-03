-- data is tracked cumulatively since sql server started up
SELECT * from sys.dm_os_wait_stats
order by wait_time_ms desc;
Go

--storage bottlenecks
SELECT * from sys.dm_io_virtual_file_stats(null, null);
GO

select top 100 * from msdb.dbo.backupset
order by 1 desc;

--BrentOzar
sp_BlitzFirst @SinceStartup = 1
GO



exec sp_BlitzFirst @SinceStartup = 1, @ExpertMode=1, @Seconds=60;
Go