--Q1--
CREATE FUNCTION HelloWorld()
RETURNS VARCHAR(50)
AS
BEGIN
    RETURN 'hello world'
END

SELECT dbo.HelloWorld() AS Message

--Q2--
CREATE FUNCTION dbo.addNumbers
( 
@Num1 INT, 
@Num2 INT
)
RETURNS INT
AS
BEGIN
    RETURN @Num1 + @Num2
END

SELECT dbo.addNumbers(5, 10) AS SumOfTwoNumbers

--Q3--
CREATE FUNCTION dbo.cubeNumber
(
    @Number FLOAT
)
RETURNS FLOAT
AS
BEGIN
    RETURN @Number * @Number * @Number
END

SELECT dbo.cubeNumber(3) AS CubeOfNumber

--Q4--
CREATE FUNCTION checkOddEven(@Number INT)
RETURNS VARCHAR(10)
AS
BEGIN
    DECLARE @Result VARCHAR(10);
    
    IF @Number % 2 = 0
        SET @Result = 'Even';
    ELSE
        SET @Result = 'Odd';
    RETURN @Result;
END;


SELECT dbo.checkOddEven(5) AS Result;  -- Returns 'Odd'
SELECT dbo.checkOddEven(10) AS Result; -- Returns 'Even'


--Q5--
CREATE FUNCTION dbo.getPersonsStartingWithB()
RETURNS TABLE
AS
RETURN 
(
    SELECT * FROM PERSON
    WHERE PersonName LIKE 'B%'
)
SELECT * FROM getPersonsStartingWithB()

--Q6--
CREATE FUNCTION dbo.GetUniqueFirstNames()
RETURNS TABLE
AS
RETURN 
(
    SELECT DISTINCT PersonName
    FROM PERSON
)
SELECT * FROM GetUniqueFirstNames()
