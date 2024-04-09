-- Please register new orders from Denis and Irina on 24th of February 2022 for the new menu with “sicilian pizza”.
-- Warning: this exercise will probably be the cause  of changing data in the wrong way. Actually, you can restore the initial database model with data from the link in the “Rules of the day” section and replay script from Exercises 07 , 08 and 09.
INSERT INTO person_order
values ((SELECT max(id) from person_visits)+1, (SELECT id from person where name = 'Denis'),(Select id from menu where pizza_name = 'sicilian pizza'), '2022-02-24'),
       ((SELECT max(id) from person_visits)+2, (SELECT id from person where name = 'Irina'),(Select id from menu where pizza_name = 'sicilian pizza'), '2022-02-24');
