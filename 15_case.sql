SELECT 
	CustomerNumber,
	COUNT(AMOUNT) AS NumberOfTransactions,
	SUM(AMOUNT) AS TotalAmount,
	CASE 
		WHEN SUM(AMOUNT) >= 2000 THEN 'Platinum'
		WHEN SUM(AMOUNT) >= 1000 THEN 'Gold'
	    WHEN SUM(AMOUNT) >= 500 THEN 'Silver'
		ELSE 'Normal' 
	END AS Membership
FROM tblTransaction
GROUP BY CustomerNumber
ORDER BY CustomerNumber;

