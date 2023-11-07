CREATE VIEW v_price_with_discount AS
(
    select p.name, m.pizza_name, m.price, ROUND(m.price - m.price*0.1) as discount_price from person p
    join person_order po on po.person_id =p.id
    join menu m on m.id=po.menu_id
    ORDER by  p.name, m.pizza_name
);