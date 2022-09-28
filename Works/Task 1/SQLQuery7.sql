--8. �������� ���� ProductID, 
--Name �� ������� Production.Product 
--� ����������� ������� COALESCE(). 
--�������� ���� Measurement, ���, �����, 
--���� �������� � ���� Color ��������, 
--�� �������� ���, � �����, �������� 
--�������� � ���� Weight. ���� � � ���� 
--Weight �������� ����������, 
--�� ������� �������� 'UNKNOWN'.
SELECT 
	  ProductID
	, COALESCE(
		  Color
		, CAST([Weight] AS NVARCHAR(15))
		, 'UNKNOWN') AS Measurement
FROM Production.Product;

DECLARE @C1 CHAR(10) = '10';
DECLARE @C2 CHAR(20) = '20';
SELECT @C1 + @C2 AS ANSWER;
DECLARE @V1 VARCHAR(10) = '10';
DECLARE @V2 VARCHAR(20) = '20';
SELECT @V1 + @V2 AS ANSWER;
DECLARE @N1 NVARCHAR(10) = N'������';
DECLARE @N2 NVARCHAR(20) = N'????';
SELECT @N1 + @N2 AS ANSWER;
DECLARE @Weight VARCHAR(10) = CAST(11.2 AS VARCHAR(10))
SELECT @Weight;
PRINT CAST(11.2 AS VARCHAR(10));
DECLARE @D DATE = GETDATE();
PRINT @D;
SELECT CONVERT(VARCHAR(15), @D, 104);