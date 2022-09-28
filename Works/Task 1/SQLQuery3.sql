--3.+ 4. �������� ���� ProductID,
--StartDate, EndDate, ListPrice �� ������� 
--Production.ProductListPriceHistory. 
--�������� ������ �� ������,
--��� ������� ��������� (ListPrice) ������?$50 
--� ������?$60 � �������� ���� ��������� ��������� 
--�������� (EndDate).
--������������ �������� BETWEEN.
SELECT 
	  ProductID
	, StartDate
	, EndDate
	, ListPrice
FROM Production.ProductListPriceHistory
--WHERE ListPrice > 50 AND ListPrice < 60;
WHERE ListPrice BETWEEN 50 AND 60 
	  AND EndDate IS NOT NULL;