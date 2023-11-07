-- Сессия 1
BEGIN TRANSACTION;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
-- Сессия 2
BEGIN TRANSACTION;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
-- Сессия 1
SELECT SUM(rating) FROM pizzeria;
-- Сессия 2
UPDATE pizzeria SET rating = 1.0 WHERE name = 'Pizza Hut';
COMMIT;
-- Сессия 1
SELECT SUM(rating) FROM pizzeria; -- если бы чтение было до того как его зафиксировали, то было бы старое значение
COMMIT;
SELECT SUM(rating) FROM pizzeria;
-- Сессия 2
SELECT SUM(rating) FROM pizzeria;