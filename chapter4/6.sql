USE TSQL2012;

SELECT custid, orderid, orderdate, empid
FROM Sales.Orders O1
WHERE  orderdate 
IN
(SELECT TOP (1) WITH TIES
    O.orderdate
FROM Sales.Orders AS O
WHERE
O.custid = O1.custid
ORDER BY orderdate DESC)
ORDER BY custid