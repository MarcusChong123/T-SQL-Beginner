-- It will take the column name FROM the first SELECT
SELECT 'hi' AS Greeting
UNION
SELECT 'hello there' AS GreetingNow;


-- We can create table
-- It will try to convert 'hi' to char(11), the higher one
with cte AS (
SELECT convert(char(5),'hi') AS Greeting
UNION
SELECT convert(char(11),'hello there') AS GreetingNow
)
SELECT Greeting
INTO tblTemp
FROM cte;


-- UNION cannot have separate rows for same entry ('hi')
SELECT 'cat' AS Animal
UNION
SELECT 'turtle' AS Pet
UNION
SELECT 'cat'
UNION
SELECT 'snake';



-- UNION ALL can have duplications
SELECT 'cat' AS Animal
UNION ALL
SELECT 'turtle' AS Pet
UNION ALL
SELECT 'cat'
UNION ALL
SELECT 'snake';


select Location, LocationHead from tblLocation
union all
select TOP (10) CustomerFirstName, CustomerLastName from tblCustomer