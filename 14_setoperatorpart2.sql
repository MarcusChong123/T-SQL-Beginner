
CREATE TABLE tblTemp1 (
	number int NOT NULL
);

INSERT INTO tblTemp1 
VALUES (1), (2), (3), (4), (5);

CREATE TABLE tblTemp2 (
	number int NOT NULL
);

INSERT INTO tblTemp2 
VALUES (1), (2), (2), (4), (5);

SELECT * from tblTemp1
UNION
SELECT * from tblTemp2;

SELECT * from tblTemp1
UNION ALL
SELECT * from tblTemp2;

SELECT * from tblTemp1
EXCEPT
SELECT * from tblTemp2;

SELECT * from tblTemp1
INTERSECT
SELECT * from tblTemp2;

