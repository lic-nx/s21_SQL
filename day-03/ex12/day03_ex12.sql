--Don’t use window functions like ROW_NUMBER( )

-- Don’t use atomic INSERT statements |

-- Please register new orders from all persons for “greek pizza” on 25th of February 2022.
-- Warning: this exercise will probably be the cause  of changing data in the wrong way. Actually, you can restore the initial database model with data from the link in the “Rules of the day” section and replay script from Exercises 07 , 08 ,09 , 10 and 11.
INSERT INTO person_order
SELECT
    pers_id+(SELECT max(id) from person_order), id , (select id from menu where pizza_name = 'greek pizza') as menu_id,
          '2022-02-25' as order_date
      from person inner join
      generate_series(1,(select count(*) from person)) as pers_id on pers_id= person.id
