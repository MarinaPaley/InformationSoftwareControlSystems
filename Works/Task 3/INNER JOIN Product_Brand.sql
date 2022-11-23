-- Плохой вариант
SELECT 
       pb.ID
	 , b.Brand
	 , p.[Name]
FROM Brand AS b
   , Product AS p
   , Product_Brand AS pb
WHERE pb.ID_Brand = b.ID AND
pb.ID_Product = p.ID;

--INNER JOIN.. ON
SELECT 
       pb.ID
	 , b.Brand
	 , b.ID
	 , p.[Name]
	 , p.ID AS ID_Product
FROM Brand AS b
INNER JOIN Product_Brand AS pb
ON pb.ID_Brand = b.ID
INNER JOIN Product AS p
ON pb.ID_Product = p.ID;
