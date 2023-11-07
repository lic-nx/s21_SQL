SET enable_seqscan = OFF;
EXPLAIN ANALYZE
SELECT pizza_name as pizza_name, p.name as pizzeria_name from menu
    join pizzeria p on menu.pizzeria_id = p.id;