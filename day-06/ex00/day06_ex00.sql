CREATE TABLE person_discounts(
    id bigint primary key ,
    person_id bigint not null ,
    pizzeria_id bigint not null ,
    discount numeric not null,
    CONSTRAINT uk_person_discounts UNIQUE (person_id, pizzeria_id, discount),
    constraint fk_person_visits_person_id foreign key  (person_id) references person(id),
    constraint fk_menu_pizzeria_id foreign key (pizzeria_id) references pizzeria(id)
);