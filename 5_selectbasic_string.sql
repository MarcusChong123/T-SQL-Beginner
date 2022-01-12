SELECT * FROM tblCustomer
WHERE CustomerFirstName = 'Dylan'; -- equal

SELECT * FROM tblCustomer
WHERE CustomerFirstName <> 'Dylan'; -- not equal

SELECT * FROM tblCustomer
WHERE CustomerFirstName > 'Word'; -- alphabet order higher than Word

SELECT * FROM tblCustomer
WHERE CustomerFirstName LIKE '%we%'; -- contains 'we' in first name

SELECT * FROM tblCustomer
WHERE CustomerFirstName LIKE '[r-t]%'; -- start with r to t

SELECT * FROM tblCustomer
WHERE CustomerFirstName LIKE '[^rwt]%'; -- start not with r, w or t


