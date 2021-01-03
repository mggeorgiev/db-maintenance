select * from V$SYSAUX_OCCUPANTS;

SELECT DISTINCT owner
FROM dba_segments
WHERE tablespace_name = 'SYSTEM';

SELECT OWNER,SEGMENT_NAME,SEGMENT_TYPE,EXTENTS,BLOCKS,BYTES/1024/1024 as MB
FROM DBA_SEGMENTS
WHERE TABLESPACE_NAME='SYSTEM'
ORDER BY BYTES DESC;

select  tablespace_name as current_aud$_ts
from dba_segments
where (owner = 'SYS' and segment_name = 'AUD$');

select parameter_value as current_aud$_destination_ts
from DBA_AUDIT_MGMT_CONFIG_PARAMS
where parameter_name = 'DB AUDIT TABLESPACE'
  and audit_trail = 'STANDARD AUDIT TRAIL';