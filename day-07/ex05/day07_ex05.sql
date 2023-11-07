SELECT name from person
    join person_order po on person.id = po.person_id
group by name
Order by 1;