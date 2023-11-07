WITH pizza AS (
    SELECT m.pizza_name, pz.name, pz.id, m.price
    FROM menu m
    JOIN pizzeria pz ON m.pizzeria_id = pz.id
)

SELECT DISTINCT m.pizza_name AS pizza_name, p.name AS pizzeria_name_1, p1.name AS pizzeria_name_2, p.price
FROM menu m
JOIN pizza p ON p.pizza_name = m.pizza_name
JOIN pizza p1 ON p1.pizza_name = m.pizza_name
where p.id > p1.id and p.price = p1.price
order by 1;