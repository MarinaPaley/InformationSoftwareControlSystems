SELECT 
	  s.ID_Product_Brand
	, s.ListPrice
	, s.SaleDate
	, p.ListPrice
	, p.PurchaseDate
FROM Sale AS s
LEFT OUTER JOIN Purchase As p
ON s.SaleDate = p.PurchaseDate;


SELECT 
	  s.ID_Product_Brand
	, s.ListPrice
	, s.SaleDate
	, p.ListPrice
	, p.PurchaseDate
FROM Purchase As p
LEFT OUTER JOIN Sale AS s
ON s.SaleDate = p.PurchaseDate;

SELECT 
	  s.ID_Product_Brand
	, s.ListPrice
	, s.SaleDate
	, p.ListPrice
	, p.PurchaseDate
	, ISNULL(s.ListPrice - p.ListPrice, 0) AS DIFF
FROM Sale AS s
FULL OUTER JOIN Purchase As p
ON s.SaleDate = p.PurchaseDate;


SELECT 
	SUM(ISNULL(s.ListPrice - p.ListPrice, 0)) AS BENEFIT
FROM Sale AS s
FULL OUTER JOIN Purchase As p
ON s.SaleDate = p.PurchaseDate;