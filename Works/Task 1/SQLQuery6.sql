--7. +10. �� ������� Production.Document 
--�������� ���� DocumentNode, Title � FileExtension. 
--��� ������ �������� ���� FileExtension �������� 
--�� NULL, � ����� ��� NULL ����� �� ���� 
--�������� ��?'.txt'.
--�������� ����� �������� ��� ���������.
SELECT 
	  DocumentNode
	, Title
	, ISNULL(
			 NULLIF(FileExtension, ''), '.txt'
			 ) AS FileExtension
FROM Production.Document;