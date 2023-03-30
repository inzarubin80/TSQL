USE TSQL2012;

SELECT DISTINCT 
country
from
Sales.Customers as Customers
WHERE
NOT EXISTS
(SELECT
 country
FROM
 HR.Employees as Employees
 WHERE
 Employees.country = Customers.country)
 Order BY
country