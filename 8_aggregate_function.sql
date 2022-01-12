SELECT 
	MAX(AMOUNT) AS HIGHEST,
	MIN(AMOUNT) AS LOWEST,
	AVG(AMOUNT) AS AVERAGE,
	SUM(AMOUNT) AS TOTAL,
	COUNT(AMOUNT) AS NUMBER_OF_TRANSACTION,
	COUNT(*) AS TOTAL_RECORDS
FROM tblTransaction


-- What if I want the total amount and the number of transaction of customer 100 to 199?