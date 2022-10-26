--7. +10. »з таблицы Production.Document 
--показать пол¤ DocumentNode, Title и FileExtension. 
--¬се пустые значени¤ пол¤ FileExtension заменить 
--на NULL, а затем все NULL этого же пол¤ 
--заменить на?'.txt'.
--Ќазвани¤ полей оставить без изменений.
SELECT 
	  DocumentNode
	, Title
	, ISNULL(
			 NULLIF(FileExtension, ''), '.txt'
			 ) AS FileExtension
FROM Production.Document;