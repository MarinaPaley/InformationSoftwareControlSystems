--Показать товар с самой маленькой разницей в цене и стандартной цене (все цены больше нуля) (Таблица Production.Product). Вывести поля StandardCost, ListPrice, [Name].
SELECT TOP 1
    ABS(StandardCost - ListPrice) AS Price
  , [Name]
FROM Production.Product
WHERE StandardCost > 0 AND ListPrice > 0
ORDER BY Price;

DECLARE @Price FLOAT;
SET @Price = 
(SELECT MIN(
    ABS(StandardCost - ListPrice))
FROM Production.Product
WHERE StandardCost > 0 AND ListPrice > 0);
--PRINT @Price;
SELECT 
    ABS(StandardCost - ListPrice) AS Price
  , [Name]
FROM Production.Product
WHERE ABS(StandardCost - ListPrice) = @Price;

--2
SELECT 
    ABS(StandardCost - ListPrice) AS Price
  , [Name]
FROM Production.Product
WHERE ABS(StandardCost - ListPrice) = 
	(SELECT MIN(
    ABS(StandardCost - ListPrice))
FROM Production.Product
WHERE StandardCost > 0 AND ListPrice > 0);
