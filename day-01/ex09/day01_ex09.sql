SELECT name from pizzeria where id not in (SELECT pizzeria_id from person_visits );

SELECT name from pizzeria where NOT EXISTS(SELECT pizzeria_id from person_visits where pizzeria_id = pizzeria.id);