--Показать наименование товара, цену и цвет. 
--Разбить ответ на 6 равных частей,
--упорядочив по возрастанию цены.
SELECT 
	  NTILE(6) OVER (ORDER BY ListPrice)	
	, [Name]
	, ListPrice
	, Color
FROM Production.Product
ORDER BY ListPrice;