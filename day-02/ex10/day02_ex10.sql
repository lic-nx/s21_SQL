SELECT  p.name as person_name1, p1.name as person_name2, p.address as common_address from person p
    join person p1 on p1.address = p.address
where p.id > p1.id
order by person_name1, person_name2;