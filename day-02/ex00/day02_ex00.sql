SELECT name, rating from pizzeria
left JOIN person_visits pv on pv.pizzeria_id = pizzeria.id
where pv.pizzeria_id is NULL;