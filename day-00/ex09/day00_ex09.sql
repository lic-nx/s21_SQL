SELECT (Select name from person where person.id = pv.person_id) as person_name, (SELECT name from pizzeria where id = pv.pizzeria_id) as pizzeria_name
from (select person_id, pizzeria_id, visit_date from person_visits where visit_date between '2022-01-07' and '2022-01-09' ) as pv
ORDER BY person_name ASC, pizzeria_name DESC;