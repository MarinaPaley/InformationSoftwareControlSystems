--9. �������� ���� ProductID, 
--BusinessEntityID, AverageLeadTime,
--StandardPrice �� ������� 
--Purchasing.ProductVendor, ��������� ������
--�������� ������� ���������?'p'. 
--������������� ��� ������ � ���������� 
--������� � ������������ 
--� ����� StandartPrice.
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
