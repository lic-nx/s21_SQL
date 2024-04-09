--Please register new visits into Dominos restaurant from Denis and Irina on 24th of February 2022.
-- Warning: this exercise will probably be the cause  of changing data in the wrong way. Actually, you can restore the initial database model with data from the link in the “Rules of the day” section and replay script from Exercises 07 and 08..

INSERT INTO person_visits
values ((SELECT max(id) from person_visits)+1, (SELECT id from person where name = 'Denis'),(Select id from pizzeria where name = 'Dominos'), '2022-02-24'),
       ((SELECT max(id) from person_visits)+2, (SELECT id from person where name = 'Irina'),(Select id from pizzeria where name = 'Dominos'), '2022-02-24');
