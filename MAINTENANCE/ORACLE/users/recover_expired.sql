--Source https://rajeevjhaoracle.wordpress.com/2014/06/19/how-to-recover-an-expired-user-account-in-oracle-database/

SELECT username, account_status, expiry_date
    FROM dba_users
    order by expiry_date;

--1. Create a user
--2. Expire it
--3. Alter user’s password with existing password to unexpired.

--1. Create an account named ‘RAJEEV’
CREATE USER RAJEEV IDENTIFIED BY “manager”;
SELECT username, account_status, expiry_date
 FROM dba_users
 WHERE username = ‘RAJEEV’;

--2. Expire it
ALTER USER RAJEEV PASSWORD EXPIRE;

--3. Alter user’s password with existing password to unexpired.
SELECT DBMS_METADATA.get_ddl ('USER', 'RAJEEV') FROM DUAL;

--replace create with alter
ALTER USER "RAJEEV" IDENTIFIED BY VALUES 'S:0EC74FEA53481A242255F5E7AF840C95110D335864816EA5E9A1B3BEDEA6;C8E54E643D09939E';

drop user rajeev cascade;