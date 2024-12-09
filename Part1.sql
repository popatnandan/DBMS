CREATE TABLE CITY (
    CityID INT PRIMARY KEY,
    Name NVARCHAR(50) UNIQUE NOT NULL,
    Pincode NVARCHAR(6) NOT NULL,
    Remarks NVARCHAR(50)
);

INSERT INTO CITY (CityID, Name, Pincode, Remarks) VALUES
(1, 'Rajkot', '360005', 'Good'),
(2, 'Surat', '335009', 'Very Good'),
(3, 'Baroda', '390001', 'Awesome'),
(4, 'Jamnagar', '361003', 'Smart'),
(5, 'Junagadh', '362229', 'Historic'),
(6, 'Morvi', '363641', 'Ceramic');

-- Table Creation for VILLAGE
CREATE TABLE VILLAGE (
    VID INT PRIMARY KEY,
    Name NVARCHAR(50) NOT NULL,
    CityID INT,
    FOREIGN KEY (CityID) REFERENCES CITY(CityID)
);

INSERT INTO VILLAGE (VID, Name, CityID) VALUES
(101, 'Raiya', 1),
(102, 'Madhapar', 1),
(103, 'Dodka', 3),
(104, 'Falla', 4),
(105, 'Bhesan', 5),
(106, 'Dhoraji', 5);

--Q1--
SELECT V.Name FROM VILLAGE V
LEFT JOIN CITY C ON C.CityID=V.CityID
WHERE C.CityID=1;
--Q2--
SELECT C.Name,V.Name,C.Pincode FROM VILLAGE V
LEFT JOIN CITY C ON C.CityID=V.CityID;
--Q3--
SELECT C.Name FROM VILLAGE V
LEFT JOIN CITY C ON C.CityID=V.CityID
GROUP BY C.Name
HAVING COUNT(V.CityID)>1;
--Q4--
SELECT C.Name FROM CITY C
LEFT JOIN VILLAGE V ON C.CityID=V.CityID
GROUP BY C.Name
HAVING COUNT(V.CityID)<1;
--Q5--
SELECT C.Name ,COUNT(V.CityID) FROM CITY C
LEFT JOIN VILLAGE V ON C.CityID=V.CityID
GROUP BY C.Name;
--Q6--
SELECT C.NAME,COUNT(C.CityID) FROM CITY C
LEFT JOIN VILLAGE V ON C.CityID=V.CityID
GROUP BY C.Name
HAVING COUNT(V.CityID)>1;

-------------------------------------------------------------------
CREATE TABLE STUDENT
(
	Rno INT PRIMARY KEY,
	Name VARCHAR(50),
	Branch VARCHAR(50) DEFAULT 'General',
	SPI DECIMAL(4,2) CHECK(SPI>=0 AND SPI<=10),
	Bklog INT CHECK(Bklog>=0)
);
INSERT INTO STUDENT VALUES
(101,'Raju','CE',8.80,0),
(102,'Amit','CE',2.20,3),
(103,'Sanjay','ME',1.50,6),
(104,'Neha','EC',7.65,0),
(105,'Meera','EE',5.52,2),
(106,'Mahesh',DEFAULT,4.50,3);

SELECT * FROM STUDENT

-------1.-------
-------Try to update SPI of Raju from 8.80 to 12.-------
UPDATE STUDENT
SET SPI=12
WHERE Rno=101;
									-------//ERROR//-------
-------The UPDATE statement conflicted with the CHECK constraint "CK__STUDENT__SPI__4AB81AF0".-------

-------2.-------
-------Try to update Bklog of Neha from 0 to -1.-------
UPDATE STUDENT
SET Bklog=-1	
WHERE Rno=104;
									-------//ERROR//-------
-------The UPDATE statement conflicted with the CHECK constraint "CK__STUDENT__Bklog__4BAC3F29".-------

