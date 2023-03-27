USE TSQL2012;

SELECT
    Customers.custid,
    Customers.companyname

FROM
    Sales.Customers AS Customers
    LEFT JOIN Sales.Orders as Orders
    ON Customers.custid = Orders.custid
    WHERE
     Orders.orderid is NULL
