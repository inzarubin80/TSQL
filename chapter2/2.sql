SELECT
    orderid
 , orderdate
 , custid
 , empid
FROM Sales.Orders
WHERE 
    EOMONTH ( orderdate) =  orderdate 
