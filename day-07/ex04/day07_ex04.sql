SELECT p.name, count(pv.pizzeria_id) as count_of_visits from person p
    join person_visits pv on p.id = pv.person_id
group by 1
HAVING count(pv.pizzeria_id) > 3;