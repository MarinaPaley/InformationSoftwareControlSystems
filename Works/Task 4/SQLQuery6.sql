--Показать товары, цена которых больше средней цены в любом цвете (Таблица Production.Product). Показать поля [Name], ListPrice и Color.
SELECT [Name], ListPrice, Color
FROM Production.Product
WHERE ListPrice > ALL
	(
		SELECT AVG(ListPrice)
		FROM Production.Product
		WHERE ListPrice > 0
		GROUP BY Color 
		--ORDER BY 1 DESC
	)
ORDER BY ListPrice