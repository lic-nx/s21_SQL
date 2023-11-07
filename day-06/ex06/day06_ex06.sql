CREATE SEQUENCE seq_person_discounts
AS integer
START WITH 1
INCREMENT BY 1;



select setval('seq_person_discounts', max(id)) from person_discounts;
alter table person_discounts
alter column id SET default nextval('seq_person_discounts')