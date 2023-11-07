SELECT pizza_name, price, pz.name from menu
    join pizzeria pz on pz.id = menu.pizzeria_id
 where menu.id not in (SELECT menu_id from person_order)
order by 1, 2;