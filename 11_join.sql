-- tblCustomer does not have 3 to 122, max number is 1125
-- tblTransaction max number is 1125

-- Inner join -- 898 rows
-- Only customers that exist in both tables
SELECT 
	A.CustomerNumber,
	B.CustomerNumber,
	CustomerFirstName,
	CustomerLastName,
	SUM(Amount) AS TotalTransactionAmount
FROM tblCustomer AS A
JOIN tblTransaction AS B
	ON A.CustomerNumber = B.CustomerNumber
GROUP BY A.CustomerNumber, B.CustomerNumber, CustomerFirstName, CustomerLastName
ORDER BY A.CustomerNumber;


-- Left join (inclusive) -- 1005 rows
-- Customers exist in both tables + customers in table A not in B
SELECT 
	A.CustomerNumber,
	B.CustomerNumber,
	CustomerFirstName,
	CustomerLastName,
	SUM(Amount) AS TotalTransactionAmount
FROM tblCustomer AS A
LEFT JOIN tblTransaction AS B
	ON A.CustomerNumber = B.CustomerNumber
GROUP BY A.CustomerNumber, B.CustomerNumber, CustomerFirstName, CustomerLastName
ORDER BY A.CustomerNumber;


-- Left join (exclusive) - 107 rows
-- Customer in Table A, but not in table B
SELECT 
	A.CustomerNumber,
	B.CustomerNumber,
	CustomerFirstName,
	CustomerLastName,
	SUM(Amount) AS TotalTransactionAmount
FROM tblCustomer AS A
LEFT JOIN tblTransaction AS B
	ON A.CustomerNumber = B.CustomerNumber
WHERE B.CustomerNumber IS NULL
GROUP BY A.CustomerNumber, B.CustomerNumber, CustomerFirstName, CustomerLastName
ORDER BY A.CustomerNumber;


-- Right join (inclusive) -- 1002 rows
-- Customers exist in both tables + customer in table B not in A (3 to 122)
SELECT 
	A.CustomerNumber,
	B.CustomerNumber,
	CustomerFirstName,
	CustomerLastName,
	SUM(Amount) AS TotalTransactionAmount
FROM tblCustomer AS A
RIGHT JOIN tblTransaction AS B
	ON A.CustomerNumber = B.CustomerNumber
GROUP BY A.CustomerNumber, B.CustomerNumber, CustomerFirstName, CustomerLastName
ORDER BY A.CustomerNumber;


-- Right join (exclusive) - 104 rows
-- Customer in Table B, but not in A (3 to 122)
SELECT 
	A.CustomerNumber,
	B.CustomerNumber,
	CustomerFirstName,
	CustomerLastName,
	SUM(Amount) AS TotalTransactionAmount
FROM tblCustomer AS A
RIGHT JOIN tblTransaction AS B
	ON A.CustomerNumber = B.CustomerNumber
WHERE A.CustomerNumber IS NULL
GROUP BY A.CustomerNumber, B.CustomerNumber, CustomerFirstName, CustomerLastName
ORDER BY A.CustomerNumber;


-- Full join (inclusive) -- 1109 rows 
-- Equivalent to Left join inclusive + Right join exclusive
-- Equivalent to Right join inclusive + Left join exclusive
SELECT 
	A.CustomerNumber,
	B.CustomerNumber,
	CustomerFirstName,
	CustomerLastName,
	SUM(Amount) AS TotalTransactionAmount
FROM tblCustomer AS A
FULL JOIN tblTransaction AS B
	ON A.CustomerNumber = B.CustomerNumber
GROUP BY A.CustomerNumber, B.CustomerNumber, CustomerFirstName, CustomerLastName
ORDER BY A.CustomerNumber;


-- Full join (exclusive)
-- Equivalent to Left Join Exclusive + Right Join Exclusive
SELECT 
	A.CustomerNumber,
	B.CustomerNumber,
	CustomerFirstName,
	CustomerLastName,
	SUM(Amount) AS TotalTransactionAmount
FROM tblCustomer AS A
FULL JOIN tblTransaction AS B
	ON A.CustomerNumber = B.CustomerNumber
WHERE A.CustomerNumber IS NULL or B.CustomerNumber IS NULL
GROUP BY A.CustomerNumber, B.CustomerNumber, CustomerFirstName, CustomerLastName
ORDER BY A.CustomerNumber;


-- Join more than 1 tables
-- total sales of each Location
SELECT 
	L.Location as Area,
	L.LocationHead as Manager,
	SUM(Amount) as TotalTransactionAmount
FROM tblLocation AS L
LEFT JOIN tblCustomer AS C
	ON L.Location = C.Location
LEFT JOIN tblTransaction AS T
	ON C.CustomerNumber = T.CustomerNumber
GROUP BY L.Location, L.LocationHead;


