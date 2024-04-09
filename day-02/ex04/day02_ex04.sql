--Find full information about all possible pizzeria names and prices to get mushroom or pepperoni pizzas. Please sort the result by pizza name and pizzeria name then. The result of sample data is below (please use the same column names in your SQL statement).

SELECT pizza_name, pizzeria.name, price from menu
join pizzeria on menu.pizzeria_id= pizzeria.id
where pizza_name='mushroom pizza' or pizza_name='pepperoni pizza'
order by pizza_name, pizzeria.name;
