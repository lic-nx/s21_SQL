-- Сессия 1
begin TRANSACTION;
UPDATE pizzeria set rating = 4.6 where name = 'Pizza Hut'; -- обновляем 
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- выводим результат обновления

-- Сессия 2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- смотрим было ли обновление 

-- сессия 1
COMMIT -- завершаем транзакцию 

-- сессия 2 
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- смотрим прошла ли транзакция 