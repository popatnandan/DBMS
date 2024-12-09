--Q1--
CREATE FUNCTION dbo.numIsPrimeOrNot()
RETURNS INT
AS
BEGIN
    DECLARE @Sum INT = 0
        IF @Counter % 2 = 0
        BEGIN
            SET @Sum = @Sum + @Counter
        END
        SET @Counter = @Counter + 1
    END
    RETURN @Sum
END