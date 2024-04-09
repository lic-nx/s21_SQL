-- Please use SQL statement from Exercise #01 and show pizza names from pizzeria which are not ordered by anyone, including corresponding prices also. The result should be sorted by pizza name and price. The sample of output data is presented below.
SELECT pizza_name, price, pz.name from menu
    join pizzeria pz on pz.id = menu.pizzeria_id
 where menu.id not in (SELECT menu_id from person_order)
order by 1, 2;
