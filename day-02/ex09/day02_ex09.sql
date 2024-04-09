--Please find the names of all females who ordered both pepperoni and cheese pizzas (at any time and in any pizzerias). Make sure that the result is ordered by person name. The sample of data is presented below.

SELECT p.name from person p
              join person_order po on p.id = po.person_id
              join menu m on m.id = po.menu_id
 where p.gender='female' and m.pizza_name = 'pepperoni pizza' and p.id in (select person_id from person_order
                                                                                            join menu on menu.id = person_order.menu_id
                                                                                            where menu.pizza_name = 'cheese pizza')
ORDER BY p.name ;
