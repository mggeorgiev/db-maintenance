SELECT User FROM mysql.user;
SELECT CONCAT(QUOTE(user),'@',QUOTE(host)) UserAccount FROM mysql.user;