--Показать ID и наименование 
--причины поломки товара (ScrapReasonID и Name), 
--из таблицы Production.ScrapReason, 
--где наименование причины поломки принадлежит
--списку «Неправильный цвет», 
--«Отверстие слишком большое», 
--«Отверстие слишком маленькое», 
--«Процесс покраски не удался» 
--('Color incorrect',
--'Drill size too large',
--'Drill size too small','Paint process failed'). 
--Использовать оператор?IN.
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