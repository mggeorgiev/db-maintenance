select * from v$database;

SELECT * FROM v$archived_log; -- Information about archived redo logs.
SELECT * FROM v$parameter; -- Shows the location of the flash recovery area where archived redo logs are created.
SELECT * FROM v$log_history;