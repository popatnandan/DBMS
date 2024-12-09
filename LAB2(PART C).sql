CREATE TABLE DEPOSIT 
(
	ACTNO INT,
	CNAME VARCHAR(50),
	BNAME VARCHAR(50),
	AMOUNT DECIMAL(8,2),
	ADATE DATETIME,
);

INSERT INTO DEPOSIT
VALUES(101,'ANIL','VRCE',1000,'1995-03-01');
INSERT INTO DEPOSIT
VALUES(102,'SUNIL','AJNI',5000,'1996-01-04');
INSERT INTO DEPOSIT
VALUES(103,'MEHUL','KAROLBAGH',3500,'1995-11-17');
INSERT INTO DEPOSIT
VALUES(104,'MADHURI','CHANDI',1200,'1995-12-17');
INSERT INTO DEPOSIT
VALUES(105,'PRAMOD','M.G ROAD',3000,'1996-03-27');
INSERT INTO DEPOSIT
VALUES(106,'SANDIP','ANDHRI',2000,'1996-03-31');
INSERT INTO DEPOSIT
VALUES(107,'SHIVANI','VIRAR',1000,'1995-09-05');
INSERT INTO DEPOSIT
VALUES(108,'KRANTI','NEHRU PLACE',5000,'1995-07-02');
INSERT INTO DEPOSIT
VALUES(109,'MINU','POWAI',7000,'1995-08-10');

SELECT * FROM DEPOSIT;

--Q1--
SELECT CNAME FROM DEPOSIT
WHERE BNAME='AJNI' OR BNAME='CHANDI' AND 
AMOUNT<3000
ORDER BY AMOUNT,CNAME DESC;
--Q2--
SELECT DISTINCT TOP 3 BNAME FROM DEPOSIT
ORDER BY BNAME;
--Q3--
SELECT CNAME FROM DEPOSIT 
WHERE ACTNO>103
ORDER BY AMOUNT ;
--Q4--
SELECT CNAME FROM DEPOSIT 
WHERE BNAME IS NULL;
--Q5--
DELETE DEPOSIT
WHERE AMOUNT>=4000;
--Q6--
DELETE DEPOSIT 
WHERE BNAME='CHANDI';
--Q7--
DELETE DEPOSIT 
WHERE ADATE>'1995-10-01';
--Q8--
TRUNCATE TABLE DEPOSIT;
--Q9--
DROP TABLE DEPOSIT;
