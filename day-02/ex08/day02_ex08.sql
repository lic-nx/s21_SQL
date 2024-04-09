--Please find the names of all males from Moscow or Samara cities who orders either pepperoni or mushroom pizzas (or both) . Please order the result by person name in descending mode. The sample of output is presented below.

SELECT p.name from person p
              join person_order po on p.id = po.person_id
              join menu m on m.id = po.menu_id
 where p.gender='male' and p.address in ('Moscow', 'Samara') and m.pizza_name in ('pepperoni pizza', 'mushroom pizza')
ORDER BY p.name DESC;
