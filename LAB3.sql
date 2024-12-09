CREATE TABLE STUDENT
(
	StuID INT,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	Website VARCHAR(50),
	City VARCHAR(50),
	Division VARCHAR(50)
);

SELECT * FROM STUDENT;
INSERT INTO STUDENT
VALUES(1011,'Keyur','Patel','techonthenet.com','Rajkot','II-BCX');
INSERT INTO STUDENT
VALUES(1022,'Hardik','Shah','digminecraft.com','Ahmedabad','I-BCY');
INSERT INTO STUDENT
VALUES(1033,'Kajal','Trivedi','bigactivities.com ','Baroda','IV-DCX');
INSERT INTO STUDENT
VALUES(1044,'Bhoomi','Gajera','checkyourmath.com','Ahmedabad','III-DCW');
INSERT INTO STUDENT
VALUES(1055,'Harmit','Mitel',NULL,'Rajkot','II-BCY');
INSERT INTO STUDENT
VALUES(1066,'Ashok','Jani',NULL,'Baroda','II-BCZ');--Q1--SELECT * FROM STUDENTWHERE FirstName LIKE 'K%';--Q2--SELECT * FROM STUDENTWHERE FirstName LIKE '_____';--Q3--SELECT FirstName,LastName FROM STUDENTWHERE City LIKE '_____a';--Q4--SELECT * FROM STUDENTWHERE LastName LIKE '%tel';--Q5--SELECT * FROM STUDENTWHERE FirstName LIKE 'ha%t';--Q6--SELECT * FROM STUDENTWHERE FirstName LIKE 'k_y%';--Q7--SELECT FirstName FROM STUDENTWHERE Website IS NULL AND FirstName LIKE '_____';--Q8--SELECT * FROM STUDENTWHERE LastName LIKE '%jer%' ;--Q9--SELECT * FROM STUDENTWHERE City LIKE '[r,b]%';--Q10--SELECT * FROM STUDENTWHERE Website IS NOT NULL;--Q11--SELECT * FROM STUDENTWHERE FirstName LIKE '[A-H]%';--Q12--SELECT * FROM STUDENTWHERE FirstName LIKE '_[A,E,I,O,U]%';--Q13--SELECT * FROM STUDENTWHERE City LIKE '%rod%';--Q14--SELECT FirstName,LastName FROM STUDENTWHERE Website LIKE 'bi%';--Q15--SELECT City FROM STUDENTWHERE LastName LIKE '______';--Q16--SELECT * FROM STUDENTWHERE City LIKE '_____' AND City NOT LIKE 'ba%' ;--Q17--SELECT * FROM STUDENTWHERE Division LIKE 'II%';--Q18--SELECT FirstName FROM STUDENTWHERE Division LIKE '%BC%';--Q19--SELECT StuID,City FROM STUDENTWHERE Division LIKE '______' AND Website IS NOT NULL;--Q20SELECT * FROM STUDENTWHERE FirstName NOT LIKE '__[A,E,I,O,U]%';tinyurl.com/dbmsscript