-- These are the transactions that belong to customer 3 to 122
SELECT *
FROM tblCustomer AS C
RIGHT JOIN tblTransaction AS T
	ON C.CustomerNumber = T.CustomerNumber
WHERE C.CustomerNumber IS NULL
order by T.CustomerNumber;

-- Testing
BEGIN TRAN -- for undo later
SELECT count(*) FROM tblTransaction -- 2500

DELETE tblTransaction
FROM tblCustomer AS C
RIGHT JOIN tblTransaction AS T
	ON C.CustomerNumber = T.CustomerNumber
WHERE C.CustomerNumber IS NULL

SELECT count(*) FROM tblTransaction -- 2244
ROLLBACK TRAN 


-- Final execution
DELETE tblTransaction
FROM tblCustomer AS C
RIGHT JOIN tblTransaction T
	ON C.CustomerNumber = T.CustomerNumber
WHERE C.CustomerNumber IS NULL;

