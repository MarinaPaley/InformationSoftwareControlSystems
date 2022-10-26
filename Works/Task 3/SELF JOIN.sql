--SELF JOIN
-- акие производители поставл¤ют более 1 товара
SELECT DISTINCT pb1.ID
	 , b.Brand
	 , p.[Name]
FROM Product_Brand AS pb1
INNER JOIN Product_Brand AS pb2
ON pb1.ID_Brand = pb2.ID_Brand
INNER JOIN Product AS p
ON p.ID = pb1.ID_Product
INNER JOIN Brand AS b
ON b.ID = pb1.ID_Brand
AND pb1.ID_Product <> pb2.ID_Product;


-- акие товары производ¤тс¤ более, чем 1 производителем
SELECT DISTINCT pb1.ID
	 , b.Brand
	 , p.[Name]
FROM Product_Brand AS pb1
INNER JOIN Product_Brand AS pb2
ON pb1.ID_Brand <> pb2.ID_Brand
INNER JOIN Product AS p
ON p.ID = pb1.ID_Product
INNER JOIN Brand AS b
ON b.ID = pb1.ID_Brand
AND pb1.ID_Product = pb2.ID_Product;