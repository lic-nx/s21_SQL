--Please write a SQL statement which returns all possible combinations between person and pizzeria tables and please set ordering by person identifier and then by pizzeria identifier columns. Please take a look at the result sample below. Please be aware column's names can be different for you.


SELECT person.id, person.name, person.age,person.gender, person.address, pizzeria.id, pizzeria.name, pizzeria.rating from  person, pizzeria
                                                                                                                     order by person.id, pizzeria.id;
