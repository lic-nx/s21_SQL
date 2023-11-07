SELECT pz.name from pizzeria pz
join
(select count(person.id), pv.pizzeria_id  from person
                        join person_visits pv on person.id = pv.person_id
                        where person.gender = 'male'
                        group by pizzeria_id
) male on male.pizzeria_id = pz.id
join
(select count(person.id), pv.pizzeria_id from person
                        join person_visits pv on person.id = pv.person_id
                        where person.gender = 'female'
                        group by pizzeria_id
) female on female.pizzeria_id = pz.id

where male > female or female > male
order by 1;