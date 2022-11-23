--EXCEPT
SELECT  ID
      , ID_Product_Brand
	  , SaleDate
FROM Sale
EXCEPT
SELECT ID
	 , ID_Product_Brand
	 , PurchaseDate
FROM Purchase

--UNION
SELECT  ID
      , ID_Product_Brand
	  , SaleDate
FROM Sale
UNION
SELECT ID
	 , ID_Product_Brand
	 , PurchaseDate
FROM Purchase

--UNION ALL
SELECT  ID
      , ID_Product_Brand
	  , SaleDate
FROM Sale
UNION ALL
SELECT ID
	 , ID_Product_Brand
	 , PurchaseDate
FROM Purchase

--INTERSECT
SELECT  ID
      , ID_Product_Brand
	  , SaleDate
FROM Sale
INTERSECT
SELECT ID
	 , ID_Product_Brand
	 , PurchaseDate
FROM Purchase