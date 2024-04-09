-- Please find a union of pizzerias that have orders either from women or  from men. Other words, you should find a set of pizzerias names have been ordered by females only and make "UNION" operation with set of pizzerias names have been ordered by males only. Please be aware with word “only” for both genders. For any SQL operators with sets don’t save duplicates (UNION, EXCEPT, INTERSECT).  Please sort a result by the pizzeria name. The data sample is provided below.
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
