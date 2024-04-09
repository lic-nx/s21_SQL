--Please find all pizza names (and corresponding pizzeria names using menu table) that Denis or Anna ordered. Sort a result by both columns. The sample of output is presented below.

SELECT pizza_name, pz.name as pizzeria_name from menu
join pizzeria pz on pz.id = menu.pizzeria_id
join person_order po on po.menu_id=menu.id
join person p on p.id=po.person_id
where p.name = 'Denis' or p.name='Anna'
order by pizza_name, pizzeria_name;
