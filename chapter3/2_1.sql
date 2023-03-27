USE TSQL2012;
IF OBJECT_ID('Digits', 'U') IS NOT NULL DROP TABLE #Digits;
CREATE TABLE #Digits
(
    digit INT NOT NULL PRIMARY KEY
);

INSERT INTO #Digits
    (digit)
VALUES
    (0),
    (1),
    (2),
    (3),
    (4),
    (5),
    (6),
    (7),
    (8),
    (9);


SELECT
    E.empid,
    DATEADD (DAY , 10 * D1.digit + D2.digit-1 , '2006-01-01' ) as Day
FROM
    #Digits as D1,
    #Digits as D2,
    HR.Employees as E
WHERE
10 * D1.digit + D2.digit  BETWEEN 12 AND 16
ORDER BY
 E.empid,
 10 * D1.digit + D2.digit