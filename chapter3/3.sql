USE TSQL2012;

SELECT
    Customers.custid,
    Orders.orderid,
    Orders.shipcity,
    Orders.orderdate

FROM
    Sales.Customers AS Customers
    LEFT JOIN Sales.Orders as Orders
    ON Customers.custid = Orders.custid
