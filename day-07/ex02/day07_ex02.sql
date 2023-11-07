(select p.name, count(po.id), 'order' as action_type from person_order po
    JOIN menu m on m.id = po.menu_id
    JOIN pizzeria p on p.id = m.pizzeria_id
    GROUP BY name
ORDER BY 2 DESC LIMIT 3)
union
        (select p.name, count(pv.id), 'visit' as action_type from person_visits pv
        JOIN pizzeria p ON pv.pizzeria_id = p.id GROUP BY name ORDER BY 2 DESC LIMIT 3)
order by 3, 2 DESC ;
