--Please write a SQL statement which returns a list of pizzerias names with corresponding rating value which have not been visited by persons.

SELECT name, rating from pizzeria
left JOIN person_visits pv on pv.pizzeria_id = pizzeria.id
where pv.pizzeria_id is NULL;
