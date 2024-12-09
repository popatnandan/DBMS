--Q1--
CREATE FUNCTION dbo.compareIntegers
(
    @Num1 INT,
    @Num2 INT
)
RETURNS VARCHAR(10)
AS
BEGIN
    RETURN CASE 
        WHEN @Num1 > @Num2 THEN 'Greater'
        WHEN @Num1 < @Num2 THEN 'Lesser'
        ELSE 'Equal'
    END
END

SELECT dbo.compareIntegers(10, 5) AS comparisonResult;  -- Returns Greater
SELECT dbo.compareIntegers(3, 8) AS comparisonResult;   -- Returns Lesser
SELECT dbo.compareIntegers(7, 7) AS comparisonResult;   -- Returns Equal

--Q2--
CREATE FUNCTION dbo.getNumbersUpToN
(
    @N INT
)
RETURNS @NumbersTable TABLE (Number INT)
AS
BEGIN
    DECLARE @Counter INT = 1

    WHILE @Counter <= @N
    BEGIN
        INSERT INTO @NumbersTable (Number) VALUES (@Counter)
        SET @Counter = @Counter + 1
    END

    RETURN
END
SELECT * FROM dbo.getNumbersUpToN(10);

--Q3--
CREATE FUNCTION dbo.sumEvenNumbers()
RETURNS INT
AS
BEGIN
    DECLARE @Sum INT = 0
    DECLARE @Counter INT = 1

    WHILE @Counter <= 20
    BEGIN
        IF @Counter % 2 = 0
        BEGIN
            SET @Sum = @Sum + @Counter
        END
        SET @Counter = @Counter + 1
    END
    RETURN @Sum
END
SELECT dbo.SumEvenNumbers() AS sumOfEvens;

