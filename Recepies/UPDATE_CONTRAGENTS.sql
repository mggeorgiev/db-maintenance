--Find Contragent ID
SELECT LEGAL_NAME, ID_CONTRAGENT, CONTRAGENT_COL FROM FINANCE.CC_CONTRAGENTS
WHERE LEGAL_NAME LIKE '%MOSH%'

--Picker
SELECT * FROM FINANCE.CC_CONTRAGENTS
WHERE LEGAL_NAME LIKE '%MOSH%'
OR LEGAL_NAME LIKE '%SOFT%'
ORDER BY CONTRAGENT_COL;

--update contragent
UPDATE FINANCE.CC_CONTRAGENTS
SET ID_CONTRAGENT = (SELECT DISTINCT ID_CONTRAGENT FROM FINANCE.CC_CONTRAGENTS WHERE LEGAL_NAME LIKE '%DEPOT%'),
CONTRAGENT_COL = (SELECT DISTINCT CONTRAGENT_COL FROM FINANCE.CC_CONTRAGENTS WHERE LEGAL_NAME LIKE '%DEPOT%')
WHERE LEGAL_NAME = 'STEP - ELSI OOD SOFIA BGR'

    UPDATE FINANCE.CC_CREDIT_CARD
        SET 
            ID_CONTRAGENT = (SELECT ID_CONTRAGENT FROM FINANCE.CC_CONTRAGENTS WHERE FINANCE.CC_CONTRAGENTS.LEGAL_NAME = "contragent")
--Append to tyhe back of the list
INSERT INTO FINANCE.CC_CLASSIFIER (ID_CONTRAGENT) 
SELECT MAX(ID_CONTRAGENT)+1 FROM FINANCE.CC_CLASSIFIER;

UPDATE FINANCE.CC_CONTRAGENTS
SET ID_CONTRAGENT = (SELECT MAX(ID_CONTRAGENT) FROM FINANCE.CC_CONTRAGENTS),
CONTRAGENT_COL = 'HUMBLEBUNDL'
WHERE CONTRAGENT_ID=(SELECT CONTRAGENT_ID FROM CC_CONTRAGENTS_EMP WHERE LEGAL_NAME LIKE '%HUMBLEBUNDL%');

SELECT "contragent" FROM FINANCE.CC_CREDIT_CARD
WHERE ID_CONTRAGENT IS NULL
AND "contragent" IS NOT NULL;