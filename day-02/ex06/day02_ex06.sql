SELECT pizza_name, pz.name as pizzeria_name from menu
join pizzeria pz on pz.id = menu.pizzeria_id
join person_order po on po.menu_id=menu.id
join person p on p.id=po.person_id
where p.name = 'Denis' or p.name='Anna'
order by pizza_name, pizzeria_name;
