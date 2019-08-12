show parameter shared_pool;

select * from v$sga;

select 
   name, 
   sum(bytes) 
from 
   v$sgastat 
where 
  pool='large pool' 
group by 
   rollup(name);
  
select * from   
   (select 
      pool, 
      name, 
      bytes/1024/1024/1024 GB 
   from 
      v$sgastat 
   order by 
      GB  desc); 

 SELECT * FROM v$SGASTAT;
 
SELECT SUM(BYTES)/(1024*1024*1024) FROM V$DATAFILE;

SELECT SUM(BYTES)/(1024*1024*1024) FROM V$LOGFILE a, V$LOG b
WHERE a.group#=b.group#;

SELECT SUM(BYTES)/(1024*1024*1024) FROM V$TEMPFILE WHERE
status='ONLINE';

--ALTER SYSTEM SET SHARED_POOL_SIZE=400M SCOPE=BOTH;

SELECT namespace, pins, pinhits, reloads, invalidations
  FROM V$LIBRARYCACHE
 ORDER BY namespace;

-- Viewing the Amount of Free Memory in the Shared Pool
SELECT *
  FROM V$SGASTAT
 WHERE name = 'free memory'
   AND pool = 'shared pool';