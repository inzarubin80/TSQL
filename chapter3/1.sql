USE TSQL2012;

CREATE TABLE  IF NOT EXISTS #Digits 
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
    *
FROM
    HR.Employees as E
 CROSS JOIN #Digits as D
WHERE
 D.digit<=5
 ORDER BY digit, empid;
 