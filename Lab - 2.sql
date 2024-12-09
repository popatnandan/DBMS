-- Part - A

CREATE TABLE Employees (
    EmpNo INT PRIMARY KEY,
    EmpName VARCHAR(100),
    JoiningDate DATE,
    Salary DECIMAL(10, 2),
    City VARCHAR(50)
);

INSERT INTO Employees (EmpNo, EmpName, JoiningDate, Salary, City) VALUES
(101, 'Keyur', '2002-05-01', 12000.00, 'Rajkot'),
(102, 'Hardik', '2004-02-15', 14000.00, 'Ahmedabad'),
(103, 'Kajal', '2006-03-14', 15000.00, 'Baroda'),
(104, 'Bhoomi', '2005-06-23', 12500.00, 'Ahmedabad'),
(105, 'Harmit', '2004-02-15', 14000.00, 'Rajkot');

-- PART B

CREATE TABLE ACCOUNT (
    ACTNO INT PRIMARY KEY,            -- Account Number, unique identifier for each transaction
    CNAME VARCHAR(100),               -- Customer Name
    BNAME VARCHAR(100),               -- Branch Name
    AMOUNT DECIMAL(10, 2),            -- Amount involved in the transaction
    ADATE DATE                        -- Date of the transaction
);

INSERT INTO ACCOUNT (ACTNO, CNAME, BNAME, AMOUNT, ADATE) VALUES
(101, 'ANIL', 'VRCE', 1000.00, '1995-03-01'),
(102, 'SUNIL', 'AJNI', 5000.00, '1996-01-04'),
(103, 'MEHUL', 'KAROLBAGH', 3500.00, '1995-11-17'),
(104, 'MADHURI', 'CHANDI', 1200.00, '1995-12-17'),
(105, 'PRMOD', 'M.G. ROAD', 3000.00, '1996-03-27'),
(106, 'SANDIP', 'ANDHERI', 2000.00, '1996-03-31'),
(107, 'SHIVANI', 'VIRAR', 1000.00, '1995-09-05'),
(108, 'KRANTI', 'NEHRU PLACE', 5000.00, '1995-07-02'),
(109, 'MINU', 'POWAI', 7000.00, '1995-08-10');



	



