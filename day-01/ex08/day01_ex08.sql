-- Please rewrite a SQL statement from exercise #07 by using NATURAL JOIN construction. The result must be the same like for exercise #07.

SELECT person_order.order_date , name ||'(age:'||person.age||')' as "person_information" from person_order
   natural join (select person.id as person_id, name, age from person) person
ORDER BY 1, 2;
