--Please write a SQL statement which returns the date of order from the person_order table and corresponding person name (name and age are formatted as in the data sample below) which made an order from the person table. Add a sort by both columns in ascending mode.



SELECT person_order.order_date, name ||'(возраст:'||person.age||')' as "person_information" from person_order
    join person on person_order.person_id = person.id
ORDER BY order_date, person_information;
