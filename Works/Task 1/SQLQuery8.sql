--9. ѕоказать пол¤ ProductID, 
--BusinessEntityID, AverageLeadTime,
--StandardPrice из таблицы 
--Purchasing.ProductVendor, использу¤ вместо
--названи¤ таблицы псевдоним?'p'. 
--ќтсортировать все строки в алфавитном 
--пор¤дке в соответствии 
--с полем StandartPrice.
SELECT 
	  ProductID 
	, BusinessEntityID 
	, AverageLeadTime
	, StandardPrice 
FROM Purchasing.ProductVendor AS p
ORDER BY StandardPrice;

--DISTINCT
SELECT DISTINCT Color
FROM Production.Product;
