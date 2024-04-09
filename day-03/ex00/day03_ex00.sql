-- Please write a SQL statement which returns a list of pizza names, pizza prices, pizzerias names and dates of visit for Kate and for prices in range from 800 to 1000 rubles. Please sort by pizza, price and pizzeria names. Take a look at the sample of data below.
SELECT pizza_name, price, pz.name,visit_date from menu
    join pizzeria pz on pz.id=menu.pizzeria_id
    join person_visits pv on pv.pizzeria_id = pz.id
    join person p on p.id = pv.person_id
  where p.name = 'Kate' and menu.price between 800 and 1000
  order by 1, 2, 3;
