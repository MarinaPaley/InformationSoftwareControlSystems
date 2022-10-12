SELECT MIN(Size)
FROM Production.Product;

SELECT MAX(ListPrice)
	, Color
	, Size
FROM Production.Product
GROUP BY Color, Size;


SELECT MAX(ListPrice)
	, Color
	, Size
	, GROUPING(Color)
	, GROUPING(Size)
FROM Production.Product
GROUP BY ROLLUP (Color, Size);

SELECT MAX(ListPrice)
	, Color
	, Size
	, GROUPING(Color)
	, GROUPING(Size)
FROM Production.Product
GROUP BY CUBE (Color, Size);

SELECT MAX(ListPrice)
	, Color
	, Size
	--, GROUPING(Color)
	--, GROUPING(Size)
FROM Production.Product
GROUP BY GROUPING SETS ((Color), (Size) , ());

SELECT 
	    ROW_NUMBER() OVER (ORDER BY ListPrice) AS N
	  ,	[Name]
      , ListPrice
FROM Production.Product
WHERE ListPrice > 0;

SELECT
      RANK() OVER(ORDER BY ListPrice) AS N
    , [Name]
    , ListPrice
FROM Production.Product
WHERE ListPrice > 0;


SELECT
      DENSE_RANK() OVER(ORDER BY ListPrice) AS N
    , [Name]
    , ListPrice
FROM Production.Product
WHERE ListPrice > 0;





