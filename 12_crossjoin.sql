-- CROSS JOIN
CREATE TABLE tblWorkday (
	workday varchar(10) NOT NULL
);

INSERT INTO tblWorkday VALUES 
('Monday'), ('Tuesday'), ('Wednesday'), ('Thursday'), ('Friday');

SELECT * FROM tblWorkday;

SELECT 
	T1.LocationHead,
	T2.workday
FROM tblLocation as T1
CROSS JOIN tblWorkday as T2
ORDER BY T1.LocationHead;

