-- Please write a SQL statement which returns a list of pizzerias which Andrey visited but did not make any orders. Please order by the pizzeria name. The sample of data is provided below.

SELECT pz.name as pizzeria_name from pizzeria pz
    join person_visits pv on pz.id = pv.pizzeria_id
    join person p on pv.person_id = p.id
    where p.name = 'Andrey' and pv.pizzeria_id not in (select  m.pizzeria_id from menu m
                                                                             join person_order o on m.id = o.menu_id
                                                                             join person p on o.person_id = p.id
                                                                             where p.name = 'Andrey');
