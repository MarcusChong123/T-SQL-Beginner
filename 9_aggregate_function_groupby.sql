-- What if I want the total amount and the number 
-- of transaction of customer 100 to 199?

-- FROM table transaction
--		WHERE customer number between 100 and 199
--		GROUP BY customer number
--			SELECT customer number
--			SUM amount of transaction
--			COUNT number of transaction

SELECT 
	CustomerNumber,
	COUNT(AMOUNT) as NumberOfTransactions,
	SUM(AMOUNT) as TotalAmount
FROM tblTransaction
WHERE CustomerNumber BETWEEN 100 and 199
GROUP BY CustomerNumber



-- What if I want the total number of customers with date of birth > 19860101, 
-- segregated by Initial of their name?

-- FROM table customer
--		WHERE customer data of birth > 19860101
--		GROUP BY customer's Initial
--			SELECT Initial
--			COUNT number of rows

SELECT 
	LEFT(CustomerLastName,1) AS Initial, 
	COUNT(*) AS CountOfInitial
FROM tblCustomer
WHERE DateOfBirth > '19860101'
GROUP BY LEFT(CustomerLastName,1) -- we are not allowed to use alias Initial here

