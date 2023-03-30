USE TSQL2012;
SELECT
    *
from
    Sales.Orders
WHERE
orderdate in (SELECT
    max(orderdate)
from
    Sales.Orders)