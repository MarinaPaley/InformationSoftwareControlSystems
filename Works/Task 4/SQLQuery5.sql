CREATE TABLE A
(
	a INT
);

INSERT INTO A
VALUES (1), (2), (3), (4), (5);

SELECT*
FROM A;

SELECT MAX(a)
FROM A
HAVING MAX(a) >= ALL 
	(SELECT *
	FROM A)

SELECT MAX(a)
FROM A
HAVING MAX(a) <=ANY
	(SELECT *
	FROM A)


--Показать товары, цена которых меньше любой средней цены в каждом цвете.

SELECT [Name], ListPrice
FROM Production.Product
WHERE ListPrice > 0 AND ListPrice < ALL
	(
	SELECT AVG(ListPrice)
	FROM Production.Product
	GROUP BY Color
	);

--Показать товары, цена которых равна максимальной (больше нуля) цене товара того же веса (вес определен) (Таблица Production.Product). Показать поля [Name], ListPrice и [Weight].

SELECT p1.[Name]
	, p1.ListPrice
	, p1.[Weight]
FROM Production.Product AS p1
WHERE p1.[Weight] IS NOT NULL AND ListPrice > 0 AND 
p1.ListPrice = 
	(
	SELECT MAX(p2.ListPrice)
	--, p2.[Weight]
	FROM Production.Product AS p2
	--GROUP BY p2.[Weight]
	WHERE p1.[Weight] = p2.[Weight]
	)