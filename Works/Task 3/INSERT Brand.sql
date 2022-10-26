INSERT INTO Brand
VALUES
  (1, N'Простоквашино')
, (2, N'Веселый молочник')
, (3, N'Брест-Литовск')
, (4, N'Домик в деревне');

SELECT *
FROM Brand
ORDER BY ID;


INSERT INTO Brand
VALUES (5, 'Корова')

INSERT INTO Brand
VALUES (6, '??')

UPDATE Brand
SET Brand = N'??'
WHERE ID = 6;

DELETE FROM Brand 
WHERE ID IN (6, 5);


INSERT INTO Brand
VALUES (5, N'Наш тан');