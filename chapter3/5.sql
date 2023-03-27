USE TSQL2012;

SELECT
    Customers.custid,
    Customers.companyname,
    Orders.orderid,
    Orders.orderdate

FROM
    Sales.Customers AS Customers
    LEFT JOIN Sales.Orders as Orders
    ON Customers.custid = Orders.custid
    AND     Orders.orderdate = '2007-02-12'

    