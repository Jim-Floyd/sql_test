-- Calculate My Age
IF OBJECT_ID('dbo.CalculateAge', 'FN') IS NOT NULL  
    DROP FUNCTION dbo.CalculateAge;
GO

CREATE FUNCTION dbo.CalculateAge (@dateBirth DATE)
RETURNS INT 
AS
BEGIN
    RETURN DATEDIFF(YEAR, @dateBirth, GETDATE()) - 
           CASE 
               WHEN (MONTH(@dateBirth) > MONTH(GETDATE()))
        OR (MONTH(@dateBirth) = MONTH(GETDATE()) AND DAY(@dateBirth) > DAY(GETDATE())) 
               THEN 1 
               ELSE 0 
           END;
END;
GO

DECLARE @dob DATE = '1995-11-05';
SELECT dbo.CalculateAge(@dob) AS Age;
