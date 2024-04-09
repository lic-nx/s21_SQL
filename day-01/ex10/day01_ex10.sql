--Please write a SQL statement which returns a list of the person names which made an order for pizza in the corresponding pizzeria.
-- The sample result (with named columns) is provided below and yes ... please make ordering by 3 columns (person_name, pizza_name, pizzeria_name) in ascending mode.


SELECT person.name as person_name, menu.pizza_name as pizza_name, pizzeria.name as pizzeria_name from person_order
    inner join person on person_order.person_id = person.id
    inner join menu on menu.id = person_order.menu_id
    inner join pizzeria on pizzeria.id=menu.pizzeria_id
    ORDER BY person_name, pizza_name, pizzeria.name;



