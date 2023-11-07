  SELECT pizza_name, price, pz.name,visit_date from menu
    join pizzeria pz on pz.id=menu.pizzeria_id
    join person_visits pv on pv.pizzeria_id = pz.id
    join person p on p.id = pv.person_id
  where p.name = 'Kate' and menu.price between 800 and 1000
  order by 1, 2, 3;