--Вывести профессии из таблицы 
--HumanResources.Employee, где суммарное 
--количество человек, 
--принятых до 2009 года, больше 1
SELECT JobTitle
	 , COUNT(*) AS CountPeople
FROM HumanResources.Employee
WHERE HireDate < '2009-01-01'
GROUP BY JobTitle
HAVING COUNT(*) > 1;

--SELECT *
--FROM HumanResources.Employee