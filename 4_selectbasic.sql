-- All columns 
SELECT *
FROM tblCustomer;


-- Specific columns
SELECT 
	CustomerFirstName,
	CustomerMiddleName,
	CustomerLastName,
	Location
FROM tblCustomer;


-- Aliases 
SELECT 
	CustomerNumber,
	Amount as 'Customer Spending',
	DateOfTransaction
FROM tblTransaction;

