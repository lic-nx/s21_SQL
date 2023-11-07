-- сессия 1 
begin TRANSACTION; -- запускаем транзакции 

-- сессия 2
begin TRANSACTION;
-- сессия 1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
-- сессия 2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
-- сессия 1
UPDATE pizzeria set rating = 4 where name = 'Pizza Hut';
-- сессия 2
UPDATE pizzeria set rating = 3.6 where name = 'Pizza Hut'; -- на этом этапе консоль замирает,
-- пока не остановится транзакция в первом сеансе 
-- сессия 1
commit;
-- сессия 2
commit;
-- сессия 1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- выводит результат 3,6
-- сессия 2 
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- выводит 3,6