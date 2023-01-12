/*
1
*/

DECLARE @YEAR INT
set @YEAR = 2006
;
SELECT top 10
  shipcountry,
  AVG(freight)
FROM Sales.Orders
WHERE
YEAR(Sales.Orders.orderdate) = @YEAR
GROUP BY
shipcountry
order BY
AVG(freight) DESC
;
