SELECT TOP (10) CustomerNumber
      ,CustomerFirstName
      ,CustomerMiddleName
      ,CustomerLastName
FROM tblCustomer;

SELECT * FROM tblCustomer
WHERE not CustomerNumber>200;

SELECT * FROM tblCustomer
WHERE CustomerNumber!=200;

SELECT * FROM tblCustomer
WHERE CustomerNumber>=200 AND CustomerNumber<=209;

SELECT * FROM tblCustomer
WHERE NOT (CustomerNumber>=200 AND CustomerNumber<=209);

SELECT * FROM tblCustomer
WHERE CustomerNumber<200 OR CustomerNumber>209;

SELECT * FROM tblCustomer
WHERE CustomerNumber BETWEEN 200 AND 209;

SELECT * FROM tblCustomer
WHERE CustomerNumber NOT BETWEEN 200 AND 209;

SELECT * FROM tblCustomer
WHERE CustomerNumber IN (200, 204, 208);

