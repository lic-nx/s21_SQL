
with womenOrders as (
    select m.pizzeria_id  from person
                        join person_order po on person.id = po.person_id
                         join menu m on m.id = po.menu_id
                        where person.gender = 'female'
),
manOrders as (
    select m.pizzeria_id  from person
                        join person_order po on person.id = po.person_id
                         join menu m on m.id = po.menu_id
                        where person.gender = 'male'
)
SELECT pz.name from pizzeria pz
where pz.id in (
    ( select pizzeria_id from manOrders
    EXCEPT
     select pizzeria_id from womenOrders
    )union (
        select pizzeria_id from womenOrders
    EXCEPT
     select pizzeria_id from manOrders
    )
       )
order by 1;