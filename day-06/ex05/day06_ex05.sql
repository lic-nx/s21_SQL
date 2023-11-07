comment on table person_discounts
is 'This is the discount table with personal discounts for people from one side and pizzeria restaurants from other..';
comment on column person_discounts.id
is ' id is Primary Key';
comment on column person_discounts.person_id is
'person_id is foreign keys what save id person ';
comment on column person_discounts.pizzeria_id is
'person_id is foreign keys what save id pizzeria';
comment on column person_discounts.person_id is
'discount in prosent for person';