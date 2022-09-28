--�������� ID � ������������ 
--������� ������� ������ (ScrapReasonID � Name), 
--�� ������� Production.ScrapReason, 
--��� ������������ ������� ������� �����������
--������ ������������� ����, 
--���������� ������� �������, 
--���������� ������� ���������, 
--�������� �������� �� ������� 
--('Color incorrect',
--'Drill size too large',
--'Drill size too small','Paint process failed'). 
--������������ ��������?IN.
SELECT 
	  ScrapReasonID
	, [Name]
FROM Production.ScrapReason
--WHERE [Name] = 'Color incorrect' OR 
--	  [Name] = 'Drill size too large' OR
--	  [Name] = 'Drill size too small' OR
--	  [Name] = 'Paint process failed';
WHERE [Name] IN ('Color incorrect', 'Drill size too large',
				 'Drill size too small', 'Paint process failed');