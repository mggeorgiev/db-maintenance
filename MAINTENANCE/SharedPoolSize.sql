show parameter shared_pool;

select * from v$sga;

--Large Pool
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
      round(bytes/1024/1024,0) MB 
   from 
      v$sgastat 
   order by 
      MB  desc); 

--OR
Select 
	POOL, Name, Round(bytes/1024/1024,0) Memory_In_MB
From V$sgastat
ORDER BY Memory_In_MB DESC;


 SELECT * FROM v$SGASTAT;
 
SELECT SUM(BYTES)/(1024*1024*1024) GB FROM V$DATAFILE;

SELECT SUM(BYTES)/(1024*1024*1024) GB FROM V$LOGFILE a, V$LOG b
WHERE a.group#=b.group#;

SELECT SUM(BYTES)/(1024*1024*1024) GB FROM V$TEMPFILE WHERE
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

select sum(value)/1024/1024/1024 Total_size_In_GB from V$sga;

select round(sum(value)/1024/1024,0) Total_size_In_MB from V$sga;

Select 
	POOL, Round(bytes/1024/1024,0) Free_Memory_In_MB
From V$sgastat
Where Name Like '%free memory%';


 Select sum(bytes/1024/1024) Free_Memory_In_MB
 From V$sgastat
 Where Name Like '%free memory%';

--Advisor
select * from v$sga_target_advice order by sga_size;

--The amount of memory allocated to each dynamic component is displayed using the V$MEMORY_DYNAMIC_COMPONENTS view.
SELECT  component, current_size, min_size, max_size
FROM    v$memory_dynamic_components
WHERE   current_size != 0;