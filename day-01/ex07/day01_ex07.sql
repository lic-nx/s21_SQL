SELECT person_order.order_date, name ||'(возраст:'||person.age||')' as "person_information" from person_order
    join person on person_order.person_id = person.id
ORDER BY order_date, person_information;
