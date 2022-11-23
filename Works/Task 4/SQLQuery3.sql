--Показать количество городов и штат (StateProvinceID), в котором находится максимальное количество городов (Таблица Person.[Address])
SELECT TOP 1
	s.[Name]
  , COUNT(City) AS Cities
FROM Person.[Address] AS a
INNER JOIN Person.StateProvince AS s
ON s.StateProvinceID = a.StateProvinceID
GROUP BY s.[Name]
ORDER BY 2 DESC;