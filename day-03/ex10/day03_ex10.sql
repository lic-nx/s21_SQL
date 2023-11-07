INSERT INTO person_order
values ((SELECT max(id) from person_visits)+1, (SELECT id from person where name = 'Denis'),(Select id from menu where pizza_name = 'sicilian pizza'), '2022-02-24'),
       ((SELECT max(id) from person_visits)+2, (SELECT id from person where name = 'Irina'),(Select id from menu where pizza_name = 'sicilian pizza'), '2022-02-24');