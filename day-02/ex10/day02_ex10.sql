-- Please find the names of persons who live on the same address. Make sure that the result is ordered by 1st person, 2nd person's name and common address. The  data sample is presented below. Please make sure your column names are corresponding column names below.

SELECT  p.name as person_name1, p1.name as person_name2, p.address as common_address from person p
    join person p1 on p1.address = p.address
where p.id > p1.id
order by person_name1, person_name2;
