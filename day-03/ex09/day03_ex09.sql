INSERT INTO person_visits
values ((SELECT max(id) from person_visits)+1, (SELECT id from person where name = 'Denis'),(Select id from pizzeria where name = 'Dominos'), '2022-02-24'),
       ((SELECT max(id) from person_visits)+2, (SELECT id from person where name = 'Irina'),(Select id from pizzeria where name = 'Dominos'), '2022-02-24');