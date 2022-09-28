--�� ������� Production.ProductModel 
--�������� ID ������ ������ (ProductModelID), 
--������������ ������ (Name) � �������� ������ 
--� �������� CatalogDescription. 
--�������� ������ �� ������, � ������� 
--� �������� ���������� ����� ��������� ('gloves').
SELECT 
	  ProductModelID
	, [Name]
	, CatalogDescription
FROM Production.ProductModel 
WHERE [Name] LIKE '%gloves%';
-- % - ����� ���������� ����� ��������
-- _ - 1 ������