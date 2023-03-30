USE TSQL2012;

SELECT empid, FirstName, lastname
FROM HR.Employees
WHERE empid NOT IN
(SELECT O.empid
FROM Sales.Orders AS O
WHERE O.orderdate >= '20080501');