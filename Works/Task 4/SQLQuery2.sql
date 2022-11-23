--Показать количество сотрудников и отдел (Department), в котором работает минимальное количество сотрудников (Представление [HumanResources].[vEmployeeDepartment]).
SELECT
	  TOP 1
	  COUNT(*) AS [CountEmployeers]
	, Department
FROM [HumanResources].[vEmployeeDepartment]
GROUP BY Department
ORDER BY 1;
--
SELECT
	Department
	, COUNT(*) [CountEmployeers]
FROM [HumanResources].[vEmployeeDepartment]
GROUP BY Department
HAVING COUNT(*) = (
	SELECT MIN([CountEmployeers])
	FROM (
		SELECT
		COUNT(*) AS [CountEmployeers]
		FROM [HumanResources].[vEmployeeDepartment]
		GROUP BY Department) AS f);