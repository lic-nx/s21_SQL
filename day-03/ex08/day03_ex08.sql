INSERT INTO menu
values ((SELECT max(id) from menu)+1,(Select id from pizzeria where name = 'Dominos'), 'sicilian pizza', 900 );