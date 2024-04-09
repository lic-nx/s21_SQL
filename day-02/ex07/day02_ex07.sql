--Please find the name of pizzeria Dmitriy visited on January 8, 2022 and could eat pizza for less than 800 rubles.

SELECT pz.name from pizzeria pz
    join person_visits pv on pv.pizzeria_id = pz.id
    join person p on p.id = pv.person_id
    join menu m on m.pizzeria_id = pz.id
    where p.name='Dmitriy' and pv.visit_date = '2022-01-08' and m.price < 800;
