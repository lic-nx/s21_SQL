INSERT INTO person_order
SELECT
    pers_id+(SELECT max(id) from person_order), id , (select id from menu where pizza_name = 'greek pizza') as menu_id,
          '2022-02-25' as order_date
      from person inner join
      generate_series(1,(select count(*) from person)) as pers_id on pers_id= person.id
