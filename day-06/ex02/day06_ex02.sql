SELECT p.name, m.pizza_name, m.price, m.price - (m.price * discount)/100 as discount, p2.name from menu m
    join person_order po on m.id = po.menu_id
    JOIN person p on p.id = po.person_id
    join person_discounts pd on p.id = pd.person_id
    join pizzeria p2 on m.pizzeria_id = p2.id
order by 1, 2;