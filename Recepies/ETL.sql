--EC
SELECT * FROM EC.INCOME_LOG
WHERE YEAR_INC = 2019
AND MONTH_INC > 1;

SELECT * FROM EC.EXPENSES_LOG
WHERE YEAR_EXP = 2019
AND MONTH_EXP > 1;

--CEZ
SELECT * FROM UTILITIES.CEZ
WHERE TIME_STAMP > TO_DATE('2019-01-1', 'YYYY-MM-DD');

--FINANCE
SELECT * FROM FINANCE.CC_CREDIT_CARD
WHERE "date_time" > TO_DATE('2019-05-04', 'YYYY-MM-DD')
ORDER BY "date_time", "value_date";

--PRE-RP
SELECT * FROM FINANCE.RP_RECURRING_PAYMENTS
WHERE TIME_STAMP > TO_DATE('2019-05-23','YYYY-MM-DD')
ORDER BY TIME_STAMP;

--Cars FUEL
SELECT * FROM CARS.FUEL
WHERE DATE_COL > TO_DATE('2019-04-20', 'YYYY-MM-DD')
ORDER BY DATE_COL DESC;

--Cars FUEL
SELECT * FROM CARS.MAINTENANCE
WHERE DATE_COL > TO_DATE('2019-04-20', 'YYYY-MM-DD')
ORDER BY DATE_COL DESC;
