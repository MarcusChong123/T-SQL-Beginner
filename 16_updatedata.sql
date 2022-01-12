BEGIN TRAN
UPDATE tblTransaction
SET CustomerNumber = 200

-- we can see which rows are updated with statement below
-- update is a combination of deleted and inserted
-- we can see all columns with
--output inserted.*, deleted.*
OUTPUT 
	inserted.*, 
	deleted.*
FROM tblTransaction
WHERE CustomerNumber in (10, 11, 12, 13, 14)

ROLLBACK TRAN



UPDATE tblTransaction
SET CustomerNumber = 200
WHERE CustomerNumber in (10, 11, 12, 13, 14);


-- select * from tblTransaction where CustomerNumber = 200;