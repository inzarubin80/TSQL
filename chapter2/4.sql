DECLARE @MyCounter INT;
SET @MyCounter = 1000;
;
SELECT
    productid,
    unitprice * qty as total
FROM Sales.OrderDetails
WHERE 
  unitprice * qty >  @MyCounter
