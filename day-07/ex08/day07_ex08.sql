SELECT p.address, pz.name, count(po.*) AS count_of_orders from person p
    JOIN person_order po on p.id = po.person_id
    join menu m on po.menu_id = m.id
    join pizzeria pz on m.pizzeria_id = pz.id
group by  2, 1
Order by 1,2;