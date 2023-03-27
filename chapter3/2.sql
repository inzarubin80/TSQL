USE TSQL2012;

SELECT
    C.custid,
    Sum(OD.qty) as totalqty,
    count (DISTINCT  O.orderid) numorders
FROM
    Sales.Customers AS C

    LEFT JOIN Sales.Orders as O
    ON C.custid = O.custid

    LEFT JOIN Sales.OrderDetails as Od
    ON O.orderid = Od.orderid
    GROUP BY
     C.custid