-- What if I want the total amount and the number 
-- of transaction of customer 100 to 199?
-- But also with amount of transaction >= 100?

-- FROM table transaction
--		WHERE customer number between 100 and 199
--		GROUP BY customer number
--			HAVING amount of transaction >= 100
--				SELECT customer number
--				SUM amount of transaction
--				COUNT number of transaction
--					 ORDER BY NumberOfTransactions in descending order and Total Amount

SELECT 
	CustomerNumber,
	COUNT(AMOUNT) as NumberOfTransactions,
	SUM(AMOUNT) as TotalAmount
FROM tblTransaction
WHERE CustomerNumber BETWEEN 100 and 199
GROUP BY CustomerNumber
HAVING SUM(AMOUNT) >=100 -- cannot use TotalAmount
ORDER BY NumberOfTransactions DESC, TotalAmount;


-- What if I want the total number of customers with date of birth > 19860101, 
-- segregated by Initial of their name?
-- But also with count of initial > 1

-- FROM table customer
--		WHERE customer data of birth > 19860101
--		GROUP BY customer's Initial
--			HAVING count of initial > 1
--				SELECT Initial
--				COUNT number of rows
--					ORDER BY CountOfInitial in descending order

SELECT 
	LEFT(CustomerLastName,1) AS Initial, 
	COUNT(*) AS CountOfInitial
FROM tblCustomer
WHERE DateOfBirth > '19860101'
GROUP BY LEFT(CustomerLastName,1)
HAVING COUNT(*) > 1
ORDER BY CountOfInitial DESC;


