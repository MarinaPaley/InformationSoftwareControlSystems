--1.	Показать товар с самой маленькой стандартной ценой (цена больше нуля) (Таблица Production.Product). Показать поля [Name], StandardCost.
--2.	Показать количество продуктов и размер, для которого представлено максимальное количество продуктов (Таблица Production.Product).
--3.	Показать товары, для которых существует только один стиль в одном цвете (стиль и цвет определен) (Таблица Production.Product). Показать поля [Name], Style и Color.

SELECT TOP 1 [Name], StandardCost
FROM Production.Product
WHERE StandardCost > 0
ORDER BY StandardCost;

SELECT TOP 1
	  Size
	, COUNT(*) AS [Count]
FROM Production.Product
WHERE Size IS NOT NULL
GROUP BY Size
ORDER BY 2 DESC;
--vs
SELECT Size
    ,COUNT(ProductID)
FROM Production.Product
WHERE Size IS NOT NULL
GROUP BY Size
HAVING COUNT(ProductID) >= ALL
    (SELECT COUNT(ProductID)
    FROM Production.Product
    WHERE Size IS NOT NULL
    GROUP BY Size);

SELECT COUNT(DISTINCT Style), Color
FROM Production.Product
WHERE Style IS NOT NULL AND Color IS NOT NULL
GROUP BY Color
HAVING COUNT(DISTINCT Style) = 1;

SELECT DISTINCT p1.[Name]
    ,p1.Style
    ,p1.Color
FROM Production.Product p1
WHERE p1.Style IS NOT NULL 
    AND p1.Color IS NOT NULL 
    AND EXISTS (
        SELECT COUNT(DISTINCT p2.Style)
        FROM Production.Product p2
        WHERE p2.Style IS NOT NULL 
        AND p1.Color = p2.Color
        --GROUP BY p2.Color
        HAVING COUNT(DISTINCT p2.Style) = 1)
ORDER BY p1.Color;


SELECT
	  p1.Style
	, p1.[Name]
	, p1.Color
FROM Production.Product AS p1
WHERE p1.Style IS NOT NULL AND p1.Color IS NOT NULL
AND EXISTS
	(
		SELECT COUNT(DISTINCT p2.Style)
		--, p2.Color
		FROM Production.Product AS p2
		WHERE 
		--p2.Color IS NOT NULL AND p2.Style IS NOT NULL AND
		--GROUP BY p2.Color
		p1.Color = p2.Color
		HAVING COUNT(DISTINCT p2.Style) = 1
	)

