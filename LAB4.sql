CREATE TABLE EMPLOYEE (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Emp_Salary DECIMAL(10, 2),
    Emp_Department VARCHAR(50),
    Emp_City VARCHAR(50),
    Emp_JoinDate DATE
);

-- Insert provided data into EMPLOYEE table
INSERT INTO EMPLOYEE (Emp_ID, Emp_Name, Emp_Salary, Emp_Department, Emp_City, Emp_JoinDate) VALUES 
(101, 'Rahul', 56000, 'Admin', 'Rajkot', '1990-01-01'),
(102, 'Hardik', 18000, 'IT', 'Ahmedabad', '1990-09-25'),
(103, 'Bhavin', 25000, 'HR', 'Baroda', '1991-05-14'),
(104, 'Bhoomi', 39000, 'Admin', 'Rajkot', '1991-02-08'),
(105, 'Rohit', 17000, 'IT', 'Jamnagar', '1990-07-23'),
(106, 'Priya', 9000, 'IT', 'Ahmedabad', '1990-10-18'),
(107, 'Neha', 34000, 'HR', 'Rajkot', '1991-12-25');

--Q1--
SELECT MAX(Emp_Salary) AS[Maximum],MIN(Emp_Salary) AS[Minimum],
SUM(Emp_Salary) AS[Total_Sal],AVG(Emp_Salary) AS[Average_Sal]FROM EMPLOYEE;
--Q2--
SELECT COUNT(Emp_ID) AS[Total_Emplpoyee] FROM EMPLOYEE;
--Q3--
SELECT Emp_Department,MAX(Emp_Salary) AS[Maximum] FROM EMPLOYEE
WHERE Emp_Department='IT'
GROUP BY Emp_Department;
--Q4--
SELECT COUNT(DISTINCT Emp_City) AS[Total_City] FROM EMPLOYEE; 
--Q5--
SELECT Emp_City,COUNT(Emp_ID) AS[Total_Emplpoyee] FROM EMPLOYEE
GROUP BY Emp_City;
--Q6--
SELECT Emp_City,COUNT(Emp_ID)AS[Total_Emplpoyee]FROM EMPLOYEE
GROUP BY Emp_City
HAVING COUNT(Emp_ID)>1;
--Q7--
SELECT Emp_Department,SUM(Emp_Salary) AS[Total_Salary] FROM EMPLOYEE
GROUP BY Emp_Department;
--Q8--
SELECT AVG(Emp_Salary) AS[Average] FROM EMPLOYEE
GROUP BY Emp_Department;
--Q9--
SELECT MIN (Emp_Salary) AS[Minimum] FROM EMPLOYEE
WHERE Emp_City='Ahmedabad';
--Q10--
SELECT Emp_Department,SUM(Emp_Salary) AS[Total] FROM EMPLOYEE
WHERE Emp_City='Rajkot'
GROUP BY Emp_Department
HAVING SUM(Emp_Salary)>50000;
--Q11--
SELECT COUNT(Emp_ID) AS[Total_Employee] FROM EMPLOYEE
WHERE Emp_City='Rajkot'
GROUP BY Emp_City;
--Q12--
SELECT MAX(Emp_Salary)-MIN(Emp_Salary) AS[DIFFERENCE] FROM EMPLOYEE;
--Q13--
SELECT COUNT(Emp_ID) AS[Total_Employee] FROM EMPLOYEE
WHERE Emp_JoinDate<'1991/01/01';
--Q14--
SELECT Emp_Department,SUM(Emp_Salary) AS[Total] FROM EMPLOYEE
GROUP BY Emp_Department
HAVING SUM(Emp_Salary)>35000
ORDER BY SUM(Emp_Salary) DESC;
--Q15--
SELECT Emp_Department,COUNT(Emp_ID)AS[Total_Emplpoyee] FROM EMPLOYEE
GROUP BY Emp_Department
HAVING COUNT(Emp_ID)>2;
