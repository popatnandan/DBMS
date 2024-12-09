-- Create the STUDENT table
CREATE TABLE STUDENT1 (
    Rno INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Branch VARCHAR(50) NOT NULL
);

-- Create the RESULT table
CREATE TABLE RESULT (
    Rno INT,
    SPI DECIMAL(3,1) NOT NULL,
    PRIMARY KEY (Rno),
);

-- Create the EMPLOYEE table
CREATE TABLE EMPLOYEE1 (
    EmployeeNo VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    ManagerNo VARCHAR(10),
    FOREIGN KEY (ManagerNo) REFERENCES EMPLOYEE1(EmployeeNo)
);


-- Insert data into the STUDENT table
INSERT INTO STUDENT1 (Rno, Name, Branch) VALUES
(101, 'Raju', 'CE'),
(102, 'Amit', 'CE'),
(103, 'Sanjay', 'ME'),
(104, 'Neha', 'EC'),
(105, 'Meera', 'EE'),
(106, 'Mahesh', 'ME');

drop table result
drop table STUDENT1

-- Insert data into the RESULT table
INSERT INTO RESULT (Rno, SPI) VALUES
(101, 8.8),
(102, 9.2),
(103, 7.6),
(104, 8.2),
(105, 7.0),
(107, 8.9);

truncate table result

-- Insert data into the EMPLOYEE table
INSERT INTO EMPLOYEE1 (EmployeeNo, Name, ManagerNo) VALUES
('E01', 'Tarun', NULL),
('E02', 'Rohan', 'E02'),
('E03', 'Priya', 'E01'),
('E04', 'Milan', 'E03'),
('E05', 'Jay', 'E01'),
('E06', 'Anjana', 'E04');


-- Create the DEPARTMENT table
CREATE TABLE DEPARTMENT (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE,
    DepartmentCode VARCHAR(50) NOT NULL UNIQUE,
    Location VARCHAR(50) NOT NULL
);

-- Create the PERSON table
CREATE TABLE PERSON (
    PersonID INT PRIMARY KEY,
    PersonName VARCHAR(100) NOT NULL,
    DepartmentID INT NULL,
    Salary DECIMAL(8,2) NOT NULL,
    JoiningDate DATETIME NOT NULL,
    City VARCHAR(100) NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES DEPARTMENT(DepartmentID)
);


INSERT INTO DEPARTMENT (DepartmentID, DepartmentName, DepartmentCode, Location) VALUES
(1, 'Admin', 'Adm', 'A-Block'),
(2, 'Computer', 'CE', 'C-Block'),
(3, 'Civil', 'CI', 'G-Block'),
(4, 'Electrical', 'EE', 'E-Block'),
(5, 'Mechanical', 'ME', 'B-Block');


INSERT INTO PERSON (PersonID, PersonName, DepartmentID, Salary, JoiningDate, City) VALUES
(101, 'Rahul Tripathi', 2, 56000.00, '2000-01-01', 'Rajkot'),
(102, 'Hardik Pandya', 3, 18000.00, '2001-09-25', 'Ahmedabad'),
(103, 'Bhavin Kanani', 4, 25000.00, '2000-05-14', 'Baroda'),
(104, 'Bhoomi Vaishnav', 1, 39000.00, '2005-02-08', 'Rajkot'),
(105, 'Rohit Topiya', 2, 17000.00, '2001-07-23', 'Jamnagar'),
(106, 'Priya Menpara', NULL, 9000.00, '2000-10-18', 'Ahmedabad'),
(107, 'Neha Sharma', 2, 34000.00, '2002-12-25', 'Rajkot'),
(108, 'Nayan Goswami', 3, 25000.00, '2001-07-01', 'Rajkot'),
(109, 'Mehul Bhundiya', 4, 13500.00, '2005-01-09', 'Baroda'),
(110, 'Mohit Maru', 5, 14000.00, '2000-05-25', 'Jamnagar');

--Q1--
SELECT s.Rno,Name,Branch,SPI,r.Rno FROM STUDENT1 s CROSS JOIN RESULT r
ON s.Rno=r.Rno;
--Q2--
SELECT s.Rno,Name,Branch,SPI FROM STUDENT1 s INNER JOIN RESULT r
ON s.Rno=r.Rno;
--Q3--
SELECT s.Rno,Name,Branch,SPI FROM STUDENT1 s INNER JOIN RESULT r
ON s.Rno=r.Rno
WHERE Branch='CE';
--Q4--
SELECT s.Rno,Name,Branch,SPI FROM STUDENT1 s INNER JOIN RESULT r
ON s.Rno=r.Rno
WHERE Branch='EC';
--Q5--
SELECT Branch,AVG(SPI) AS [AVG_SPI] FROM STUDENT1 s INNER JOIN RESULT r
ON s.Rno=r.Rno
GROUP BY Branch;
--Q6--
SELECT Branch,AVG(SPI) AS [AVG_SPI] FROM STUDENT1 s INNER JOIN RESULT r
ON s.Rno=r.Rno
GROUP BY Branch
ORDER BY AVG(SPI);
--Q7--
SELECT Branch,AVG(SPI) AS [AVG_SPI] FROM STUDENT1 s INNER JOIN RESULT r
ON s.Rno=r.Rno
GROUP BY Branch
HAVING Branch='CE' OR Branch='ME';
--Q8--
SELECT * FROM STUDENT1 s LEFT OUTER JOIN RESULT r
ON s.Rno=r.Rno;
--Q9--
SELECT * FROM STUDENT1 s RIGHT OUTER JOIN RESULT r
ON s.Rno=r.Rno;
--Q10--
SELECT * FROM STUDENT1 s FULL OUTER JOIN RESULT r
ON s.Rno=r.rno;
--Q11--
SELECT e.Name,e1.Name AS[Manager_Name] FROM EMPLOYEE1 e LEFT  JOIN EMPLOYEE1 e1
ON e.ManagerNo=e1.EmployeeNo;
--Q12--
--Q13--
--Q14--
--Q15--
--Q16--