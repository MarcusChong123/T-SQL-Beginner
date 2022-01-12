DECLARE @mydate AS datetime = '2021-05-25';
SELECT 
	YEAR(@mydate) AS myYear, -- 2021
	MONTH(@mydate) AS myMonth, -- 5
	DAY(@mydate) AS myDay; -- 25

SELECT DATEFROMPARTS(2021,05,24) AS ThisDate;
-- 2021-05-24

SELECT GETDATE() AS RightNow;

SELECT DATEADD(YEAR,1,'2021-01-01 03:04:05') AS myYear;
-- 2022-01-01 03:04:05.000

SELECT DATEPART(HOUR,'2021-01-01 03:04:05') AS myHour;
-- 3

SELECT DATENAME(weekday, GETDATE()) AS myDay;


SELECT * FROM tblCustomer
WHERE DateOfBirth between '19850101' and '19861231'
-- can also put 1985-01-01 (inclusive 19850101 and 19861231)

SELECT * from tblCustomer
WHERE DateOfBirth >= '19760101' and DateOfBirth < '19870101'

SELECT * FROM tblCustomer
WHERE year(DateOfBirth) = 1967

