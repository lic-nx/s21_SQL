SELECT person_order.order_date , name ||'(age:'||person.age||')' as "person_information" from person_order
   natural join (select person.id as person_id, name, age from person) person
ORDER BY 1, 2;