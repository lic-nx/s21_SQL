SELECT p.name from person p
              join person_order po on p.id = po.person_id
              join menu m on m.id = po.menu_id
 where p.gender='female' and m.pizza_name = 'pepperoni pizza' and p.id in (select person_id from person_order
                                                                                            join menu on menu.id = person_order.menu_id
                                                                                            where menu.pizza_name = 'cheese pizza')
ORDER BY p.name ;