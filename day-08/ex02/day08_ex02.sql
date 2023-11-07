-- Сессия 1
BEGIN TRANSACTION;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
-- Сессия 2
BEGIN TRANSACTION;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
-- Сессия 1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
-- Сессия 2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
-- Сессия 1
UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut';
-- Сессия 2
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut'; -- на этом моменте опять зависает и
-- потом идет отказ изменения т.к. идет параллельное изменение
-- Сессия 1
COMMIT;
-- Сессия 2
COMMIT;
-- Сессия 1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
-- Сессия 2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';