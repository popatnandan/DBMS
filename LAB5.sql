CREATE TABLE salesmen
(
    salesman_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    commission DECIMAL(4, 2)
);

-- Create customers table
CREATE TABLE customers
(
    customer_id INT PRIMARY KEY,
    cust_name VARCHAR(50),
    city VARCHAR(50),
    grade INT,
    salesman_id INT,
    FOREIGN KEY (salesman_id) REFERENCES salesmen(salesman_id)
);

-- Create orders table
CREATE TABLE orders
(
    ord_no INT PRIMARY KEY,
    purch_amt DECIMAL(10, 2),
    ord_date DATE,
    customer_id INT,
    salesman_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (salesman_id) REFERENCES salesmen(salesman_id)
);

-- Create FIRST TO EXECUTE table
INSERT INTO salesmen
    (salesman_id, name, city, commission)
VALUES
    (5001, 'James Hoog', 'New York', 0.15),
    (5002, 'Nail Knite', 'Paris', 0.13),
    (5005, 'Pit Alex', 'London', 0.11),
    (5006, 'Mc Lyon', 'Paris', 0.14),
    (5007, 'Paul Adam', 'Rome', 0.13),
    (5003, 'Lauson Hen', 'San Jose', 0.12);


INSERT INTO customers
    (customer_id, cust_name, city, grade, salesman_id)
VALUES
    (3002, 'Nick Rimando', 'New York', 100, 5001),
    (3007, 'Brad Davis', 'New York', 200, 5001),
    (3005, 'Graham Zusi', 'California', 200, 5002),
    (3008, 'Julian Green', 'London', 300, 5002),
    (3004, 'Fabian Johnson', 'Paris', 300, 5006),
    (3009, 'Geoff Cameron', 'Berlin', 100, 5003),
    (3003, 'Jozy Altidor', 'Moscow', 200, 5007),
    (3001, 'Brad Guzan', 'London', NULL, 5005);

	INSERT INTO orders
    (ord_no, purch_amt, ord_date, customer_id, salesman_id)
VALUES
    (70001, 150.5, '2012-10-05', 3005, 5002),
    (70009, 270.65, '2012-09-10', 3001, 5005),
    (70020, 65.26, '2012-10-05', 3002, 5001),
    (70004, 110.5, '2012-08-17', 3009, 5003),
    (70007, 948.5, '2012-09-10', 3005, 5002),
    (70005, 2400.6, '2012-07-27', 3007, 5001),
    (70008, 5760, '2012-09-10', 3002, 5001),
    (70010, 1983.43, '2012-10-10', 3004, 5006),
    (70003, 2480.4, '2012-10-10', 3009, 5003),
    (70012, 250.45, '2012-06-27', 3008, 5002),
    (70011, 75.29, '2012-08-17', 3003, 5007),
    (70013, 3045.6, '2012-04-25', 3002, 5001),
    (70099, 150.5, '2012-10-05', 3005, 5002),
    (70100, 270.65, '2012-09-10', 3001, 5005),
    (70002, 65.26, '2012-10-05', 3002, 5001);

--(ord_no, purch_amt, ord_date, customer_id, salesman_id)--
--(customer_id, cust_name, city, grade, salesman_id)--
--Q1--
SELECT SUM(purch_amt) AS[TOTAL_PURCHASE_AMOUNT] FROM orders;
--Q2--
SELECT AVG(purch_amt) AS[AVERAGE_PURCHASE_AMOUNT] FROM orders;
--Q3--
SELECT COUNT(DISTINCT salesman_id) AS[SALESPEOPLE] FROM orders;
--Q4--
SELECT COUNT(customer_id) AS[TOTAL_CUSTOMERS] FROM customers;
--Q5--
SELECT COUNT(grade) AS[TOTAL] FROM customers
HAVING COUNT(grade)>1;
--Q6--
SELECT MAX(purch_amt) AS[MAX_PURCH_AMOUNT] FROM orders;
--Q7--
SELECT MIN(purch_amt) AS[MAX_PURCH_AMOUNT] FROM orders;
--Q8--
SELECT city, MAX(grade) AS[MAX_GRADE] FROM customers
GROUP BY city;
--Q9--
SELECT customer_id, MAX(purch_amt) AS[MAX_GRADE] FROM orders
GROUP BY customer_id;
--Q10--
SELECT ord_date, MAX(purch_amt) AS[MAX_PURCH_AMOUNT] FROM orders
GROUP BY ord_date;
--Q11--
--Q12--
--Q13--
--Q14--
--Q15--
--Q16--
--Q17--
--Q18--
--Q19--
--Q20--