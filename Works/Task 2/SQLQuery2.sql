--Найти количество магазинов с CostRate, 
--который не превышает 15, 
--из таблицы Production.Location.
SELECT COUNT(*) As CountShop
FROM Production.[Location]
WHERE CostRate <= 15;

SELECT *
FROM Production.[Location];