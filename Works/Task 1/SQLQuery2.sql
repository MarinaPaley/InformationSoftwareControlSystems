--2. �������� ���� TransactionID, ProductID, 
--ReferenceOrderID, TransactionType, Quantity, 
--ActualCost �� ������� Production.TransactionHistory.
SELECT 
	  TransactionID
	, ProductID
	, ReferenceOrderID
	, TransactionType
	, Quantity
	, ActualCost
FROM Production.TransactionHistory