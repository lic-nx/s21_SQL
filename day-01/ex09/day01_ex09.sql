-- Please write 2 SQL statements which return a list of pizzerias names which have not been visited by persons by using IN for 1st one and EXISTS for the 2nd one.
SELECT name from pizzeria where id not in (SELECT pizzeria_id from person_visits );

SELECT name from pizzeria where NOT EXISTS(SELECT pizzeria_id from person_visits where pizzeria_id = pizzeria.id);
